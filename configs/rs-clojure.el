(require 'cider)
(require 'company)

(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))

;; rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; clojure
(require 'clojure-mode-extra-font-locking)
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'set-newline-and-indent)

;; cider
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
;; eldoc for clojure
(add-hook 'cider-mode-hook #'eldoc-mode)
;; company mode for completion
(add-hook 'cider-mode-hook #'company-mode)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (clj-refactor-mode 1)
	    ;; insert keybinding setup here
	    (cljr-add-keybindings-with-prefix "C-c C-m")))

(add-hook 'clojure-mode-hook (lambda () (yas/minor-mode 1)))

(setq cider-repl-pop-to-buffer-on-connect t)
(setq cider-popup-stacktraces t)
(setq cider-repl-popup-stacktraces t)
(setq cider-auto-select-error-buffer t)
(setq cider-repl-history-file "~/.emacs.d/cider-history")
(setq cider-repl-wrap-history t)
;; nice pretty printing
(setq cider-repl-use-pretty-printing t)
;; nicer font lock in REPL
(setq cider-repl-use-clojure-font-lock t)
;; result prefix for the REPL
(setq cider-repl-result-prefix ";; => ")

(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)

;; no auto sort
(setq cljr-auto-sort-ns nil)

;; warm artifact cache at REPL start up
(add-hook 'nrepl-connected-hook #'cljr-update-artifact-cache)

;; warm the AST cache at REPL start up
(add-hook 'nrepl-connected-hook #'cljr-warm-ast-cache)

(provide 'rs-clojure)
