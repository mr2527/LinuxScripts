echo "Running Update/Upgrade Script"
echo "pop!_OS - mr2527 update Script"

while true; do

	while true; do
		read -p "Do you wish to update your system? [y/n]  " yn
		case $yn in
			[Yy,Yes,yes]* ) apt-get update; break;;
			[Nn,Qq,No,no]* ) echo "Exiting script and did not update..."; exit;;
			* ) echo "Please answer yes, no or ^c";;
		esac
	done

	while true; do
		read -p"Updating complete... Would you like to upgrade now? [y/n]  " yn
		case $yn in
			[Yy]* ) apt-get upgrade; echo "Upgrade complete. Exiting..."; exit;;
			[Nn,Qq,No,no]* ) echo "Exiting script and did not upgrade"; exit;;
			* ) echo "Please answer yes, no or ^c";;	
		esac
	done
done


