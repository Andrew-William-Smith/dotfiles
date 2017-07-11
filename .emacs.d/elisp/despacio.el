;;; despacio.el --- A warm theme for modern Emacs
;; This file is not part of GNU Emacs.

;; Copyright (C) 2016–2017 Andrew Smith

;; Author: Andrew Smith <andy.bill.smith@gmail.com>
;; URL: https://github.com/Andrew-William-Smith/despacio-theme
;; Version: 1.2.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


;;; Code:
(unless (>= emacs-major-version 24)
  (error "Despacio requires Emacs version 24 or later."))

(deftheme despacio "A warm theme for modern Emacs")
  (custom-theme-set-faces 'despacio
   '(default           ((t (:foreground "#e5e5e5" :background "#303030"))))
   '(cursor            ((t (:background "#f8ffd9"))))
   '(fringe            ((t (:background "#262626"))))
   '(vertical-border   ((t (:foreground "#555555"))))
   '(hl-line           ((t (:background "#404040"))))
   '(linum             ((t (:foreground "#555555" :background "#262626"))))
   '(region            ((t (:background "#69615b"))))
   '(link              ((t (:foreground "#d55d1b" :underline t))))
   '(link-visited      ((t (:foreground "#d55d1b" :underline nil))))
   '(minibuffer-prompt ((t (:foreground "#fed78c" :bold t))))
   '(linum-relative-current-face ((t (:foreground "#d7d6b1" :background "#262626"))))

   '(mode-line          ((t (:foreground "#d7d6b1" :background "#262626"))))
   '(mode-line-inactive ((t (:foreground "#403b38" :background "#69615b"))))

   '(font-lock-builtin-face       ((t (:foreground "#fed68c"))))
   '(font-lock-comment-face       ((t (:foreground "#847568"))))
   '(font-lock-function-name-face ((t (:foreground "#fed6b1"))))
   '(font-lock-keyword-face       ((t (:foreground "#fd8c64"))))
   '(font-lock-string-face        ((t (:foreground "#fdffd9"))))
   '(font-lock-type-face          ((t (:foreground "#fed7b1"))))
   '(font-lock-constant-face      ((t (:foreground "#d55d1b"))))
   '(font-lock-variable-name-face ((t (:foreground "#fed6b1"))))
   '(font-lock-warning-face       ((t (:foreground "#fb7705" :bold t))))

   '(trailing-whitespace ((t (:background "#555555"))))

   '(rainbow-delimiters-depth-1-face   ((t (:foreground "#fed68c"))))
   '(rainbow-delimiters-depth-2-face   ((t (:foreground "#998778"))))
   '(rainbow-delimiters-depth-3-face   ((t (:foreground "#fed7b1"))))
   '(rainbow-delimiters-depth-4-face   ((t (:foreground "#f0f2cd"))))
   '(rainbow-delimiters-depth-5-face   ((t (:foreground "#fed68c"))))
   '(rainbow-delimiters-depth-6-face   ((t (:foreground "#998778"))))
   '(rainbow-delimiters-depth-7-face   ((t (:foreground "#fed7b1"))))
   '(rainbow-delimiters-depth-8-face   ((t (:foreground "#f0f2cd"))))
   '(rainbow-delimiters-depth-9-face   ((t (:foreground "#fed68c"))))
   '(rainbow-delimiters-depth-10-face  ((t (:foreground "#998778"))))
   '(rainbow-delimiters-depth-11-face  ((t (:foreground "#fed7b1"))))
   '(rainbow-delimiters-depth-12-face  ((t (:foreground "#f0f2cd"))))
   '(rainbow-delimiters-unmatched-face ((t (:foreground "#fb7705"))))

   '(sp-pair-overlay-face       ((t (:background "#998778" :foreground "#303030"))))
   '(sp-show-pair-match-face    ((t (:background "#998778" :foreground "#303030"))))
   '(sp-show-pair-mismatch-face ((t (:background "#cc7c51"))))
   '(show-paren-match           ((t (:background "#998778" :foreground "#303030"))))
   '(show-paren-mismatch        ((t (:background "#cc7c51"))))

   '(org-agenda-structure      ((t (:foreground "#fed68c"))))
   '(org-clock-overlay         ((t (:foreground "#fed68c" :background "#303030"))))
   '(org-document-title        ((t (:foreground "#fb7705" :bold t))))
   '(org-document-info         ((t (:foreground "#fb7705"))))
   '(org-document-info-keyword ((t (:foreground "#fed6b1"))))
   '(org-date                  ((t (:foreground "#fd8c64" :underline t))))
   '(org-done                  ((t (:foreground "#91dd49" :bold t))))
   '(org-level-1               ((t (:foreground "#f94e04"))))
   '(org-level-2               ((t (:foreground "#f9a004"))))
   '(org-level-3               ((t (:foreground "#fb7705"))))
   '(org-level-4               ((t (:foreground "#f9c804"))))
   '(org-level-5               ((t (:foreground "#f9f104"))))
   '(org-level-6               ((t (:foreground "#f94e04"))))
   '(org-level-7               ((t (:foreground "#f9a004"))))
   '(org-level-8               ((t (:foreground "#fb7705"))))
   '(org-table                 ((t (:foreground "#fdffd9"))))
   '(org-todo                  ((t (:foreground "#f94e04" :bold t))))

   '(evil-ex-info                   ((t (:foreground "#fb7705" :italic t))))
   '(evil-ex-lazy-highlight         ((t (:background "#cc7c51" :foreground "#303030"))))
   '(isearch                        ((t (:background "#fed68c" :foreground "#303030"))))
   '(lazy-highlight                 ((t (:background "#69615b"))))
   '(evil-ex-substitute-matches     ((t (:background "#cc7c51" :foreground "#303030"))))
   '(evil-ex-substitute-replacement ((t (:foreground "#fb7705" :underline t))))

   '(vimish-fold-overlay            ((t (:inherit font-lock-comment-face :italic t :underline t :overline t))))
   '(vimish-fold-mouse-face         ((t (:inherit vimish-fold-overlay :background "#404040"))))

   '(font-latex-math-face         ((t (:inherit font-lock-function-name-face))))
   '(font-latex-sectioning-5-face ((t (:foreground "#d7d6b1"))))
   '(font-latex-string-face       ((t (:inherit font-lock-string-face))))
   '(font-latex-bold-face         ((t (:foreground "#e5e5e5" :bold t))))
   '(font-latex-italic-face       ((t (:foreground "#e5e5e5" :italic t))))
   '(latex-code                   ((t (:family "Fantasque Sans Mono" :height 147))))

   '(ivy-current-match           ((t (:foreground "#303030" :background "#d7d6b1"))))
   '(ivy-minibuffer-match-face-1 ((t (:background nil))))        ; Only highlight text I've actually typed
   '(ivy-minibuffer-match-face-2 ((t (:background "#fed68c" :foreground "#303030"))))
   '(ivy-minibuffer-match-face-3 ((t (:background "#cc7c51" :foreground "#303030"))))
   '(ivy-minibuffer-match-face-4 ((t (:background "#998778" :foreground "#303030"))))

   '(swiper-line-face    ((t (:foreground "#303030" :background "#d7d6b1"))))
   '(swiper-match-face-1 ((t (:background nil))))
   '(swiper-match-face-2 ((t (:background "#fed68c" :foreground "#303030"))))
   '(swiper-match-face-3 ((t (:background "#cc7c51" :foreground "#303030"))))
   '(swiper-match-face-4 ((t (:background "#998778" :foreground "#303030"))))

   '(popup-summary-face               ((t (:foreground "#303030" :background "#d7d6b1"))))
   '(popup-tip-face                   ((t (:foreground "#303030" :background "#d7d6b1"))))
   '(popup-scroll-bar-foreground-face ((t (:background "#f8ffd9"))))
   '(popup-scroll-bar-background-face ((t (:background "#262626"))))

   '(ac-candidate-face ((t (:foreground "#e5e5e5" :background "#404040"))))
   '(ac-selection-face ((t (:foreground "#303030" :background "#d7d6b1"))))

   '(js2-error             ((t (:foreground "#f94e04"))))
   '(js2-external-variable ((t (:foreground "#d6af84"))))
   '(js2-function-param    ((t (:foreground "#fdaf8a"))))

   '(git-gutter-fr:added    ((t (:foreground "#91dd49"))))
   '(git-gutter-fr:modified ((t (:foreground "#f9f104"))))
   '(git-gutter-fr:deleted  ((t (:foreground "#f94e04"))))

   '(mu4e-compose-header-face       ((t (:foreground "#847568" :italic t))))
   '(mu4e-compose-separator-face    ((t (:foreground "#847568" :italic t))))
   '(mu4e-header-key-face           ((t (:foreground "#fed6b1" :bold t))))
   '(mu4e-header-title-face         ((t (:foreground "#fb7705"))))
   '(mu4e-header-value-face         ((t (:foreground "#fb7705"))))
   '(mu4e-special-header-value-face ((t (:foreground "#fb7705"))))
   )

