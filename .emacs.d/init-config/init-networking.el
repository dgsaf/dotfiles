;; networking

(use-package gnus
  :ensure t
  :config
  (progn
    (setq
     mm-discouraged-alternative '("text/html" "text/richtext"))))

(use-package w3m
  :ensure t
  :bind
  (:map w3m-mode-map
        ("C-<tab>" . w3m-next-buffer)
        ("C-S-<iso-lefttab>" . w3m-previous-buffer)
        ("C->" . w3m-view-next-page)
        ("C-<" . w3m-view-previous-page))
  :config
  (progn
    (w3m-lnum-mode)
    (setq
     w3m-use-cookies nil
     w3m-new-session-in-background t
     w3m-toggle-inline-image t)))

(provide 'init-networking)
