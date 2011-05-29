# Closer
Closer is a plugin which closes Vim when the last buffer has been closed.

## Requirements
* Vim 7+
* [buffkill](http://www.vim.org/scripts/script.php?script_id=1147) - Allows you to close a buffer without closing a window.

## Installation
First, make sure you have [buffkill](http://www.vim.org/scripts/script.php?script_id=1147) installed.

To install the plugin just copy `plugin` directory into your `.vim` directory.

Alternatively if you have [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332) installed, just clone this repo into a subdirectory of your `.vim/bundle` directory like so:

    cd ~/.vim/bundle
    git clone git://github.com/nathanaelkane/vim-closer.git

## Usage
Use the command `:Closer` instead of `:bd` (or `:BD` if you use bufkill).

### MacVim
My preferred setup is to bind `:Closer` to Cmd+W in MacVim. Here's how you do it:

    macmenu &File.Close key=<nop>
    nmap <D-w> :Closer<CR>
    imap <D-w> <Esc>:Closer<CR>
