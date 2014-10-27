(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; from Emacs Starter Kit - https://github.com/technomancy/emacs-starter-kit
(defvar my-packages 
  '(powerline
    auto-complete
    auto-indent-mode
    cider
    clojure-mode
    clojure-mode-extra-font-locking
    paredit
    ac-cider
    rainbow-delimiters
    js2-mode
    js2-refactor
    ac-js2
    markdown-mode
    yasnippet
    clojure-snippets
    expand-region))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
