(require 'markdown-mode)

(when (eq system-type 'windows-nt)
  (custom-set-variables
 '(markdown-command
   "pandoc -f markdown -t html5 -s --mathjax --highlight-style pygments")))

(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

(provide 'rs-markdown)
