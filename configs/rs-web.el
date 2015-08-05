(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(defun web-mode-indent-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook  'web-mode-indent-hook)

(provide 'rs-web)
