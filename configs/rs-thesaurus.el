(require 'thesaurus)

(when (file-readable-p "~/.emacs.d/.apikey.txt")
  (message "Loading api key for Big Huge Thesaurus")
  (thesaurus-set-bhl-api-key-from-file "~/.emacs.d/.apikey.txt")
  (define-key global-map (kbd "C-x t") 'thesaurus-choose-synonym-and-replace))

(provide 'rs-thesaurus)
