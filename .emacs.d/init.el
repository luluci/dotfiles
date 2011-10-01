
;;; Language
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-file-name-coding-system 'sjis)     ;日本語ファイル名を表示
;(set-buffer-file-coding-system 'utf-8)
;(set-keyboard-coding-system 'utf-8)
;; charset と coding-system の優先度設定
(set-charset-priority 'ascii 'japanese-jisx0208 'latin-jisx0201 'katakana-jisx0201 'iso-8859-1
					  'cp1252 'unicode)
(set-coding-system-priority 'utf-8 'euc-jp 'iso-2022-jp 'cp932)

;;; default directory
(cd "~/")
;(setq default-directory "~/")
;(setq default-directory "~/.emacs.d")

;;; load directory
;(add-to-list 'load-path "E:/work/Tools/emacs-23.2/site-lisp")
;;; 起動設定ファイルディレクトリ
(add-to-list 'load-path "~/.emacs.d/init.d")
;;; Emacs Lisp ファイル
(add-to-list 'load-path "~/.emacs.d/lisp")

;;; 設定ファイルのロード
;; shell
(load "init-shell")
;; PATH
(load "init-path")
;; IME
(load "init-ime")
;; フォント
(load "init-font")
;; color-theme
(load "init-color-theme")
;; jaspace
(load "init-jaspace")
;; auto-complete
(load "init-auto-complete")
;; highlight-line
(load "hl-line")
;; mode
;; ruby-mode
(load "init-ruby-mode")
;; JavaScript-mode
(load "init-js-mode")



;; バックアップファイルを作らない
(setq backup-inhibited t)


; tab-space
(setq-default tab-width 4)
(setq tab-width 4)
(setq indent-tab-mode t)
(setq-default tab-stop-list '(4 8 12 16 20))
;(setq c-basic-offset 4)
;(setq c-tab-width 4)
;(setq c-indent-level 4)



;linum
(require 'linum)
(global-linum-mode t)
(setq linum-format "%5d")

;;; マウス、Shift&矢印で領域を選択可能にする
(pc-selection-mode)
;;; 改行後にインデント？
(global-set-key "\C-m" 'newline-and-indent)


;;; 対応するカッコを強調
(show-paren-mode t)


;;; 最初の画面いらない
(setq inhibit-startup-message t)
;;; メニューバーを削除
(tool-bar-mode -1)


;;; タイトルバーにファイル名を表示
(setq frame-title-format (format "%%f - Emacs@%s" (system-name)))



;;; 画面サイズ
;(set-frame-height (next-frame) 55)
;(set-frame-width  (next-frame) 130)
;; default-frame-alist? initial-frame-alist?
(setq default-frame-alist
	  (append (list
			   '(top   . 100)
			   '(left  . 350)
			   '(width . 110)
			   '(height . 40)
			   )
			  default-frame-alist))
;; color-themeでフレームサイズが勝手に変更される？
;; ウィンドウのセットアップでサイズ変更
(add-hook 'window-setup-hook
		  (lambda ()
			(modify-frame-parameters (selected-frame) default-frame-alist)))



(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(show-paren-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#233b5a" :foreground "#fff8dc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family #("VL ゴシック" 3 7 (charset cp932-2-byte)))))))
