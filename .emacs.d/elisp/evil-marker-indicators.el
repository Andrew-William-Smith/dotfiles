;;; evil-marker-indicators.el --- View evil markers in fringe
;; This file is not part of GNU Emacs.

;; Copyright (C) 2017 Andrew Smith

;; Author: Andrew Smith <aws@awsmith.us>
;; URL: https://github.com/Andrew-William-Smith/evil-marker-indicators
;; Version: 1.0.0
;; Package-Requires: ((evil "1.0.9") (fringe-helper "1.0.2"))

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
(require 'cl)
(require 'evil)
(require 'fringe-helper)

(define-fringe-bitmap 'fringe-letter-48 (fringe-helper-convert
                                         "..XXXX.."
                                         ".XX..XX."
                                         "XX....XX"
                                         "XX....XX"
                                         "XX.XX.XX"
                                         "XX.XX.XX"
                                         "XX....XX"
                                         "XX....XX"
                                         ".XX..XX."
                                         "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-49 (fringe-helper-convert
                                         "...XX..."
                                         "..XXX..."
                                         ".XXXX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         ".XXXXXX."))

(define-fringe-bitmap 'fringe-letter-50 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         ".....XX"
                                         "....XX."
                                         "...XX.."
                                         "..XX..."
                                         ".XX...."
                                         "XX....."
                                         "XX...XX"
                                         "XXXXXXX"))

(define-fringe-bitmap 'fringe-letter-51 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         ".....XX"
                                         ".....XX"
                                         "..XXXX."
                                         ".....XX"
                                         ".....XX"
                                         ".....XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-52 (fringe-helper-convert
                                         "....XX."
                                         "...XXX."
                                         "..XXXX."
                                         ".XX.XX."
                                         "XX..XX."
                                         "XXXXXXX"
                                         "....XX."
                                         "....XX."
                                         "....XX."
                                         "...XXXX"))

(define-fringe-bitmap 'fringe-letter-53 (fringe-helper-convert
                                         "XXXXXXX"
                                         "XX....."
                                         "XX....."
                                         "XX....."
                                         "XXXXXX."
                                         ".....XX"
                                         ".....XX"
                                         ".....XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-54 (fringe-helper-convert
                                         "..XXX.."
                                         ".XX...."
                                         "XX....."
                                         "XX....."
                                         "XXXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-55 (fringe-helper-convert
                                         ".XXXXXX."
                                         ".XX..XX."
                                         ".....XX."
                                         ".....XX."
                                         "....XX.."
                                         "...XX..."
                                         "..XX...."
                                         "..XX...."
                                         "..XX...."
                                         "..XX...."))

(define-fringe-bitmap 'fringe-letter-56 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-57 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXXX"
                                         ".....XX"
                                         ".....XX"
                                         ".....XX"
                                         "....XX."
                                         ".XXXX.."))

(define-fringe-bitmap 'fringe-letter-65 (fringe-helper-convert
                                         "...X..."
                                         "..XXX.."
                                         ".XX.XX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XXXXXXX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"))

(define-fringe-bitmap 'fringe-letter-66 (fringe-helper-convert
                                         "XXXXXX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XXXXX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         "XXXXXX."))

(define-fringe-bitmap 'fringe-letter-67 (fringe-helper-convert
                                         "..XXXX."
                                         ".XX..XX"
                                         "XX....X"
                                         "XX....."
                                         "XX....."
                                         "XX....."
                                         "XX....."
                                         "XX....X"
                                         ".XX..XX"
                                         "..XXXX."))

(define-fringe-bitmap 'fringe-letter-68 (fringe-helper-convert
                                         "XXXXX.."
                                         ".XX.XX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX.XX."
                                         "XXXXX.."))

(define-fringe-bitmap 'fringe-letter-69 (fringe-helper-convert
                                         "XXXXXXX"
                                         ".XX..XX"
                                         ".XX...X"
                                         ".XX.X.."
                                         ".XXXX.."
                                         ".XX.X.."
                                         ".XX...."
                                         ".XX...X"
                                         ".XX..XX"
                                         "XXXXXXX"))

