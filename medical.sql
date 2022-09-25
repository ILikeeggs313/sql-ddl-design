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

--region ID
Region
-
id PK int
name

Posts
-
id PK int
title
text
location
user_id FK >- Users.id
region_id FK >- Region.id
category_id FK >- Categories.id

Users
-
id PK int
username
encrypted_password
preferred_region_id FK

Categories
-
id PK
name

-- Soccer league
Teams
-
id PK int
name
city

Players
-
id PK INT
name
birthday
height
current_team_id FK >- Teams.id

Goals
-
id PK int
player_id FK >- Players.id
match_id FK >- Matches.id

Referees
-
id PK int
name

Matches
-
id PK INT
home_team_id FK >- Teams.id
away_team_id FK >- Teams.id
location
date
start_time
season_id FK >- Season.id
head_ref_id FK >- Referees.id
assistant_ref_1_id FK >- Referees.id
assistant_ref_2_id FK >- Referees.id

Line_ups
-
id PK int
player_id FK >- Players.id
match_id FK >- Matches.id
team_id FK >- Teams.id

Season
-
id PK INT
start_date
end_date

Results
-
id PK int
team_id FK - Teams.id
match_id FK - Matches.id
result