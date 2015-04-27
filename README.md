# Basic Emacs configuration#

This configuration contains code parts from other configurations:  
["Emacs Starter Kit" by Phil Hagelberg](https://github.com/technomancy/emacs-starter-kit)  
["Emacs Prelude" by Bozhidar Batsov](https://github.com/bbatsov/prelude)  
["ohai-emacs" by Bodil Stokke](https://github.com/bodil/ohai-emacs)  
["emacs-for-clojure" by Daniel Higginbotham](https://github.com/flyingmachine/emacs-for-clojure)  


### Installation ###

#### Windows ####

Emacs and many its packages work in assumption of the Unix-like host operating system. This makes that some features don't work on Windows OS.

To solve this problem you can install  [MinGW](http://www.mingw.org/) with at least those packages:

- `find`
- `grep`
- `diff`

If you install it in `C:\MinGW\msys\1.0\bin` directory, then everything should work good. If you change the directory, then please change this path in `\config\rs-env.el` file.

### Markdown ###

To be able to generate HTML (or other formats) from markdown you can install [Pandoc](http://pandoc.org/)

### Spell checker ###

To be able to check spelling in the buffer, you should install [Aspell](http://aspell.net/) (for [Windows](http://aspell.net/win32/))

### Configuration ###

#### Irc (Erc) ####

To set the username and password for Erc (an IRC client) package, please create `.erc-auth.el` file in `.emacs.d` folder and add those two lines there:
```
(setq erc-nick "your_username")  
(setq erc-password "your_irc_password")  
```

### Used themes ###

[Tomorrow Theme](https://github.com/ChrisKempson/Tomorrow-Theme) by Chris Kempson  
[Zenburn](https://github.com/bbatsov/zenburn-emacs) by Bozhidar Batsov  

### Useful shortcuts ###

* Increase / decrease font size: `C-x C-+` or `C-x C--`
* Restore default font size: `C-x C-0`
* Expand region: `C-=`
* Change window:  
  windmove-left: `C-c <left>`  
  windmove-right: `C-c <right>`  
  windmove-up: `C-c <up>`  
  windmove-down: `C-c <down>`

To reload any configuration file, you can execute:  
`C-x` `load-file` and then hit `enter` twice

#### [Fiplr - Find in Project for Emacs](https://github.com/grizzl/fiplr) ####

Commands:

- Find files: M-x fiplr-find-file RET (key binding `M-p`)
- Find directories: M-x fiplr-find-directory RET
- Clear caches: M-x fiplr-clear-cache RET
