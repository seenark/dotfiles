;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "JetBrains Mono" :size 20 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "3270 Nerd Font Mono" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-palenight)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type t)
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; ###### Disable share yank and system clipboard ######
(setq select-enable-clipboard nil)
(setq select-enable-primary t)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;; (map! :leader :desc \"Open Neotree\" :n \"C-c\" #'Toggle-NeoTree)
(map!
 :desc "kill buffer"
 :n "C-x" #'kill-this-buffer
 )
(map!
 :desc "next buffer"
 :n "L" #'next-buffer
 )
(map!
 :desc "next buffer"
 :n "H" #'previous-buffer
 )
(map!
 :leader
 :desc "next buffer"
 :n "e" #'treemacs
 )

;; ###### general movement ######
(map!
 :desc "go to end of line"
 :n
 "gl" #'end-of-line
 )
(map!
 :desc "go to end of line"
 :v
 "gl" #'end-of-line
 )

(map!
 :desc "go to end of line"
 :n
 "gh" #'beginning-of-line
 )
(map!
 :desc "go to end of line"
 :v
 "gh" #'beginning-of-line
 )

(map!
 :desc "go to end of line"
 :n
 "ge" #'end-of-buffer
 )
(map!
 :desc "go to end of line"
 :v
 "ge" #'end-of-buffer
 )

(map!
 :desc "redo"
 :n
 "U" #'evil-redo
 )
(map!
 :leader
 :desc "copy marked to clipboard"
 :v
 "y" #'clipboard-kill-ring-save
 )
(map!
 :desc "paste from clipboard"
 "s-v" #'clipboard-yank
 )

;; ###### evil-multiedit ######
(map!
 :desc "evil multiedit match next"
 "s-d" #'evil-multiedit-match-and-next
 )
(map!
 :desc "evil multiedit match prev"
 "s-D" #'evil-multiedit-match-and-prev
 )
(map!
 :desc "evil multiedit match all"
 "s-r" #'evil-multiedit-match-all
 )

(defun copy-whole-file ()
  "Copy whole file"
  (interactive)
  (mark-whole-buffer)
  (clipboard-kill-ring-save)
  )

(map!
 :leader
 :n
 "%" #'copy-whole-file
 )

(map!
 :leader
 "k" #'+lookup/documentation
 )

(map!
 :leader
 "==" #'+format/region-or-buffer
 )

;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
