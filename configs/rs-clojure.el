(require 'cider)
(require 'clj-refactor)
(require 'company)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; clojure
(require 'clojure-mode-extra-font-locking)
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

;; eldoc mode for Clojure
(add-hook 'cider-repl-mode-hook #'eldoc-mode)
(add-hook 'cider-mode-hook #'eldoc-mode)

;; company mode for completion
(add-hook 'cider-mode-hook #'company-mode)

(add-hook 'cider-repl-mode-hook 'subword-mode)

(defun refactor-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'refactor-clojure-mode-hook)

;; (setq cider-repl-pop-to-buffer-on-connect t)
(setq cider-repl-history-file "~/.emacs.d/cider-history")
;; (setq cider-repl-wrap-history t)

;; result prefix for the REPL
(setq cider-repl-result-prefix ";; => ")

;; use Figwheel repl for ClojureScript
(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")

(defun weasel-clojurescipt-repl ()
  (interactive)
  (insert "(do (require 'weasel.repl.websocket)
           (cemerick.piggieback/cljs-repl
              (weasel.repl.websocket/repl-env :ip \"0.0.0.0\" :port 9001)))"))

(provide 'rs-clojure)
