Vim Flow-diagram Preview
====================

- [Intro](#intro)
- [Installation](#installation)
- [Usage](#usage)
- [License](#licnese)

Intro
-----
A Vim plugin for previewing flow diagram in a browser. It's inspired by ['xavierchow/vim-sequence-diagram'](https://github.com/xavierchow/vim-sequence-diagram)
and [flowchart.js](http://flowchart.js.org).

Installation
------------

* With [Pathogen](https://github.com/tpope/vim-pathogen): Place `vim-flow-diagram/` in `.vim/bundle/`.
* With [Vundle](https://github.com/VundleVim/Vundle.vim):
    * Add `Plugin 'quafzi/vim-flow-diagram'` to your `.vimrc`.
    * Launch `vim` and run `:PluginInstall`

Usage
-----
### File extension
This plugin only applies to files with `.flow` file extension,
that means it has nearly no performance impact on other file types.

**Note:** Make sure you have renamed the file name with proper extension.

### Keymap for preview
The default keymap is `<leader>tf`, it brings up a browser window and shows the flow diagram for you.
You can also define your keymap in vimrc.
```
nmap <unique> <leader>t <Plug>GenerateFlowDiagram 
```

License
-----------------

MIT
