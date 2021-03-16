
;;init file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;record hack
(defun open-hack-file()
  (interactive)
  (find-file "~/.emacs.d/emacs_hack.org"))
(global-set-key (kbd "<f4>") 'open-hack-file)

;;recorde work
(defun open-work-file()
  (interactive)
  (find-file "~/.emacs.d/org/202103work.org"))
(global-set-key (kbd "<f5>") 'open-work-file)

;;recentf-mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;;search some help key
(global-set-key "\C-h\ \C-f" 'find-function)
(global-set-key "\C-h\ \C-v" 'find-variable)
(global-set-key "\C-h\ \C-k" 'find-function-on-key)

;;swipper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;;org
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-keybinds)
