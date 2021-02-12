;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, eonil
;; clients, file templates and snippets.
(setq user-full-name "Cam Sweeney"
      user-mail-address "cameron.sweeney@ditoweb.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "menlo" :size 14))
;; (setq doom-font (font-spec :family "Meslo LG M for Powerline" :size 14))
(setq doom-font (font-spec :family "Hack Nerd Font Mono" :size 14))




;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)
(setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
;; (use-package ewal
;;     :init (setq ewal-use-built-in-always-p nil
;;             ewal-use-built-in-on-failure-p t))

;; (use-package ewal-doom-themes
;; :config (progn
;;           (load-theme 'ewal-doom-one t)
;;                       (enable-theme 'ewal-doom-one)))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded

;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; dont autowrap long lines
(setq truncate-lines nil)

(setq pipenv-with-projectile 1)

;; (after! lsp-ui
;;   (setq lsp-ui-doc-max-width 150
;;         lsp-ui-doc-max-height 30
;;         lsp-ui-doc-position 'at-point
;;         lsp-ui-doc-enable t))

(add-hook! 'doom-switch-buffer-hook (lambda ()
                                      (pipenv-deactivate)
                                      (pipenv-activate)
                                      ))

(after! company-terraform company-terraform-init)

(add-hook! 'vue-mode-hook #'lsp!)

(setq org-confirm-babel-evaluate t)


(setq todoist-token "a9f42914a5542a8985257ad1c76dcc69d15cec4d")

(setq org-directory "~/Dropbox/org")
(use-package org-super-agenda
  :after org-agenda
  :init
  (setq org-agenda-skip-scheduled-if-done t
        org-agenda-skip-deadline-if-done t
        org-agenda-include-deadlines t
        org-agenda-block-separator nil
        org-agenda-compact-blocks t
        org-agenda-start-day nil ;; i.e. today
        org-agenda-span 1
        org-agenda-start-on-weekday nil)
  (setq org-agenda-custom-commands
        '(("c" "Super view"
           ((agenda "" ((org-agenda-overriding-header "")
                        (org-super-agenda-groups
                         '((:name "Today"
                            :time-grid t
                            :date today
                            :order 1)))))
            (alltodo "" ((org-agenda-overriding-header "")
                         (org-super-agenda-groups
                          '((:log t)
                            (:name "To refile"
                             :file-path "refile\\.org")
                            (:name "Next to do"
                             :todo "NEXT"
                             :order 1)
                            (:name "Important"
                             :priority "A"
                             :order 6)
                            (:name "Today's tasks"
                             :file-path "journal/")
                            (:name "Due Today"
                             :deadline today
                             :order 2)
                            (:name "Scheduled Soon"
                             :scheduled future
                             :order 8)
                            (:name "Overdue"
                             :deadline past
                             :order 7)
                            (:name "Meetings"
                             :and (:todo "MEET" :scheduled future)
                             :order 10)
                            (:discard (:not (:todo "TODO")))))))))))
  :config
  (org-super-agenda-mode))

(setq org-super-agenda-header-map (make-sparse-keymap))

(defun my-restart-lsp-for-pipenv ()
  "Restarts LSP server, to be used after pipenv activated"
  (lsp-workspace-restart)
  (lsp))

(add-hook! pipenv-mode-hook #'my-restart-lsp-for-pipenv)


(setq js2-basic-offset 2)
(add-hook 'js2-mode-local-vars-hook
          (lambda ()
            (when (flycheck-may-enable-checker 'javascript-eslint)
              (flycheck-select-checker 'javascript-eslint))
            (setq +format-with eslint)
            ))

(setq flycheck-disabled-checkers '(yaml))

;; golang
(setenv "GOPATH" "/Users/csweeney/go")

;; (setq lsp-ui-doc-enable t)
;; (setq lsp-go-codelenses nil)

;; (package! yasnippet-snippets)

(setq +format-on-save-enabled-modes
      '(not yaml-mode  ; breaks helm templates
            web-mode
            markdown-mode
            gfm-mode
            ))

;; (setq lsp-yaml-schemas '("kubernetes"))

;; fix cursor in when running in terminal
(unless (display-graphic-p)
  (tool-bar-mode -1)
  (evil-terminal-cursor-changer-activate) ; or (etcc-on)
  )

;; forge config
                                        ;
(setq auth-sources '("~/.authinfo.gpg"))
;; (setq auth-source-debug trivia)
(after! forge
  (add-to-list 'forge-alist '("gitlab.edgecastcdn.net" "gitlab.edgecastcdn.net/api/v4/" "gitlab.edgeastcdn.net" forge-gitlab-repository)))

;; (setq forge-alist '("gitlab.edgecastcdn.net" "gitlab.edgecastcdn.net/api/v4/" "gitlab.edgeastcdn.net" forge-gitlab-repository))

(setq magit-revision-show-gravatars '("^Author:     " . "^Commit:     "))




(provide 'config)
;;; config.el ends here
