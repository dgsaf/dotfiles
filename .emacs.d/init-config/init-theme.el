;; theme

(setq
 line-colour "#b4cdcd"
 sexp-colour "#e0eeee"
 paren-colour "#e0eeee"

 fg-colour "#e0eeee"
 bg-colour "#2a4d69"

 palette-1 "#528b8b"
 palette-3 "#388e8e"
 palette-4 "#7ac5cd"
 palette-5 "#66cccc"
 palette-6 "#79cdcd"
 palette-6 "#b0e2ff"
 palette-7 "#e0eeee")

;; (use-package basic-theme
;;   :ensure t)

;; (use-package github-theme
;;   :ensure t)

(use-package paper-theme
  :ensure t)

(enable-theme 'paper)

(provide 'init-theme)
