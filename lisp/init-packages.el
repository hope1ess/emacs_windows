 (when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

(defvar my/packages '(
		      company
		      ;; theme
		      dracula-theme
		      ;; better editor
		      helm
		      swiper
		      smartparens
		      hungry-delete
		      ) "Default packages")

(setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))
		    

;;----------------------------------------------------------------------------

;; company-mode
(global-company-mode 1)

;; load-thme
(load-theme 'dracula 1)


(require 'helm)


(require 'smartparens-config)
(add-hook 'c-mode-hook 'smartparens-mode);;在c-mode中使用括号补全
(add-hook 'c++-mode-hook 'smartparens-mode);;在c++-mode中使用括号补全
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
