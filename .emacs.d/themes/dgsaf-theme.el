;; dgsaf-theme

(deftheme dgsaf
  "dgsaf's personal theme")

(let
    ((class '((class color) (min-colors 89)))
     (main-fg "white smoke")
     (main-bg "dim gray")

     (main-bg-light-1 "gray50")
     (main-bg-light-2 "gray60")
     (main-bg-light-3 "gray70")
     (main-bg-light-4 "gray80")
     (main-bg-light-5 "gray90")

     (main-bg-dark-1 "gray30")
     (main-bg-dark-2 "gray20")
     (main-bg-dark-3 "gray10")

     (warning-bg-minor "yellow")
     (warning-bg "orange")
     (warning-bg-major "dark red")

     (search-fg "brown4")
     (search-bg "palevioletred2")

     (builtin-fg "pink")
     (comment-fg "burlywood1")
     (constant-fg "yellow")
     (function-fg "spring green")
     (keyword-fg "light salmon")
     (preprocessor-fg "cyan")
     (string-fg "burlywood1")
     (type-fg "orange")
     (variable-name-fg "pink"))
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
       :foreground , builtin-fg)))
   `(font-lock-comment-delimiter-face
     ((,class
       :foreground , comment-fg)))
   `(font-lock-comment-face
     ((,class
       :foreground , comment-fg)))
   `(font-lock-constant-face
     ((,class
       :foreground , constant-fg)))
   `(font-lock-doc-face
     ((,class
       :foreground , comment-fg)))
   `(font-lock-function-name-face
     ((,class
       :foreground , function-fg)))
   `(font-lock-keyword-face
     ((,class
       :foreground , keyword-fg)))
   `(font-lock-preprocessor-face
     ((,class
       :foreground , preprocessor-fg)))
   `(font-lock-string-face
     ((,class
       :foreground , string-fg)))
   `(font-lock-type-face
     ((,class
       :foreground , type-fg)))
   `(font-lock-variable-name-face
     ((,class
       :foreground , variable-name-fg)))

   ;; company
   `(company-scrollbar-bg
     ((,class
       :background , main-bg-light-1)))
   `(company-scrollbar-fg
     ((,class
       :background , main-bg-dark-3)))
   `(company-tooltip
     ((,class
       :background , main-fg
       :foreground , main-bg)))
   `(company-tooltip-common
     ((,class
       :foreground , main-bg-dark-3)))
   `(company-tooltip-selection
     ((,class
       :background , main-bg-light-5)))

   ;; flymake
   `(flymake-error
     ((,class
       :background , warning-bg-major)))
   `(flymake-note
     ((,class
       :background , warning-bg-minor)))
   `(flymake-warning
     ((,class
       :background , warning-bg)))

   ;; flyspell
   `(flyspell-duplicate
     ((,class
       :background , warning-bg)))
   `(flyspell-incorrect
     ((,class
       :background , warning-bg-major)))

   ;; highlight
   `(highlight
     ((,class
       :foreground , main-bg
       :background , main-fg)))

   ;; hl-line
   `(hl-line
     ((,class
       :background , main-bg-light-1)))

   ;; ido
   `(ido-first-match
     ((,class
       :foreground , main-fg)))
   `(ido-only-match
     ((,class
       :foreground , main-fg)))
   `(ido-subdir
     ((,class
       :foreground , string-fg)))

   ;; isearch
   `(isearch
     ((,class
       :foreground , search-fg
       :background , search-bg)))
   `(isearch-fail
     ((,class
       :foreground , search-bg
       :background , search-fg)))
   `(lazy-highlight
     ((,class
       :foreground , search-bg
       :background , search-fg)))

   ;; match
   `(isearch
     ((,class
       :foreground , search-fg
       :background , search-bg)))

   ;; minibuffer-prompt
   `(minibuffer-prompt
     ((,class
       :foreground , main-fg)))

   ;; mode-line
   `(mode-line
     ((,class
       :foreground , main-bg-dark-1
       :background , main-bg-light-4)))
   `(mode-line-inactive
     ((,class
       :foreground , main-bg-light-4
       :background , main-bg-dark-1)))

   ;; region
   `(region
     ((,class
       :foreground , main-bg
       :background , main-fg)))

   ;; show-paren
   `(show-paren-match
     ((,class
       :background , main-bg-light-2)))
   `(show-paren-mismatch
     ((,class
       :background , warning-bg)))

   ;; smart-parens
   `(sp-pair-overlay-face
     ((,class
       :background , main-bg-light-2)))
   )
  )

(provide-theme 'dgsaf)

(provide 'dgsaf-theme)
