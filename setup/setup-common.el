(add-to-list 'default-frame-alist '(font . "Roboto Mono 10"))
(setq default-directory "~/")

(global-set-key (kbd "C-<tab>") 'completion-at-point)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-O") (lambda () (interactive) (other-window -1)) )
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'switch-to-buffer)
(global-set-key (kbd "S-C-M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-M-<down>") 'shrink-window)
(global-set-key (kbd "S-C-M-<up>") 'enlarge-window)
(global-set-key (kbd "C-M->") 'scroll-left)
(global-set-key (kbd "C-M-<") 'scroll-right)
(global-set-key (kbd "C-v") (lambda () (interactive) (scroll-up-command 8)) )
(global-set-key (kbd "M-v") (lambda () (interactive) (scroll-down-command 8)) )
(global-set-key (kbd "C-M-v") (lambda () (interactive) (scroll-other-window 8)) )

(global-set-key [C-wheel-up]	'text-scale-increase)
(global-set-key [C-mouse-4]		'text-scale-increase)
(global-set-key [C-wheel-down]	'text-scale-decrease)
(global-set-key [C-mouse-5]		'text-scale-decrease)

(global-unset-key (kbd "<XF86Back>"))
(global-unset-key (kbd "<XF86Forward>"))

(setq-default tab-width 4
			  c-backspace-function 'backward-delete-char
			  c-basic-offset 4
			  c-default-style "linux")

(setq display-time-24hr-format t
	  default-input-method 'russian-computer
	  backup-directory-alist `(("." . "~/.emacs.d/saves"))
	  visible-bell 1
	  inhibit-startup-screen t
	  tab-stop-list '(4 8 12 16 20 24 28 32 36 40)
	  sentence-end-double-space nil
	  read-buffer-completion-ignore-case t
	  ;; blink-cursor-blinks 5			; 0 for forever
	  scroll-conservatively 9999
	  scroll-margin 1
	  ;; line-number-display-limit 10000
	  next-screen-context-lines 2
	  global-mark-ring-max 5000
	  kill-ring-max 5000
	  )

(fset 'yes-or-no-p 'y-or-n-p)

(when (display-graphic-p)
	(progn
	  (tool-bar-mode -1)
	  (menu-bar-mode -1)
	  (scroll-bar-mode -1)))
(blink-cursor-mode 0)
(line-number-mode 1)
(column-number-mode 1)
(size-indication-mode 1)
(show-paren-mode 1)
(display-time-mode 1)
(delete-selection-mode 1)
(add-hook 'prog-mode-hook (if (>= emacs-major-version 26)
							  'display-line-numbers-mode
							'linum-mode))
;; (add-hook 'prog-mode-hook
;;           (lambda () (interactive)
;; 			(setq show-trailing-whitespace 1)))

;; (semantic-mode 1)
;; (global-semantic-idle-summary-mode 1)
(add-hook 'semantic-mode-hook
		  (lambda () (local-set-key (kbd "C-c , .")
									'semantic-ia-fast-jump)))

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; (if (string-equal system-type "windows-nt")
;; 	(semantic-add-system-include "D:/MinGW/include" 'c-mode))

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
(put 'scroll-left 'disabled nil)

(provide 'setup-common)

