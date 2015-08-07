(require 'company)
(require 'company-dabbrev-code)

(setq company-idle-delay .1)

;; add web-mode to company code mode (i.e. text case is used)
(add-to-list 'company-dabbrev-code-modes 'web-mode)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'rs-company)
