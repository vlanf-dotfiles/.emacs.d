;; packages
(package-initialize)

(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "http://melpa.org/packages/") t)

(add-to-list 'load-path "~/.emacs.d/packages/")
 
(setq my-packages
	   '(
		 color-theme-sanityinc-tomorrow
		 highlight-indent-guides
		 magit
		 ))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; credentials
(setq user-full-name "NVE")
(setq user-mail-address "nefyodovve@gmail.com")

;; ui
(tool-bar-mode -1) 
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell t)
(setq inhibit-startup-screen t)
(setq frame-title-format "GNU Emacs [%b]")
(setq initial-scratch-message "")

;; global-set-key
(global-set-key (kbd "C-<tab>") 'completion-at-point)
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'switch-to-buffer)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "C-x C-b") 'ibuffer-other-window)
(global-set-key (kbd "C-M->") 'scroll-left)
(global-set-key (kbd "C-M-<") 'scroll-right)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; modes
;;(global-hl-line-mode 1) ;; Highlight current line
(column-number-mode 1)
(size-indication-mode 1)
(show-paren-mode 1)
(display-time-mode 1) 
(setq display-time-24hr-format t)
(delete-selection-mode 1)
;; (auto-revert-mode 1)
(add-hook 'prog-mode-hook 'linum-mode)

;;Zooming with linum bugfix
(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100))

;; encoding
(prefer-coding-system 'utf-8-dos)
(add-hook 'shell-mode-hook
		  (lambda () (set-buffer-process-coding-system
					  'windows-1251 'windows-1251)))

;; defaults
(setq default-input-method 'russian-computer)
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))
(setq default-directory "~/Documents/") ;; for open file
(setq-default tab-width 4)
(setq tab-stop-list '(4 8 12))

;; undisable
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
(put 'scroll-left 'disabled nil)

;; misc
(setq sentence-end-double-space nil)
(setq read-buffer-completion-ignore-case t)
(setq blink-cursor-blinks 5)			; 0 for forever
(setq scroll-conservatively 9999)
;;(setq line-number-display-limit 10000)
(setq next-screen-context-lines 4)
(setq remember-notes-initial-major-mode 'outline-mode)
(fset 'yes-or-no-p 'y-or-n-p)

;;--------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
