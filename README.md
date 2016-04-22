# clang-extra

Installs LLVM's `clang-extra` tools for you because it's a pain otherwise.

Performs a shallow clone of each repo's `origin/master/HEAD` ref so you're getting whatever latest version is there. Since some of these mysteriously don't work without `libcxx` being cloned/built alongside the extras, it has been included as well.

And no, running `npm install clang-extra` again won't update it. Thanks to NPM's infinite wisdom, the entire directory is cleared before it re-installs so it forces a rebuild of - you guessed it - all 2700+ files.

So just be careful when you try to re-install. The script has been built to update but the functionality is useless since NPM kills all of it anyway.

## License
These scripts released under [CC-0](https://creativecommons.org/publicdomain/zero/1.0/). LLVM has their own license - go [check it out](http://llvm.org/docs/DeveloperPolicy.html).
