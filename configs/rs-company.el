(require 'color)

(setq company-idle-delay .1)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'rs-company)
