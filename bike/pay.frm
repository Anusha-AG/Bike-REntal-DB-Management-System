TYPE=VIEW
query=select `p`.`email` AS `email`,`c`.`fname` AS `fname`,`p`.`plate_no` AS `plate_no`,`v`.`color` AS `color`,`v`.`model` AS `model`,`v`.`phr` AS `phr`,`p`.`hrs` AS `hrs` from `bike`.`payment` `p` join `bike`.`customer_details` `c` join `bike`.`vehicle` `v` where `p`.`email` = `c`.`email` and `v`.`plate_no` = `p`.`plate_no`
md5=bb820328ea4668361a98fa11dd664b54
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2019-11-29 07:12:50
create-version=2
source=SELECT p.email,fname,p.plate_no,color,model,phr,p.hrs\nFROM payment p,customer_details c,vehicle v\nWHERE p.email=c.email AND v.plate_no=p.plate_no
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `p`.`email` AS `email`,`c`.`fname` AS `fname`,`p`.`plate_no` AS `plate_no`,`v`.`color` AS `color`,`v`.`model` AS `model`,`v`.`phr` AS `phr`,`p`.`hrs` AS `hrs` from `bike`.`payment` `p` join `bike`.`customer_details` `c` join `bike`.`vehicle` `v` where `p`.`email` = `c`.`email` and `v`.`plate_no` = `p`.`plate_no`
mariadb-version=100408
