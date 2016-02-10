;; highlight matched brackets
(show-paren-mode 1)

;; enable cua mode (windows like copy, cut, paste)
;; (cua-mode t)
;;(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;;(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Flyspell often slows down editing so it's turned off
(remove-hook 'text-mode-hook 'turn-on-flyspell)

;; enable expand region for C-=
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; whitespace-mode config
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))
(autoload 'whitespace-mode           "whitespace" "Toggle whitespace visualization."        t)
(autoload 'whitespace-toggle-options "whitespace" "Toggle local `whitespace-mode' options." t)

;; Newline at end of file
(setq require-final-newline t)

;; Always use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; delete the selection with a keypress
(delete-selection-mode t)
;; Transient Mark mode gives you much of the standard selection-highlighting behavior of other editors
(transient-mark-mode t)

;; Multiple cursors configuration
;; From: https://github.com/bodil/ohai-emacs/
;; Use <insert> to place a cursor on the next match for the current selection.
;; Use S-<insert> to place one on the previous match.
;; Use C-' to use extended mark mode, giving you more control.
;; Use C-" to place cursors on all matches.
;; Select a region and C-M-' to place cursors on each line of the selection.
;; Bonus: <insert> key no longer activates overwrite mode.
;; What is that thing for anyway?
(require 'multiple-cursors)
(global-set-key (kbd "<insert>") 'mc/mark-next-like-this)
(global-set-key (kbd "S-<insert>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-'") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-\"") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-M-'") 'mc/edit-lines)

;;comenting
(global-set-key (kbd "C-x C-;") 'comment-region)

;;guru mode
;;(require 'guru-mode)
;;(guru-global-mode +1)
;; (setq guru-warn-only t) ; to only warn about key bindings

;; Single space ends sentence.
(setq sentence-end-double-space nil)

(provide 'rs-editing)
