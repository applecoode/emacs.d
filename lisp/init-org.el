;;org-mode config
(require 'org)

;;auto load to be init
(setq org-modules-loaded t)
;;open src natively
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))

(provide 'init-org)

