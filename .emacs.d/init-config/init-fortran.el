;; fortran

(use-package f90
  :ensure t
  :config
  (progn
    (setq
     f90-comment-region "!>"
     f90-continuation-indent 4
     f90-do-indent 2
     f90-if-indent 2
     f90-program-indent 2
     f90-type-indent 4)))

(provide 'init-fortran)
