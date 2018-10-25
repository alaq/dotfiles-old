;;; package --- Main init file
;;; Commentary:
;;; This is my init file

;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)
(require 'base-theme)
(require 'base-extensions)
(require 'base-functions)
(require 'base-global-keys)

(require 'lang-javascript)

(require 'lang-web)

;; original configuration below

;; remove ui details
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(setq initial-scratch-message "")
;; (global-linum-mode 1)
(global-hl-line-mode 1)
(global-visual-line-mode 1)         ; line warp
(setq inhibit-startu-screen t)
(setq-default indent-tabs-mode nil) ; replace tabs with spaced
(setq-default tab-width 2)

;; package config
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org" . "http://orgmode.org/elpa")
                         ("gnu" . "https://elpa.gnu.org/packages")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode)

;; this should replace the above
;; ;; load evil
;; (use-package evil
;;   :ensure t ;; install the evil package if not installed
;;   :init ;; tweak evil's configuration before loading it
;;   (setq evil-search-module 'evil-search)
;;   (setq evil-ex-complete-emacs-commands nil)
;;   (setq evil-vsplit-window-right t)
;;   (setq evil-split-window-below t)
;;   (setq evil-shift-round nil)
;;   (setq evil-want-C-u-scroll t)
;;   :config ;; tweak evil after loading it
;;   (evil-mode)

(require 'undo-tree)
(global-undo-tree-mode)

(require 'evil-commentary)
(evil-commentary-mode)

(require 'evil-numbers)
(define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)

(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook (lambda () (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
 
(add-hook 'auto-save-hook 'org-save-all-org-buffers)
(setq org-ellipsis " ⤵")
(setq org-startup-indented t)
(setq org-log-done 'time)
             
(custom-theme-set-faces 'user
    `(org-level-1 ((t (:foreground "#bbc2bf"))))
    `(org-level-2 ((t (:inherit org-level-1))))
    `(org-level-3 ((t (:inherit org-level-1))))
    `(org-level-4 ((t (:inherit org-level-1))))
    `(org-level-5 ((t (:inherit org-level-1))))
    `(org-level-6 ((t (:inherit org-level-1))))
    `(org-level-7 ((t (:inherit org-level-1))))
    `(org-level-8 ((t (:inherit org-level-1)))))
          
(global-auto-revert-mode 1)

