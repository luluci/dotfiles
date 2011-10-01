;;; shell
;; shellへのpath
(setq exec-path (cons "E:/cygwin/bin" exec-path))
(setenv "PATH" (concat "E:\\cygwin\\bin;" (getenv "PATH")))
;; shellの存在を確認
(defun skt:shell ()
  (or (executable-find "bash")
	  (executable-find "zsh")
	  (executable-find "cmdproxy")
	  (error "can't find 'shell' command in PATH")))

;; shellのHOMEを指定
;(setq old_home (getenv "HOME"))
;(setenv "HOME" "E:/cygwin/home/<user-name>")

;; shell名の設定
(setq shell-file-name (skt:shell))
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)

;(setq shell-command-option "--rcfile /home/<user-name>/.bashrc -i")
;(setq shell-command-option "-c")
;(setq explicit-sh-args '("--rcfile /home/<user-name>/.bashrc" "-i"))
;explicit-bash-args
(setq explicit-bash-args '("--rcfile /home/<user-name>/.bashrc" "-i"))

;; HOMEを元に戻す
;(setenv "HOME" old_home)

