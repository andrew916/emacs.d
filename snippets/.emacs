;; .emacs -- Summary
;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
;; If you want to use latest version
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melph stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; (package-refresh-contents)
;; (package-install 'flycheck)

;; uncomment this line to disable loading of "default.el" at startup
(setq inhibit-default-init t)

;; Hide splash-screen and startup-message
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Mac settings
(setq mac-command-modifier 'meta)

;; fullscreen on start-up
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; work around for a bug of emacs 24.3
;; (setq save-interprogram-paste-before-kill nil)

;; set personal info
(setq user-full-name "Andrew Wang")

(set-frame-font "Courier New-15")

(set-foreground-color "white")
(set-background-color "black")

(set-scroll-bar-mode 'nil)
(tool-bar-mode -1)

(set-cursor-color "cyan")
(setq-default cursor-type 'box)

(setq tab-width 4)

;; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)

;; display date and time
(setq display-time-day-and-date t)
(display-time)

;; utf-8 settings
(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)

;; backup
(setq backup-directory-alist (quote (("." . "~/.emacs.d/backup"))))
(setq backup-by-copying t)

;; display images
(auto-image-file-mode t)

;; always end a file with a newline
(setq require-final-newline 'query)

(setq-default show-trailing-whitespace nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; avoid crashing emacs by pressing 'print' button on menu
(fset 'print-buffer 'ignore)
(setq lpr-command "")
(setq printer-name "")

;; wider context view
(setq scroll-margin 3 scroll-conservatively 10000)

;; shell
(setq shell-file-name "/bin/zsh")
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)
(global-set-key (kbd "C-c s") 'eshell)

;; refresh buffer
(global-set-key [(f5)] 'revert-buffer)

;; regex replace
(global-set-key [(f12)] 'rgrep)
(global-set-key [(f9)] 'replace-regexp)


(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key [C-left] 'backward-word)
(global-set-key [C-right] 'forward-word)
(global-set-key [C-up] 'backward-paragraph)
(global-set-key [C-down] 'forward-paragraph)

;; google c style
;; (load "~/.emacs.d/site-lisp/google-c-style.el")
;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c++-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
;; (add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ido-mode t)

(desktop-save-mode t)

(require 'flycheck)
(global-flycheck-mode)

(require 'find-file-in-project)
(global-set-key (kbd "C-c f") 'find-file-in-project)

(require 'auto-complete)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

(provide '.emacs)

;;; .emacs ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (desktop+ smex find-file-in-project flycheck auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
