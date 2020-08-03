;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; 解决中文字体卡顿
(package-initialize)

(setq inhibit-compacting-font-caches t)


(load-file "~/.emacs.d/lisp/init-better-defaults.el")
(load-file "~/.emacs.d/lisp/init-packages.el")
