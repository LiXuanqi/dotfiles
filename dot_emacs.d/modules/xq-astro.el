;; (use-package astro-ts-mode)
;; WEB MODE
(use-package web-mode
  :ensure t)

;; ASTRO
(define-derived-mode astro-mode web-mode "astro")
(setq auto-mode-alist
      (append '((".*\\.astro\\'" . astro-mode))
              auto-mode-alist))

;; ;; EGLOT
;; (use-package eglot
;;   :ensure t
;;   :config
;;   (add-to-list 'eglot-server-programs
;;                '(astro-mode . ("astro-ls" "--stdio"
;;                                :initializationOptions
;;                                (:typescript (:tsdk "./node_modules/typescript/lib")))))
;;   :init
;;   ;; auto start eglot for astro-mode
;;   (add-hook 'astro-mode-hook 'eglot-ensure))

(provide 'xq-astro)
