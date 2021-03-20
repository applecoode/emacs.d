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
;;imenu
(global-set-key (kbd "M-s i") 'counsel-imenu)

;;org
(global-set-key (kbd "C-c a") 'org-agenda)

;;counsel git
(global-set-key (kbd "C-c p f") 'counsel-git)

;hippie company  another company help comany
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
(global-set-key (kbd "C-c /") 'hippie-expand)

;;let dired mode do not cast many buffer 
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;web indent
(defun my-toggle-web-indent ()
  (interactive)
  ;; web development
  (if (or (eq major-mode 'js-mode) (eq major-mode 'js2-mode))
	  (progn
	    (setq js-indent-level (if (= js-indent-level 2) 4 2))
	    (setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))

      (if (eq major-mode 'web-mode)
	  (progn (setq web-mode-markup-indent-offset (if (= web-mode-markup-indent-offset 2) 4 2))
		 (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
		 (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))
      (if (eq major-mode 'css-mode)
	  (setq css-indent-offset (if (= css-indent-offset 2) 4 2)))
      (setq indent-tabs-mode nil))

(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)


;;js2-refactor bind
(js2r-add-keybindings-with-prefix "C-c C-m")

;;evil c-w c-r
(global-set-key (kbd "C-w") 'evil-delete-backward-word)
(global-set-key (kbd "C-r") 'evil-paste-from-register)

;;occur-mode under word select
(global-set-key (kbd "M-s o") 'occur-dwim)

(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-;") 'iedit-mode)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)
(provide 'init-keybinds)
