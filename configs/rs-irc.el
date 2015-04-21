(require 'erc)

;; Username and password for Erc (an IRC client) is stored in external file: .erc-auth.el Create such file in .emacs.d folder and add those two lines there:
;; (setq erc-nick "your_username")  
;; (setq erc-password "your_irc_password")
(when (file-readable-p "~/.emacs.d/.erc-auth.el")
  (message "Loading data for irc username and password")
  (load "~/.emacs.d/.erc-auth.el"))

;; Interpret mIRC-style color commands in IRC chats
(setq erc-interpret-mirc-color t)

(setq erc-autojoin-channels-alist
      '(("freenode.net" "#clojure" "#clojure-beginners" "#emacs")))

(provide 'rs-irc)
