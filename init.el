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
 '(custom-safe-themes
   (quote
    ("aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" default)))
 '(package-selected-packages
   (quote
    (pdf-tools undo-tree key-chord company-irony company-c-headers helm popup-kill-ring mark-multiple hungry-delete expand-region swiper dracula-theme zerodark-theme spaceline company avy smex ido-vertical-mode org-bullets beacon evil-escape use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
