(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  ;; NOTE: Set this to the folder where you keep your Git repos!
  (when (file-directory-p "~/dev")
    (setq projectile-project-search-path '("~/dev")))

  (setq projectile-switch-project-action #'projectile-find-file))

;; (use-package counsel-projectile
;;   :init
;;   (counsel-projectile-mode))

(defun xq/find-file-in-emacs-config ()
  "Find file in ~/.emacs.d using projectile."
  (interactive)
  (let ((projectile-project-root "~/.emacs.d"))
    (projectile-find-file)))
(global-set-key (kbd "C-c e") 'find-file-in-emacs-config)


(provide 'xq-projectile)
