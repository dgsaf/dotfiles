;; display

(add-to-list 'initial-frame-alist '(fullscreen . fullwidth))
(set-fringe-mode '(0 . 0))
(set-frame-font "fira mono 10")

(blink-cursor-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq
 visible-bell t
 echo-keystrokes 0.5

 font-lock-maximum-decoration t
 line-number-mode t
 column-number-mode t)

(provide 'init-display)
