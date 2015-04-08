(require 'erc)

(when (file-readable-p "~/.emacs.d/.erc-auth.el")
  (message "Loading data for irc username and password")
  (load "~/.emacs.d/.erc-auth.el"))

;; Interpret mIRC-style color commands in IRC chats
(setq erc-interpret-mirc-color t)

(setq erc-autojoin-channels-alist
      '(("freenode.net" "#clojure" "#clojure-beginners" "#emacs")))

(provide 'rs-irc)
