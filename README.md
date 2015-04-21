# Basic Emacs configuration#

This configuration contains code parts from other configurations:  
["Emacs Starter Kit" by Phil Hagelberg](https://github.com/technomancy/emacs-starter-kit)  
["Emacs Prelude" by Bozhidar Batsov](https://github.com/bbatsov/prelude)  
["ohai-emacs" by Bodil Stokke](https://github.com/bodil/ohai-emacs)  
["emacs-for-clojure" by Daniel Higginbotham](https://github.com/flyingmachine/emacs-for-clojure)  


### Installation ###

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
`C-x` `load-file` and thit `enter` twice
