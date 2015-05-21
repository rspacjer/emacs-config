;; Set smart-mode-line
;; https://github.com/Malabarba/smart-mode-line/
(require 'smart-mode-line)

(setq sml/no-confirm-load-theme t)
(setq sml/theme 'powerline)
(sml/setup)

(provide 'rs-powerline)
