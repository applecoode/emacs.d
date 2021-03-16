;;lovely vim
(require 'evil)
(evil-mode 1)

;;company
(global-company-mode t)

(global-auto-revert-mode t)

(setq recentf-auto-cleanup 'never)

;;close backup-files and auto save 
(setq make-backup-files nil)
(setq auto-save-default nil)

;;select block edit
(delete-selection-mode 1)

(provide 'init-better-default)
