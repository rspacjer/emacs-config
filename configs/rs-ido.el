;; display any item that contains the chars you typed
(setq ido-enable-flex-matching t)
;; Use ido everywhere
(setq ido-everywhere t)
;; Prevent emacs of adding the current word to any command buffer
(setq ido-use-filename-at-point nil)
;; Make buffer switch command auto suggestions, also for find-file command
(ido-mode 1)
