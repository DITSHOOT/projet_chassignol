--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

-- Started on 2023-11-17 11:02:21 CET

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 16503)
-- Name: commander; Type: TABLE; Schema: public; Owner: dimitrichassignol
--

CREATE TABLE public.commander (
    id_com integer NOT NULL,
    id_prod integer NOT NULL,
    quantite numeric(10,2) NOT NULL
);


ALTER TABLE public.commander OWNER TO dimitrichassignol;

--
-- TOC entry 212 (class 1259 OID 16518)
-- Name: produit; Type: TABLE; Schema: public; Owner: dimitrichassignol
--

CREATE TABLE public.produit (
    id_produit integer NOT NULL,
    libelle character varying(255) NOT NULL,
    prixu numeric(10,2) NOT NULL
);


ALTER TABLE public.produit OWNER TO dimitrichassignol;

--
-- TOC entry 3604 (class 0 OID 16503)
-- Dependencies: 211
-- Data for Name: commander; Type: TABLE DATA; Schema: public; Owner: dimitrichassignol
--



--
-- TOC entry 3605 (class 0 OID 16518)
-- Dependencies: 212
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: dimitrichassignol
--

INSERT INTO public.produit VALUES (1, '2', 10.00);


--
-- TOC entry 3460 (class 2606 OID 16507)
-- Name: commander commander_pk; Type: CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.commander
    ADD CONSTRAINT commander_pk PRIMARY KEY (id_com, id_prod);


--
-- TOC entry 3462 (class 2606 OID 16522)
-- Name: produit produit_pk; Type: CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pk PRIMARY KEY (id_produit);


--
-- TOC entry 3464 (class 2606 OID 16534)
-- Name: commander commander_fk; Type: FK CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.commander
    ADD CONSTRAINT commander_fk FOREIGN KEY (id_com) REFERENCES public.produit(id_produit);


--
-- TOC entry 3463 (class 2606 OID 16528)
-- Name: commander commander_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.commander
    ADD CONSTRAINT commander_fk_1 FOREIGN KEY (id_prod) REFERENCES public.produit(id_produit);


-- Completed on 2023-11-17 11:02:22 CET

--
-- PostgreSQL database dump complete
--

