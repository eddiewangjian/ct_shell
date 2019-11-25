timeout_threshold=10
cd /home/map/hadmap/flow-master/data && find ./ -type d -name "image_*" -mtime +${timeout_threshold} -exec rm -rf {} \;
cd /home/map/hadmap/flow-master/data && find ./ -type d -name "project_*" -mtime +${timeout_threshold} -exec rm -rf {} \;
cd /home/map/hadmap/flow-master/data && find ./ -type d -name "task_*" -mtime +${timeout_threshold} -exec rm -rf {} \;
cd /home/map/hadmap/flow-master/log && find ./ -type f -name "*log*" -mtime +${timeout_threshold} -exec rm -rf {} \;
cd /home/map/hadmap/flow-master/log && find ./ -type f -name "*out*" -mtime +${timeout_threshold} -exec rm -rf {} \;
ls
