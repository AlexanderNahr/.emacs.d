;; add melpa package repository
;; source: https://melpa.org/#/getting-started
;; Note that you'll need to run M-x package-refresh-contents or M-x package-list-packages to ensure that Emacs has fetched the MELPA package list before you can install packages with M-x package-install or similar.
;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")
			 ))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))





(when (version<= "26.0.50" emacs-version )
 (global-display-line-numbers-mode)
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-irony company-c-headers helm popup-kill-ring mark-multiple hungry-delete expand-region swiper dracula-theme zerodark-theme spaceline company avy smex ido-vertical-mode org-bullets beacon evil-escape use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
