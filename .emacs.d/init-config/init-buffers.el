;; buffers

(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)
(global-set-key (kbd "C-S-<next>") (lambda () (interactive) (other-window 1)))
(global-set-key (kbd "C-S-<prior>") (lambda () (interactive) (other-window -1)))

(provide 'init-buffers)
