CREATE TABLE catalog (
  item_id VARCHAR(256) NOT NULL,
  name VARCHAR(256),
  description TEXT,
  category BIGINT,
  price DOUBLE PRECISION
);

ALTER TABLE public.catalog OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.catalog
    ADD CONSTRAINT pk_catalog PRIMARY KEY (item_id);

CREATE TABLE category (
  category_id BIGINT NOT NULL,
  category VARCHAR(255)
);

ALTER TABLE public.category OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.category
    ADD CONSTRAINT pk_category PRIMARY KEY (category_id);

ALTER TABLE only public.catalog
    ADD CONSTRAINT fk_category FOREIGN KEY (category) REFERENCES category(category_id);

CREATE TABLE tag (
  tag_id bigint NOT NULL,
  tag VARCHAR(255)
);

ALTER TABLE public.tag OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT pk_tag PRIMARY KEY (tag_id);


CREATE table catalog_tag (
    item_id VARCHAR(256) NOT NULL,
    tag_id bigint NOT NULL
);

ALTER TABLE public.catalog_tag OWNER TO $POSTGRESQL_USER;

ALTER TABLE ONLY public.catalog_tag
    ADD CONSTRAINT pk_catalog_tag PRIMARY KEY (item_id, tag_id);
    