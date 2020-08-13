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
		      nyan-mode  ;; 彩虹猫
		      ;; Major Mode
		      js2-mode
		      web-mode
		      ;; Minor Mode
		      
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


;; 待开启，性能销号较高
;;(require 'nyan-mode)
;;(nyan-mode t)


;; web编辑器设置
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)    
(setq tab-width 2)

(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(set (make-local-variable
      'company-backends) '((
			    company-web-html
			    company-dabbrev-code
			    company-dabbrev)))

