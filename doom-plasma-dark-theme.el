;;; doom-plasma-dark-theme.el --- A dark port of Plasma cookies -*- lexical-binding: t; no-byte-compile: t; -*-
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

(require 'doom-themes)

;;; Variables
(defgroup doom-plasma-dark-theme nil
  "Options for the `doom-plasma-dark' theme."
  :group 'doom-themes)

(defcustom doom-plasma-dark-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-plasma-dark-theme
  :type 'boolean)

(defcustom doom-plasma-dark-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-plasma-dark-theme
  :type 'boolean)

(defcustom doom-plasma-dark-brighter-text nil
  "If non-nil, default text will be brighter."
  :group 'doom-plasma-dark-theme
  :type 'boolean)

(defcustom doom-plasma-dark-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to determine the exact padding."
  :group 'doom-plasma-dark-theme
  :type '(choice integer boolean))

;;; Theme definition
(def-doom-theme doom-plasma-dark
  "A Plasma cookies theme"

  ;; Main theme colors
  (
    ;; name          default   256       16
    (base           '("#280c27" "#280c27" "black"       ))
    (surface        '("#43192f" "#43192f" "brightblack" ))
    (overlay        '("#5d0144" "#5d0144" "brightblack" ))
    (muted          '("#8daebf" "#8daebf" "brightblack" ))
    (subtle         '("#908caa" "#908caa" "brightblack" ))
    (text           '("#e4e4ef" "#e4e4ef" "brightblack" ))
    (love           '("#ce2f2c" "#ce2f2c" "red"         ))
    (gold           '("#e7bd73" "#e7bd73" "white"       ))
    (orange         '("#efae2e" "#efae2e" "white"       ))
    (yellow         '("#fdff28" "#fdff28" "white"       ))
    (rose           '("#bc5485" "#bc5485" "white"       ))
    (salt           '("#4b7f90" "#4b7f90" "white"       ))
    (sea            '("#5b96a9" "#5b96a9" "white"       ))
    (highlightL     '("#7db9af" "#7db9af" "grey"        ))
    (highlightM     '("#4b7f90" "#4b7f90" "grey"        ))
    (highlightH     '("#abc9d3" "#abc9d3" "grey"        ))
    (grass          '("#488343" "#488343" "green"))
    (green          '("#97c984" "#97c984" "green"))
    (olive          '("#aec59b" "#aec59b" "green"))

    ;; Variables required by doom theme
    ;; These are required by doom theme and used in various places
    (bg             base)
    (fg             text)
    ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
    ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
    ;; or region), especially when paired with the `doom-darken', `doom-lighten',
    ;; and `doom-blend' helper functions.
    (bg-alt         base)
    (fg-alt         text)
    ;; These should represent a spectrum from bg to fg, where base0 is a starker
    ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
    ;; dark grey, base0 should be white and base8 should be black.
    (base0          surface)
    (base1          muted)
    (base2          olive)
    (base3          surface)
    (base4          highlightL)
    (base5          highlightH)
    (base6          highlightM)
    (base7          overlay)
    (base8          highlightL)
    (grey           muted)
    (red            love)
    (green          grass)
    (teal           sea)
    (yellow         gold)
    (blue           salt)
    (dark-blue      sea)
    (magenta        rose)
    (violet         rose)
    (cyan           sea)
    (dark-cyan      sea)
    ;; Variables required by doom theme ends here

    ;; Required face categories for syntax highlighting
    (highlight      yellow)   ; cursor
    (selection      base)
    (region         surface)  ; visual selection
    (vertical-bar   surface)  ; window split

    (comments       (if doom-plasma-dark-brighter-comments green olive))
    (doc-comments   (if doom-plasma-dark-brighter-comments green olive))

    (builtin        gold)
    (constants      highlightL)
    (functions      gold)
    (keywords       gold)
    (methods        highlightL)
    (numbers        highlightL)
    (operators      highlightL)
    (strings        olive)
    (type           highlightH)
    (variables      highlightH)

    (error          love)
    (success        olive)
    (warning        gold)

    (vc-added       grass)
    (vc-deleted     love)
    (vc-modified    gold)

    ;; Other categories
    ;; Modeline
    (modeline-bg                 (if doom-plasma-dark-brighter-modeline overlay surface))
    (modeline-fg                 text)
    (modeline-bg-alt             (if doom-plasma-dark-brighter-modeline overlay surface))
    (modeline-fg-alt             text) ; should this be darker or lighter?
    (modeline-bg-inactive        base)
    (modeline-fg-inactive        subtle)
    (modeline-bg-inactive-alt    base)
    (modeline-fg-inactive-alt    subtle)
    (modeline-pad
      (when doom-plasma-dark-padded-modeline
        if (integerp doom-plasma-dark-padded-modeline) doom-plasma-dark-padded-modeline 4)))

  ;; Base theme face overrides
  (
    ;; Font
    ((font-lock-comment-face &override)
      :background (if doom-plasma-dark-brighter-comments (doom-blend teal base 0.07)))
    ((font-lock-type-face &override))
    ((font-lock-builtin-face &override))
    ((font-lock-function-name-face &override))
    ((font-lock-keyword-face &override) :weight 'bold)
    ((font-lock-constant-face &override) :weight 'bold)

    ;; Highlight line
    (hl-line
       :background surface)

    ;; Line numbers
    ((line-number &override) :foreground rose :background base)
    ((line-number-current-line &override) :foreground gold)

    ;; Mode line
    (mode-line
      :background modeline-bg
      :foreground modeline-fg
      :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg)))
    (mode-line-inactive
      :background modeline-bg-inactive
      :foreground modeline-fg-inactive
      :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg-inactive)))
    (mode-line-emphasis
      :foreground (if doom-plasma-dark-brighter-modeline text subtle))

    ;; Company
    (company-tooltip-selection :background blue :foreground muted)

    ;; CSS mode <built-in> / scss-mode
    (css-proprietary-property :foreground orange)
    (css-property             :foreground green)
    (css-selector             :foreground green)

    ;; Doom mode line
    (doom-modeline-bar :background green) ; The line to the left
    (doom-modeline-evil-emacs-state  :foreground magenta)  ; The dot color when in emacs mode
    (doom-modeline-evil-normal-state :foreground green)    ; The dot color when in normal mode
    (doom-modeline-evil-visual-state :foreground magenta)  ; The dot color when in visual mode
    (doom-modeline-evil-insert-state :foreground orange)   ; The dot color when in insert mode

    ;; Helm
    (helm-selection :foreground base :weight 'bold :background blue)

    ;; Ivy
    (ivy-current-match :background overlay :distant-foreground fg)
    (ivy-minibuffer-match-face-1 :foreground salt :background nil :weight 'bold)
    (ivy-minibuffer-match-face-2 :foreground rose :background nil :weight 'bold)
    (ivy-minibuffer-match-face-3 :foreground gold :background nil :weight 'bold)
    (ivy-minibuffer-match-face-4 :foreground rose :background nil :weight 'bold)
    (ivy-minibuffer-match-highlight :foreground magenta :weight 'bold)
    (ivy-posframe :background modeline-bg-alt)

    ;; Markdown mode
    (markdown-markup-face :foreground text)
    (markdown-header-face :inherit 'bold :foreground red)
    ((markdown-code-face &override) :background surface)

    ;; org <built-in>
    (org-block :background (doom-blend yellow bg 0.04) :extend t)
    (org-block-background :background (doom-blend yellow bg 0.04))
    (org-block-begin-line :background (doom-blend yellow bg 0.08) :foreground comments :extend t)
    (org-block-end-line :background (doom-blend yellow bg 0.08) :foreground comments :extend t)
    (org-level-1 :foreground gold)
    (org-level-2 :foreground salt)
    (org-level-3 :foreground sea)
    (org-level-4 :foreground highlightL)
    (org-level-5 :foreground highlightM)
    (org-level-6 :foreground highlightH)
    (org-level-7 :foreground grass)
    (org-level-8 :foreground olive)

    ;; Solaire mode line
    (solaire-mode-line-face
      :inherit 'mode-line
      :background modeline-bg-alt
      :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg-alt)))
    (solaire-mode-line-inactive-face
      :inherit 'mode-line-inactive
      :background modeline-bg-inactive-alt
      :box (if modeline-pad `(:line-width ,modeline-pad :color ,modeline-bg-inactive-alt)))

    ;; Widget
    (widget-field :foreground fg :background muted)
    (widget-single-line-field :foreground fg :background muted)

    ;; Swiper
    (swiper-match-face-1 :inherit 'ivy-minibuffer-match-face-1)
    (swiper-match-face-2 :inherit 'ivy-minibuffer-match-face-2)
    (swiper-match-face-3 :inherit 'ivy-minibuffer-match-face-3)
    (swiper-match-face-4 :inherit 'ivy-minibuffer-match-face-4)))

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; doom-plasma-dark-theme.el ends here
