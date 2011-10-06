# detail:
# catch SIGNAL

# Usage:
# . catch_signal.sh
# export -f catch_signal

function catch_signal() {
	# 正常終了
	if [ $? -eq 0 ];
	then
		return 0

	# SIGINT
	elif [ $? -eq 3 ];
	then
		echo interrupted
		exit 3

	# その他のシグナル
	else
		echo signal $?
		exit $?
	fi
}
