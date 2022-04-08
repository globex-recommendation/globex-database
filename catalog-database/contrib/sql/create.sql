SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16386)
-- Name: catalog; Type: TABLE; Schema: public; Owner: $POSTGRESQL_USER
--

CREATE TABLE public.catalog (
    item_id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    image character varying(255),
    category character varying(255),
    price double precision
);


ALTER TABLE public.catalog OWNER TO $POSTGRESQL_USER;

--
-- TOC entry 203 (class 1259 OID 16394)
-- Name: category; Type: TABLE; Schema: public; Owner: $POSTGRESQL_USER
--

CREATE TABLE public.category (
    category_id character varying(255) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.category OWNER TO $POSTGRESQL_USER;

--
-- TOC entry 2821 (class 2606 OID 16393)
-- Name: catalog catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: $POSTGRESQL_USER
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (item_id);


--
-- TOC entry 2823 (class 2606 OID 16401)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: $POSTGRESQL_USER
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- TOC entry 2824 (class 2606 OID 16402)
-- Name: catalog category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: $POSTGRESQL_USER
--

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT category_fkey FOREIGN KEY (category) REFERENCES public.category(category_id) NOT VALID;


-- Completed on 2022-04-06 19:45:54 UTC

--
-- PostgreSQL database dump complete
--