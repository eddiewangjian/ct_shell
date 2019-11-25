time=$(date -d"1 day ago" +%Y%m%d001111)
if [ ! -f "/home/map/hadmap_log/alignment/log/pointcloud_alignment.log" ];then
    touch /home/map/hadmap_log/alignment/log/pointcloud_alignment.log.${time}
else
    mv /home/map/hadmap_log/alignment/log/pointcloud_alignment.log /home/map/hadmap_log/alignment/log/pointcloud_alignment.log.${time}
fi
mv /home/map/hadmap_log/alignment/log/pointcloud_alignment.debug /home/map/hadmap_log/alignment/log/pointcloud_alignment.debug.${time}
mv /home/map/hadmap_log/alignment/log/pointcloud_alignment.wf /home/map/hadmap_log/alignment/log/pointcloud_alignment.wf.${time}
