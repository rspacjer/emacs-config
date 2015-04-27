;; from http://emacswiki.org/emacs/GrepMode
;; this allows to use grep, find and diff on Windows OS
;; you need to install http://www.mingw.org/wiki/msys/
;; and then insatll find, grep, diff packages
(defun set-mingw-for-windows-path ()
  (setenv "PATH"
  (concat
   ;; Change this with your path to MSYS bin directory
   "C:\\MinGW\\msys\\1.0\\bin;"
   (getenv "PATH"))))

(defun configure-windows-os ()
  (message "Microsoft Windows")
  (if (find-font (font-spec :name "Consolas"))
      (set-face-attribute 'default nil
			  :family "Consolas" :height 120))
  (set-mingw-for-windows-path))

(defun configure-mac-osx-os ()
  (message "Mac OS X")
  (if (find-font (font-spec :name "DejaVu Sans Mono-10"))
      (set-face-attribute 'default nil
			  :family "DejaVu Sans Mono-10" :height 120)))

(defun configure-linux-os ()
  (message "Linux"))

;; Windows
(if (eq system-type 'windows-nt)
    (configure-windows-os))

;; Mac OSX
(if (eq system-type 'darwin)
    (configure-mac-osx-os))

;; Linux
(if (eq system-type 'gnu/linux)
    (configure-linux-os))

(provide 'rs-env)
