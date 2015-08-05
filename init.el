(add-to-list 'load-path "~/.emacs.d/configs")

;; use utf-8 everywhere
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(require 'rs-packages)
(require 'rs-functions)
(require 'rs-env)

(require 'rs-editor)
(require 'rs-themes)
(require 'rs-powerline)
(require 'rs-key-bindings)
(require 'rs-editing)

(require 'rs-ido)
(require 'rs-company)
(require 'rs-smartparens)
(require 'rs-shell)
(require 'rs-irc)
(require 'rs-org)
(require 'rs-clojure)
(require 'rs-markdown)
(require 'rs-javascript)
(require 'rs-csharp)
(require 'rs-haskell)
(require 'rs-neotree)
(require 'rs-snippets)
(require 'rs-git)
(require 'rs-elisp)
(require 'rs-fiplr)
(require 'rs-avy)
(require 'rs-server)
(require 'rs-web)

(rs/invoke-current-operating-system-hooks)
