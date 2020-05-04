#!/bin/bash

# Yajun ZHANG
# 040958689
# Opetaring Sysytems Fund(GNU/Linux)
# 20W_CST8102_330
# This script will calculate the final grade, and display the letter grade for a course.

clear
read -p "Enter Assignment Mark (0-40): " assMark
read -p "Enter Test 1 mark (0-15): " test1Mark
read -p "Enter Test 2 mark (0-15): " test2Mark
read -p "Enter Final exam mark(0-30): " finalExamMark

let totalMark=$assMark+$test1Mark+$test2Mark+$finalExamMark

case $totalMark in
[9][0-9]|100) letter="A+"
;;
[8][5-9]) letter="A"
;;
[8][0-4]) letter="A-"
;;
[7][7-9]) letter="B+"
;;
[7][3-6]) letter="B"
;;
[7][0-2]) letter="B-"
;;
[6][7-9]) letter="C+"
;;
[6][3-6]) letter="C"
;;
[6][0-2]) letter="C-"
;;
[5][7-9]) letter="D+"
;;
[5][3-6]) letter="D"
;;
[5][0-2]) letter="D-"
;;
*) letter="F"
;;
esac
echo
echo "Your final numeric grade is $totalMark, and your final letter grade is $letter"
