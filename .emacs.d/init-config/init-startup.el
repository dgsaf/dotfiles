;; startup

(require 'server)

(setq
 gc-cons-threshold (* 10 1024 1024)

 inhibit-startup-echo-area-message t
 inhibit-startup-screen t
 inhibit-splash-screen t
 initial-scratch-message nil)

(unless (server-running-p)
  (server-start))

(provide 'init-startup)
