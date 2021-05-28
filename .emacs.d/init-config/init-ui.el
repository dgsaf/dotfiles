;; ui

(require 'init-theme)

;; (use-package fill-column-indicator
;;   :ensure t
;;   :init
;;   (progn
;;     (add-hook 'prog-mode-hook #'fci-mode)
;;     (setq
;;      fci-rule-column 80
;;      fci-rule-width 5)))

(use-package highlight-numbers
  :ensure t
  :config
  (progn
    (add-hook 'prog-mode-hook #'highlight-numbers-mode)))

(use-package hl-line
  :ensure t
  :init
  (global-hl-line-mode))

;; (use-package hl-sexp
;;   :ensure t
;;   :init
;;   (global-hl-sexp-mode)))

(use-package smart-mode-line
  :ensure t)

(use-package smartparens
  :ensure t
  :init
  (progn
    (smartparens-global-mode)
    (show-smartparens-global-mode))
  :config
  (progn
    (sp-pair "'" nil :actions :rem)
    (set-face-attribute
     'sp-show-pair-match-face nil)))

(use-package volatile-highlights
  :ensure t
  :config
  (volatile-highlights-mode))

(use-package whitespace
  :ensure t
  :bind
  ("C-c w" . whitespace-mode)
  :init
  (progn
    (add-hook 'before-save-hook #'whitespace-cleanup))
  :config
  (progn
    (setq
     whitespace-line-column 80
     whitespace-style '(face space-mark tab-mark))))

(provide 'init-ui)
