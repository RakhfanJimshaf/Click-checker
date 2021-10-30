#! /bin/bash
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)
echo Welcome To  Clickjacking ${red} Vulnerability ${reset} checker
echo "______________________________________________"
#url pasting area
read -p "Paste the url here: " url

#create an html file
echo -e  "<html> \n<head>\n<title> Clickjack Vulnerability Checker </title>\n</head>\n<body>\n</p>If the website is visible here! then it is <font color="red"> vulnerable to clickjacking</font></p>\n<iframe src="$url" width="1000" height="1000">\n</body>\n</html>" >> file.html
echo "*******************************"
#browser options
echo "${green}1${reset}. Firefox"
echo "${green}2${reset}. Chrome"
echo "${green}3${reset}. Brave"
read -p "Choose the browser you are using(${green}1/2/3${reset}):  " opt

case $opt in
  "1" )
  firefox file.html;;
  "2" )
  google-chrome file.html;;
  "3" )
  brave-browser file.html;;
esac

rm file.html #delete the html file
