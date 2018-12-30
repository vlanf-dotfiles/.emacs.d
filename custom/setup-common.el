(setq inhibit-startup-screen t)

(global-set-key (kbd "C-<tab>") 'completion-at-point)
(global-set-key (kbd "M-o") 'other-window)
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

(global-set-key [C-wheel-up]  'text-scale-increase)
(global-set-key [C-mouse-4]  'text-scale-increase)
(global-set-key  [C-wheel-down] 'text-scale-decrease)
(global-set-key [C-mouse-5]  'text-scale-decrease)

(setq display-time-24hr-format t)
(setq default-input-method 'russian-computer)
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

(setq-default tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40))

(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")

;; undisable
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
(put 'scroll-left 'disabled nil)

;; misc
(setq sentence-end-double-space nil)
(setq read-buffer-completion-ignore-case t)
(blink-cursor-mode 0)
;;(setq blink-cursor-blinks 5)			; 0 for forever
(setq scroll-conservatively 9999)
(setq scroll-margin 2)
;;(setq line-number-display-limit 10000)
(setq next-screen-context-lines 2)

(fset 'yes-or-no-p 'y-or-n-p)

(setq global-mark-ring-max 5000
      kill-ring-max 5000)

(provide 'setup-common)
