;; tex

(use-package auctex
  :ensure t
  :defer t
  :mode ("\\.tex\\'" . LaTeX-mode)
  :commands (latex-mode LaTeX-mode plain-tex-mode)
  :bind
  ("C-c c" . back-to-indentation)
  :init
  (progn
    (add-hook 'LaTeX-mode-hook #'LaTeX-math-mode)
    (add-hook 'LaTeX-mode-hook #'turn-on-flyspell)
    (add-hook 'LaTeX-mode-hook #'turn-on-reftex)
    (setq
     LaTeX-indent-level 2
     TeX-brace-indent-level 2

     TeX-auto-save t

     TeX-parse-self t
     TeX-source-correlate-method 'synctex
     TeX-source-correlate-mode t

     TeX-view-program-selection '((output-pdf "Zathura"))

     font-latex-fontify-script nil
     font-latex-fontify-sectioning 'color)))

(use-package bibtex
  :ensure t
  :init
  (progn
    (setq
     bibtex-align-at-equal-sign t)))

(use-package reftex
  :ensure t
  :init
  (progn
    (setq
     reftex-enable-partial-scans t
     reftex-save-parse-info t
     reftex-use-multiple-selection-buffers t
     reftex-plug-into-AUCTeX t)))

(provide 'init-tex)
