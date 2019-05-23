ls
mkdir server
ls
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/1244-8409385634cf5151db582639cebe357cc88f287a/fx.tar.xz
ls
cd server && tar xf fx.tar.xz 
cd ../
rm -rf fx.tar.xz 
cd server/
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/1244-8409385634cf5151db582639cebe357cc88f287a/fx.tar.xz
tar xf fx.tar.xz 
sudo tar xf fx.tar.xz 
sudo apt-get install git zip unzip
ls
cd ../
ls
git clone https://github.com/citizenfx/cfx-server-data.git server-data
ls
sudo nano server.cfg
ls
mv server.cfg server-data/server.cfg
ls
cd server-data/
ls
cd../
cd ../
ls
bash server/run.sh +exec server.cfg
ls
cd server-data/
ls
bash /home/Best/server/run.sh +exec server.cfg 
cd server
ls
cd ../
cd server-data/
ls
cd resources/
ls
git clone https://github.com/brouznouf/fivem-mysql-async.git mysql-async
cd /tmp
wget https://dev.mysql.com/get/mysql-apt-config_0.8.10-1_all.deb
sudo dpkg -i mysql-apt-config*
sudo apt update
sudo apt install mysql-server
sudo systemctl status mysql
mysql_secure_installation
sudo mysql_secure_installation
mysql
sudo mysql
mysql -u sakray
mysql -u sakray -p
cd
ls
cd server
ls
cd ../
cd server-data/
ls
cd resources/
ls
wget https://github.com/kanersps/essentialmode/archive/6.2.1.tar.gz
ls
tar xf 6.2.1.tar.gz 
ls
mv essentialmode-6.2.1 essentialmode
ls
sudo rm -rf 6.2.1.tar.gz 
cd ../
ls
sudo nano server.cfg 
ls
cd resources/
ls
cd essentialmode/
ls
cd ../
ls
wget https://github.com/kanersps/esplugin_mysql/archive/master.zip
ls
unzip master.zip 
ls
mv esplugin_mysql-master/ esplugin_mysql
ls
cd esplugin_mysql/
ls
sudo nano esplugin_mysql.sql 
cd ../
cd .//
cd ../
ls
sudo nano server.cfg 
cd resources/
cd esplugin_mysql/
ls
esp
mysql -u sakray -p
mysql -u sakray -p < /home/Best/server-data/resources/esplugin_mysql/esplugin_mysql.sql 
sudo nano esplugin_mysql.sql 
mysql -u sakray -p < /home/Best/server-data/resources/esplugin_mysql/esplugin_mysql.sql 
ls
mysql -u sakray -p
sudo nano esplugin_mysql.sql 
cd ../../
ls
sudo nano server.cfg 
cd resources/
ls
git clone https://github.com/ESX-Org/async.git async
git clone https://github.com/ESX-Org/es_extended [essential]/es_extended
git clone https://github.com/ESX-Org/esx_menu_default [esx]/[ui]/esx_menu_default
git clone https://github.com/ESX-Org/esx_menu_dialog [esx]/[ui]/esx_menu_dialog
git clone https://github.com/ESX-Org/esx_menu_list [esx]/[ui]/esx_menu_list
ls
cd \[essential\]/
ls
cd es_extended/
ls
sudo nano es_extended.sql 
mysql -u sakray -p < es_extended.sql 
cd ../../../
ls
sudo nano server.cfg 
ls
rm -rf cache/
bash /home/Best/server/run.sh +exec server.cfg
ls
cd resources/
ls
cd \[essential\]/
ls
cd es_extended/
ls
cd locales/
ls
sudo nano th.lua
ls
cd ../
ls
sudo nano config.lua 
cd ../
bash /home/Best/server/run.sh +exec server.cfg
cd /server-data/resources/[essential]/es_extended$
cd resources/[essential]/es_extended$
cd ./resources/[essential]/es_extended$
ls
cd resources/
cd ../
sudo nano essentialmode.db 
cd resources/\[essential\]/es_extended/
ls
sudo nano config.lua 
cd
ls
cd server-data/
ls
bash /home/Best/server/run.sh +exec server.cfg
cd resources/
ls
cd \[esx\]/
git clone https://github.com/FXServer-ESX/fxserver-esx_status esx_status
ls
cd esx_status/
ls
sudo nano config.lua 
sudo nano esx_status.sql 
mysql -u sakray -p < esx_status.sql 
cd ../../
ls
cd ../
ls
sudo nano server.cfg 
cd resources/
git clone https://github.com/ESX-Org/skinchanger skinchanger
git clone https://github.com/ESX-Org/esx_skin [esx]/esx_skin
git clone https://github.com/ESX-Org/esx_datastore [esx]/esx_datastore
cd \[esx\]/
ls
cd esx_datastore/
ls
sudo nano esx_datastore.sql 
mysql -u sakray -p < esx_datastore.sql 
cd ../../
ls
git clone https://github.com/ESX-Org/esx_accessories [esx]/esx_accessories
cd \[esx\]/
cd esx_accessories/
ls
sudo nano esx_accessories.sql 
mysql -u sakray -p < esx_accessories.sql 
cd ../../
ls
git clone https://github.com/ESX-Org/cron cron
ls
git clone https://github.com/ESX-Org/esx_addonaccount [esx]/esx_addonaccount
cd \[esx\]/
ls
cd esx_addonaccount/
ls
sudo nano esx_addonaccount.sql 
mysql -u sakray -p < esx_addonaccount.sql 
cd ../../
ls
git clone https://github.com/ESX-Org/esx_society [esx]/esx_society
cd \[es
cd \[esx\]/
ls
cd esx_society/
ls
sudo nano esx_society.sql 
mysql -u sakray -p < esx_society.sql 
cd ../../
ls
git clone https://github.com/ESX-Org/esx_billing [esx]/esx_billing
cd \[esx\]/
cd esx_billing/
ls
sudo nano esx_billing.sql 
mysql -u sakray -p < esx_billing.sql 
cd ../../
ls
git clone https://github.com/ESX-Org/esx_identity [esx]/esx_identity
cd \[esx\]/
cd esx_identity/
sudo nano esx_identity.sql 
mysql -u sakray -p < esx_identity.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_license [esx]/esx_license
cd \[esx\]/
ls
cd esx_license/
ls
sudo nano esx_license.sql 
mysql -u sakray -p < esx_license.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_policejob [esx]/esx_policejob
cd \[esx\]/esx_policejob/
sudo nano esx_policejob.sql 
mysql -u sakray -p < esx_policejob.sql 
sudo nano esx_policejob.sql 
cd ../
ls
cd esx_society/
ls
sudo nano esx_society.sql 
cd ../../
ls
git clone https://github.com/ESX-Org/esx_addoninventory [esx]/esx_addoninventory
cd \[esx\]/
cd esx_addoninventory/
sudo nano esx_addoninventory.sql 
mysql -u sakray -p < esx_addoninventory.sql 
cd ../
cd esx_policejob/
mysql -u sakray -p < esx_policejob.sql 
mysql -u sakray -p 
mysql -u sakray -p < esx_policejob.sql 
mysql -u sakray -p 
cd ../../
git clone https://github.com/ESX-Org/esx_holdup [esx]/esx_holdup
git clone https://github.com/ESX-Org/esx_barbershop [esx]/esx_barbershop
git clone https://github.com/ESX-Org/instance [esx]/instance
git clone https://github.com/ESX-Org/esx_property [esx]/esx_property
cd \[esx\]/
cd esx_property/
sudo nano esx_property.sql 
mysql -u sakray -p < esx_property.sql 
sudo nano offices.sql 
mysql -u sakray -p < offices.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_clotheshop [esx]/esx_clotheshop
git clone https://github.com/ESX-Org/esx_vehicleshop [esx]/esx_vehicleshop
cd \[esx\]/esx_vehicleshop/
sudo nano esx_vehicleshop.sql 
mysql -u sakray -p < esx_vehicleshop.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_lscustom [esx]/esx_lscustom
cd \[esx\]/
git clone https://github.com/FXServer-ESX/fxserver-esx_garage esx_garage
cd esx_garage/
sudo nano esx_garage.sql 
mysql -u sakray -p < esx_garage.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_rpchat [esx]/esx_rpchat
git clone https://github.com/ESX-Org/esx_atm [esx]/esx_atm
git clone https://github.com/ESX-Org/esx_phone [esx]/esx_phone
cd \[esx\]/esx_phone/
sudo nano esx_phone.sql 
mysql -u sakray -p < esx_phone.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_jobs [esx]/esx_jobs
cd \[esx\]/esx_jobs/
sudo nano esx_jobs.sql 
mysql -u sakray -p < esx_jobs.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_service [esx]/esx_service
git clone https://github.com/ESX-Org/esx_mechanicjob [esx]/esx_mechanicjob
cd \[esx\]/esx_mechanicjob/
sudo nano esx_mechanicjob.sql 
mysql -u sakray -p < esx_mechanicjob.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_weaponshop.git [esx]/esx_weaponshop
cd \[esx\]/esx_weaponshop/
sudo nano esx_weaponshop.sql 
mysql -u sakray -p < esx_weaponshop.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_joblisting [esx]/esx_joblisting
cd \[esx\]/esx_joblisting/
sudo nano esx_joblisting.sql 
mysql -u sakray -p < esx_joblisting.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_taxijob [esx]/esx_taxijob
cd \[esx\]/esx_taxijob/
sudo nano esx_taxijob.sql 
mysql -u sakray -p < esx_taxijob.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_bankerjob [esx]/esx_bankerjob
cd \[esx\]/esx_bankerjob/
sudo nano esx_bankerjob.sql 
mysql -u sakray -p < esx_bankerjob.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_shops [esx]/esx_shops
cd \[esx\]/esx_shops/
sudo nano esx_shops.sql 
mysql -u sakray -p < esx_shops.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_boat [esx]/esx_boat
cd \[esx\]/
cd esx_boat/
sudo nano esx_boat.sql 
mysql -u sakray -p < esx_boat.sql 
cd ../../
git clone https://github.com/ESX-Org/esx_realestateagentjob [esx]/esx_realestateagentjob
cd \[esx\]/esx_realestateagentjob/
sudo nano esx_realestateagentjob.sql 
mysql -u sakray -p < esx_realestateagentjob.sql 
cd ../
ls
cd esx_property/
ls
sudo nano config.lua 
cd ../
ls
git clone https://github.com/ESX-Org/esx_drugs [esx]/esx_drugs
cd \[esx\]/esx_drugs/
sudo nano esx_drugs.sql 
mysql -u sakray -p < esx_drugs.sql 
cd ../
cd../
cd ../
git clone https://github.com/ESX-Org/esx_voice
git clone https://github.com/ESX-Org/esx_ambulancejob [esx]/esx_ambulancejob
cd \[esx\]/esx_ambulancejob/
sudo nano esx_ambulancejob.sql 
mysql -u sakray -p < esx_ambulancejob.sql 
ls
sudo nano config.lua 
cd ../../
ls
cd \[es
cd \[esx\]/
ls
cd esx_accessories/
sudo nano config.lua 
cd ../
cd esx_addonaccount/
sudo nano config.lua 
ls
cd ../
cd esx_atm
sudo nano config.lua 
cd ../esx_bankerjob/
sudo nano config.lua 
cd ../esx_barbershop/
sudo nano config.lua 
cd ../esx_billing/ && sudo nano config.lua 
cd ../esx_boat/ && sudo nano config.lua 
cd ../
ls
cd esx_clotheshop/
sudo nano config.lua 
cd ../esx_datastore/ && sudo nano config.lua 
cd ../esx_drugs/ && sudo nano config.lua 
cd ../esx_garage/ && sudo nano config.lua 
cd ../esx_holdup/ && sudo nano config.lua 
cd ../esx_identity/ && sudo nano config.lua 
cd ../esx_joblisting/ && sudo nano config.lua 
cd ../esx_jobs && sudo nano config.lua 
cd ../esx_license/ && sudo nano config.lua 
cd ../esx_lscustom/ && sudo nano config.lua 
cd ../esx_mechanicjob/ && sudo nano config.lua 
cd ../esx_phone/ && sudo nano config.lua 
cd ../esx_policejob/ && sudo nano config.lua 
cd ../esx_property/ && sudo nano config.lua 
cd ../esx_rpchat/ && sudo nano config.lua 
cd ../esx_service/ && sudo nano config.lua 
cd ../esx_shops/ && sudo nano config.lua 
cd ../esx_skin/ && sudo nano config.lua 
cd ../esx_society/ && sudo nano config.lua 
cd ../esx_status/ && sudo nano config.lua 
cd ../esx_taxijob/ && sudo nano config.lua 
cd ../esx_vehicleshop/ && sudo nano config.lua 
cd ../esx_weaponshop/ && sudo nano config.lua 
cd ../../
ls
cd ../
sudo nano server.cfg 
cd resources/\[esx\]/esx_policejob/
sudo nano config.lua 
cd ../../
cd ../
bash /home/Best/server/run.sh +exec server.cfg bash /home/Best/server/run.sh +exec server.cfg
cd ../
ls
rm -rf cache/
cd server-data/
bash /home/Best/server/run.sh +exec server.cfg
ls
cd server.cfg 
sudo nano server.cfg 
cd resources/
ls
cd \[esx\]/
ls
cd \[ui\]/
ls
cd ../
bash /home/Best/server/run.sh +exec server.cfg
sudo mysql
ls
cd server-data
;s
ls
sudo mysql
bash /home/Best/server/run.sh -exec server.cfg 
bash /home/Best/server/run.sh +exec server.cfg
สห
ls
rm -rf cache/
sudo rm -rf cache/
bash /home/Best/server/run.sh +exec server.cfg
sudo mysql
cd resources/
git clone https://github.com/ESX-Org/esx_basicneeds [esx]/esx_basicneeds
cd \[esx\]/esx_basicneeds/
sudo nano esx_basicneeds.sql 
mysql -u sakray -p < esx_basicneeds.sql 
cd ../../
ls
cd ../
ls
sudo nano server.cfg 
cd resources/
ls
wget https://ci.appveyor.com/api/buildjobs/47w8nvjo28mweul4/artifacts/frfuel_v2.0.0.zip
ls
unzip frfuel_v2.0.0.zip frfuel
unzip frfuel_v2.0.0.zip
ls
rm -rf __resource.lua 
rm -rf config.ini config.json frfuel.net.dll GasStations.json Newtonsoft.Json.dll 
ls
unzip frfuel_v2.0.0.zip -d frfuel
ls
cd frfuel
ls
cd ../../
ls
sudo nano server.cfg 
cd resources/
;s
ls
rm -rf frfuel_v2.0.0.zip 
ls
rm -rf master.zip 
ls
git clone https://github.com/bestsilly/sakray.git
cd ../
ls
bash /home/Best/server/run.sh +exec server.cfg
ls
rm -rf cache/
bash /home/Best/server/run.sh +exec server.cfg
cd resources/
ls
sudo git clone https://github.com/bestsilly/sakray.git
rm -rf sakray/
ls
cd ../
sudo git clone https://github.com/bestsilly/sakray.git resources/
cd resources/
ls
sudo git clone https://github.com/bestsilly/sakray.git resources/
sudo git clone https://github.com/bestsilly/sakray.git
cd sakray/
ls
mv * ../
sudo mv * ../
ls
cd ../
ls
cd ../
bash /home/Best/server/run.sh +exec server.cfg
ls
rm -rf cache/
bash /home/Best/server/run.sh +exec server.cfg
sudo nano server.cfg 
rm -rf cache/
bash /home/Best/server/run.sh +exec server.cfg
nohub bash /home/Best/server/run.sh +exec server.cfg
nohub bash /home/Best/server/run.sh +exec server.cfg &
cd server-data
ls
nohub bash /home/Best/server/run.sh +exec server.cfg &
nohup bash /home/Best/server/run.sh +exec server.cfg 
nohup bash /home/Best/server/run.sh +exec server.cfg &
nohup /home/Best/server/run.sh +exec server.cfg &
bash /home/Best/server/run.sh +exec server.cfg
ls
cd server-data
ls
sudo nano 
netstat -a
cd ../
sudo apt-get -y update
sudo apt-get install -y nodejs npm
node -v
sudo apt-get install nodejs
sudo apt-get install -y npm
node -v
sudo apt-get install nodejs
node -v
sudo apt-update
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
cd server-data
nohub /home/Best/server/run.sh +exec server.cfg &
bash /home/Best/server/run.sh +exec server.cfg & disown 
bash /home/Best/server/run.sh +exec server.cfg
ls
cd fivem-fxadmin/
sudo nano package.json 
npm install
cd src/components/
sudo nano authenticator.js 
cd ../../
ls
cd ../
cd server-data
cd resources/
cd ../
sudo nano server.cfg 
cd resources/
ls
git clone https://github.com/gamziboi/gamz-skillsystem.git
ls
https://github.com/bepo13/FiveM-Timetrials.git
git clone https://github.com/bepo13/FiveM-Timetrials.git
ls
cd FiveM-Timetrials/
ls
mv timetrials/ ../
ls
cd ../
ls
git clone https://github.com/Nick78111/pNotify.git
ls
cd pNotify/
ls
cd ../
mv pNotify/ pNotifys/
cd pNotifys/
mv pNotify/ ../
cd ../
ls
rm -rf pNotifys/
ls
cd pNotify/
ls
cd ../
git clone https://github.com/Trsak/esx_inventoryhud [esx]/esx_inventoryhud
ls
cd \[es
cd \[esx\]/
;s
ls
cd ../
ls
cd \[essential\]/
ls
cd es_extended/
ls
cd client/
sudo nano main.lua 
cd ../../
ls
cd ../
cd \[esx\]/
ls
cd esx_policejob/
cd client/
sudo nano main.lua 
cd ../../../../
ls
sudo nano server.cfg 
cd resources/
git clone https://github.com/lowheartrate/streetLabel.git
ls
cd streetLabel/
ls
cd ../
ls
cm streetLabel/ streetLabels/
mv streetLabel/ streetLabels/
cd streetLabels/
ls
mv streetLabel/ ../
cd ../
ls
rm -rf streetLabels/
ls
cd streetLabel/
ls
cd ../../
sudo nano server.cfg 
cd resources/
;s
ls
git clone https://github.com/MacieGx/esx_planting.git
ls
rm -rf esx_planting/
mv esx_voice/ \[esx\]/esx_voice
;s
ls
cd server-data
bash /home/Best/server/run.sh +exec server.cfg
ls
sudo rm -rf cache/
bash /home/Best/server/run.sh +exec server.cfg
