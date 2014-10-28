(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; from Emacs Prelude by Bozhidar Batsov
;; https://github.com/bbatsov/prelude/blob/master/core/prelude-packages.el
(defvar prelude-packages 
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
    expand-region)
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  "Check if all packages in `prelude-packages' are installed."
  (every #'package-installed-p prelude-packages))

(defun prelude-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package prelude-packages)
    (add-to-list 'prelude-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun prelude-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'prelude-require-package packages))

(defun prelude-install-packages ()
  "Install all packages listed in `prelude-packages'."
  (unless (prelude-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (prelude-require-packages prelude-packages)))

;; run package installation
(prelude-install-packages)
