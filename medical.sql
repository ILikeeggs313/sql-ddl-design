Doctors
-- 
id PK int
Name string
specialty stirng

Visits
-
id PK int
doctor_id FK >- Doctors.id
patient_id FK >- Patients.id
 
Patients
-
id PK int
name string
insurance
birthday

Diseases
-
id PK
name string
desc string

Diagnoses
-
id PK int
visit_id FK >- Visits.id
disease_id FK >- Diseases.id
notes
