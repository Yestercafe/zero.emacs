# .emacs.d

## 前言

这是我 2022 年底的新 Emacs 配置，主要是区分开 vim 和 Emacs 的职能：vim 已经不再使用 SpaceVim，将使用我自己编写的单个配置文件进行一些简单的代码编辑；neovim 暂时仍使用 SpaceVim，后期可能要考虑用 Lua 重写，然后将 vim 环境完全迁移到 neovim；Emacs 放弃 Purcell、Doom、SpaceVim 的一系列「重量级」配置，从零开始构建一个编写 Haskell、Coq、LaTeX 等（可能会考虑 C++、Rust、ReScript？）的 domain spcific editor；其它特定语言，还是使用 JetBrains 的对应 IDE + IdeaVim。

计划是启动 Emacs 和 evil-mode 的双键位并可以随时切换。

这个配置的初始可用版本的可能会较晚才能实现，因为我现在也用不上上面说的那些语言，所以抽空更。

