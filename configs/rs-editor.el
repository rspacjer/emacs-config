;; use utf-8 everywhere
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; init frame size of Emacs
(setq initial-frame-alist '((top . 0) (left . 0) (width . 100) (height . 40)))

;; add open recent menu
(require 'recentf)
(recentf-mode 1)

;; disable right alt key as a modifier key - to use it for polish characters 
(setq ns-right-alternate-modifier nil)

;; use 10-pt Consolas as default font (for Windows)
(if (find-font (font-spec :name "Consolas")) 
  (set-face-attribute 'default nil
                      :family "Consolas" :height 120))

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

;; disable wrapping lines
;;(setq-default truncate-lines t)

;;wrap lines
(global-visual-line-mode 1)

;; enable WindMove - change buffers with C-c + <arrow key>
(when (fboundp 'windmove-default-keybindings)
  (global-set-key (kbd "C-c <left>")  'windmove-left)
  (global-set-key (kbd "C-c <right>") 'windmove-right)
  (global-set-key (kbd "C-c <up>")    'windmove-up)
  (global-set-key (kbd "C-c <down>")  'windmove-down))

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)
