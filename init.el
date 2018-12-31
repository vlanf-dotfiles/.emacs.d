(require 'package)

(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom/")
(add-to-list 'load-path "~/.emacs.d/custom/42")

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
	(package-install 'use-package))

(require 'header)						; 42 header
(require 'setup-common)
(require 'setup-packages)
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
