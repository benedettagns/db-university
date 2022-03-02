-- Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
FROM `students`
WHERE YEAR (`date_of_birth`) = '1990';

-- Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM `courses` 
WHERE `cfu` > '10';

--Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students` 
WHERE `date_of_birth` <= '1992-01-01';
-- WHERE TIMESTAMPDIFF (YEAR, `date_of_birth`, CURDATE()) > 30;

--Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses` 
WHERE `period` = 'I semestre' 
AND `year` = '1';

--Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT * 
FROM `exams` 
WHERE `hour` > '14:00:00';

--Selezionare tutti i corsi di laurea magistrale (38)
SELECT * 
FROM `degrees` 
WHERE `level` = 'magistrale';

--Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(id) 
FROM `departments`;

--Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(id) 
FROM `teachers` 
WHERE `phone` IS NULL;








/* GROUP BY*/

-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`), COUNT(`id`) 
FROM `students` 
GROUP BY YEAR(`enrolment_date`);

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`, COUNT(id) 
FROM `teachers` 
GROUP BY `office_address`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) 
FROM `exam_student` 
GROUP BY `exam_id`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `departement_id`, COUNT (*)
FROM `degrees`
GROUP BY `department_id`;








/* JOIN*/

--Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`name`, `students`.`name`, `students`.`surname`
FROM `degrees`
JOIN `students`
	ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "corso di laurea in economia";

--Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name` 
FROM `departments` 
JOIN `degrees` 
    ON `departments`.`id` = `degrees`.`department_id` 
WHERE `departments`.`name` = "Dipartimento di neuroscienze";

--Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT

--Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT

--Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT

--Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT

--BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami
SELECT