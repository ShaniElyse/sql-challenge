-- Table: public.employee

-- DROP TABLE IF EXISTS public.employee;

CREATE TABLE IF NOT EXISTS public.employee
(
    emp_no bigint NOT NULL DEFAULT 0,
    emp_title_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    birth_date date,
    first_name character varying(50) COLLATE pg_catalog."default",
    last_name character varying(50) COLLATE pg_catalog."default",
    sex character(2) COLLATE pg_catalog."default",
    hire_date date,
    CONSTRAINT employee_pkey PRIMARY KEY (emp_no),
    CONSTRAINT "FK_emp_title" FOREIGN KEY (emp_title_id)
        REFERENCES public.titles (title_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employee
    OWNER to postgres;

COMMENT ON COLUMN public.employee.emp_title_id
    IS 'change name to emp_title_id';
	
