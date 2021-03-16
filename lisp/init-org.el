;;org-mode config
(require 'org)

;;auto load to be init
(setq org-modules-loaded t)
;;open src natively
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8zb" "zhangbin")
					    ))
(provide 'init-org)

