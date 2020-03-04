#!/bin/bash -x

echo "---------------Welcome To User Registration----------------"

#FUNCTION FOR VALIDATE FIRST NAME
function validateFirstName()
{
	read -p "Enter First Name: " firstName
	local pattern="^[A-Z][a-zA-Z]{2,}$"
	if [[ $firstName =~ $pattern ]]
	then
		echo "First Name is Valid"
	else
		echo "Invalid First Name Enter First Name Start With Cap and Enter minimum 3 Characters"
	fi
}

#FUNCTION FOR VALIDATE LAST NAME
function validateLastName()
{
	read -p "Enter Last Name: " lastName
	local pattern="^[A-Z][a-zA-Z]{2,}$"
	if [[ $lastName =~ $pattern ]]
	then
		echo "Last Name is Valid"
	else
		echo "Invalid Last Name Enter Last Name Start With Cap and Enter minimum 3 Characters"
	fi
}

#FUNCTION FOR VALIDATE EMAIL
function validateEmail()
{
	read -p "Enter Email: " email
	local pattern="^[a-z]{3}[.][a-zA-Z]*[@][a-z]{2}[.][a-z]{2}[.][a-z]{2,4}$"
	if [[ $email =~ $pattern ]]
	then
		echo "Valid Email"
	else
		echo "Invalid Email"
	fi
}

#FUNCTION FOR VALIDATE MOBILE FORMAT
function validateNumber()
{
	read -p "Enter Mobile Number: " number
	local pattern="^[0-9]{2}[ ][0-9]{10}$"
	if [[ $number =~ $pattern ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"
	fi
}

#FUNCTION FOR VALIDATE Password MINIMUM 8 CHARACTERS
function validatePassword()
{
	read -p "Enter Password: " password
	local pattern="^[0-9]{8,}$"
	if [[ $password =~ $pattern ]]
	then
		echo "Valid Password"
	else
		echo "Invalid Password Enter Minimum 8 Characters"
	fi
}

validateFirstName
validateLastName
validateEmail
validateNumber
validatePassword
