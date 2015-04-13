(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-startup-indented t)
(setq org-completion-use-ido t)
;; add timestamp to DONE items
(setq org-log-done 'time)

;; automatic closing brackets can be painful in Org-mode
;; i.e. inserting links is hard, because org mode will automatic display link as text
(add-hook 'org-mode-hook
	  (lambda () (electric-pair-mode -1)))

(require 'f)
(defun get-all-org-files ()
  (when (getenv "ORG")
    (f-files (getenv "ORG")
	     (lambda (file) (equal (f-ext file) "org")) t)))

;; when there is defined "ORG" system environment variable (a path),
;; then all *.org file from this path are loaded for org-mode agenda
(setq org-agenda-files (get-all-org-files))

(provide 'rs-org)
