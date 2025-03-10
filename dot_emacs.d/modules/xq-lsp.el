;;; xq-lsp.el -*- lexical-binding: t -*-
(defun efs/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (rust-ts-mode . lsp-deferred)
         (astro-mode . lsp-deferred)
	 (lsp-mode . efs/lsp-mode-setup))
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  ;; (setq lsp-rust-analyzer-linked-projects ["/Users/1_x7/dev/bazel-rust-example/rust-project.json"])
  :config
  (lsp-enable-which-key-integration t))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-position 'bottom))

;; (use-package lsp-treemacs
;;   :after lsp)

(use-package lsp-ivy
  :after lsp)

(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t)
  )

;; (add-hook 'rust-mode-hook 'lsp-deferred)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; (use-package treesit-auto
;;   :config
;;   (setq treesit-auto-langs '(rust astro))
;;   (setq treesit-auto-install 'prompt)
;;   (global-treesit-auto-mode))

;; (use-package yaml-mode
;;   :mode "\\.ya?ml\\'")

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-ts-mode))

;; astro format
;; (add-to-list
;;  'apheleia-formatters
;;  '(prettier-astro npx "prettier" "--stdin-filepath" filepath "--parser=astro"
;;                   (apheleia-formatters-indent "--use-tabs" "--tab-width" 'astro-ts-mode-indent-offset)))

;; (add-to-list 'apheleia-mode-alist '(astro-mode . prettier-astro))


(provide 'xq-lsp)
