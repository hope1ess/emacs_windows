;;kbd
(defun open-my-init-packages-file()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))
(global-set-key (kbd"<f3>") 'open-my-init-packages-file)
;;定义packages快捷键F3

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)


(setq recentf-max-menu-items 25);;set recentf file max 25



(add-hook 'emacs-lisp-mode-hook 'show-paren-mode);;括号匹配
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))));;句中显示括号
