#/bin/bash/

#House Baratheon
#HW3

usage() {
	echo "USAGE: ./House_Baratheon.sh [-a awkFile] [-s sedFile] [-i inputFile]"
	echo "All three optiions are required"
}

if [[ ${#} -ne 3 ]] || [[ ${1} == "--help" ]]
then
	usage
	exit 1
fi

while getopts ":a:s:i:" opt;
do
	case opt in
		a)
			#TODO
			;;
		s)
			#TODO
			;;
		i)
			#TODO
			;;
		*)
			usage
			;;
	esac
done

exit 0
