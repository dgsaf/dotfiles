;; dgsaf-theme

(deftheme dgsaf
  "dgsaf's personal theme")

(let ((class '((class color) (min-colors 89)))
      (main-fg "white smoke")
      (main-bg "dim gray")

      (main-bg-light "gray50")
      (main-bg-lighter "gray60")
      (main-bg-lightest "gray70")

      (main-bg-dark "gray30")
      (main-bg-darker "gray20")
      (main-bg-darkest "gray10"))
  (custom-theme-set-faces
   'dgsaf

   ;; default
   `(default
      ((,class
        :foreground , main-fg
        :background , main-bg)))

   ;; cursor
   `(cursor
     ((,class
       :inverse-video t)))

   ;; font-lock
   `(font-lock-builtin-face
     ((,class
       :foreground , "pink")))
   `(font-lock-comment-delimiter-face
     ((,class
       :foreground , "burlywood1")))
   `(font-lock-comment-face
     ((,class
       :foreground , "burlywood1")))
   `(font-lock-constant-face
     ((,class
       :foreground , "yellow")))
   `(font-lock-doc-face
     ((,class
       :foreground , "burlywood1")))
   `(font-lock-function-name-face
     ((,class
       :foreground , "spring green")))
   `(font-lock-keyword-face
     ((,class
       :foreground , "light salmon")))
   `(font-lock-preprocessor-face
     ((,class
       :foreground , "cyan")))
   `(font-lock-string-face
     ((,class
       :foreground , "burlywood1")))
   `(font-lock-type-face
     ((,class
       :foreground , "orange")))
   `(font-lock-variable-name-face
     ((,class
       :foreground , "pink")))

   ;; company
   `(company-scrollbar-bg
     ((,class
       :background , "dark gray")))
   `(company-scrollbar-fg
     ((,class
       :background , "black")))
   `(company-tooltip
     ((,class
       :background , main-fg
       :foreground , main-bg)))
   `(company-tooltip-common
     ((,class
       :foreground , "black")))
   `(company-tooltip-selection
     ((,class
       :background , "gainsboro")))

   ;; flymake
   `(flymake-error
     ((,class
       :background , "dark red")))
   `(flymake-note
     ((,class
       :background , "yellow")))
   `(flymake-warning
     ((,class
       :background , "orange")))

   ;; flyspell
   `(flyspell-duplicate
     ((,class
       :background , "orange")))
   `(flyspell-incorrect
     ((,class
       :background , "dark red")))

   ;; highlight
   `(highlight
     ((,class
       :foreground , main-bg
       :background , main-fg)))

   ;; hl-line
   `(hl-line
     ((,class
       :background , main-bg-light)))

   ;; ido
   `(ido-first-match
     ((,class
       :foreground , main-fg)))
   `(ido-only-match
     ((,class
       :foreground , "burlywood1")))
   `(ido-subdir
     ((,class
       :foreground , "light salmon")))

   ;; isearch
   `(isearch
     ((,class
       :foreground , "brown4"
       :background , "palevioletred2")))
   `(isearch-fail
     ((,class
       :foreground , "palevioletred2"
       :background , "brown4")))
   `(lazy-highlight
     ((,class
       :foreground , "palevioletred2"
       :background , "brown4")))

   ;; match
   `(isearch
     ((,class
       :foreground , "brown4"
       :background , "palevioletred2")))

   ;; minibuffer-prompt
   `(minibuffer-prompt
     ((,class
       :foreground , "pink")))

   ;; mode-line
   `(mode-line
     ((,class
       :foreground , main-bg-dark
       :background , main-bg-lightest)))
   `(mode-line-inactive
     ((,class
       :foreground , main-bg-lightest
       :background , main-bg-dark)))

   ;; region
   `(region
     ((,class
       :foreground , main-bg
       :background , main-fg)))

   ;; show-paren
   `(show-paren-match
     ((,class
       :background , main-bg-lighter)))
   `(show-paren-mismatch
     ((,class
       :background , "orange")))

   ;; smart-parens
   `(sp-pair-overlay-face
     ((,class
       :background , main-bg-lighter)))
   )
  )

(provide-theme 'dgsaf)

(provide 'dgsaf-theme)
