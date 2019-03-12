. /Users/tkmacgf/Documents/foundation/commons.sh
. /Users/tkmacgf/Documents/foundation/resources_shell/*


for resources in `cat input_services.txt`
do
	lower_resources=`echo $resources | tr '[:upper:]' '[:lower:]'`
	echo "initializing $lower_resources"
	case $lower_resources in 
		dataproc)
			dataproc
			;;
		bigquery)
			echo "bigquery"
			;;
		*)
			echo "not supported by deployment manager"
			;;
	esac
done


