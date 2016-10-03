#printing out Firstname Lastname and Begin Year
#FS="," {print $2 " from " $4 " to " $5}
{if ( $4 ~ "([0-9][0-9]{1,2}).([0-9][0-9]{1,2}).(19[0-9][0-9])" || $4 ~ "([0-9][0-9]{1,2}).([0-9][0-9]{1,2}).(20[0-9][0-9])"){
	FS=","
	print $2 " from " $4 " to " $5
	}
}
