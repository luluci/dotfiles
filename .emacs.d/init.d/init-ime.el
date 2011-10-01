;;; IME
(w32-ime-initialize)
(setq default-input-method "W32-IME")
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))

;; 日本語入力時のカーソルの色
(add-hook 'input-method-activate-hook
		  (lambda() (set-cursor-color "pink")))
;; IME OFF時のカーソルの色
(add-hook 'input-method-inactivate-hook
		  (lambda() (set-cursor-color "yellow")))

