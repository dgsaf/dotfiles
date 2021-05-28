;; cpp

(use-package cc-mode
  :ensure t
  :mode
  (("\\.cpp\\'" . c++-mode)
   ("\\.hpp\\'" . c++-mode))
  :init
  (progn
    (c-set-offset 'substatement-open 0)))

(provide 'init-cpp)
