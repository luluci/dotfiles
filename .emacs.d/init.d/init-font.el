
;; 固定幅フォント
;(set-face-attribute 'fixed-pitch    nil :family "VL ゴシック")
;; 可変幅フォント
;(set-face-attribute 'variable-pitch nil :family "VL Pゴシック")
;; font
;(add-to-list 'default-frame-alist '(font . "VL ゴシック-11"))
;(set-face-font 'font-lock-comment-face       "VL ゴシック-11")
;(set-face-font 'font-lock-string-face        "VL ゴシック-11")
;(set-face-font 'font-lock-keyword-face       "VL ゴシック-11")
;(set-face-font 'font-lock-builtin-face       "VL ゴシック-11")
;(set-face-font 'font-lock-function-name-face "VL ゴシック-11")
;(set-face-font 'font-lock-variable-name-face "VL ゴシック-11")
;(set-face-font 'font-lock-type-face          "VL ゴシック-11")
;(set-face-font 'font-lock-constant-face      "VL ゴシック-11")
;(set-face-font 'font-lock-warning-face       "VL ゴシック-11")

;;; フォントセットの定義
;; 英文字フォント
(create-fontset-from-ascii-font
 "-outline-VL ゴシック-normal-r-normal-normal-14-*-*-*-c-*-iso8859-1"
 nil "myfont")
;; 日本語フォント
(set-fontset-font "fontset-myfont" 'japanese-jisx0208
				  '("VL ゴシック*" . "jisx0208-sjis"))
(set-fontset-font "fontset-myfont" 'katakana-jisx0201
				  '("VL ゴシック*" . "jisx0201-katakana"))
;; フレームに設定
(add-to-list 'default-frame-alist '(font . "fontset-myfont"))
(setcdr (assoc 'font default-frame-alist) "fontset-myfont")

;;; デフォルトフォント
;(setcdr (assoc 'font default-frame-alist) "fontset-default")