(define-fringe-bitmap 'fringe-letter-70 (fringe-helper-convert
                                         "XXXXXXX"
                                         ".XX..XX"
                                         ".XX...X"
                                         ".XX.X.."
                                         ".XXXX.."
                                         ".XX.X.."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         "XXXX..."))

(define-fringe-bitmap 'fringe-letter-71 (fringe-helper-convert
                                         "..XXXX."
                                         ".XX..XX"
                                         "XX....X"
                                         "XX....."
                                         "XX....."
                                         "XX.XXXX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XX..XX"
                                         "..XXX.X"))

(define-fringe-bitmap 'fringe-letter-72 (fringe-helper-convert
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XXXXXXX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"))

(define-fringe-bitmap 'fringe-letter-73 (fringe-helper-convert
                                         "..XXXX.."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-74 (fringe-helper-convert
                                         "...XXXX"
                                         "....XX."
                                         "....XX."
                                         "....XX."
                                         "....XX."
                                         "....XX."
                                         "XX..XX."
                                         "XX..XX."
                                         "XX..XX."
                                         ".XXXX.."))

(define-fringe-bitmap 'fringe-letter-75 (fringe-helper-convert
                                         "XXX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX.XX."
                                         ".XXXX.."
                                         ".XXXX.."
                                         ".XX.XX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         "XXX..XX"))

(define-fringe-bitmap 'fringe-letter-76 (fringe-helper-convert
                                         "XXXX..."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...X"
                                         ".XX..XX"
                                         "XXXXXXX"))

(define-fringe-bitmap 'fringe-letter-77 (fringe-helper-convert
                                         "XX....XX"
                                         "XXX..XXX"
                                         "XXXXXXXX"
                                         "XXXXXXXX"
                                         "XX.XX.XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"))

(define-fringe-bitmap 'fringe-letter-78 (fringe-helper-convert
                                         "XX...XX"
                                         "XXX..XX"
                                         "XXXX.XX"
                                         "XXXXXXX"
                                         "XX.XXXX"
                                         "XX..XXX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"))

(define-fringe-bitmap 'fringe-letter-79 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-80 (fringe-helper-convert
                                         "XXXXXX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XXXXX."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         ".XX...."
                                         "XXXX..."))

(define-fringe-bitmap 'fringe-letter-81 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX.X.XX"
                                         "XX.XXXX"
                                         ".XXXXX."
                                         "....XX."
                                         "....XX."
                                         "....XXX"))

(define-fringe-bitmap 'fringe-letter-82 (fringe-helper-convert
                                         "XXXXXX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XXXXX."
                                         ".XX.XX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         "XXX..XX"))

(define-fringe-bitmap 'fringe-letter-83 (fringe-helper-convert
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX...XX"
                                         ".XX...."
                                         "..XXX.."
                                         "....XX."
                                         ".....XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-84 (fringe-helper-convert
                                         "XXXXXXXX"
                                         "XX.XX.XX"
                                         "X..XX..X"
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-85 (fringe-helper-convert
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-86 (fringe-helper-convert
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         ".XX..XX."
                                         "..XXXX.."
                                         "...XX..."))

(define-fringe-bitmap 'fringe-letter-87 (fringe-helper-convert
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         "XX.XX.XX"
                                         "XX.XX.XX"
                                         "XXXXXXXX"
                                         ".XX..XX."
                                         ".XX..XX."))

(define-fringe-bitmap 'fringe-letter-88 (fringe-helper-convert
                                         "XX....XX"
                                         "XX....XX"
                                         ".XX..XX."
                                         "..XXXX.."
                                         "...XX..."
                                         "...XX..."
                                         "..XXXX.."
                                         ".XX..XX."
                                         "XX....XX"
                                         "XX....XX"))

