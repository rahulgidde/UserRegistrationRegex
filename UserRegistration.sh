#!/bin/bash -x

echo "---------------Welcome To User Registration----------------"

function validateFirstName()
{
   read -p "Enter First Name : " firstName
   local pattern="^[A-Z][a-zA-Z]{2,}$"
   if [[ $firstName =~ $pattern ]]
   then
      echo "First name is Valid"
   else
      echo "Invalid First Name Enter First Name Start With Cap and Enter minimum 3 Characters"
   fi
}
validateFirstName


