CREATE TABLE `DateTime` (
      ID INT,
      `Time` STRING,
      Date_ STRING,
      `DateTime` STRING,
      Random_ DOUBLE,
      Diagonal DOUBLE,
      Curved DOUBLE
      )
STORED AS orc;

explain SELECT IF(((`DateTime_`.`id` = 1) OR (`DateTime_`.`id` = 2)),IF((`DateTime_`.`id` = 1),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE NULL END),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE TO_DATE(`DateTime_`.`time`) END)),IF((`DateTime_`.`id` = 3),(CASE    WHEN (`DateTime_`.`date_` IS NULL) OR (TO_DATE(`DateTime_`.`datetime`) IS NULL) THEN NULL       WHEN `DateTime_`.`date_` > TO_DATE(`DateTime_`.`datetime`) THEN `DateTime_`.`date_`     ELSE TO_DATE(`DateTime_`.`datetime`) END),NULL)) AS `none_calculation2_ok`,   `DateTime_`.`id` AS `none_id_ok`,   (CASE WHEN (`DateTime_`.`id` = 6) THEN (CASE  WHEN (CONCAT(`DateTime_`.`date_`, ' 00:00:00') IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL   WHEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') > `DateTime_`.`datetime` THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00')    ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 5) THEN (CASE         WHEN (`DateTime_`.`date_` IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL        WHEN `DateTime_`.`date_` > `DateTime_`.`datetime` THEN `DateTime_`.`date_`      ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 3) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 4) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) WHEN (`DateTime_`.`id` = 1) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 2) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) ELSE NULL END) AS `none_mixed_type_calcs_ok` FROM `DateTime` `DateTime_` WHERE (`DateTime_`.`id` = 1 OR `DateTime_`.`id` = 2 OR `DateTime_`.`id` = 3 OR `DateTime_`.`id` = 4 OR `DateTime_`.`id` = 5 OR `DateTime_`.`id` = 6) GROUP BY IF(((`DateTime_`.`id` = 1) OR (`DateTime_`.`id` = 2)),IF((`DateTime_`.`id` = 1),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE NULL END),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE TO_DATE(`DateTime_`.`time`) END)),IF((`DateTime_`.`id` = 3),(CASE       WHEN (`DateTime_`.`date_` IS NULL) OR (TO_DATE(`DateTime_`.`datetime`) IS NULL) THEN NULL       WHEN `DateTime_`.`date_` > TO_DATE(`DateTime_`.`datetime`) THEN `DateTime_`.`date_`     ELSE TO_DATE(`DateTime_`.`datetime`) END),NULL)),   `DateTime_`.`id`,   (CASE WHEN (`DateTime_`.`id` = 6) THEN (CASE    WHEN (CONCAT(`DateTime_`.`date_`, ' 00:00:00') IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL   WHEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') > `DateTime_`.`datetime` THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00')    ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 5) THEN (CASE         WHEN (`DateTime_`.`date_` IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL        WHEN `DateTime_`.`date_` > `DateTime_`.`datetime` THEN `DateTime_`.`date_`      ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 3) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 4) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) WHEN (`DateTime_`.`id` = 1) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 2) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) ELSE NULL END) ;

SELECT IF(((`DateTime_`.`id` = 1) OR (`DateTime_`.`id` = 2)),IF((`DateTime_`.`id` = 1),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE NULL END),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE TO_DATE(`DateTime_`.`time`) END)),IF((`DateTime_`.`id` = 3),(CASE    WHEN (`DateTime_`.`date_` IS NULL) OR (TO_DATE(`DateTime_`.`datetime`) IS NULL) THEN NULL       WHEN `DateTime_`.`date_` > TO_DATE(`DateTime_`.`datetime`) THEN `DateTime_`.`date_`     ELSE TO_DATE(`DateTime_`.`datetime`) END),NULL)) AS `none_calculation2_ok`,   `DateTime_`.`id` AS `none_id_ok`,   (CASE WHEN (`DateTime_`.`id` = 6) THEN (CASE  WHEN (CONCAT(`DateTime_`.`date_`, ' 00:00:00') IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL   WHEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') > `DateTime_`.`datetime` THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00')    ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 5) THEN (CASE         WHEN (`DateTime_`.`date_` IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL        WHEN `DateTime_`.`date_` > `DateTime_`.`datetime` THEN `DateTime_`.`date_`      ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 3) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 4) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) WHEN (`DateTime_`.`id` = 1) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 2) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) ELSE NULL END) AS `none_mixed_type_calcs_ok` FROM `DateTime` `DateTime_` WHERE (`DateTime_`.`id` = 1 OR `DateTime_`.`id` = 2 OR `DateTime_`.`id` = 3 OR `DateTime_`.`id` = 4 OR `DateTime_`.`id` = 5 OR `DateTime_`.`id` = 6) GROUP BY IF(((`DateTime_`.`id` = 1) OR (`DateTime_`.`id` = 2)),IF((`DateTime_`.`id` = 1),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE NULL END),(CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN TO_DATE(`DateTime_`.`datetime`) ELSE TO_DATE(`DateTime_`.`time`) END)),IF((`DateTime_`.`id` = 3),(CASE       WHEN (`DateTime_`.`date_` IS NULL) OR (TO_DATE(`DateTime_`.`datetime`) IS NULL) THEN NULL       WHEN `DateTime_`.`date_` > TO_DATE(`DateTime_`.`datetime`) THEN `DateTime_`.`date_`     ELSE TO_DATE(`DateTime_`.`datetime`) END),NULL)),   `DateTime_`.`id`,   (CASE WHEN (`DateTime_`.`id` = 6) THEN (CASE    WHEN (CONCAT(`DateTime_`.`date_`, ' 00:00:00') IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL   WHEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') > `DateTime_`.`datetime` THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00')    ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 5) THEN (CASE         WHEN (`DateTime_`.`date_` IS NULL) OR (`DateTime_`.`datetime` IS NULL) THEN NULL        WHEN `DateTime_`.`date_` > `DateTime_`.`datetime` THEN `DateTime_`.`date_`      ELSE `DateTime_`.`datetime` END) WHEN (`DateTime_`.`id` = 3) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 4) THEN (CASE WHEN true THEN CONCAT(`DateTime_`.`date_`, ' 00:00:00') WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) WHEN (`DateTime_`.`id` = 1) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE NULL END) WHEN (`DateTime_`.`id` = 2) THEN (CASE WHEN true THEN `DateTime_`.`date_` WHEN NOT true THEN `DateTime_`.`datetime` ELSE `DateTime_`.`time` END) ELSE NULL END) ;

drop table DateTime;