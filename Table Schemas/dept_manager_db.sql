-- Table: public.dept_manager

-- DROP TABLE IF EXISTS public.dept_manager;

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying(50) COLLATE pg_catalog."default" NOT NULL,
    emp_no bigint NOT NULL,
    CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_manager
    OWNER to postgres;
	
