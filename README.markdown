# Command-W
Command-W is a Vim plugin which aims to replace and enhance the default ⌘W shortcut behaviour in MacVim.

This plugin is aimed at MacVim users who prefer **buffers** rather than tabs. If you use tabs, this plugin is not for you and you should really do some soul searching.

## Why
My main gripe: the ⌘W shortcut in MacVim should close buffers, not windows!

Lets be honest, a window in Vim is not equivalent to a tab in say TextMate - the correct equivalent is of course the humble buffer!

Here's how I want ⌘W to work:

- Close the current buffer but keep the window open (which [buffkill](http://www.vim.org/scripts/script.php?script_id=1147) already solves with it's `:BD` command).
- When I press ⌘W on the last **listed**\* buffer, I want MacVim to close.

\*A listed buffer is one that shows up when you type the `:buffers` command. Usually this list only includes editable buffers, so read-only buffers like NERDTree won't show up in this list.

## Requirements
* Vim 7+
* [buffkill](http://www.vim.org/scripts/script.php?script_id=1147) - Allows you to close a buffer without closing a window.

## Installation

First, make sure you have [buffkill](http://www.vim.org/scripts/script.php?script_id=1147) installed. Command-W will not function correctly without it.

### Manual
Simply copy the `plugin` directory into your `.vim` directory.

### Pathogen
If you have [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332) installed, just clone this repo into a subdirectory of your `.vim/bundle` directory like so:

    cd ~/.vim/bundle
    git clone git://github.com/nathanaelkane/vim-command-w.git

### Vundle (my preferred method)
If you have [Vundle](https://github.com/gmarik/vundle) installed, simply add the following to your `.vimrc`:

    Bundle 'git://github.com/nathanaelkane/vim-command-w.git'

Then use the `:BundleInstall` command to install the plugin.

## Usage

### MacVim
Add the following to your `.gvimrc`:

    macmenu &File.Close key=<nop>
    nmap <D-w> :CommandW<CR>
    imap <D-w> <Esc>:CommandW<CR>

Now you can press ⌘W to close buffers (or to close Vim if you've only got one buffer open).

### Other
You can manually use `:CommandW` instead of `:bd` (or `:BD` if you use bufkill).
