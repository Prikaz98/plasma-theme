;;; plasma-theme.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 ivan
;;
;; Author: Ivan Prikaznov prikaznov555@gmail.com
;; Maintainer: Ivan Prikaznov prikaznov555@gmail.com
;; Created: October 19, 2024
;; Modified: October 19, 2024
;; Version: 0.0.1
;; Keywords: extensions faces
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;  I ate too much cookies.
;;
;;; Code:

(deftheme plasma-dark
  "Enspired by plasma cookies."
  :background-mode 'dark
  :king 'color-scheme
  :family 'plasma)

(let ((plasma-dark-fg         "#e4e4ef")
      (plasma-dark-fg+1       "#f4f4ff")
      (plasma-dark-fg+2       "#f5f5f5")
      (plasma-dark-white      "#ffffff")
      (plasma-dark-black      "#000000")
      (plasma-dark-bg-1       "#280c27")
      (plasma-dark-bg         "#280c27")
      (plasma-dark-bg+1       "#43192f")
      (plasma-dark-bg+2       "#5d0144")
      (plasma-dark-bg+3       "#792465")
      (plasma-dark-bg+4       "#bc5485")
      (plasma-dark-red-1      "#ab2325")
      (plasma-dark-red        "#ce2f2c")
      (plasma-dark-red+1      "#d35032")
      (plasma-dark-green-1    "#488343")
      (plasma-dark-green      "#97c984")
      (plasma-dark-green+1    "#aec59b")
      (plasma-dark-yellow     "#fdff28")
      (plasma-dark-yellow+1   "#e7bd73")
      (plasma-dark-brown      "#cb6942")
      (plasma-dark-sea-salt   "#7db9af")
      (plasma-dark-sea-wind-2 "#4b7f90")
      (plasma-dark-sea-wind-1 "#5b96a9")
      (plasma-dark-sea-wind   "#abc9d3")
      (plasma-dark-wisteria   "#8daebf"))
  (custom-theme-set-variables
   'plasma-dark
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'plasma-dark

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,plasma-dark-sea-salt))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,plasma-dark-sea-salt))))
   `(agda2-highlight-function-face ((t (:foreground ,plasma-dark-sea-wind))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground plasma-dark-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,plasma-dark-green))))
   `(agda2-highlight-number-face ((t (:foreground ,plasma-dark-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,plasma-dark-sea-salt :bold t))))
   `(font-latex-italic-face ((t (:foreground ,plasma-dark-sea-salt :italic t))))
   `(font-latex-math-face ((t (:foreground ,plasma-dark-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground plasma-dark-sea-wind
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,plasma-dark-sea-wind))))
   `(font-latex-string-face ((t (:foreground ,plasma-dark-green))))
   `(font-latex-warning-face ((t (:foreground ,plasma-dark-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background plasma-dark-bg-1
                       :foreground plasma-dark-bg+2))))
   `(cursor ((t (:background ,plasma-dark-yellow))))
   `(default ((t ,(list :foreground plasma-dark-fg
                        :background plasma-dark-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground plasma-dark-bg+2))))
   `(vertical-border ((t ,(list :foreground plasma-dark-bg+2))))
   `(link ((t (:foreground ,plasma-dark-sea-wind :underline t))))
   `(link-visited ((t (:foreground ,plasma-dark-wisteria :underline t))))
   `(match ((t (:background ,plasma-dark-bg+4))))
   `(shadow ((t (:foreground ,plasma-dark-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,plasma-dark-sea-wind))))
   `(region ((t (:background ,plasma-dark-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background plasma-dark-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground plasma-dark-black
                                    :background plasma-dark-red))))
   `(tooltip ((t ,(list :background plasma-dark-bg+4
                        :foreground plasma-dark-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,plasma-dark-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground plasma-dark-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground plasma-dark-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,plasma-dark-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground plasma-dark-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground plasma-dark-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,plasma-dark-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground plasma-dark-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground plasma-dark-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,plasma-dark-sea-wind :weight bold))))
   `(dired-ignored ((t ,(list :foreground plasma-dark-sea-salt
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,plasma-dark-sea-wind :weight bold))))
   `(ebrowse-progress ((t (:background ,plasma-dark-sea-wind))))

   ;; Egg
   `(egg-branch ((t (:foreground ,plasma-dark-yellow))))
   `(egg-branch-mono ((t (:foreground ,plasma-dark-yellow))))
   `(egg-diff-add ((t (:foreground ,plasma-dark-green))))
   `(egg-diff-del ((t (:foreground ,plasma-dark-red))))
   `(egg-diff-file-header ((t (:foreground ,plasma-dark-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,plasma-dark-yellow))))
   `(egg-help-header-2 ((t (:foreground ,plasma-dark-sea-wind))))
   `(egg-log-HEAD-name ((t (:box (:color ,plasma-dark-fg)))))
   `(egg-reflog-mono ((t (:foreground ,plasma-dark-sea-wind-1))))
   `(egg-section-title ((t (:foreground ,plasma-dark-yellow))))
   `(egg-text-base ((t (:foreground ,plasma-dark-fg))))
   `(egg-term ((t (:foreground ,plasma-dark-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,plasma-dark-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,plasma-dark-green))))
   `(erc-input-face ((t (:foreground ,plasma-dark-red+1))))
   `(erc-my-nick-face ((t (:foreground ,plasma-dark-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,plasma-dark-sea-salt))))
   `(eshell-ls-directory ((t (:foreground ,plasma-dark-sea-wind))))
   `(eshell-ls-executable ((t (:foreground ,plasma-dark-green))))
   `(eshell-ls-symlink ((t (:foreground ,plasma-dark-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,plasma-dark-yellow+1))))
   `(font-lock-comment-face ((t (:foreground ,plasma-dark-green+1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,plasma-dark-green+1))))
   `(font-lock-constant-face ((t (:foreground ,plasma-dark-yellow+1))))
   `(font-lock-doc-face ((t (:foreground ,plasma-dark-green+1))))
   `(font-lock-doc-string-face ((t (:foreground ,plasma-dark-green+1))))
   `(font-lock-function-name-face ((t (:foreground ,plasma-dark-yellow+1))))
   `(font-lock-keyword-face ((t (:foreground ,plasma-dark-yellow+1 :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,plasma-dark-sea-salt))))
   `(font-lock-reference-face ((t (:foreground ,plasma-dark-sea-wind))))
   `(font-lock-string-face ((t (:foreground ,plasma-dark-green))))
   `(font-lock-type-face ((t (:foreground ,plasma-dark-sea-salt))))
   `(font-lock-variable-name-face ((t (:foreground ,plasma-dark-sea-wind))))
   `(font-lock-warning-face ((t (:foreground ,plasma-dark-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,plasma-dark-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,plasma-dark-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,plasma-dark-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,plasma-dark-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,plasma-dark-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,plasma-dark-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,plasma-dark-red) :inherit unspecified))
      (t (:foreground ,plasma-dark-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,plasma-dark-yellow) :inherit unspecified))
      (t (:foreground ,plasma-dark-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background plasma-dark-bg+2
                                      :foreground plasma-dark-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground plasma-dark-sea-wind
                                  :background plasma-dark-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,plasma-dark-green))))
   `(helm-ff-file ((t (:foreground ,plasma-dark-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground plasma-dark-bg
                                        :background plasma-dark-red))))
   `(helm-ff-symlink ((t (:foreground ,plasma-dark-yellow :bold t))))
   `(helm-selection-line ((t (:background ,plasma-dark-bg+1))))
   `(helm-selection ((t (:background ,plasma-dark-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground plasma-dark-yellow
                                   :background plasma-dark-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,plasma-dark-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,plasma-dark-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,plasma-dark-sea-wind :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,plasma-dark-sea-wind))))
   `(info-visited ((t (:foreground ,plasma-dark-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground plasma-dark-sea-salt
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,plasma-dark-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,plasma-dark-green))))
   `(jabber-rare-time-face ((t (:foreground ,plasma-dark-green))))
   `(jabber-roster-user-online ((t (:foreground ,plasma-dark-green))))
   `(jabber-activity-face ((t (:foreground ,plasma-dark-red))))
   `(jabber-activity-personal-face ((t (:foreground ,plasma-dark-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,plasma-dark-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background plasma-dark-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,plasma-dark-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,plasma-dark-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground plasma-dark-sea-salt
                      :background ,plasma-dark-bg+4))))

   ;; Magit
   `(magit-branch ((t (:foreground ,plasma-dark-sea-wind))))
   `(magit-diff-hunk-header ((t (:background ,plasma-dark-bg+2))))
   `(magit-diff-file-header ((t (:background ,plasma-dark-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,plasma-dark-red+1))))
   `(magit-log-author ((t (:foreground ,plasma-dark-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground plasma-dark-green
                                            :background plasma-dark-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground plasma-dark-sea-wind
                                           :background plasma-dark-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground plasma-dark-yellow
                                          :background plasma-dark-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground plasma-dark-fg
                                          :background plasma-dark-bg+1))))
   `(magit-item-highlight ((t (:background ,plasma-dark-bg+1))))
   `(magit-tag ((t ,(list :foreground plasma-dark-yellow
                          :background plasma-dark-bg))))
   `(magit-blame-heading ((t ,(list :background plasma-dark-bg+1
                                    :foreground plasma-dark-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,plasma-dark-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background plasma-dark-bg+1
                          :foreground plasma-dark-white))))
   `(mode-line-buffer-id ((t ,(list :background plasma-dark-bg+1
                                    :foreground plasma-dark-white))))
   `(mode-line-inactive ((t ,(list :background plasma-dark-bg+1
                                   :foreground plasma-dark-sea-salt))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,plasma-dark-sea-wind))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,plasma-dark-sea-wind))))
   `(org-column ((t (:background ,plasma-dark-bg-1))))
   `(org-column-title ((t (:background ,plasma-dark-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,plasma-dark-green))))
   `(org-todo ((t (:foreground ,plasma-dark-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,plasma-dark-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground plasma-dark-black
                        :background plasma-dark-fg+2))))
   `(isearch-fail ((t ,(list :foreground plasma-dark-black
                             :background plasma-dark-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground plasma-dark-fg+1
                                       :background plasma-dark-sea-wind-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,plasma-dark-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,plasma-dark-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,plasma-dark-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,plasma-dark-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,plasma-dark-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground plasma-dark-sea-wind
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,plasma-dark-fg))))
   `(speedbar-highlight-face ((t (:background ,plasma-dark-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,plasma-dark-red))))
   `(speedbar-tag-face ((t (:foreground ,plasma-dark-yellow))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background plasma-dark-bg
                                 :foreground plasma-dark-bg+1))))
   `(whitespace-tab ((t ,(list :background plasma-dark-bg
                               :foreground plasma-dark-bg+1))))
   `(whitespace-hspace ((t ,(list :background plasma-dark-bg
                                  :foreground plasma-dark-bg+2))))
   `(whitespace-line ((t ,(list :background plasma-dark-bg+2
                                :foreground plasma-dark-red+1))))
   `(whitespace-newline ((t ,(list :background plasma-dark-bg
                                   :foreground plasma-dark-bg+2))))
   `(whitespace-trailing ((t ,(list :background plasma-dark-red
                                    :foreground plasma-dark-red))))
   `(whitespace-empty ((t ,(list :background plasma-dark-yellow
                                 :foreground plasma-dark-yellow))))
   `(whitespace-indentation ((t ,(list :background plasma-dark-yellow
                                       :foreground plasma-dark-red))))
   `(whitespace-space-after-tab ((t ,(list :background plasma-dark-yellow
                                           :foreground plasma-dark-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background plasma-dark-brown
                                            :foreground plasma-dark-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,plasma-dark-bg+1 :foreground ,plasma-dark-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,plasma-dark-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,plasma-dark-bg+3 :background ,plasma-dark-bg+4))))
   `(term-color-red ((t (:foreground ,plasma-dark-red-1 :background ,plasma-dark-red-1))))
   `(term-color-green ((t (:foreground ,plasma-dark-green :background ,plasma-dark-green))))
   `(term-color-blue ((t (:foreground ,plasma-dark-sea-wind :background ,plasma-dark-sea-wind))))
   `(term-color-yellow ((t (:foreground ,plasma-dark-yellow :background ,plasma-dark-yellow))))
   `(term-color-magenta ((t (:foreground ,plasma-dark-wisteria :background ,plasma-dark-wisteria))))
   `(term-color-cyan ((t (:foreground ,plasma-dark-sea-salt :background ,plasma-dark-sea-salt))))
   `(term-color-white ((t (:foreground ,plasma-dark-fg :background ,plasma-dark-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,plasma-dark-fg :background ,plasma-dark-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,plasma-dark-brown :background ,plasma-dark-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,plasma-dark-brown :background ,plasma-dark-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,plasma-dark-fg :background ,plasma-dark-bg-1))))
   `(company-tooltip-mouse ((t (:background ,plasma-dark-bg-1))))
   `(company-tooltip-common ((t (:foreground ,plasma-dark-green))))
   `(company-tooltip-common-selection ((t (:foreground ,plasma-dark-green))))
   `(company-scrollbar-fg ((t (:background ,plasma-dark-bg-1))))
   `(company-scrollbar-bg ((t (:background ,plasma-dark-bg+2))))
   `(company-preview ((t (:background ,plasma-dark-green))))
   `(company-preview-common ((t (:foreground ,plasma-dark-green :background ,plasma-dark-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,plasma-dark-sea-wind-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,plasma-dark-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,plasma-dark-green))))
   `(orderless-match-face-2 ((t (:foreground ,plasma-dark-brown))))
   `(orderless-match-face-3 ((t (:foreground ,plasma-dark-sea-salt))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'plasma-dark)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; plasma-dark-theme.el ends here.
