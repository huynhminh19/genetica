--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-01-29 09:03:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16396)
-- Name: samples; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA samples;


ALTER SCHEMA samples OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16397)
-- Name: samples; Type: TABLE; Schema: samples; Owner: postgres
--

CREATE TABLE samples.samples (
    id integer NOT NULL,
    customer character(1) NOT NULL,
    status_id integer,
    retry integer
);


ALTER TABLE samples.samples OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16402)
-- Name: status; Type: TABLE; Schema: samples; Owner: postgres
--

CREATE TABLE samples.status (
    id integer NOT NULL,
    name character varying(32)
);


ALTER TABLE samples.status OWNER TO postgres;

--
-- TOC entry 2988 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: samples; Type: TABLE DATA; Schema: samples; Owner: postgres
--

COPY samples.samples (id, customer, status_id, retry) FROM stdin;
\.


--
-- TOC entry 2989 (class 0 OID 16402)
-- Dependencies: 202
-- Data for Name: status; Type: TABLE DATA; Schema: samples; Owner: postgres
--

COPY samples.status (id, name) FROM stdin;
\.


--
-- TOC entry 2854 (class 2606 OID 16401)
-- Name: samples samples_pkey; Type: CONSTRAINT; Schema: samples; Owner: postgres
--

ALTER TABLE ONLY samples.samples
    ADD CONSTRAINT samples_pkey PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 16406)
-- Name: status status_pkey; Type: CONSTRAINT; Schema: samples; Owner: postgres
--

ALTER TABLE ONLY samples.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 16407)
-- Name: samples samples_status; Type: FK CONSTRAINT; Schema: samples; Owner: postgres
--

ALTER TABLE ONLY samples.samples
    ADD CONSTRAINT samples_status FOREIGN KEY (status_id) REFERENCES samples.status(id) NOT VALID;


-- Completed on 2021-01-29 09:03:12

--
-- PostgreSQL database dump complete
--