(define-fringe-bitmap 'fringe-letter-89 (fringe-helper-convert
                                         "XX....XX"
                                         "XX....XX"
                                         "XX....XX"
                                         ".XX..XX."
                                         "..XXXX.."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "...XX..."
                                         "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-90 (fringe-helper-convert
                                         "XXXXXXXX"
                                         "XX....XX"
                                         "X....XX."
                                         "....XX.."
                                         "...XX..."
                                         "..XX...."
                                         ".XX....."
                                         "XX.....X"
                                         "XX....XX"
                                         "XXXXXXXX"))

(define-fringe-bitmap 'fringe-letter-97 (fringe-helper-convert
                                         "......."
                                         "......."
                                         "......."
                                         ".XXXX.."
                                         "....XX."
                                         ".XXXXX."
                                         "XX..XX."
                                         "XX..XX."
                                         "XX..XX."
                                         ".XXX.XX"))

(define-fringe-bitmap 'fringe-letter-98 (fringe-helper-convert
                                         "XXX...."
                                         ".XX...."
                                         ".XX...."
                                         ".XXXX.."
                                         ".XX.XX."
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XX..XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-99 (fringe-helper-convert
                                         "......."
                                         "......."
                                         "......."
                                         ".XXXXX."
                                         "XX...XX"
                                         "XX....."
                                         "XX....."
                                         "XX....."
                                         "XX...XX"
                                         ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-100 (fringe-helper-convert
                                          "...XXX."
                                          "....XX."
                                          "....XX."
                                          "..XXXX."
                                          ".XX.XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          ".XXX.XX"))

(define-fringe-bitmap 'fringe-letter-101 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          ".XXXXX."
                                          "XX...XX"
                                          "XX...XX"
                                          "XXXXXXX"
                                          "XX....."
                                          "XX...XX"
                                          ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-102 (fringe-helper-convert
                                          "...XXX.."
                                          "..XX.XX."
                                          "..XX..X."
                                          "..XX...."
                                          ".XXXX..."
                                          "..XX...."
                                          "..XX...."
                                          "..XX...."
                                          "..XX...."
                                          ".XXXX..."))

(define-fringe-bitmap 'fringe-letter-103 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          ".XXX.XX"
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          ".XXXXX."
                                          "....XX."
                                          "XX..XX."
                                          ".XXXX.."))

(define-fringe-bitmap 'fringe-letter-104 (fringe-helper-convert
                                          "XXX...."
                                          ".XX...."
                                          ".XX...."
                                          ".XX.XX."
                                          ".XXX.XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          "XXX..XX"))

(define-fringe-bitmap 'fringe-letter-105 (fringe-helper-convert
                                          "...XX..."
                                          "...XX..."
                                          "........"
                                          "..XXX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-106 (fringe-helper-convert
                                          ".....XX."
                                          ".....XX."
                                          "........"
                                          "....XXX."
                                          ".....XX."
                                          ".....XX."
                                          ".....XX."
                                          ".....XX."
                                          ".....XX."
                                          ".....XX."
                                          ".XX..XX."
                                          ".XX..XX."
                                          "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-107 (fringe-helper-convert
                                          "XXX...."
                                          ".XX...."
                                          ".XX...."
                                          ".XX..XX"
                                          ".XX.XX."
                                          ".XXXX.."
                                          ".XXXX.."
                                          ".XX.XX."
                                          ".XX..XX"
                                          "XXX..XX"))

(define-fringe-bitmap 'fringe-letter-108 (fringe-helper-convert
                                          "..XXX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "...XX..."
                                          "..XXXX.."))

(define-fringe-bitmap 'fringe-letter-109 (fringe-helper-convert
                                          "........"
                                          "........"
                                          "........"
                                          "XXX..XX."
                                          "XXXXXXXX"
                                          "XX.XX.XX"
                                          "XX.XX.XX"
                                          "XX.XX.XX"
                                          "XX.XX.XX"
                                          "XX.XX.XX"))

(define-fringe-bitmap 'fringe-letter-110 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          "XX.XXX."
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"))

(define-fringe-bitmap 'fringe-letter-111 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          ".XXXXX."
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-112 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          "XX.XXX."
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XX..XX"
                                          ".XXXXX."
                                          ".XX...."
                                          ".XX...."
                                          "XXXX..."))

