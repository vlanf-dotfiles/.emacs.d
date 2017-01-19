;; packages
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ;("marmalade" . "https://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(require 'package)
(package-initialize)
;(package-refresh-contents)

(setq my-packages
	   '(
		 color-theme-sanityinc-tomorrow
		 highlight-indent-guides
		 ))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; credentials
(setq user-full-name "Nefyodov VE")
(setq user-mail-address "nefyodovve@gmail.com")

;; highlight-indentation
;(setq highlight-indent-guides-method 'column)
;(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; Global-set-key
(global-set-key (kbd "M-p") (lambda () (interactive) (previous-line 4))) 
(global-set-key (kbd "M-n") (lambda () (interactive) (forward-line 4))) 

;; ui
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell t) ;; Error sound  window blinking
(setq inhibit-startup-screen t)
(setq frame-title-format "emacs %b")

;; modes
(global-hl-line-mode 1) ;; Highlight current line
(column-number-mode 1)
(size-indication-mode 1) ;; Size of buffer
(show-paren-mode 1) ;; Show parentheses
(display-time-mode 1)
(setq display-time-24hr-format t)

(add-hook 'prog-mode-hook 'linum-mode) ;; Line number mode for prog-modes
(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100)) ;; Zooming with linum bugfix

;; encodings
(prefer-coding-system 'utf-8-dos)

;(global-set-key (kbd "C-x C-b") 'ibuffer)
;(autoload 'ibuffer "ibuffer" "List buffers." t)

;; registers
(set-register ?i '(file . "~/.emacs.d/init.el")) ;; init.el by C-x r j i

;; defaults
(setq default-input-method 'russian-computer)
(setq default-directory "~/Documents/") ;; for open file
(setq-default tab-width 4) ;; Таб - 4 пробела
(setq backup-directory-alist `(("." . "~/.emacs.d/saves"))) 

;; scroll
;(setq scroll-step 1)
(setq scroll-conservatively 9999) ;; Плавная прокрутка
;(setq scroll-margin 2)


;;----------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(package-selected-packages
   (quote
	(minimap highlight-indent-guides color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized))))

(load-theme 'sanityinc-tomorrow-bright)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
