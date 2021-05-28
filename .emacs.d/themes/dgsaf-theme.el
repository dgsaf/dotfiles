;; dgsaf-theme

(deftheme dgsaf
  "dgsaf's personal theme")

(let ((class '((class color) (min-colors 89)))
      (pal1 "light gray"))
  (custom-theme-set-faces
   'dgsaf

   ;; default
   `(default ((,class :foreground ,"white smoke" :background ,"dim gray")))

   ;; cursor
   `(cursor ((,class :inverse-video t)))

   ;; font-lock
   `(font-lock-builtin-face ((,class :foreground ,"pink")))
   `(font-lock-comment-delimiter-face ((,class :foreground ,"burlywood1")))
   `(font-lock-comment-face ((,class :foreground ,"burlywood1")))
   `(font-lock-constant-face ((,class :foreground ,"yellow")))
   `(font-lock-doc-face ((,class :foreground ,"burlywood1")))
   `(font-lock-function-name-face ((,class :foreground ,"spring green")))
   `(font-lock-keyword-face ((,class :foreground ,"light salmon")))
   `(font-lock-preprocessor-face ((,class :foreground ,"cyan")))
   `(font-lock-string-face ((,class :foreground ,"burlywood1")))
   `(font-lock-type-face ((,class :foreground ,"orange")))
   `(font-lock-variable-name-face ((,class :foreground ,"pink")))

   ;; company
   `(company-scrollbar-bg ((,class :background ,"dark gray")))
   `(company-scrollbar-fg ((,class :background ,"black")))
   `(company-tooltip
     ((,class :background ,"white smoke" :foreground "dim gray")))
   `(company-tooltip-common ((,class :foreground ,"black")))
   `(company-tooltip-selection ((,class :background ,"gainsboro")))

   ;; flymake
   `(flymake-error ((,class :background ,"dark red")))
   `(flymake-note ((,class :background ,"yellow")))
   `(flymake-warning ((,class :background ,"orange")))

   ;; flyspell
   `(flyspell-duplicate ((,class :background ,"orange")))
   `(flyspell-incorrect ((,class :background ,"dark red")))

   ;; highlight
   `(highlight ((,class :foreground ,"dim gray" :background ,"white smoke")))

   ;; hl-line
   `(hl-line ((,class :background ,"gray50")))

   ;; ido
   `(ido-first-match ((,class :foreground ,"white smoke")))
   `(ido-only-match ((,class :foreground ,"burlywood1")))
   `(ido-subdir ((,class :foreground ,"light salmon")))

   ;; isearch
   `(isearch ((,class :foreground ,"brown4" :background ,"palevioletred2")))
   `(isearch-fail ((,class :foreground ,"palevioletred2" :background ,"brown4")))
   `(lazy-highlight
     ((,class :foreground ,"palevioletred2" :background ,"brown4")))

   ;; match
   `(isearch ((,class :foreground ,"brown4" :background ,"palevioletred2")))

   ;; minibuffer-prompt
   `(minibuffer-prompt ((,class :foreground ,"pink")))

   ;; mode-line
   `(mode-line ((,class :foreground ,"grey30" :background ,"grey80")))
   `(mode-line-inactive ((,class :foreground ,"grey80" :background ,"grey30")))

   ;; region
   `(region ((,class :foreground ,"dim gray" :background ,"white smoke")))

   ;; show-paren
   `(show-paren-match ((,class :background ,"gray60")))
   `(show-paren-mismatch ((,class :background ,"orange")))

   ;; smart-parens
   `(sp-pair-overlay-face ((,class :background ,"gray60")))
   )
  )

(provide-theme 'dgsaf)

(provide 'dgsaf-theme)
