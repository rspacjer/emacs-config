;; use utf-8 everywhere
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; You cen disable menu bar, by commenting out next line. I use menu bar to discover new features of Emacs (still learning)
;;(menu-bar-mode -1)

;; disable toolbar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; init frame size of Emacs for window system
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (setq initial-frame-alist '((top . 0) (left . 0) (width . 100) (height . 40))))

;; add open recent menu
(require 'recentf)
(recentf-mode 1)
;; ignore .ido.last file from recent files
;; if this doesn't work, execut recentf-cleanup command
(add-to-list 'recentf-exclude "\\.ido\\.last")
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; disable right alt key as a modifier key - to use it for polish characters 
(setq ns-right-alternate-modifier nil)

;; set cursor as |
(setq-default cursor-type 'bar)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;;starting with scratch notes
(setq inhibit-startup-message t)
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message "\
# This buffer is for notes you don't want to save.
# If you want to create a file, visit that file with C-x C-f,
# then enter the text in that file's own buffer.")

;; save here instead of littering current directory with emacs backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;;wrap lines
(global-visual-line-mode 1)

;; enable WindMove - change buffers with C-c + <arrow key>
(when (fboundp 'windmove-default-keybindings)
  (global-set-key (kbd "C-c <left>")  'windmove-left)
  (global-set-key (kbd "C-c <right>") 'windmove-right)
  (global-set-key (kbd "C-c <up>")    'windmove-up)
  (global-set-key (kbd "C-c <down>")  'windmove-down))

;; show line numbers for prog modes
(add-hook 'prog-mode-hook
	  (lambda ()	    
	    (global-linum-mode 1)))

;; mode line settings
(column-number-mode t)
(size-indication-mode t)

;; Show current function in modeline.
(which-function-mode)

;;'y' and 'n' instea 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'rs-editor)
