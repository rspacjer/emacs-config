;; highlight matched brackets
(show-paren-mode 1)

;; enable cua mode (windows like copy, cut, paste)
(cua-mode t)
;;(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;;(transient-mark-mode 1) ;; No region when it is not highlighted
;;(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Flyspell often slows down editing so it's turned off
(remove-hook 'text-mode-hook 'turn-on-flyspell)

;; enable expand region for C-=
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; guru mode - to warn me about using arrows! Lets learn Emacs key bindings
(require 'guru-mode)
(setq guru-warn-only t)
(guru-global-mode +1)
