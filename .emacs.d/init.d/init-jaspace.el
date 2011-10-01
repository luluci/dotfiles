;; jaspace
;; タブ, 全角スペース、改行直前の半角スペースを表示する
(require 'jaspace)
(setq jaspace-modes
	  (append jaspace-modes
			  (list 'php-mode 'yaml-mode 'javascript-mode
					'ruby-mode 'text-mode 'fundamental-mode)
			  ))
(setq jaspace-alternate-jaspace-string "□")
;(setq jaspace-alternate-eol-string "↓\n")
(setq jaspace-alternate-eol-string "↲\n")
(setq jaspace-highlight-tabs ?^)
;タブ表示文字の色
(face-spec-set 'jaspace-highlight-tab-face
			   '((
				  ((class color) (background light))
				  (:foreground "red"))
				 (t (:foreground "gray60"))))

