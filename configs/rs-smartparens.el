(require 'smartparens-config)

(smartparens-global-mode t)

(defun rs-add-smartparens-strict-keys ()  
  (local-set-key (kbd "C-M-f") 'sp-forward-sexp)
  (local-set-key (kbd "C-M-b") 'sp-backward-sexp)

  (local-set-key (kbd "C-M-d") 'sp-down-sexp)
  (local-set-key (kbd "C-M-a") 'sp-backward-down-sexp)
  (local-set-key (kbd "C-S-d") 'sp-beginning-of-sexp)
  (local-set-key (kbd "C-S-a") 'sp-end-of-sexp)

  (local-set-key (kbd "C-M-e") 'sp-up-sexp)
  (local-set-key (kbd "C-M-u") 'sp-backward-up-sexp)
  (local-set-key (kbd "C-M-t") 'sp-transpose-sexp)

  (local-set-key (kbd "C-M-n") 'sp-next-sexp)
  (local-set-key (kbd "C-M-p") 'sp-previous-sexp)

  (local-set-key (kbd "C-M-k") 'sp-kill-sexp)
  (local-set-key (kbd "C-M-w") 'sp-copy-sexp)

  (local-set-key (kbd "M-<delete>") 'sp-unwrap-sexp)
  (local-set-key (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

  (local-set-key (kbd "C-<right>") 'sp-forward-slurp-sexp)
  (local-set-key (kbd "C-<left>") 'sp-forward-barf-sexp)
  (local-set-key (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
  (local-set-key (kbd "C-M-<right>") 'sp-backward-barf-sexp)

  (local-set-key (kbd "M-D") 'sp-splice-sexp)
  (local-set-key (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
  (local-set-key (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
  (local-set-key (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

  (local-set-key (kbd "C-]") 'sp-select-next-thing-exchange)
  (local-set-key (kbd "C-<left_bracket>") 'sp-select-previous-thing)
  (local-set-key (kbd "C-M-]") 'sp-select-next-thing)

  (local-set-key (kbd "M-F") 'sp-forward-symbol)
  (local-set-key (kbd "M-B") 'sp-backward-symbol))

(add-hook 'smartparens-strict-mode-hook 'rs-add-smartparens-strict-keys)

;; For inserting links in org-mode it's easier if the closing bracket isn't added
(sp-local-pair 'org-mode "[" nil :actions nil)

;; disable highlighting for opened bracket
(setq sp-highlight-pair-overlay nil)

(provide 'rs-smartparens)
