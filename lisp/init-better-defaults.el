;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

(menu-bar-mode -1)
;; 显示行号
(global-linum-mode 1)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;更改光标样式
(setq-default cursor-type 'bar)

;; 禁止自动备份文件
(setq make-backup-files nil)

;; 高亮当前行
(global-hl-line-mode 1)

(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)
