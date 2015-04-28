(require 'dash)

;; custom hooks
(defvar rs/windows-os-hook nil
  "Hook called if your current operating system is Windows")
(defvar rs/osx-os-hook nil
  "Hook called if your current operating system is Mac OSX")
(defvar rs/linux-os-hook nil
  "Hook called if your current operating system is Linux")

(defun rs/invoke-windows-hook ()
  (message "Invoking hooks for Microsoft Windows")
  (run-hooks 'rs/windows-os-hook))

(defun rs/invoke-osx-hook ()
  (message "Invoking hooks for Mac OSX")
  (run-hooks 'rs/osx-os-hook))

(defun rs/invoke-linux-hook ()
  (message "Invoking hooks for Linux")
  (run-hooks 'rs/linux-os-hook))

(defun rs/invoke-current-operating-system-hooks ()
  (case system-type
    ('windows-nt (rs/invoke-windows-hook))
    ('darwin (rs/invoke-osx-hook))
    ('gnu/linux (rs/invoke-linux-hook))))

;; taken from Prolude Emacs configuration: https://github.com/bbatsov/prelude
(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Doesn't mess with special buffers."
  (interactive)
  (-each
   (->> (buffer-list)
     (-filter #'buffer-file-name)
     (--remove (eql (current-buffer) it)))
   #'kill-buffer))

(provide 'rs-functions)
