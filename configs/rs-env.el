;; from http://emacswiki.org/emacs/GrepMode
;; this allows to use grep, find and diff on Windows OS
;; you need to install http://www.mingw.org/wiki/msys/
;; and then insatll find, grep, diff packages
(defun rs/set-gnu-tools-for-windows-path ()
  (setenv "PATH"
  (concat
   ;; Change this with your path to MSYS bin directory
   "C:\\cygwin64\\bin;"
   (getenv "PATH"))))

(add-hook 'rs/windows-os-hook 'rs/set-gnu-tools-for-windows-path)
(add-hook 'rs/osx-os-hook (lambda ()
			    (require 'exec-path-from-shell)
			    (exec-path-from-shell-initialize)))
(provide 'rs-env)
