set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)

set(LLVM_TARGET_ARCH AArch64)
set(LLVM_DEFAULT_TARGET_TRIPLE aarch64-linux-gnu)

if (DEFINED ENV{CLANG_TABLEGEN})
  set(CLANG_TABLEGEN $ENV{CLANG_TABLEGEN} CACHE FILEPATH "Path to clang-tblgen for host")
  message(STATUS "Setting CLANG_TABLEGEN = ${CLANG_TABLEGEN}")
endif ()

if (DEFINED ENV{LLVM_TABLEGEN})
  set(LLVM_TABLEGEN $ENV{LLVM_TABLEGEN} CACHE FILEPATH "Path to llvm-tblgen for host")
  message(STATUS "Setting LLVM_TABLEGEN = ${LLVM_TABLEGEN}")
endif ()
