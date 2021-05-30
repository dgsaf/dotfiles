;; dgsaf-dark-theme

(deftheme dgsaf-dark
  "dgsaf-dark theme")

(let*
    ((class '((class color) (min-colors 89)))
     ;; scoped colors
     (fg "white smoke")
     (bg "dim gray")

     (bg-darker-2 "gray30")
     (bg-darker-1 "gray35")
     (bg-lighter-1 "gray45")
     (bg-lighter-2 "gray50")

     (accent "lightgoldenrod1")

     (fl-fade "gainsboro")
     (fl-constant "lightgoldenrod1")
     (fl-entity "rosybrown1")
     (fl-keyword "plum1")
     (fl-preprocessor "violet")

     (highlight-fg fg)
     (highlight-bg-1 "firebrick2")
     (highlight-bg-2 "firebrick4")

     (warning-fg fg)
     (warning-1 "yellow")
     (warning-2 "orange")
     (warning-3 "red")

     ;; default
     (main-fg fg)
     (main-bg bg)

     ;; font-lock
     (builtin-fg fl-entity)
     (comment-fg fl-fade)
     (constant-fg fl-constant)
     (function-fg fl-entity)
     (keyword-fg fl-keyword)
     (preprocessor-fg fl-preprocessor)
     (string-fg fl-constant)
     (type-fg fl-keyword)
     (variable-name-fg fl-entity)

     ;; company
     (common-fg accent)
     (company-fg fg)
     (company-bg bg-lighter-2)
     (scrollbar-fg accent)
     (scrollbar-bg bg-lighter-1)
     (selection-bg bg-lighter-1)

     ;; flymake / flyspell
     (warning-fg fg)
     (warning-bg-minor warning-1)
     (warning-bg warning-2)
     (warning-bg-major warning-3)

     ;; hl-line
     (hl-bg bg-lighter-2)

     ;; ido
     (directory-fg accent)

     ;; isearch
     (search-fg fg)
     (search-bg highlight-bg-1)
     (search-highlight-bg highlight-bg-2)

     ;; match

     ;; mode-line
     (mode-line-fg bg-darker-2)
     (mode-line-bg fg)

     ;; region

     ;; show-paren / smart-parens
     (sp-fg bg)
     (sp-pair-bg accent)
     (sp-over-bg accent))
  (custom-theme-set-faces
   'dgsaf-dark

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
       :background , scrollbar-bg)))
   `(company-scrollbar-fg
     ((,class
       :background , scrollbar-fg)))
   `(company-tooltip
     ((,class
       :foreground , company-fg
       :background , company-bg)))
   `(company-tooltip-common
     ((,class
       :foreground , common-fg)))
   `(company-tooltip-selection
     ((,class
       :background , selection-bg)))

   ;; flymake
   `(flymake-error
     ((,class
       :foreground , warning-fg
       :background , warning-bg-major)))
   `(flymake-note
     ((,class
       :foreground , warning-fg
       :background , warning-bg-minor)))
   `(flymake-warning
     ((,class
       :foreground , warning-fg
       :background , warning-bg)))

   ;; flyspell
   `(flyspell-duplicate
     ((,class
       :foreground , warning-fg
       :background , warning-bg)))
   `(flyspell-incorrect
     ((,class
       :foreground , warning-fg
       :background , warning-bg-major)))

   ;; highlight
   `(highlight
     ((,class
       :foreground , main-bg
       :background , main-fg)))

   ;; hl-line
   `(hl-line
     ((,class
       :background , hl-bg)))

   ;; ido
   `(ido-first-match
     ((,class
       :foreground , main-fg)))
   `(ido-only-match
     ((,class
       :foreground , main-fg)))
   `(ido-subdir
     ((,class
       :foreground , directory-fg)))

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
       :foreground , search-fg
       :background , search-highlight-bg)))

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
       :foreground , mode-line-fg
       :background , mode-line-bg)))
   `(mode-line-inactive
     ((,class
       :foreground , mode-line-bg
       :background , mode-line-fg)))

   ;; region
   `(region
     ((,class
       :foreground , main-bg
       :background , main-fg)))

   ;; show-paren
   `(show-paren-match
     ((,class
       :foreground , sp-fg
       :background , sp-pair-bg)))
   `(show-paren-mismatch
     ((,class
       :foreground , warning-fg
       :background , warning-bg)))

   ;; smart-parens
   `(sp-pair-overlay-face
     ((,class
       :foreground , sp-fg
       :background , sp-over-bg)))
   )
  )

(provide-theme 'dgsaf-dark)

(provide 'dgsaf-dark-theme)
