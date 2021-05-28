;; backup

(setq
 backup-directory-alist `(("." . "~/.emacs.d/backup"))
 backup-by-copying t

 delete-old-versions t
 version-control t
 kept-new-versions 6
 kept-old-versions 3)

(provide 'init-backup)
