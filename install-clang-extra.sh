#!/usr/bin/env bash

if [ ! -d llvm ]; then
	git clone --depth=1 http://llvm.org/git/llvm.git llvm || exit 1
else
	(cd llvm && git pull origin master) || exit 1
fi
if [ ! -d llvm/tools/clang ]; then
	git clone --depth=1 http://llvm.org/git/clang.git llvm/tools/clang || exit 1
else
	(cd llvm/tools/clang && git pull origin master) || exit 1
fi
if [ ! -d llvm/tools/clang/tools/extra ]; then
	git clone --depth=1 http://llvm.org/git/clang-tools-extra.git llvm/tools/clang/tools/extra || exit 1
else
	(cd llvm/tools/clang/tools/extra && git pull origin master) || exit 1
fi
if [ ! -d llvm/projects/libcxx ]; then
	git clone --depth=1 http://llvm.org/git/libcxx.git llvm/projects/libcxx || exit 1
else
	(cd llvm/projects/libcxx && git pull origin master) || exit 1
fi

echo -e "\x1b[1;37mNOTE: If you have ninja installed (brew install ninja || sudo apt-get install ninja-build) this will go _much_ faster\x1b[m"

mkdir build

if command -v ninja >/dev/null; then
	(cd build && cmake ../llvm -GNinja) || exit 1
else
	(cd build && cmake ../llvm) || exit 1
fi

cmake --build build || exit 1
