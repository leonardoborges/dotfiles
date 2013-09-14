(add-to-list 'load-path "~/.emacs.d/custom/")
(load "init-default-packages")
(load "init-project-roots")
(load "init-ido-customizations")
(load "init-custom-functions")
(load "init-clojure-customizations")

;;UTF-8 Stuff
(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)

;;Ruby/Rails
(add-to-list 'load-path "~/.emacs.d/rhtml/")
(require 'rhtml-mode)

;;Customizations
(setq inhibit-startup-message t)        ; Do without annoying startup msg.
(add-hook 'js-mode-hook 
      '(lambda() 
        (setq c-basic-offset 4)
        (setq indent-tabs-mode nil)))


;;Paredit
(add-hook 'ruby-mode-hook       'esk-paredit-nonlisp)

;;Color themes
(add-to-list 'load-path "/Users/lborges/.emacs.d/themes/emacs-color-theme-solarized/")
(require 'color-theme-solarized)
;;(color-theme-solarized-dark)
(color-theme-monokai)

;; for use with emacsclient
(require 'server)
(unless (server-running-p)
  (server-start))

;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d24e10524bb50385f7631400950ba488fa45560afcadd21e6e03c2f5d0fad194" default)))
 '(inferior-lisp-program "lein repl")
 '(js-indent-level 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'ido-exit-minibuffer 'disabled nil)