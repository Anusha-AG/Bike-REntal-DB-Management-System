TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `use_after_insert` BEFORE INSERT ON `booking` FOR EACH ROW BEGIN\nINSERT into payment values(new.plate_no,new.email,new.hrs);\nEND'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=157501079897
