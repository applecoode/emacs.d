(add-to-list 'load-path "~/.emacs.d/lisp")
;;lovely vim
(require 'evil)
(evil-mode 1)

;;org-mode config
(require 'org)
(setq org-modules-loaded t)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;;make look comfortable
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t);cancel welcome information
(global-linum-mode t)
(toggle-truncate-lines 1) ;truncate line
(menu-bar-mode -1)


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

;;company
(global-company-mode t)

;;search some help key
(global-set-key "\C-h\ \C-f" 'find-function)
(global-set-key "\C-h\ \C-v" 'find-variable)
(global-set-key "\C-h\ \C-k" 'find-function-on-key)

;;set cursor type
(setq-default cursor-type 'bar)

;;close backup-files and auto save 
(setq auto-save-default nil)
(setq make-backup-file nil)

;;select block edit
(delete-selection-mode 1)

;;theme
(load-theme 'deeper-blue)

;;highlight current line
(global-hl-line-mode 1)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "微软雅黑" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))



;;test
(setq recentf-auto-cleanup 'never)

;;paren hightlight
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;swipper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


;;full screen
;(setq initial-frame-alist (quote ((fullscreen . maximized))))
(toggle-frame-fullscreen)


(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zb" "zhangbin")
					    ))
