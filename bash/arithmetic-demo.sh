#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

echo "Please Enter your firstnum"
read firstnum
echo "Please Enter your secondnum"
read secondnum
echo "Calculating..."
#firstnum=5 (not required as user input is done)
#secondnum=2(not required as user input is done)
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
subtraction=$((firstnum - secondnum))
multiplication=$((firstnum * secondnum))
modulus=$((firstnum % secondnum))
power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")


cat <<EOF
$firstnum added $secondnum is $sum
$firstnum subtracted by $secondnum is $subtraction
$firstnum multiplicated by $secondnum is $multiplication
$firstnum power of $secondnum is $power
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend with a remainder of $modulus
EOF
