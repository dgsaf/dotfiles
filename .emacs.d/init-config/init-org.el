;; org

(use-package org
  :ensure t
  :bind
  ("C-c a" . org-agenda)
  ("C-c c" . org-capture)
  :config
  (progn
    ;; general
    (setq
     org-directory "~/.emacs.d/org"
     org-default-notes-file "~/.emacs.d/org/refile.org"

     org-todo-keywords
     '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "ON HOLD(h)" "|" "DONE(d)" "CANCELLED(c)"))
     org-todo-keyword-faces
     '(("TODO"      :foreground "#ca2521" :weight bold)
       ("NEXT"      :foreground "#e35754" :weight bold)
       ("WAITING"   :foreground "#e39e54" :weight bold)
       ("ON HOLD"   :foreground "#e8d174" :weight bold)
       ("DONE"      :foreground "#4d7358" :weight bold)
       ("CANCELLED" :foreground "#575bfb" :weight bold))
     org-support-shift-select t
     org-use-fast-todo-selection t)

    ;; agenda
    (setq
     org-agenda-window-setup 'current-window
     org-agenda-files '("~/.emacs.d/org")
     org-columns-default-format "%100ITEM(Task) %5PRIORITY(Priority) %8CLOCKSUM(Time Logged)")

    ;; capture
    (setq
     org-capture-templates
     '(("t" "todo"
        entry (file "~/.emacs.d/org/refile.org")
        "* TODO %?\n%U\n"
        :clock-resume t)
       ("s" "todo-schedule"
        entry (file "~/.emacs.d/org/refile.org")
        "* TODO %?\nSCHEDULED: %t\n%U\n"
        :clock-resume t)
       ("d" "todo-deadline"
        entry (file "~/.emacs.d/org/refile.org")
        "* TODO %?\n\DEADLINE: %t\n%U\n"
        :clock-resume t)
       ("f" "todo-schedule-deadline"
        entry (file "~/.emacs.d/org/refile.org")
        "* TODO %?\nSCHEDULED: %t\n\DEADLINE: %t\n%U\n"
        :clock-resume t)))

    ;; refile
    (setq
     org-refile-targets '((org-agenda-files :maxlevel . 9))
     org-outline-path-complete-in-steps nil
     org-refile-use-outline-path t)))

;; (org-agenda-list)

(provide 'init-org)
