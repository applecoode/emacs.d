(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(require 'evil)
(evil-mode 1)

(tool-bar-mode 1)
(scroll-bar-mode 1)
(electric-indent-mode 1)
(setq inhibit-splash-screen t)

(linum-mode t)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f1>") 'open-my-init-file)
