(require 'haskell-mode)

;; Setup haskell-mode hooks
(with-eval-after-load "haskell-mode"
  (custom-set-variables
   '(haskell-mode-hook
     '(turn-on-haskell-indentation
       turn-on-haskell-doc))))

;; Flycheck addons
(require 'flycheck-haskell)
(with-eval-after-load "flycheck"
  (with-eval-after-load "haskell"
    (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)))


(provide 'rs-haskell)
