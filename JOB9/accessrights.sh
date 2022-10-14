#!/bin/bash

my_input="/home/aintangar/JOB9/Shell_Userlist.csv"
{
read
while IFS=, read -r caseID casePrenom caseNom caseMdp caseRole || [ -n "$caseRole" ];do
        varusername=$casePrenom$caseNom
        cleanvarusername="$(echo "$varusername" | tr -d "[:space:]")"
        sudo useradd -p $(openssl passwd -1 $caseMdp) $cleanvarusername

        if [[ $caseRole == A* ]]; then
                sudo usermod -aG sudo $cleanvarusername
        fi

done < $my_input 
}

