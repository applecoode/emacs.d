;;lovely vim
(require 'evil)
(evil-mode 1)

;;company
(global-company-mode t)

;;read automaticly after remote edit 
(global-auto-revert-mode t)

;;close recentf auto clean
(setq recentf-auto-cleanup 'never)

;;close backup-files and auto save 
(setq make-backup-files nil)
(setq auto-save-default nil)

;;select block edit
(delete-selection-mode 1)

;;dired-mode
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;;on the file open current dir C-x C-j
(require 'dired-x)

;;two windows copy
(setq dired-dwin-target 1)

;;abb
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zb" "zhangbin")
					    ))



(provide 'init-better-default)
