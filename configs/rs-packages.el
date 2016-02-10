(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("stable-melpa" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(defvar rs-packages
  '(flycheck
    flycheck-clojure
    flycheck-haskell
    powershell    
    fiplr ;; fiplr - https://github.com/grizzl/fiplr If you use Windows OS, look at rs-env.el
    thesaurus
    framemove) 
  "A list of packages that should be installed from melpa repository.")

(defvar rs-stable-packages 
  '(f
    smart-mode-line
    smart-mode-line-powerline-theme
    company
    auto-indent-mode
    cider
    clj-refactor    
    clojure-mode
    clojure-mode-extra-font-locking
    clojure-cheatsheet
    clojure-snippets        
    csharp-mode
    rainbow-delimiters
    js2-mode
    markdown-mode
    yasnippet    
    expand-region
    multiple-cursors
    flx
    flx-ido
    web-mode
    magit
    neotree
    exec-path-from-shell
    avy
    smartparens
    haskell-mode
    helm)
  "A list of packages that should be installed from stable-melpa repository.")

;; The below code is inspired by similar code from Emacs Prelude by Bozhidar Batsov
;; https://github.com/bbatsov/prelude/blob/master/core/prelude-packages.el
(defun rs-all-packages-installed ()
  (and (every #'package-installed-p rs-packages)
       (every #'package-installed-p rs-stable-packages)))

(defun rs-pin-packages (repo packages)
  (mapc (lambda (pck)
	  (add-to-list 'package-pinned-packages (cons pck repo))) packages))

(defun rs-install-package-when-required (pck)
  (unless (package-installed-p pck)
    (package-install pck)))

(defun rs-install-packages (packages)
  (mapc #'rs-install-package-when-required packages))

(defun rs-install-all-packages ()
  "Install all packages from `rs-packages' and `rs-stable-packages' lists."
  (unless (rs-all-packages-installed)
    ;; check for new packages (package versions)
    (message "%s" "Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (rs-install-packages rs-packages)
    (rs-install-packages rs-stable-packages)))

(rs-pin-packages "melpa" rs-packages)
(rs-pin-packages "stable-melpa" rs-stable-packages)

;; run package installation
(rs-install-all-packages)

(provide 'rs-packages)
