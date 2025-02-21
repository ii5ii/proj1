//
// Created by zhuchaodi on 2025/2/20.
//

#include "BPlusTree.h"
#include "queue"
void BPlusTree::insertNonFull(Node &node, NodeKey key, const NodeValue& value) {
    int i = node.nums - 1;
    if (node.isLeaf) {
        // 插入到叶子节点
        // 找到插入位置
        while (i >= 0 && node.keys[i] > key) {
            node.keys[i + 1] = node.keys[i];
            node.values[i + 1] = node.values[i];
            i--;
        }
        node.keys[i + 1] = key;
        node.values[i + 1] = value;
        node.nums++;
        disk_manager_.writePage(node.pageId, node);
    } else {
        // 插入到内部节点
        while (i >= 0 && node.keys[i] > key) {
            i--;
        }
        i++;
        PageID childPageId = node.children[i];
        Node child(false);
        disk_manager_.readPage(childPageId, child);
        if (child.nums == 2 * min_degree_ - 1) {
            splitNode(node, i, child);
            if (key > node.keys[i]) {
                childPageId = node.children[i + 1];
                disk_manager_.readPage(childPageId, child);
            }
        }
        insertNonFull(child, key, value);
    }
}

void BPlusTree::splitNode(Node &parent, int index, Node &child) {
    Node newChild(child.isLeaf);
    PageID newChildPageId = disk_manager_.allocatePage();
    newChild.pageId = newChildPageId;
    int mid = min_degree_ - 1;

//        parent->keys.insert(parent->keys.begin() + index, child->keys[mid]);
    //在parent的keys数组的index位置上插入child->keys[mid]数据，剩余其他数据全部后移
    for (int i = parent.nums - 1; i >= index; i--) {
        parent.keys[i + 1] = parent.keys[i];
    }
    parent.keys[index] = child.keys[mid];
    parent.nums++;

    for (int i = parent.child_nums - 1; i>= index + 1; i--) {
        parent.children[i + 1] = parent.children[i];
    }
    parent.children[index + 1] = newChildPageId;
    parent.child_nums++;
    disk_manager_.writePage(parent.pageId, parent);

    // 将右半部分的键和子节点分到新的子节点
    for (int i = mid + 1; i < child.nums; i++) {
        newChild.keys[i - mid - 1] = child.keys[i];
        newChild.nums++;
    }


    if (!child.isLeaf) {
        for (int i = mid + 1; i < child.child_nums; i++) {
            newChild.children[i - mid - 1] = child.children[i];
            newChild.child_nums++;
        }
        child.child_nums = mid + 1;
        child.nums = mid + 1;

    } else {
        //由于上面已经设置过nums,所以这里不需要再设置
        for (int i = mid + 1; i < child.nums; i++) {
            newChild.values[i - mid - 1] = child.values[i];
        }
        child.nums = mid + 1;
    }

    // 连接叶子节点
    if (child.isLeaf) {
        newChild.next = child.next;
        child.next = newChildPageId;
    }

    disk_manager_.writePage(newChild.pageId, newChild);
    disk_manager_.writePage(child.pageId, child);

}

NodeValue *BPlusTree::search(PageID nodePageId, NodeKey key) {
    int i = 0;
    Node node(false);
    disk_manager_.readPage(nodePageId, node);
    while (i < node.nums && node.keys[i] < key) {
        i++;
    }
    if (i < node.nums && node.keys[i] == key) {
        if (node.isLeaf) {
            return &node.values[i];
        }
    }
    if (node.isLeaf) {
        return nullptr;
    }
    return search(node.children[i], key);
}

std::vector<NodeValue> BPlusTree::rangeSearch(PageID nodePageId, NodeKey startKey, NodeKey endKey) {
    std::vector<NodeValue> result;

    PageID leafPageId = findLeafPageId(nodePageId, startKey);
    Node leaf(false);
    while (leafPageId != -1) {
        disk_manager_.readPage(leafPageId, leaf);
        for (int i = 0; i < leaf.nums; i++) {
            if (leaf.keys[i] >= startKey && leaf.keys[i] <= endKey) {
                result.push_back(leaf.values[i]);
            } else if (leaf.keys[i] > endKey) {
                return result;
            }
        }
        leafPageId = leaf.next;

    }
    return result;
}

