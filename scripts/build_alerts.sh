#!/usr/bin/env bash

echo "RUN dos2unix against this file in Kali before executing!!!"
OUTPUT="bad_domains.rules"
if [ -f $OUTPUT ];then
	rm $OUTPUT	
fi
SID=1200006
BAD_DOMAINS="bad.txt"

cat > $BAD_DOMAINS <<EOM
GT446.ezua.COM	140.116.70.8
aunewsonline.com	143.89.35.7
avvmail.com	143.89.35.67
cas.ibooks.tk	150.176.164.6
cas.m-e.org.ru	202.105.39.39
colville.com	202.39.61.136
cvba.com	202.6.235.83
deebeedesigns.ca	203.200.205.245
dev.teamattire.com	204.111.73.150
doversolutions.co.in	209.124.51.194
download.epac.to	209.124.51.219
drgeorges.com	209.161.249.125
dril-quip.deltae.com.br	209.208.114.83
dsds.co.kr	209.233.16.84
.ruok.org	209.253.17.229
engineer.lflinkup.org	211.232.57.235
exactearth.info.tm	212.130.19.154
fbrshop.com	218.232.66.12
firebirdonline.com	218.233.206.2
forceoptions.net	218.234.17.30
freelanceindy.com	24.73.192.154
ftp.xmahone.ocry.com	46.149.18.151
garyhart.com	60.248.52.95
gobroadreach.com	61.219.67.1
hint.happyforever.com	63.192.38.11
hojutsu.com	64.80.153.108
imly.org	65.105.157.245
interradiology.com	65.110.1.32
jimnaugle.com	65.114.195.226
kayauto.net	65.89.173.68
keenathomas.com	66.151.16.30
ks.utworld.ch	66.155.114.145
mast.zyns.com	66.170.3.43
media.conci.com.au	66.228.132.53
media.finanstalk.ru	66.228.132.8
media.metdf.com.au	68.17.104.162
meeting.toh.info	68.96.31.136
mountainvalley.americanunfinished.com	69.20.5.219
mrswehrman.com	69.25.50.10
mwa.net	69.28.163.15
news.hqrls.com	69.74.43.87
odysseus.qs-va.orbcomm.net	69.90.123.6
ohb-technology.brgh.de	69.90.18.22
omegalogos.org	69.90.18.23
pastorsrest.com	70.108.241.36
portal.itsaol.com	70.62.232.98
progammerli.com	74.86.197.56
rbaparts.com	74.93.92.50
report.crabdance.com	78.95.63.1
.photo-frame.com	
route.cisco.ns01.info	
shunleewest.com	
slowblog.com	
smilecare.com	
software.myftp.info	
soko.com	
tcw.homier.com	
comminc.us.to	
.arnotex.com	
thecrownsgolf.org	
.alfalcons.com	
twocirclesmusic.com	
un.linuxd.org	
update.sektori.org	
us.gnpes.org	
vwrm.com	
woodagency.com	
worldnews.kickingdruging.toythieves.com	
EOM

for i in $(awk '{print $1}' $BAD_DOMAINS);do 
	SID=$(($SID+1))
	echo "alert udp any any -> any any (msg:\"DNS Request for $i\"; content:\"$i\"; sid: $(($SID));)" >> bad_domains.rules
done

for i in $(awk '{print $2}' $BAD_DOMAINS);do
	SID=$(($SID+1))
	echo "alert ip $i any -> any any (msg:\"Known Bad Traffic ($i)\"; sid: $SID;)" >> bad_domains.rules
done
