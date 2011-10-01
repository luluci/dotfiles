;;; auto-complete
;;; path
(add-to-list 'load-path "~/.emacs.d/lisp/auto-complete")

(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")

(global-auto-complete-mode t)
(ac-set-trigger-key "TAB")
(setq ac-auto-start nil)
;(ac-config-default)


