#!/bin/bash

cat /usr/share/regripper/plugins/mountdev2.pl | sed -r 's/Volume[{]+/Volume\\{/g' >> mountdev2.pl
rm /usr/share/regripper/plugins/mountdev2.pl
mv mountdev2.pl /usr/share/regripper/plugins/

sed -i '25 i my %guid=0;' /usr/share/regripper/plugins/ScanButton.pl
