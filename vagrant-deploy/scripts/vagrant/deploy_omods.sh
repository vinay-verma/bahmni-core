#!/bin/sh -x

TEMP_LOCATION=/tmp/deploy_bahmni_core
OMOD_LOCATION=/home/bahmni/.OpenMRS/modules

sudo rm -f $OMOD_LOCATION/bahmnicore*.omod
sudo rm -f $OMOD_LOCATION/elisatomfeedclient*.omod
sudo rm -f $OMOD_LOCATION/openerp-atomfeed-client*.omod

sudo su - bahmni -c "cp -f $TEMP_LOCATION/* $OMOD_LOCATION"
