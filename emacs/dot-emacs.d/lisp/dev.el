;;; Commentary:
;;; Code:

;; ----------------------------------------------------------
;; LSP
;; ----------------------------------------------------------

(use-package lsp-mode
  :hook
  ((lsp-mode . lsp-enable-which-key-integration)))

(use-package lsp-ui)


;; ----------------------------------------------------------
;; DAP
;; ----------------------------------------------------------

(use-package dap-mode
  :after lsp-mode
  :config
  (dap-auto-configure-mode)
  (require 'dap-java)
  (setq dap-python-debugger 'debugpy)
  (require 'dap-python))


;; ----------------------------------------------------------
;; C & C++
;; ----------------------------------------------------------

;; ----------------------------------------------------------
;; JavaScript & TypeScript
;; ----------------------------------------------------------

;; https://github.com/codesuki/add-node-modules-path
(use-package add-node-modules-path
  :config
  (add-hook 'js-mode-hook 'typescript-mode-hook 'add-node-modules-path))

;; https://github.com/emacs-typescript/typescript.el
(use-package typescript-mode)


;; ----------------------------------------------------------
;; Java
;; ----------------------------------------------------------

;; JSP
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode)))

(use-package lsp-java
  :config (add-hook 'java-mode-hook 'lsp))

(use-package dap-java
  :ensure nil)


;; ----------------------------------------------------------
;; Python
;; ----------------------------------------------------------

;; Built-in python mode
;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "-i")

;; https://github.com/jorgenschaefer/pyvenv
(use-package pyvenv
  :config
  (pyvenv-mode 1))

;; https://github.com/wbolster/emacs-python-pytest
;; (use-package python-pytest
;;   :commands (python-pytest-dispatch)
;;   :bind ("C-c u" . python-pytest-dispatch))

;; https://github.com/nnicandro/emacs-jupyter
;; (use-package jupyter)


;; ----------------------------------------------------------
;; Miscellaneous
;; ----------------------------------------------------------

;; Fix escape codes so they show up as color
(add-hook 'compilation-filter-hook
          (lambda () (ansi-color-apply-on-region (point-min) (point-max))))

(defun kwb-dev-mode-hook ()
  (subword-mode))
(add-hook 'dev-mode-hook 'kwb-dev-mode-hook)


(provide 'dev)

;;; dev-lsp.el ends here
