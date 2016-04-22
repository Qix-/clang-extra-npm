# clang-extra

Installs LLVM's `clang-extra` tools for you because it's a pain otherwise.

Though not required, it is _highly_ recommended you install [Ninja](https://ninja-build.org/) prior to installing this package (it will automatically detect that you have `ninja` installed).

```console
# the below command is not required, but _highly_ recommended (if it doesn't work, just install ninja manually)
$ (command -v brew && brew install ninja) || sudo apt-get install ninja-build

# get some coffee going...
$ npm i -g clang-extra
```

Performs a shallow clone of each repo's `origin/master/HEAD` ref so you're getting whatever latest version is there. Since some of these mysteriously don't work without `libcxx` being cloned/built alongside the extras, it has been included as well.

And no, running `npm install clang-extra` again won't update it. Thanks to NPM's infinite wisdom, the entire directory is cleared before it re-installs so it forces a rebuild of - you guessed it - all 2700+ files.

So just be careful when you try to re-install. The script has been built to update but the functionality is useless since NPM kills all of it anyway.

## License
These scripts released under [CC-0](https://creativecommons.org/publicdomain/zero/1.0/). LLVM has their own license - go [check it out](http://llvm.org/docs/DeveloperPolicy.html).
