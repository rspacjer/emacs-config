(require 'erc)

(when (file-readable-p "~/.emacs.d/.erc-auth")
  (load "~/.emacs.d/.erc-auth"))

;; Interpret mIRC-style color commands in IRC chats
(setq erc-interpret-mirc-color t)

;; (setq erc-autojoin-channels-alist '(("freenode.net" "#clojure")))

(provide 'rs-irc)
