CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.hibernate_sequence OWNER TO $POSTGRESQL_USER;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE public.inventory (
    id bigint NOT NULL,
    itemid character varying(255),
    link character varying(255),
    location character varying(255), 
    quantity integer NOT NULL
);

ALTER TABLE public.inventory OWNER TO $POSTGRESQL_USER;

SELECT pg_catalog.setval('public.hibernate_sequence', 8, true);

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);