(setq-default underline-minimum-offset 3)

;;; LaTeX-specific customisations
(add-hook 'LaTeX-mode-hook (lambda ()
                             (setq-local face-remapping-alist
                                         '((default (:family "Literaturnaya" :height 170) default)
                                           (font-latex-sectioning-5-face (:family "GT Eesti Pro Display") font-latex-sectioning-5-face)
                                           (font-lock-keyword-face (:family "Fantasque Sans Mono" :height 147) font-lock-keyword-face)
                                           (font-lock-variable-name-face (:family "Fantasque Sans Mono" :height 147) font-lock-variable-name-face)
                                           (font-lock-function-name-face (:family "Fantasque Sans Mono" :height 147) font-lock-function-name-face)
                                           (font-lock-comment-face (:family "Fantasque Sans Mono" :height 147) font-lock-comment-face)
                                           (font-latex-sedate-face (:family "Fantasque Sans Mono" :height 147) font-latex-sedate-face)
                                           (font-latex-warning-face (:family "Fantasque Sans Mono" :height 147) font-latex-warning-face)
                                           (linum (:family "Fantasque Sans Mono" :height 147) linum)
                                           (linum-relative-current-face (:family "Fantasque Sans Mono" :height 147) linum-relative-current-face)
                                           (rainbow-delimiters-depth-1-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-1-face)
                                           (rainbow-delimiters-depth-2-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-2-face)
                                           (rainbow-delimiters-depth-3-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-3-face)
                                           (rainbow-delimiters-depth-4-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-4-face)
                                           (rainbow-delimiters-depth-5-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-5-face)
                                           (rainbow-delimiters-depth-6-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-6-face)
                                           (rainbow-delimiters-depth-7-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-7-face)
                                           (rainbow-delimiters-depth-8-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-8-face)
                                           (rainbow-delimiters-depth-9-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-9-face)
                                           (rainbow-delimiters-depth-10-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-10-face)
                                           (rainbow-delimiters-depth-11-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-11-face)
                                           (rainbow-delimiters-depth-12-face (:family "Fantasque Sans Mono" :height 147) rainbow-delimiters-depth-12-face)))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;; Footer
(provide-theme 'despacio)

;;; despacio.el ends here
