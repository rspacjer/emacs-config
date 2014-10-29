;; js2-mode
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Alternative js2-mode extensions
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . js2-mode))

;; Use plain old js-mode for JSON, js2-mode doth protest too much
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

;;(add-hook 'js2-mode-hook 'ac-js2-mode)
;;(add-hook 'js2-mode-hook 'js2-refactor)

(setq js2-highlight-level 3)

(custom-set-faces
 '(js2-external-variable ((t (:foreground "OrangeRed1" :underline t)))))


