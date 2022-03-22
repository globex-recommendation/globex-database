CREATE TABLE catalog (
  itemId VARCHAR(256) NOT NULL,
  name VARCHAR(256),
  description TEXT,
  price DOUBLE PRECISION
);

ALTER TABLE public.catalog OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (itemid);