(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'init-packages)
(require 'init-better-default)
(require 'init-ui)
(require 'init-keybinds)
(require 'init-org)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

