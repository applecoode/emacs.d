;;org-mode config
(require 'org)

;;auto load to be init
(setq org-modules-loaded t)
;;open src natively
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
	 "* TODO [#B] %?\n  %i\n"
	 :empty-lines 1)))

(provide 'init-org)

