checksIfEmpty()
{
	if [ $1 -z ]; then
		echo "none of the parameters should be empty"
		exit 1
	fi
}

isNum()
{
	re='^[0-9]+$'
	if ! [[ $1 =~ $re ]] ; then
		echo "error: Not a number" 
		exit 1
fi
}

