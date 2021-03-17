(add-to-list 'load-path "~/.emacs.d/lisp")

;;org to pick source code form el file
;;(require 'org-install)
;;(require 'ob-tangle)
;;(org-babel-load-file (expand-file-name "org-file-name.org" user-emacs-directory))

(require 'init-packages)
(require 'init-better-default)
(require 'init-ui)
(require 'init-keybinds)
(require 'init-org)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)


;;indent region or buffer 
(defun indent-buffer()
  (interactive)
  (indent-region (point-min)(point-max)))
(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
