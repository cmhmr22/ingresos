/*Busca los registros de hoy*/
SELECT * FROM `ingresos` WHERE created_at > DATE_SUB(CURDATE(), INTERVAL 0 DAY);

/*busca los registros del dia de ayer */
SELECT * FROM `ingresos` WHERE created_at > DATE_SUB(CURDATE(), INTERVAL 1 DAY)AND created_at < DATE_SUB(CURDATE(), INTERVAL 0 DAY);

/*Busca los registros de la ultima semana*/
SELECT * FROM `ingresos` WHERE created_at > DATE_SUB(CURDATE(), INTERVAL 7 DAY);
/*Busca los registros de la ultima semana*/
SELECT * FROM `ingresos` WHERE created_at > DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
