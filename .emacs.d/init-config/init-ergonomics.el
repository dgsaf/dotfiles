;; ergonomics

(fset 'yes-or-no-p 'y-or-n-p)
(setq
 confirm-kill-emacs 'yes-or-no-p)
(delete-selection-mode)

(setq-default
 tab-always-indent nil
 indent-tabs-mode nil
 indent-line-function 'insert-tab
 tab-width 2
 colon-double-space nil)

(setq-default
 auto-fill-function 'do-auto-fill
 fill-column 80)

(add-hook 'before-save-hook #'delete-trailing-whitespace)

(provide 'init-ergonomics)
