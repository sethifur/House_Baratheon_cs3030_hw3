#/bin/bash/

#House Baratheon
#HW3

usage() {
	echo "USAGE: ./House_Baratheon.sh [-a awkFile] [-s sedFile] [-i inputFile]"
	echo "All three optiions are required"
}

if [[ ${#} -ne 6 ]] || [[ ${1} == "--help" ]]
then
	usage
	exit 1
fi

while getopts ":a:s:i:" opt;
do
	case $opt in
		a)
			awkFile=$OPTARG
			;;
		s)
			sedFile=$OPTARG
			;;
		i)
			inputFile=$OPTARG
			;;
		*)
			usage
			exit 2
			;;
	esac
done

$(sed -f $sedFile $inputFile > outputFile.csv)
echo "$(awk -f $awkFile outputFile.csv > 20CenturyPresidents.csv)"
$(rm outputFile.csv)
echo "Your result is in 20CentryPresidents.csv"

exit 0
