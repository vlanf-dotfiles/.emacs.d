;; -*- lexical-binding: t; -*-
(shell-command "git pull origin master")

;; (add-to-list 'load-path "~/.emacs.d/init/")


(setq default-directory "~/.emacs.d/")

(add-to-list 'load-path "~/.emacs.d/init/42")
(load-file "./init/42/header.el")
(load-file "./init/init-common.el")
(load-file "./init/init-packages.el")
(load-file "./init/init-custom.el")

(setq default-directory "~/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(theme-buffet ef-themes mood-line dap-mode company-box lsp-ivy lsp-ui lsp-mode which-key catppuccin-theme flycheck projectile modus-themes magit diminish company-c-headers color-theme-sanityinc-tomorrow buffer-move)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
