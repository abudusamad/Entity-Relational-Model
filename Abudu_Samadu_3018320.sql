-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public."Patients"
(
    "ID" bigserial NOT NULL,
    "Name" "char" NOT NULL,
    "Date_OF_Birth" date NOT NULL,
    "Gender" "char" NOT NULL,
    "Contact_Info" text,
    "Medical_Hist" text NOT NULL,
    PRIMARY KEY ("ID")
);

CREATE TABLE IF NOT EXISTS public."Doctors"
(
    "Doctor_ID" bigserial NOT NULL,
    "Name" "char" NOT NULL,
    "Specialization" text NOT NULL,
    "Cont_Info" text NOT NULL,
    "Years_Of_Experience" integer NOT NULL,
    PRIMARY KEY ("Doctor_ID")
);

CREATE TABLE IF NOT EXISTS public."Medication"
(
    "Medication_ID" bigserial NOT NULL,
    "Name" "char" NOT NULL,
    "Dosage" "char" NOT NULL,
    "Usage_Instruction" text NOT NULL,
    PRIMARY KEY ("Medication_ID")
);

CREATE TABLE IF NOT EXISTS public."Appointment"
(
    "Appointment_ID" bigserial NOT NULL,
    "Appointment_date" date NOT NULL,
    "Patient_ID" bigserial NOT NULL,
    "Doctor_ID" bigserial NOT NULL,
    PRIMARY KEY ("Appointment_ID")
);

CREATE TABLE IF NOT EXISTS public."Department"
(
    "ID" bigserial NOT NULL,
    "Name" "char",
    "Description" text,
    PRIMARY KEY ("ID")
);

CREATE TABLE IF NOT EXISTS public."Test"
(
    "Test_ID" bigserial NOT NULL,
    "Name" "char" NOT NULL,
    "Description" text NOT NULL,
    "Ref_Range" "char"[] NOT NULL,
    PRIMARY KEY ("Test_ID")
);

CREATE TABLE IF NOT EXISTS public."Prescription"
(
    "Prescription_ID" bigserial NOT NULL,
    "Date" date NOT NULL,
    "Patient_ID" bigserial NOT NULL,
    "Medication_ID" bigserial NOT NULL,
    PRIMARY KEY ("Prescription_ID")
);

CREATE TABLE IF NOT EXISTS public."TestResult"
(
    "Result_ID" bigserial NOT NULL,
    "Result_Value" "char" NOT NULL,
    "Result_Date" date NOT NULL,
    "Test_ID" bigserial NOT NULL,
    "Patient_ID" bigserial NOT NULL,
    PRIMARY KEY ("Result_ID")
);

CREATE TABLE IF NOT EXISTS public."WardsRooms"
(
    "ID" bigserial NOT NULL,
    "Room_Num" "char" NOT NULL,
    "Ward_Name" "char" NOT NULL,
    "Capacity" bigint NOT NULL,
    PRIMARY KEY ("ID")
);

CREATE TABLE IF NOT EXISTS public."DoctorsDepartment"
(
    "Doctors_ID" bigint NOT NULL,
    "Department_ID" bigint NOT NULL,
    PRIMARY KEY ("Doctors_ID")
        INCLUDE("Department_ID")
);

CREATE TABLE IF NOT EXISTS public."WardRoomPatients"
(
    "WardRoom_ID" bigint,
    "Patient_ID" bigint,
    CONSTRAINT "WardRoom and Patient" PRIMARY KEY ("WardRoom_ID")
        INCLUDE("Patient_ID")
);

ALTER TABLE IF EXISTS public."Appointment"
    ADD CONSTRAINT "Patient_ID" FOREIGN KEY ("Patient_ID")
    REFERENCES public."Patients" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Appointment"
    ADD CONSTRAINT "Doctor_ID" FOREIGN KEY ("Doctor_ID")
    REFERENCES public."Doctors" ("Doctor_ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Prescription"
    ADD CONSTRAINT "Patient_Id" FOREIGN KEY ("Patient_ID")
    REFERENCES public."Patients" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Prescription"
    ADD CONSTRAINT "Medication_Id" FOREIGN KEY ("Medication_ID")
    REFERENCES public."Medication" ("Medication_ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."TestResult"
    ADD CONSTRAINT "Test_Id" FOREIGN KEY ("Test_ID")
    REFERENCES public."Test" ("Test_ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."TestResult"
    ADD CONSTRAINT "Patient_Id" FOREIGN KEY ("Patient_ID")
    REFERENCES public."Patients" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."DoctorsDepartment"
    ADD CONSTRAINT "Doctors_ID" FOREIGN KEY ("Doctors_ID")
    REFERENCES public."Doctors" ("Doctor_ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."DoctorsDepartment"
    ADD CONSTRAINT "Department" FOREIGN KEY ("Department_ID")
    REFERENCES public."Department" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."WardRoomPatients"
    ADD CONSTRAINT "WardRoom_ID" FOREIGN KEY ("WardRoom_ID")
    REFERENCES public."WardsRooms" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."WardRoomPatients"
    ADD CONSTRAINT "Patient_ID" FOREIGN KEY ("Patient_ID")
    REFERENCES public."Patients" ("ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;