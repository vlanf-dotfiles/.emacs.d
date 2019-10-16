(shell-command "git pull origin master")

(require 'package)

(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/setup/")
(add-to-list 'load-path "~/.emacs.d/setup/42")

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
	(package-install 'use-package))

(require 'setup-common)
(require 'setup-packages)
(require 'setup-custom)
(require 'header)						; 42 school header
