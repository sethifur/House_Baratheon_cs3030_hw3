#printing out Firstname Lastname and Begin Year
{
	FS=","
	if ( $4 ~ "([0-9]{1,2}).([0-9]{1,2}).(19[0-9][0-9])" || $4 ~ "([0-9]{1,2}).([0-9]{1,2}).(20[0-9][0-9])"){
	print $2 " from " $4 " to " $5
	}
}
