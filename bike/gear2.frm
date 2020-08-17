TYPE=VIEW
query=select `bike`.`vehicle`.`plate_no` AS `plate_no`,`bike`.`vehicle`.`color` AS `color`,`bike`.`vehicle`.`make` AS `make`,`bike`.`vehicle`.`model` AS `model`,`bike`.`vehicle`.`phr` AS `phr` from `bike`.`vehicle` where `bike`.`vehicle`.`gear` = \'non-gear\'
md5=f2547c5b21a008962d375a82f34400bf
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2019-11-27 18:52:11
create-version=2
source=SELECT plate_no,color,make,model,phr FROM vehicle WHERE gear=\'non-gear\'
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `bike`.`vehicle`.`plate_no` AS `plate_no`,`bike`.`vehicle`.`color` AS `color`,`bike`.`vehicle`.`make` AS `make`,`bike`.`vehicle`.`model` AS `model`,`bike`.`vehicle`.`phr` AS `phr` from `bike`.`vehicle` where `bike`.`vehicle`.`gear` = \'non-gear\'
mariadb-version=100408
