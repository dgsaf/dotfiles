;; navigation

(use-package avy
  :ensure t
  :bind
  ("C-c s" . avy-goto-word-1))

(use-package ido
  :ensure t
  :init
  (progn
    (setq
     ido-virtual-buffers '())
    (ido-mode))
  :config
  (progn
    (setq
     ido-cannot-complete-command 'exit-minibuffer
     ido-use-virtual-buffers t
     ido-max-prospects 10
     ido-auto-merge-delay-time 2
     ido-create-new-buffer 'always)))

(use-package ido-vertical-mode
  :ensure t
  :init
  (progn
    (ido-vertical-mode)))

(use-package recentf
  :ensure t
  :bind
  ("C-c C-r" . recentf-open-files)
  :init
  (progn
    (recentf-mode))
  :config
  (progn
    (setq
     recentf-max-saved-items 200
     recentf-max-menu-items 15
     recentf-auto-cleanup 300)))

(use-package smex
  :ensure t
  :bind
  ("M-x" . smex)
  :init
  (progn
    (smex-initialize)))

(provide 'init-navigation)
