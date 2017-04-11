;;; despacio.el --- A warm theme for modern Emacs

;; Copyright (C) 2016 Andrew Smith


;; Author: Andrew Smith <andy.bill.smith@gmail.com>
;; Created: 27 Nov 2016
;; Version: 1.0.0

;; Keywords: theme

;; This file is not part of GNU Emacs.

;;; Code:
(deftheme Despacio "A warm theme for modern Emacs")
  (custom-theme-set-faces 'Despacio
   '(default           ((t (:foreground "#e5e5e5" :background "#303030"))))
   '(cursor            ((t (:background "#f8ffd9"))))
   '(fringe            ((t (:background "#262626"))))
   '(vertical-border   ((t (:foreground "#555555"))))
   '(hl-line           ((t (:background "#404040"))))
   '(linum             ((t (:foreground "#555555" :background "#262626"))))
   '(region            ((t (:background "#69615b"))))
   '(link              ((t (:foreground "#d55d1b" :underline t))))
   '(link-visited      ((t (:foreground "#d55d1b" :underline nil))))
   '(minibuffer-prompt ((t (:foreground "#fed78c" :bold t ))))
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
   '(font-lock-warning-face       ((t (:foreground "#fb7705" :bold t ))))

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
   '(org-done                  ((t (:foreground "#6acc51" :bold t))))
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
   '(evil-ex-substitute-matches     ((t (:background "#cc7c51" :foreground "#303030"))))
   '(evil-ex-substitute-replacement ((t (:foreground "#fb7705" :underline t))))

   '(font-latex-math-face         ((t (:inherit font-lock-function-name-face))))
   '(font-latex-sectioning-5-face ((t (:foreground "#d7d6b1"))))
   '(font-latex-string-face       ((t (:inherit font-lock-string-face))))
   '(font-latex-bold-face         ((t (:foreground "#e5e5e5" :bold t))))
   '(font-latex-italic-face       ((t (:foreground "#e5e5e5" :italic t))))

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

   '(git-gutter-fr:added    ((t (:foreground "#6acc51"))))
   '(git-gutter-fr:modified ((t (:foreground "#f9f104"))))
   '(git-gutter-fr:deleted  ((t (:foreground "#fb7705"))))

   '(mu4e-compose-header-face       ((t (:foreground "#847568" :italic t))))
   '(mu4e-compose-separator-face    ((t (:foreground "#847568" :italic t))))
   '(mu4e-header-key-face           ((t (:foreground "#fed6b1" :bold t))))
   '(mu4e-header-title-face         ((t (:foreground "#fb7705"))))
   '(mu4e-header-value-face         ((t (:foreground "#fb7705"))))
   '(mu4e-special-header-value-face ((t (:foreground "#fb7705"))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'Despacio)

;;; despacio.el ends here
