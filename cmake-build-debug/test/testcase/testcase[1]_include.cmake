if(EXISTS "/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase/testcase[1]_tests.cmake")
  include("/Users/zuozhiyi/Downloads/bptree/proj1/cmake-build-debug/test/testcase/testcase[1]_tests.cmake")
else()
  add_test(testcase_NOT_BUILT testcase_NOT_BUILT)
endif()
