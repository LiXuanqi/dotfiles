(use-package general
  :config
  (general-create-definer rune/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (rune/leader-keys
    "t"  '(:ignore t :which-key "toggles")
    "tt" '(counsel-load-theme :which-key "choose theme")
    "s" '(:ignore t :which-key "search")
    "sf" '(counsel-find-file :which-key "find file")
    "sb" '(counsel-switch-buffer :which-key "find buffer")
    "sp" '(projectile-switch-project :which-key "switch project")
    "sn" '(xq/find-file-in-emacs-config  :which-key "find in emacs configs")
    "w"  '(:ignore t :which-key "window")
    "w-" '(evil-window-split :which-key "Split window -")
    "w|" '(evil-window-vsplit :which-key "Split window |")
    "wj" '(evil-window-down :which-key "Move to down window")
    "wk" '(evil-window-up :which-key "Move to up window")
    "wh" '(evil-window-left :which-key "Move to left window")
    "wl" '(evil-window-right :which-key "Move to right window")
    ))

(provide 'xq-keymaps)
