;;a set of function helpful to create blog post in Jekyll format

(defun blog-safe-file-name (name)
    (replace-regexp-in-string "[[:space:]]+" "-"
			      (concat (format-time-string "%Y-%m-%d") "-"
				      (replace-regexp-in-string "\\.+" "-"
								(replace-regexp-in-string "[:;]+" "" name))
				      ".markdown")))

;; create new markdown file for blog post in format yyyy-mm-dd-title
(defun blog-create-post (name)
  (interactive "sBlog tile:")
  (let ((buf (generate-new-buffer
	      (kill-new (blog-safe-file-name name)))))
    (switch-to-buffer buf)
    (markdown-mode)))

(defun blog-create-file-name-to-kill-ring (name)
  (interactive "sBlog tile:")
  (kill-new (blog-safe-file-name name)))

(provide 'rs-blog)
