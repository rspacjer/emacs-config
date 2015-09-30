(require 'web-mode)
(require 'yasnippet)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(defun web-mode-indent-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(defun web-mode-snippets-hook ()
  (yas-activate-extra-mode 'html-mode)
  (yas-activate-extra-mode 'js-mode))

(defun web-mode-minor-modes-hook ()
  (js2-minor-mode))

(add-hook 'web-mode-hook 'web-mode-indent-hook)
(add-hook 'web-mode-hook 'web-mode-snippets-hook)
(add-hook 'web-mode-hook 'web-mode-minor-modes-hook)

(provide 'rs-web)
