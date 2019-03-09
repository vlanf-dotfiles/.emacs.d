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

(require 'setup-common)
(require 'setup-packages)
(require 'setup-custom)
(require 'header)						; 42 school header

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(projectile php-mode lush-theme counsel swiper ivy disaster diminish helm-themes heroku-theme cherry-blossom-theme ample-zen-theme ample-zen color-theme-sanityinc-tomorrow color-theme-synityinc-tomorrow colkor-theme-synityinc-tomorrow cypebpunk-theme cypebpunk use-package monokai-theme markdown-mode magit helm-swoop helm-projectile helm-gtags flycheck company-c-headers buffer-move avy autothemer))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
