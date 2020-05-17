#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program"

isPresent=1
isAbsent=0
attendance=$((RANDOM % 2))
if [ $attendance == 1 ];
then
	echo "Employee Present"
	empHours=8
else
	echo "Empolyee Absent"
	empHours=0
fi
echo "completed the first use case"

empRatePerHour=20
salary=$(($empHours * $empRatePerHour))
echo "Employe Day's salaryis:" $salary
echo "completed seconod use case"

isFullTime=1
isPartTime=2
attenDayWage=$((RANDOM % 3))

case $attenDayWage in
	$isFullTime)
				;;
	$isPartTime)
			empHours=4
			;;
	*)
			empHours=0
			;;
esac

salary=$(($empHours * $empRatePerHour))
echo "Salary :" $salary
echo "completed 3th and 4th use case"


totalWorkingDays=20
monthSalary=0
for (( i=0; i<=$totalWorkingDays; i++ ));

do
	attendance=$((RANDOM % 2))
	if [ $attendance == 1 ]
	then
			empHours=8
	else
			empHours=0
	fi
	monthSalary=$(($monthSalary + $empHours * $empRatePerHour))
done
echo "TOtal month's salary:" $monthSalary
