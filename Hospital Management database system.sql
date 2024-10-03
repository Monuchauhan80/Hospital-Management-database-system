create table patient (
pat_id varchar2(10 CHAR),
pat_name varchar2(60 CHAR),
pat_gender varchar2(2 CHAR),
pat_address varchar2(100 CHAR),
pat_number number(11,0),
pat_doc_code varchar2(10 CHAR),
constraint pk_patient primary key (pat_id),
constraint uq_doc_code unique (pat_doc_code)
);

INSERT INTO PATIENT VALUES ('P001','Dhruv','M','#33, Sec 22, Ludhiana',1111111111,'D001');
INSERT INTO PATIENT VALUES ('P002','Aaditya Raj Pandey','M','#2789, Udhyog Vihar P-2,Bihar',2222222222,'D004');
INSERT INTO PATIENT VALUES ('P003','Joshita','F','#3672, Sec 37D, Rajasthan',3333333333,'D003');
INSERT INTO PATIENT VALUES ('P004','Gaurav Rajpurohit','M','#4534, Sec 57C, Gujraat',4444444444,'D005');
INSERT INTO PATIENT VALUES ('P005','Dharshan M','M','Keral',5555555555,'D002');

select * from PATIENT;
desc PATIENT;

create table patient_diagnosis(
Diag_ID varchar2(10 CHAR),
diag_details varchar2(200 CHAR),
diag_remarks varchar2(200 CHAR),
diag_date date,
pat_id varchar2(10 CHAR));

INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG001','Suffering from asthma','Need to use rescue inhalers',sysdate,'P001');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG002','Suffering from heart diseases','Treatments vary widely and can include lifestyle changes, medication, surgery, stents, pacemakers and ablation.',sysdate,'P002');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG003','Suffering from skin diseases','Use anti-fungal sprays/creams to treat the skin infection',sysdate,'P003');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG004','Suffering from mouth diseases','Need to use pain relievers',sysdate,'P004');
INSERT INTO PATIENT_DIAGNOSIS VALUES ('DIAG005','Suffering from migrane','Avoid stress, improve sleep habit and have a balanced diet',sysdate,'P005');

select * from PATIENT_DIAGNOSIS;
DESC PATIENT_DIAGNOSIS;

create table doctor(
doc_code varchar2(10 CHAR),
doc_name varchar2(60 CHAR),
doc_gender varchar2(2 CHAR),
doc_address varchar2(200 CHAR),
doc_designation varchar2(30 CHAR),
doc_number number(11,0)
);

INSERT INTO DOCTOR VALUES ('D001','Dr Shailendra Kumar Singh','M','H1/10, Phagwara, LPU, Jalandhar','Allergist',9810506571);
INSERT INTO DOCTOR VALUES ('D002','Dr Dharshan M','M','94/4, GNH Hospital, Opposite Govt. Girls College, Near Sector 14, Gurugram, Haryana 122001','Cardiologist',8800188336);
INSERT INTO DOCTOR VALUES ('D003','Dr Joshita Pachar','F','CLACS, GNH Hospital, MG Road, Opp. Govt Girls College, Anamika Enclave, Gurugram, Haryana 122001','Dermatologist',7042795770);

INSERT INTO DOCTOR VALUES ('D004','Dr Amanpreet Singh','M','Sector 14, Gurugram, Haryana','Oral Surgeon',8800188336);
INSERT INTO DOCTOR VALUES ('D005','Dr. Sushant Pandey','M','Fortis Memorial Research Institute Sector 44, Opposite HUDA City Centre Metro Station, Gurugram, Haryana 122002','Neurologist',9990766036);

SELECT * from DOCTOR;
desc DOCTOR;
