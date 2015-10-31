(require 'magit)

(setq magit-last-seen-setup-instructions "1.4.0")
(global-set-key (kbd "C-x g") 'magit-status)

;; https://github.com/magit/magit/wiki/Pushing-with-Magit-from-Windows
(defun rs/set-ssh-for-magit ()
  (setenv "SSH_ASKPASS" "git-gui--askpass"))

(add-hook 'rs/windows-os-hook 'rs/set-ssh-for-magit)

(provide 'rs-git)
