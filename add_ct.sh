crontab -l > ct.temp1
echo "00 06 * * * cd /home/map/ct_jobs && sh ct_clean_timeout.sh" >> ct.temp1
echo "00 00 * * * cd /home/map/ct_jobs && sh ct_log_cut.sh" >> ct.temp1
cat ct.temp1 | sort | uniq > ct.temp2
crontab ct.temp2
rm ct.temp*
