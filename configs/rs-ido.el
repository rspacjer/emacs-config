(require 'flx-ido)
;; Make buffer switch command auto suggestions, also for find-file command
(ido-mode 1)
;; Use ido everywhere
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)
;; display any item that contains the chars you typed
(setq ido-enable-flex-matching t)
;; Prevent emacs of adding the current word to any command buffer
(setq ido-use-filename-at-point nil)
