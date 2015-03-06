(require 'dash)

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
