;;; PATH
;;; exec-pathにはEmacsスタイルのパス
;;; PATHにはWindowsスタイルのパス
;;; 後に記述した方がPATHの先頭になる

;; cygwin
(setq exec-path (cons "D:/cygwin/bin" exec-path))
(setenv "PATH" (concat "D:\\cygwin\\bin;" (getenv "PATH")))

;; gcc
(setq exec-path (cons "D:/cygwin/usr/local/gcc/4.5.0/bin" exec-path))
(setenv "PATH" (concat "D:\\cygwin\\usr\\local\\gcc\\4.5.0\\bin;" (getenv "PATH")))



;; より下に記述した物が PATH の先頭に追加されます
;(dolist (dir (list
;			  "/sbin"
;			  "/usr/sbin"
;			  "/bin"
;			  "/usr/bin"
;			  "/opt/local/bin"
;			  "/sw/bin"
;			  "/usr/local/bin"
;			  (expand-file-name "~/bin")
;			  (expand-file-name "~/.emacs.d/bin")
;			  ))
;; PATH と exec-path に同じ物を追加します
; (when (and (file-exists-p dir) (not (member dir exec-path)))
;   (setenv "PATH" (concat dir ":" (getenv "PATH")))
;   (setq exec-path (append (list dir) exec-path))))


