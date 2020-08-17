TYPE=VIEW
query=select `bike`.`vehicle`.`plate_no` AS `plate_no`,`bike`.`vehicle`.`color` AS `color`,`bike`.`vehicle`.`make` AS `make`,`bike`.`vehicle`.`model` AS `model`,`bike`.`vehicle`.`phr` AS `phr` from `bike`.`vehicle` where `bike`.`vehicle`.`gear` = \'gear\'
md5=1c330cd9dd228d91429e96c6ebd93ba0
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2019-11-27 18:50:21
create-version=2
source=SELECT plate_no,color,make,model,phr FROM vehicle WHERE gear=\'gear\'
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `bike`.`vehicle`.`plate_no` AS `plate_no`,`bike`.`vehicle`.`color` AS `color`,`bike`.`vehicle`.`make` AS `make`,`bike`.`vehicle`.`model` AS `model`,`bike`.`vehicle`.`phr` AS `phr` from `bike`.`vehicle` where `bike`.`vehicle`.`gear` = \'gear\'
mariadb-version=100408
