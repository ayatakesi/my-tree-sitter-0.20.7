# tree-sitter-0.20.7
GNU Emacs30.0.50に含まれる`java/INSTALL`にしたがって取得したtree-sitter-0.20.7モジュールのレポジトリ。

# 作成した手順

1. [Android ports for GNU Emacsのソース書庫](https://sourceforge.net/projects/android-ports-for-gnu-emacs/files/tree-sitter-0.20.7-emacs.tar.gz)を取得して展開

```bash
$: wget https://sourceforge.net/projects/android-ports-for-gnu-emacs/files/tree-sitter-0.20.7-emacs.tar.gz
$: tar xvfz tree-sitter-0.20.7-emacs.tar.gz
```

2. gitレポジトリとして初期化し修正用ブランチ`my/master`をcheckout

```bash
$: cd tree-sitter-0.20.7
$: git init
$: git checkout -b my/master
```

3. 空レポジトリにpush

```bash
$: git add -A
$: git commit -m 'nanika commit messages...'
$: gh repo create my-tree-sitter-0.20.7 --public
$: git remote add mine https://github.com/JIBUN/my-tree-sitter-0.20.7
$: git branch -M my/master
$: git push -u mine my/master
```

以上ここまで
以下元の`README.md`

This directory tree holds a modified copy of tree-sitter.  The
modifications made allow it to be built using the Emacs version of the
Android ``ndk-build'' system, in order to build a version of Emacs's
Android port with tree-sitter support.

Please follow the instrutions in Emacs's INSTALL.android file.

########################################################################

The modifications are available under the following license:

Copyright (C) 2023 Free Software Foundation, Inc.

These modifications are part of GNU Emacs.

GNU Emacs is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

GNU Emacs is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

########################################################################

# tree-sitter

[![Build Status](https://github.com/tree-sitter/tree-sitter/workflows/CI/badge.svg)](https://github.com/tree-sitter/tree-sitter/actions)
[![Build status](https://ci.appveyor.com/api/projects/status/vtmbd6i92e97l55w/branch/master?svg=true)](https://ci.appveyor.com/project/maxbrunsfeld/tree-sitter/branch/master)
[![DOI](https://zenodo.org/badge/14164618.svg)](https://zenodo.org/badge/latestdoi/14164618)

Tree-sitter is a parser generator tool and an incremental parsing library. It can build a concrete syntax tree for a source file and efficiently update the syntax tree as the source file is edited. Tree-sitter aims to be:

- **General** enough to parse any programming language
- **Fast** enough to parse on every keystroke in a text editor
- **Robust** enough to provide useful results even in the presence of syntax errors
- **Dependency-free** so that the runtime library (which is written in pure C) can be embedded in any application

## Links

- [Documentation](https://tree-sitter.github.io)
- [Rust binding](lib/binding_rust/README.md)
- [WASM binding](lib/binding_web/README.md)
- [Command-line interface](cli/README.md)
