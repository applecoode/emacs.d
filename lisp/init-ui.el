;;this file is for ui, fonts ,theme,higlight etc

(setq ring-bell-function 'ignore)


;;paren hightlight
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;highlight current line
(global-hl-line-mode 1)

;;set cursor type
(setq-default cursor-type 'bar)

;;make look comfortable
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t);cancel welcome information
(global-linum-mode t)
(toggle-truncate-lines 1) ;truncate line
(menu-bar-mode -1)

;;full screen
;(setq initial-frame-alist (quote ((fullscreen . maximized))))
;(toggle-frame-fullscreen)

;;(load-theme 'monokai)

(provide 'init-ui)
