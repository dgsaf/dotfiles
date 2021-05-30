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
     (warning-3 "red"))
  (custom-theme-set-faces
   'dgsaf-dark

   ;; default
   `(default
      ((,class
        :foreground , fg
        :background , bg)))

   ;; cursor
   `(cursor
     ((,class
       :inverse-video t)))

   ;; font-lock
   `(font-lock-builtin-face
     ((,class
       :foreground , fl-entity)))
   `(font-lock-comment-delimiter-face
     ((,class
       :foreground , fl-fade)))
   `(font-lock-comment-face
     ((,class
       :foreground , fl-fade)))
   `(font-lock-constant-face
     ((,class
       :foreground , fl-constant)))
   `(font-lock-doc-face
     ((,class
       :foreground , fl-fade)))
   `(font-lock-function-name-face
     ((,class
       :foreground , fl-entity)))
   `(font-lock-keyword-face
     ((,class
       :foreground , fl-keyword)))
   `(font-lock-preprocessor-face
     ((,class
       :foreground , fl-preprocessor)))
   `(font-lock-string-face
     ((,class
       :foreground , fl-constant)))
   `(font-lock-type-face
     ((,class
       :foreground , fl-keyword)))
   `(font-lock-variable-name-face
     ((,class
       :foreground , fl-entity)))

   ;; company
   `(company-scrollbar-bg
     ((,class
       :background , bg-lighter-1)))
   `(company-scrollbar-fg
     ((,class
       :background , accent)))
   `(company-tooltip
     ((,class
       :foreground , fg
       :background , bg-lighter-2)))
   `(company-tooltip-common
     ((,class
       :foreground , accent)))
   `(company-tooltip-selection
     ((,class
       :background , bg-lighter-1)))

   ;; flymake
   `(flymake-error
     ((,class
       :foreground , warning-fg
       :background , warning-3)))
   `(flymake-note
     ((,class
       :foreground , warning-fg
       :background , warning-1)))
   `(flymake-warning
     ((,class
       :foreground , warning-fg
       :background , warning-2)))

   ;; flyspell
   `(flyspell-duplicate
     ((,class
       :foreground , warning-fg
       :background , warning-2)))
   `(flyspell-incorrect
     ((,class
       :foreground , warning-fg
       :background , warning-3)))

   ;; highlight
   `(highlight
     ((,class
       :foreground , bg
       :background , fg)))

   ;; hl-line
   `(hl-line
     ((,class
       :background , bg-lighter-2)))

   ;; ido
   `(ido-first-match
     ((,class
       :foreground , fg)))
   `(ido-only-match
     ((,class
       :foreground , fg)))
   `(ido-subdir
     ((,class
       :foreground , accent)))

   ;; isearch
   `(isearch
     ((,class
       :foreground , fg
       :background , highlight-bg-1)))
   `(isearch-fail
     ((,class
       :foreground , highlight-bg-1
       :background , fg)))
   `(lazy-highlight
     ((,class
       :foreground , fg
       :background , highlight-bg-2)))

   ;; match
   `(isearch
     ((,class
       :foreground , fg
       :background , highlight-bg-1)))

   ;; minibuffer-prompt
   `(minibuffer-prompt
     ((,class
       :foreground , fg)))

   ;; mode-line
   `(mode-line
     ((,class
       :foreground , bg-darker-2
       :background , fg)))
   `(mode-line-inactive
     ((,class
       :foreground , fg
       :background , bg-darker-2)))

   ;; region
   `(region
     ((,class
       :foreground , bg
       :background , fg)))

   ;; show-paren
   `(show-paren-match
     ((,class
       :foreground , bg
       :background , accent)))
   `(show-paren-mismatch
     ((,class
       :foreground , warning-fg
       :background , warning-2)))

   ;; smart-parens
   `(sp-pair-overlay-face
     ((,class
       :foreground , bg
       :background , accent)))))

(provide-theme 'dgsaf-dark)

(provide 'dgsaf-dark-theme)
