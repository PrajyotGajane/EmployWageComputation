echo "  Welcome to Employee Wage Computation Program"

isPresent=1
isAbsent=0
attendance=$((RANDOM % 2))
if [ $attendance == 1 ];
then
	echo "Employee Present"
else
	echo "Empolyee Absent"
fi
echo "completed the first use case"
