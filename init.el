(require 'cl)

(require 'package)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; From Emacs Prelude - https://github.com/bbatsov/prelude
(defvar required-packages
  '(
    powerline
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
  ) "a list of packages to ensure are installed at launch.")

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(load "~/.emacs.d/user.el")
