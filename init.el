(require 'package)

(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom/")
(add-to-list 'load-path "~/.emacs.d/custom/42")

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
	(package-install use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-verbose t)
(use-package buffer-move
  :bind (("<C-S-up>"	.'buf-move-up)
		 ("<C-S-down>"	.'buf-move-down)
		 ("<C-S-left>"	.'buf-move-left)
		 ("<C-S-right>"	.'buf-move-right)))
(use-package flycheck
  :config
  (add-hook 'c-mode-common-hook 'flycheck-mode))
(use-package company
  :config
  (add-hook 'prog-mode-hook 'company-mode))
(use-package magit
  :bind (("C-x g" . 'magit-status)
		 ))


;; (use-package projectile
;;   :hook prog-mode)
(use-package monokai-theme
  :config
  (load-theme 'monokai t))

(require 'header)						; 42 header
(require 'setup-common)
(require 'setup-modes)
(require 'setup-helm)
(require 'setup-custom)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(magit helm-projectile helm-swoop flycheck projectile use-package monokai-theme markdown-mode helm-gtags buffer-move))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
