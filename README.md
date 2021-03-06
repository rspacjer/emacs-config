# My Emacs configuration#

This is my current Emacs configuration.

This config is inspired by and can contain code snippets from those configurations:

- ["Emacs Starter Kit" by Phil Hagelberg](https://github.com/technomancy/emacs-starter-kit)
- ["Emacs Prelude" by Bozhidar Batsov](https://github.com/bbatsov/prelude)
- ["ohai-emacs" by Bodil Stokke](https://github.com/bodil/ohai-emacs)
- ["emacs-for-clojure" by Daniel Higginbotham](https://github.com/flyingmachine/emacs-for-clojure)

I test it mostly on `Windows` machine, but it should also work on `OSX` and `Linux`.

### Installation ###

#### Windows ####

Emacs and many its packages work in assumption of the Unix-like host operating system. This makes that some features don't work on Windows OS.

To solve this problem you can install  [MinGW](http://www.mingw.org/) with at least those packages:

- `find`
- `grep`
- `diff`

If you install it in `C:\MinGW\msys\1.0\bin` directory, then everything should work good. If you change the directory, then please change the path in `\config\rs-env.el` file.

Alternatively you can install [Cygwin](https://www.cygwin.com/). It comes with all needed packages. If you use `Cygwin` then change path in `\config\rs-env.el` file.

To have proper working `magit` package (a git client) define `HOME` system environment variable and set it to your user home path - you can read more [here](https://github.com/magit/magit/wiki/Pushing-with-Magit-from-Windows#before-starting-set-home).

#### Org-mode ####

You can define `ORG` system environment variable that will point to a folder where all your org files exist. Those files will be used to create agenda for `org-mode`.

Additionally at startup of `Emacs` the `gtd.org` file (my todo list) from path defined in `ORG` system environment variable will be tried to open.

#### Markdown ####

To be able to generate HTML (or other formats) from markdown you should install [Pandoc](http://pandoc.org/)

#### Spell checker ####

To be able to check spelling in the buffer, you should install [Aspell](http://aspell.net/) (for [Windows](http://aspell.net/win32/))

In Windows Aspell bin folder (`\Aspell\bin`) should be added to `Path` environment variable.

### Configuration ###

#### Custom hooks ####

There are defined three hooks in `rs-functions.el` file:

- `rs/windows-os-hook` for Windows operating system
- `rs/osx-os-hook` for Mac OSX operating system
- `rs/linux-os-hook` for Linux operating stem

You can use those hooks, to invoke code specific only for one of those operating systems.

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
* Change window or frame:  
  windmove-left: `C-c <left>`  
  windmove-right: `C-c <right>`  
  windmove-up: `C-c <up>`  
  windmove-down: `C-c <down>`
* For [avy](https://github.com/abo-abo/avy) package:  
  `C-c j` - go to char  
  `M-g f` - go to line
* Multiple cursors configuration  
  _From: https://github.com/bodil/ohai-emacs/ _  
  Use `<insert>` to place a cursor on the next match for the current selection.  
  Use `S-<insert>` to place one on the previous match.  
  Use `C-'` to use extended mark mode, giving you more control.  
  Use `C-"` to place cursors on all matches.  
  Select a region and `C-M-'` to place cursors on each line of the selection.  
  Bonus: `<insert>` key no longer activates overwrite mode.
* Comment region: `C-x C-;`

#### Smartparens ####

* `C-M-f` - Jump after the next balanced expression. If inside one and there is no forward exp., jump after its closing pair.
* `C-M-b` - Jump before the previous balanced expression. If inside one and there is no previous exp., jump before its opening pair.

* `C-M-d` - Jump after the opening pair of next balanced expression. This effectively descends one level down in the `expression hierarchy`. If there is no expression to descend to, jump after current expression's opening pair. This can be used to quickly navigate to the beginning of current balanced expression.
* `C-M-a` - Jump before the closing pair of previous balanced expression. If there is no expr. to descend to, jump before current expression's closing pair.
* `C-S-d` - Jump to the beginning of current sexp, that is after the opening delimiter.
* `C-S-a` - Jump to the end of current sexp, that is before the closing delimiter.

* `C-M-e` Jump up one level from the current balanced expression. This means skipping all the enclosed expressions within this and then jumping after the closing pair. For example (if (= a b) | (some call) (some other call)) -> (if ...)|.
* `C-M-u` - Jump up backwards one level from the current balanced expressions. This means skipping all the enclosed expressions within this backwards and then jumping before the opening pair.
* `C-M-t` sp-transpose-sexp

* `C-M-n` - Jump to the beginning of following balanced expression. If there is no following expression on the current level, jump one level up backward, effectively doing sp-backward-up-sexp.
* `C-M-p` - Jump to the end of the previous balanced expression. If there is no previous expression on the current level, jupm one level up forward, effectively doing sp-up-sexp.

* `C-M-k` sp-kill-sexp
* `C-M-w` sp-copy-sexp

* `M-<delete>` sp-unwrap-sexp
* `M-<backspace>` sp-backward-unwrap-sexp

* `C-<right>` sp-forward-slurp-sexp
* `C-<left>` sp-forward-barf-sexp
* `C-M-<left>` sp-backward-slurp-sexp
* `C-M-<right>` sp-backward-barf-sexp

* `M-D` sp-splice-sexp
* `C-M-<delete>` sp-splice-sexp-killing-forward
* `C-M-<backspace>` sp-splice-sexp-killing-backward
* `C-S-<backspace>` sp-splice-sexp-killing-around

* `C-]` sp-select-next-thing-exchange
* `C-<left_bracket>` sp-select-previous-thing
* `C-M-]` sp-select-next-thing

* `M-F` sp-forward-symbol
* `M-B` sp-backward-symbol
  
#### [Fiplr](https://github.com/grizzl/fiplr) - Find in Project for Emacs ####

Commands:

- Find files: M-x fiplr-find-file RET (key binding `F6` or `C-x f`)
- Find directories: M-x fiplr-find-directory RET
- Clear caches: M-x fiplr-clear-cache RET

####Thesaurus####

This configuration uses [thesaurus](http://www.emacswiki.org/cgi-bin/wiki/thesaurus.el) package.

To use it, first you need to go to the http://words.bighugelabs.com/ page and register (no cost) to get an API key. Then create `.apikey.txt` file in the `.emacs.d` folder and put this API key in it (as plain text). From now on you can look for similar words using `C-x t` command.

#### Other ####

To reload any configuration file, you can execute:  
`C-x` `eval-buffer` and then hit `enter`.

#### AutoHotkey  ####

For `Windows` users there is `script.ahk` file in the root folder. It's [AutoHotkey](http://ahkscript.org/) script, that allows remapping `Caps Lock` key to `Ctrl` when `Emacs` is started. To be able to use it, you have to install AutoHotkey. The shortcut to this script can be placed in `Startup` folder to auto start on `Windows` startup - you can read full instruction [here](https://autohotkey.com/docs/FAQ.htm#Startup).
