(provide 'rs-key-bindings)

;; it's hard to reach M-x on standard keyboard, so there are two alternatives:
;; C-x C-m
;; C-c C-m - if you miss the x and press c
;; based on Steve Yegge article: https://sites.google.com/site/steveyegge2/effective-emacs
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; lets try f5 as M-x replacement
(global-set-key (kbd "<f5>") 'execute-extended-command)

;; in window system it's annoying to hit `C-z`
(when window-system
  (global-unset-key (kbd "C-z")))
