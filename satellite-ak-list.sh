#!/bin/bash

# Write out time stamp to file
/usr/bin/date > /var/www/html/pub/activation-key.txt
echo '' >> /var/www/html/pub/activation-key.txt

# Write out example of how to register a system with a Satellite Server
echo '#######################################################################################################' >> /var/www/html/pub/activation-key.txt
echo "Example of how to register a system with the satellte server using an Activation Key (AK), please" >> /var/www/html/pub/activation-key.txt
echo "select the appropriate AK below to suit your purposes." >> /var/www/html/pub/activation-key.txt
echo "# dnf install https://satellite.auto.bos2.lab/pub/katello-ca-consumer-latest.noarch.rpm" >> /var/www/html/pub/activation-key.txt
echo '# subscription-manager register --org="Default_Organization" --activationkey="RHEL9-latest-QA-AK"' >> /var/www/html/pub/activation-key.txt
echo '' >> /var/www/html/pub/activation-key.txt
echo '#######################################################################################################' >> /var/www/html/pub/activation-key.txt


# Dump activation key list for the Default Organization to /var/www/html/pub/activation-key.txt
hammer activation-key list --organization "Default Organization" >> /var/www/html/pub/activation-key.txt
