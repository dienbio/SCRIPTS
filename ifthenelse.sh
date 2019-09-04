#!/bin/bash -x
#create a script with if then else

#Is there an argument
if [ ! $1 ]; then
        echo "There's no argument please run ./script.sh scriptname.sh"
        exit 1
fi

bindir="${HOME}/SCRIPT/SCRIPT2"
scriptname="${bindir}/$1"

#Check if scriptname is existed

if [[ -e $scriptname ]]; then
	echo "${scriptname} is existed, please create a different files"
	exit 1
fi

if type "$scriptname"; then 
	echo "There are command with this name, please name differently"
	exit 1
fi


#Check if folder is existed, if not create folder
if [[ ! -d ${bindir} ]]; then
	echo "Folder ${bindir} is not existed, will create it now"
	if mkdir -p "$bindir"; then
		echo "Created ${bindir}"
	else 
		echo "Could not create ${bindir}, exitting...."
		exit 1
	fi
fi

echo "SCRIPT IS COMPLETED!!!!...."
echo "#!/bin/bash" > "$scriptname"
chmod u+x "$scriptname"
vim "$scriptname"                             

