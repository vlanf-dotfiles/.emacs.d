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
 '(compilation-message-face (quote default))
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
	(("#3C3D37" . 0)
	 ("#679A01" . 20)
	 ("#4BBEAE" . 30)
	 ("#1DB4D0" . 50)
	 ("#9A8F21" . 60)
	 ("#A75B00" . 70)
	 ("#F309DF" . 85)
	 ("#3C3D37" . 100))))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
	(mokokai-theme ample-zen cyberpunk-theme company-c-headers c-eldoc magit helm-projectile helm-swoop flycheck projectile use-package monokai-theme markdown-mode helm-gtags buffer-move)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(weechat-color-list
   (quote
	(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