PageID BPlusTree::findLeafPageId(PageID nodePageId, NodeKey key) {
    Node node(false);
    disk_manager_.readPage(nodePageId, node);
    if (node.isLeaf) {
        return nodePageId;
    }
    int i = 0;
    while (i < node.nums && node.keys[i] < key) {
        i++;
    }
    return findLeafPageId(node.children[i], key);
}

int BPlusTree::getPageNums() {

    return disk_manager_.getTotalPages();
}

int BPlusTree::getRecordNums() {
    auto val = rangeSearch(RecordKey{.id = -1, .fg3_pct_home = 0}, RecordKey{.id = -1, .fg3_pct_home = 2});
    return val.size();
}

BPlusTree::BPlusTree(int degree, const char *ctx_path, const char * db_path, bool is_trunc) : min_degree_(degree), disk_manager_(ctx_path, db_path, is_trunc) {
    if (disk_manager_.isHasInitCtx()) {
        //如果已经存在了，那么直接load数据
        DataBaseContext ctx;
        disk_manager_.readCtx(ctx);
        root_page_id_ = ctx.rootPageId;
        std::cout << "init root page id: " << root_page_id_ << std::endl;
    } else {
        root_page_id_ = disk_manager_.allocatePage();

        DataBaseContext ctx;
        ctx.rootPageId = root_page_id_;
        ctx.keysSize = sizeof(NodeKey);
        ctx.pageSize = PAGE_SIZE;
        ctx.valuesSize = sizeof(NodeValue);
        disk_manager_.writeCtx(ctx);
        std::cout << "init database context success" << std::endl;
        //初始化一个空的根节点
        Node root(true);
        root.pageId = root_page_id_;
        disk_manager_.writePage(root_page_id_, root);
    }

}

void BPlusTree::insert(NodeKey key, const NodeValue& value) {
    Node root(true);
    disk_manager_.readPage(root_page_id_, root);
    if (root.nums == 2 * min_degree_ - 1) {
//        Node* newRoot = new Node(false);
        PageID newRootPageId = disk_manager_.allocatePage();
        Node newRoot(false);
        newRoot.children[newRoot.child_nums] = root_page_id_;
        newRoot.child_nums++;
        newRoot.pageId = newRootPageId;
        //将新的数据重新写入到磁盘中
        disk_manager_.writePage(newRootPageId, newRoot);
        splitNode(newRoot, 0, root);
        root = newRoot;
        root_page_id_ = newRootPageId;
    }
    insertNonFull(root, key, value);
}

NodeValue *BPlusTree::search(NodeKey key) {
    return search(root_page_id_, key);
}

std::vector<NodeValue> BPlusTree::rangeSearch(NodeKey startKey, NodeKey endKey) {
    return rangeSearch(root_page_id_, startKey, endKey);
}

void BPlusTree::print(PageID nodePageId, int level) {
    Node node(false);
    disk_manager_.readPage(nodePageId, node);
    if (node.isLeaf) {
        std::cout << std::string(level, ' ') << "Leaf: ";
        for (int i = 0; i < node.nums; i++) {
            std::cout << node.keys[i] << " ";
        }
        std::cout << std::endl;
    } else {
        std::cout << std::string(level, ' ') << "Internal: ";
        for (int i = 0; i < node.nums; i++) {
            std::cout << node.keys[i] << " ";
        }
        std::cout << std::endl;
        for (int i = 0; i < node.child_nums; i++) {
            print(node.children[i], level + 1);
        }
    }
}

void BPlusTree::print() {
    print(root_page_id_);
}

int BPlusTree::getDepth() {
    return getDepth(root_page_id_);
}

int BPlusTree::getDepth(PageID nodePageId, int level) {
    //使用bfs进行depth搜索
    std::queue<std::tuple<PageID, int>> q;

    q.push({nodePageId, 1});
    Node node(false);
    int maxLevel = 0;
    while (!q.empty()) {
        auto [pageId, l] = q.front(); q.pop();
        maxLevel = std::max(maxLevel, l);
        disk_manager_.readPage(pageId, node);
        for (int i = 0; i < node.child_nums; ++i) {
            q.push({node.children[i], l + 1});
        }
    }
    return maxLevel;
}

BPlusTree::~BPlusTree() {
    DataBaseContext ctx;
    disk_manager_.readCtx(ctx);
    ctx.rootPageId = root_page_id_;
    disk_manager_.writeCtx(ctx);
    std::cout << "flush context success, current root_page_id=" << root_page_id_ << std::endl;
}