(define-fringe-bitmap 'fringe-letter-113 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          ".XXX.XX"
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          ".XXXXX."
                                          "....XX."
                                          "....XX."
                                          "...XXXX"))

(define-fringe-bitmap 'fringe-letter-114 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          "XX.XXX."
                                          ".XXX.XX"
                                          ".XX..XX"
                                          ".XX...."
                                          ".XX...."
                                          ".XX...."
                                          "XXXX..."))

(define-fringe-bitmap 'fringe-letter-115 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          ".XXXXX."
                                          "XX...XX"
                                          ".XX...."
                                          "..XXX.."
                                          "....XX."
                                          "XX...XX"
                                          ".XXXXX."))

(define-fringe-bitmap 'fringe-letter-116 (fringe-helper-convert
                                          "...X..."
                                          "..XX..."
                                          "..XX..."
                                          "XXXXXX."
                                          "..XX..."
                                          "..XX..."
                                          "..XX..."
                                          "..XX..."
                                          "..XX.XX"
                                          "...XXX."))

(define-fringe-bitmap 'fringe-letter-117 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          "XX..XX."
                                          ".XXX.XX"))

(define-fringe-bitmap 'fringe-letter-118 (fringe-helper-convert
                                          "........"
                                          "........"
                                          "........"
                                          "XX....XX"
                                          "XX....XX"
                                          "XX....XX"
                                          "XX....XX"
                                          ".XX..XX."
                                          "..XXXX.."
                                          "...XX..."))

(define-fringe-bitmap 'fringe-letter-119 (fringe-helper-convert
                                          "........"
                                          "........"
                                          "........"
                                          "XX....XX"
                                          "XX....XX"
                                          "XX....XX"
                                          "XX.XX.XX"
                                          "XX.XX.XX"
                                          "XXXXXXXX"
                                          ".XX..XX."))

(define-fringe-bitmap 'fringe-letter-120 (fringe-helper-convert
                                          "........"
                                          "........"
                                          "........"
                                          "XX....XX"
                                          ".XX..XX."
                                          "..XXXX.."
                                          "...XX..."
                                          "..XXXX.."
                                          ".XX..XX."
                                          "XX....XX"))

(define-fringe-bitmap 'fringe-letter-121 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          "XX...XX"
                                          ".XXXXXX"
                                          ".....XX"
                                          "....XX."
                                          "XXXXX.."))

(define-fringe-bitmap 'fringe-letter-122 (fringe-helper-convert
                                          "......."
                                          "......."
                                          "......."
                                          "XXXXXXX"
                                          "XX..XX."
                                          "...XX.."
                                          "..XX..."
                                          ".XX...."
                                          "XX...XX"
                                          "XXXXXXX"))

(defvar evil-marker-indicators-fringe 'left-fringe
  "The fringe in which to display marker indicators.")

(defvar evil-marker-indicators-plist '(0 0)
  "A property list containing all marker fringe bitmaps.")

(defun evil-marker-indicators-place (char marker)
  (let ((extant-marker (plist-get evil-marker-indicators-plist char)))
    (if extant-marker (fringe-helper-remove extant-marker)))
  (plist-put evil-marker-indicators-plist char
             (fringe-helper-insert
              (intern (format "fringe-letter-%s" char))
              marker evil-marker-indicators-fringe)))

(defadvice evil-set-marker (around compile)
  (let ((char (ad-get-arg 0))
        (marker ad-do-it))
    (evil-marker-indicators-place char marker)))

;;;###autoload
(define-minor-mode evil-marker-indicators-mode
  "Places evil markers in the fringe for easy location."
  :global t
  :lighter " m_"
  (if evil-marker-indicators-mode
      (ad-activate 'evil-set-marker)
    (ad-deactivate 'evil-set-marker)))

(provide 'evil-marker-indicators-mode)
;;; evil-marker-indicators ends here
