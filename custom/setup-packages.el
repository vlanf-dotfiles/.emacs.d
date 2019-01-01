(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-verbose t)

;;(use-package monokai-theme)
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
(use-package company-c-headers
  :config
  (add-to-list 'company-backends 'company-c-headers)
  (setq company-c-headers-path-system '("D:\\MinGW\\include")))
(use-package magit
  :bind ("C-x g" . 'magit-status))
(use-package projectile)
(provide 'setup-packages)
