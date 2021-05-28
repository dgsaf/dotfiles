;; tools

(use-package aggressive-indent
  :ensure t
  :init
  (progn
    (electric-indent-mode 1)
    (aggressive-indent-global-mode)
    (add-to-list 'aggressive-indent-excluded-modes 'nix-mode)))

(use-package company
  :ensure t
  :init
  (progn
    (global-company-mode)))

(use-package flyspell
  :ensure t
  :init
  (progn
    (add-hook 'prog-mode-hook #'flyspell-prog-mode)
    (setq-default ispell-program-name "aspell")
    (setq ispell-extra-args '("--sug-mode=fast" "--lang=en_GB"))
    (setq
     ispell-list-command "--list"
     ispell-dictionary "en_GB")))

(use-package flycheck
  :ensure t
  :bind
  ("C-c f l" . flycheck-list-errors)
  ("C-c f n" . flycheck-next-error)
  ("C-c f p" . flycheck-previous-error)
  :init
  (progn
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
    (setq
     flycheck-display-errors-delay 0.0)))

(use-package multiple-cursors
  :ensure t
  :bind
  ("C-c m c" . mc/edit-lines))

(use-package smart-comment
  :ensure t
  :bind
  ("M-;" . smart-comment))

(use-package undo-tree
  :ensure t
  :bind
  ("C-c u" . undo-tree-visualize)
  ("C-/" . undo-tree-undo)
  ("C-?" . undo-tree-redo)
  :init
  (progn
    (setq
     undo-tree-visualizer-diff t
     undo-tree-visualizer-timestamps t)))

(use-package yasnippet
  :ensure t
  :config
  (progn
    (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
    (add-hook 'yas-after-exit-snippet-hook #'newline-and-indent)))

(use-package writegood-mode
  :ensure t
  :init
  (progn
    (writegood-mode)))

(provide 'init-tools)
