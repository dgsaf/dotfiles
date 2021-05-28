;; package initialisation
(require 'package)
(setq package-archives
  (append package-archives
    '(("melpa" . "http://melpa.org/packages/")
      ("marmalade" . "http://marmalade-repo.org/packages/")
      ("gnu" . "http://elpa.gnu.org/packages/")
      ("elpy" . "http://jorgenschaefer.github.io/packages/"))))

(package-initialize)

(if (not (package-installed-p 'use-package))
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)
(setq use-package-verbose t)

(add-to-list 'load-path "~/.emacs.d/init-config/")

;; internal
(require 'init-details)
(require 'init-startup)
(require 'init-backup)
(require 'init-display)
(require 'init-ergonomics)
(require 'init-buffers)
(require 'init-bindings)
(require 'init-theme)

;; programming
(require 'init-cpp)
(require 'init-fortran)
(require 'init-haskell)
(require 'init-nix)
(require 'init-tex)

;; external
(require 'init-git)
(require 'init-navigation)
(require 'init-networking)
(require 'init-org)
(require 'init-tools)
(require 'init-ui)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(f90-type-indent 2)
 '(org-agenda-files
   (quote
    ("/home/tom/.emacs.d/org/home.org" "/home/tom/.emacs.d/org/refile.org" "/home/tom/.emacs.d/org/university.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
