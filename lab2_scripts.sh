#!/bin/bash
# Authors : Benjamin Singer
# Date: 1/1/2019

#Get user input and feed to grep
echo "Enter expression:"
read exp
echo "Enter file to read from: "
read file
grep $exp $file

#Count phone numbers
egrep -c "[0-9]{3}\-[0-9]{3}\-[0-9]{4}"  "regex_practice.txt"
#Count emails
egrep -c "[A-Za-z]+@[A-Za-z]+\.[A-Za-z]+" "regex_practice.txt"
#List phone numbers with 303 area code and store in phone_results.txt
egrep "303\-[0-9]{3}\-[0-9]{4}" "regex_practice.txt" >> phone_results.txt
#List geocities.com emails and store in email_results.txt
egrep "[A-Za-z]+@geocities+\.com+" "regex_practice.txt" >> email_results.txt
#command line expression
egrep $1 "regex_practice.txt" >> command_results.txt
