#!/bin/bash
cd ~/secure_vault
touch vault_report.txt
for file in *
do
	if [ "$file" = "vault_report.txt" ] || [ -d "$file" ]
	then
		continue
	fi
	filename="$file"
	size=$(stat -c %s "$file")
  
	modified=$(stat -c %y "$file" | cut -d' ' -f1,2 | cut -d'.' -f1)
	permissions=$(stat -c %a "$file")
	echo "Filename: $filename" 
	echo "Filename: $filename" >> vault_report.txt
	echo "Size: $size"
	echo "Size: $size" >> vault_report.txt
	echo "Last modified date: $modified"
	echo "Last modified date: $modified" >> vault_report.txt
	echo "Current permissions: $permissions"
	echo "Current permissions: $permissions" >> vault_report.txt
	if [ $permissions -gt 644 ] 
	then 
		echo "⚠️ SECURITY RISK DETECTED"
		echo "⚠️ SECURITY RISK DETECTED" >> ~/secure_vault/vault_report.txt
	fi
	echo ""
	echo "" >> vault_report.txt
done

echo "The report has been created and saved"

