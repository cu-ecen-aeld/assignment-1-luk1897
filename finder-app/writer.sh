#!/bin/sh

writefile=$1
writestr=$2

dir=$(dirname "${writefile}")

if [ $# -eq 2 ]
then 
    echo "Parameters: writefile: ${writefile} and writestr: ${writestr}"
else
    echo "Parameters not specified"
    exit 1
fi

if [ -d "${dir}" ]
then
    echo "The directory exists"
else
    mkdir -p "${dir}"
    echo "Directory created!"
fi

echo "Creating the file..."
echo "${writestr}" > ${writefile}

if [ -f "${writefile}" ]
then
    echo "File created!"
    exit 0
else
    echo "File not created!"
    exit 1
fi