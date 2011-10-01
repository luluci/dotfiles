;;; 行をハイライト
(defface hlline-face
  '(
	(((class color)
	  (background dark))
	 (:background "gray10" :underline "gray24"))
	(((class color)
	  (background light))
	 (:background "ForestGreen" :underline nil))
	(t ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

