(defun my-csharp-mode-fn ()
     "function that runs when csharp-mode is initialized for a buffer."
     (turn-on-auto-revert-mode)
     (setq indent-tabs-mode nil)
     ;;(require 'flymake)
     ;;(flymake-mode 1)
     (require 'yasnippet)
     (yas/minor-mode-on))

(add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)

(add-to-list 'auto-mode-alist '("\\.cshtml$" . web-mode))

(provide 'rs-csharp)
