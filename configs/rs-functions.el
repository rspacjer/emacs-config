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

;; From http://stackoverflow.com/questions/235254/how-can-i-run-cygwin-bash-shell-from-within-emacs
(defun cygwin-shell ()
  "Run cygwin bash in shell mode."
  (interactive)
  (let ((explicit-shell-file-name "C:/cygwin/bin/bash"))
    (call-interactively 'shell)))

(defun new-sql-buffer ()
  "Create new buffer with sql mode"
  (interactive)
  (let ((buf (generate-new-buffer "*sql*")))
    (switch-to-buffer buf)
    (sql-mode)))

;; create new markdown file for blog post in format yyyy-mm-dd-title
(defun new-blog-post (name)
  (interactive "sBlog tile:")
  (let ((buf (generate-new-buffer
	      (concat (format-time-string "%Y-%m-%d") "-" name ".markdown"))))
    (switch-to-buffer buf)
    (markdown-mode)))

;; copy buffer name to kill ring - so you can easily paste it into save file mini buffer
(defun buffer-name-to-kill-ring ()
  (interactive)
  (kill-new (buffer-name)))

(provide 'rs-functions)
