;; haskell

(use-package haskell-mode
  :ensure t
  :init
  (progn
    (setq
     haskell-indentation-layout-offset 2
     haskell-indentation-starter-offset 2
     haskell-indentation-left-offset 2
     haskell-indentation-ifte-offset 2
     haskell-indentation-where-pre-offset 2
     haskell-indentation-where-post-offset 2)))

(provide 'init-haskell)
