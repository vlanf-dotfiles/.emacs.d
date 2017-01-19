;; 28.11.2016 - first changing 
;;----------------------------------------------------------------------

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

;;----------------------------------------------------------------------

;(global-set-key (kbd "C-x M-f") (find-file "~/.emacs.d/init.el" t))
(global-set-key (kbd "M-p") (lambda () (interactive) (previous-line 4))) 
(global-set-key (kbd "M-n") (lambda () (interactive) (forward-line 4))) 


;; Максимизировать окно на старте 
;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;(add-hook 'emacs-startup-hook 'toggle-frame-maximized)

;;----------------------------------------------------------------------

;; Выключаем свистоперделки

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(global-hl-line-mode 1) ;; Везде подсвечивать текущую строку 
(column-number-mode 1) ;; Показывать номер столбца
(size-indication-mode 1) ;; Показывать размер буфера
(show-paren-mode 1) ;; Выделять соответственные скобки

;(desctop-save-mode 1)

;; Подстановка вариантов при вводе в минибуфер
;(icomplete-mode 1)

(add-hook 'prog-mode-hook 'linum-mode) ;; Включать отображение строк для прогерских режимов
(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 100)) ;; Фикс бага отображения номеров строк при масштабировании текста

(prefer-coding-system 'utf-8-dos) ;; Так надо

 ;(global-set-key (kbd "C-x C-b") 'ibuffer)
 ; (autoload 'ibuffer "ibuffer" "List buffers." t)

;;----------------------------------------------------------------------

(set-register ?i '(file . "~/.emacs.d/init.el")) ;; init.el доступен по сочетанию C-x r j i

;;----------------------------------------------------------------------

(setq visible-bell t) ;; Не пищать при ошибках
(setq default-input-method 'russian-computer) ;; Включать русский input-type по-умолчанию
(setq default-directory "D:/Users/Vladimir/Documents/") ;; Директория по-умолчанию для открытия файлов
;(setq scroll-step 1)
(setq scroll-conservatively 9999) ;; Плавная прокрутка
;(setq scroll-margin 2)
(setq-default tab-width 4) ;; Таб - 4 пробела
;;(setq initial-buffer-choice t) ;; Отображение буфера *scratch* при запуске
(setq backup-directory-alist `(("." . "~/.emacs.d/saves"))) 

;;-Автоматически-добавленный-емаксом-код--------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   (vector "#c5c8c6" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#373b41"))
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
	("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "f81a9aabc6a70441e4a742dfd6d10b2bae1088830dc7aba9c9922f4b1bd2ba50" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#373b41")
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
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(package-selected-packages (quote (material-theme color-theme-sanityinc-tomorrow org)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(sentence-end-double-space nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#cc6666")
	 (40 . "#de935f")
	 (60 . "#f0c674")
	 (80 . "#b5bd68")
	 (100 . "#8abeb7")
	 (120 . "#81a2be")
	 (140 . "#b294bb")
	 (160 . "#cc6666")
	 (180 . "#de935f")
	 (200 . "#f0c674")
	 (220 . "#b5bd68")
	 (240 . "#8abeb7")
	 (260 . "#81a2be")
	 (280 . "#b294bb")
	 (300 . "#cc6666")
	 (320 . "#de935f")
	 (340 . "#f0c674")
	 (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'sanityinc-tomorrow-night) 
(put 'upcase-region 'disabled nil)
