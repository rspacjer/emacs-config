(require 'paredit)
(add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

(provide 'rs-elisp)
