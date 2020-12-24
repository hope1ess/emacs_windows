;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

;; 解决中文字体卡顿
(setq inhibit-compacting-font-caches t)

(load-file "~/.emacs.d/lisp/init-packages.el")
(load-file "~/.emacs.d/lisp/init-better-defaults.el")
(load-file "~/.emacs.d/lisp/init-kbd.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "dcdd1471fde79899ae47152d090e3551b889edf4b46f00df36d653adc2bf550d" default))
 '(package-selected-packages
   '(undo-tree company dracula-theme helm swiper smartparens hungry-delete nyan-mode js2-mode web-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
