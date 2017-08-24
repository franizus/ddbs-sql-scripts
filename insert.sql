--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

-- Started on 2017-08-23 02:34:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16574)
-- Name: carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE carrera (
    id_carrera integer NOT NULL,
    nombre character(20) NOT NULL,
    n_semestres integer NOT NULL,
    campus integer NOT NULL
);


ALTER TABLE carrera OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16580)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE categoria (
    id_categoria integer NOT NULL,
    nom_cat character(20) NOT NULL
);


ALTER TABLE categoria OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16586)
-- Name: ensena; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ensena (
    id_prof integer NOT NULL,
    id_materia integer NOT NULL
);


ALTER TABLE ensena OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16594)
-- Name: estudiante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estudiante (
    id_estudiante integer NOT NULL,
    id_carrera integer,
    nombre_est character(10) NOT NULL,
    apellido_est character(10) NOT NULL,
    email_est character varying(50),
    ci_est character varying(20) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_salida date
);


ALTER TABLE estudiante OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16601)
-- Name: materia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE materia (
    id_materia integer NOT NULL,
    nombre character(20) NOT NULL,
    sem_ref integer,
    n_creditos integer NOT NULL
);


ALTER TABLE materia OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16607)
-- Name: matriculado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE matriculado (
    id_estudiante integer NOT NULL,
    id_materia integer NOT NULL
);


ALTER TABLE matriculado OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16615)
-- Name: pertenece; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pertenece (
    id_materia integer NOT NULL,
    id_carrera integer NOT NULL
);


ALTER TABLE pertenece OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16623)
-- Name: profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profesor (
    id_prof integer NOT NULL,
    id_categoria integer,
    nombre_prof character(10) NOT NULL,
    apellido_prof character(10) NOT NULL,
    email_prof character varying(50),
    ci_prof character varying(20) NOT NULL,
    salario money NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_salida date
);


ALTER TABLE profesor OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 16574)
-- Dependencies: 185
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO carrera VALUES (1, 'Antropologia        ', 10, 1);
INSERT INTO carrera VALUES (2, 'Comunicacion        ', 10, 1);
INSERT INTO carrera VALUES (3, 'Filosofia           ', 10, 1);
INSERT INTO carrera VALUES (4, 'Gerencia y Liderazgo', 8, 1);
INSERT INTO carrera VALUES (5, 'Biotecnologia       ', 10, 1);
INSERT INTO carrera VALUES (6, 'Pedagogia           ', 8, 1);
INSERT INTO carrera VALUES (7, 'Psicologia          ', 10, 1);
INSERT INTO carrera VALUES (8, 'Educacion Bilingue  ', 8, 1);
INSERT INTO carrera VALUES (9, 'Adm. Empresas       ', 10, 1);
INSERT INTO carrera VALUES (10, 'Ingenieria Civil    ', 10, 2);
INSERT INTO carrera VALUES (11, 'Ing. Electrica      ', 10, 2);
INSERT INTO carrera VALUES (12, 'Ing. Electronica    ', 10, 2);
INSERT INTO carrera VALUES (13, 'Ing. en Sistemas    ', 8, 2);
INSERT INTO carrera VALUES (14, 'Mecanica            ', 10, 2);
INSERT INTO carrera VALUES (15, 'Telecomunicaciones  ', 8, 2);
INSERT INTO carrera VALUES (16, 'Automotriz          ', 8, 2);
INSERT INTO carrera VALUES (17, 'Ingenieria Ambiental', 8, 2);
INSERT INTO carrera VALUES (18, 'Computacion         ', 8, 2);


--
-- TOC entry 2185 (class 0 OID 16580)
-- Dependencies: 186
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categoria VALUES (1, 'Cat. A              ');
INSERT INTO categoria VALUES (2, 'Cat. B              ');
INSERT INTO categoria VALUES (3, 'Cat. C              ');
INSERT INTO categoria VALUES (4, 'Cat. D              ');
INSERT INTO categoria VALUES (5, 'Cat. E              ');
INSERT INTO categoria VALUES (6, 'Cat. F              ');
INSERT INTO categoria VALUES (7, 'Cat. G              ');
INSERT INTO categoria VALUES (8, 'Cat. H              ');
INSERT INTO categoria VALUES (9, 'Cat. I              ');
INSERT INTO categoria VALUES (10, 'Cat. J              ');


--
-- TOC entry 2186 (class 0 OID 16586)
-- Dependencies: 187
-- Data for Name: ensena; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ensena VALUES (1, 1);
INSERT INTO ensena VALUES (2, 2);
INSERT INTO ensena VALUES (3, 3);
INSERT INTO ensena VALUES (4, 4);
INSERT INTO ensena VALUES (5, 5);
INSERT INTO ensena VALUES (6, 6);
INSERT INTO ensena VALUES (7, 7);
INSERT INTO ensena VALUES (8, 8);
INSERT INTO ensena VALUES (9, 40);
INSERT INTO ensena VALUES (9, 43);
INSERT INTO ensena VALUES (10, 9);
INSERT INTO ensena VALUES (11, 10);
INSERT INTO ensena VALUES (12, 11);
INSERT INTO ensena VALUES (13, 12);
INSERT INTO ensena VALUES (14, 13);
INSERT INTO ensena VALUES (15, 14);
INSERT INTO ensena VALUES (16, 15);
INSERT INTO ensena VALUES (17, 16);
INSERT INTO ensena VALUES (18, 17);
INSERT INTO ensena VALUES (19, 18);
INSERT INTO ensena VALUES (20, 19);
INSERT INTO ensena VALUES (21, 20);
INSERT INTO ensena VALUES (22, 21);
INSERT INTO ensena VALUES (23, 22);
INSERT INTO ensena VALUES (24, 23);
INSERT INTO ensena VALUES (25, 24);
INSERT INTO ensena VALUES (26, 25);
INSERT INTO ensena VALUES (27, 26);
INSERT INTO ensena VALUES (28, 27);
INSERT INTO ensena VALUES (29, 28);
INSERT INTO ensena VALUES (30, 29);
INSERT INTO ensena VALUES (31, 30);
INSERT INTO ensena VALUES (32, 31);
INSERT INTO ensena VALUES (33, 41);
INSERT INTO ensena VALUES (33, 42);
INSERT INTO ensena VALUES (34, 32);
INSERT INTO ensena VALUES (35, 33);
INSERT INTO ensena VALUES (36, 34);
INSERT INTO ensena VALUES (37, 35);
INSERT INTO ensena VALUES (38, 36);
INSERT INTO ensena VALUES (39, 37);
INSERT INTO ensena VALUES (40, 38);
INSERT INTO ensena VALUES (41, 39);


--
-- TOC entry 2187 (class 0 OID 16594)
-- Dependencies: 188
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estudiante VALUES (1, 6, 'Danilo    ', 'Villanueva', 'pirtidutri@deyom.com', '2042622233', '2013-12-01', NULL);
INSERT INTO estudiante VALUES (2, 10, 'Edwin     ', 'Sosa      ', 'fipifut@storj99.top', '1988240469', '2014-11-01', NULL);
INSERT INTO estudiante VALUES (3, 15, 'Danny     ', 'Ribas     ', 'tustifospa@deyom.com', '2136231825', '2015-10-01', NULL);
INSERT INTO estudiante VALUES (4, 6, 'Miguel    ', 'Calle     ', 'golmifefya@deyom.com', '2254074569', '2017-09-01', NULL);
INSERT INTO estudiante VALUES (5, 10, 'Richard   ', 'Coronado  ', 'vemloruknu@deyom.com', '2119720446', '2012-08-01', NULL);
INSERT INTO estudiante VALUES (6, 15, 'Daniel    ', 'Mendes    ', 'rerkibitro@deyom.com', '2063562046', '2015-07-01', NULL);
INSERT INTO estudiante VALUES (7, 3, 'David     ', 'Prada     ', 'sarkofaknu@deyom.com', '2120953983', '2008-06-01', '2013-07-01');
INSERT INTO estudiante VALUES (8, 13, 'Paul      ', 'Fontan    ', 'kuspinirzo@deyom.com', '2210440207', '1996-05-01', '2001-08-01');
INSERT INTO estudiante VALUES (9, 9, 'Diana     ', 'Checa     ', 'barzovodru@deyom.com', '1821237514', '2011-04-01', NULL);
INSERT INTO estudiante VALUES (10, 2, 'Diego     ', 'Bonilla   ', 'kudrenorto@deyom.com', '2034500984', '2013-03-01', NULL);
INSERT INTO estudiante VALUES (11, 7, 'Patricia  ', 'Pico      ', 'pognemarze@deyom.com', '1768442675', '2014-02-01', NULL);
INSERT INTO estudiante VALUES (12, 5, 'Sebastian ', 'Rodas     ', 'zilmesarzi@deyom.com', '2293816074', '2015-01-01', NULL);
INSERT INTO estudiante VALUES (13, 8, 'Maria     ', 'Sotelo    ', 'zofyimofyu@deyom.com', '2021233294', '2017-02-01', NULL);
INSERT INTO estudiante VALUES (14, 5, 'Paola     ', 'Gordon    ', 'regnudelto@deyom.com', '2133546313', '2015-03-01', NULL);
INSERT INTO estudiante VALUES (15, 8, 'Cecilia   ', 'Caromona  ', 'jofyumelmo@deyom.com', '2020315654', '2014-04-01', NULL);
INSERT INTO estudiante VALUES (16, 2, 'Hugo      ', 'Arjona    ', 'lostevutri@deyom.com', '1861754184', '2013-05-01', NULL);
INSERT INTO estudiante VALUES (17, 11, 'Jose      ', 'Segarra   ', 'liltecirki@deyom.com', '2200629533', '2012-07-01', NULL);
INSERT INTO estudiante VALUES (18, 13, 'Catalina  ', 'Paz       ', 'paltetokki@deyom.com', '1974580545', '2000-08-01', '2005-07-01');
INSERT INTO estudiante VALUES (19, 17, 'Ana       ', 'Montenegro', 'terzulirtu@deyom.com', '1900114413', '2005-09-01', '2010-05-01');
INSERT INTO estudiante VALUES (20, 14, 'Alicia    ', 'Davila    ', 'yuspesirta@deyom.com', '1970194825', '2012-10-01', NULL);
INSERT INTO estudiante VALUES (21, 11, 'Hector    ', 'Reyes     ', 'kopsotirka@deyom.com', '2276849658', '2013-11-01', NULL);
INSERT INTO estudiante VALUES (22, 14, 'Alfonso   ', 'Mesa      ', 'zisterodri@deyom.com', '2038245993', '2014-12-01', NULL);
INSERT INTO estudiante VALUES (23, 1, 'Mario     ', 'Martinez  ', 'jarkodekni@deyom.com', '2276210852', '2015-11-01', NULL);
INSERT INTO estudiante VALUES (24, 9, 'Agustin   ', 'Montes    ', 'vasteredro@deyom.com', '2014655099', '2016-10-01', NULL);
INSERT INTO estudiante VALUES (25, 16, 'Belen     ', 'Mancilla  ', 'hemlidafya@deyom.com', '2101383520', '2016-09-01', NULL);
INSERT INTO estudiante VALUES (26, 9, 'Ines      ', 'Martinez  ', 'im@gmail.com', '1747955002', '2003-03-01', NULL);
INSERT INTO estudiante VALUES (27, 3, 'Antonio   ', 'Carrera   ', 'ac@gmail.com', '1737039282', '2005-12-01', NULL);
INSERT INTO estudiante VALUES (28, 4, 'Enrique   ', 'Izurieta  ', 'ez@gmail.com', '1788625977', '2008-12-01', NULL);
INSERT INTO estudiante VALUES (29, 2, 'Maria     ', 'Cordova   ', 'mc@gmail.com', '1773795569', '2009-11-01', NULL);
INSERT INTO estudiante VALUES (30, 7, 'Victor    ', 'Barahona  ', 'vb@gmail.com', '1793400199', '2010-03-01', NULL);
INSERT INTO estudiante VALUES (31, 1, 'Isabel    ', 'Ampudia   ', 'ia@gmail.com', '1709772642', '2015-03-01', NULL);
INSERT INTO estudiante VALUES (32, 12, 'Sandra    ', 'Carrasco  ', 'sc@gmail.com', '1737888905', '2014-04-01', NULL);
INSERT INTO estudiante VALUES (33, 18, 'Manuel    ', 'Mendieta  ', 'mm@gmail.com', '1755502349', '2013-05-01', NULL);
INSERT INTO estudiante VALUES (34, 14, 'Mercedes  ', 'Hita      ', 'mh@gmail.com', '1785646211', '2012-03-01', NULL);
INSERT INTO estudiante VALUES (35, 17, 'Olga      ', 'Pita      ', 'op@gmail.com', '1760045051', '2011-03-01', NULL);
INSERT INTO estudiante VALUES (36, 8, 'Cristobal ', 'Andrade   ', 'ca@gmail.com', '1759540878', '2010-03-01', NULL);
INSERT INTO estudiante VALUES (37, 17, 'Isabel    ', 'Gomez     ', 'ig@gmail.com', '1771625015', '2009-06-01', NULL);
INSERT INTO estudiante VALUES (38, 3, 'Luis      ', 'Piedrahita', 'lp@gmail.com', '1785195365', '2008-07-01', NULL);
INSERT INTO estudiante VALUES (39, 4, 'Cristina  ', 'Guaman    ', 'cg@hotmail.com', '1716238825', '2007-08-01', NULL);
INSERT INTO estudiante VALUES (40, 5, 'Lorena    ', 'Guerrero  ', 'lg@hotmail.com', '1716960541', '2006-09-01', NULL);
INSERT INTO estudiante VALUES (41, 8, 'Raquel    ', 'Izhcan    ', 'ri@hotmail.com', '1760318339', '2005-10-01', NULL);
INSERT INTO estudiante VALUES (42, 12, 'Teresa    ', 'Fidalgo   ', 'tfm@hotmail.com', '1704150170', '2004-11-01', NULL);
INSERT INTO estudiante VALUES (43, 7, 'Luis      ', 'Llerena   ', 'll@hotmail.com', '1747564270', '2003-01-01', NULL);
INSERT INTO estudiante VALUES (44, 13, 'Lorena    ', 'Herrera   ', 'lh@hotmail.com', '1751716242', '2002-02-01', NULL);
INSERT INTO estudiante VALUES (45, 15, 'Raul      ', 'Cordova   ', 'rc@hotmail.com', '1723540418', '2001-03-01', NULL);
INSERT INTO estudiante VALUES (46, 18, 'Amparo    ', 'Jimenez   ', 'aj@hotmail.com', '1730360085', '1999-04-01', NULL);
INSERT INTO estudiante VALUES (47, 17, 'Jaime     ', 'Pallo     ', 'jp@hotmail.com', '1791659689', '2003-05-01', NULL);
INSERT INTO estudiante VALUES (48, 13, 'Natalia   ', 'Torres    ', 'nt@hotmail.com', '1743602750', '2017-06-01', NULL);
INSERT INTO estudiante VALUES (49, 14, 'Martin    ', 'Lutero    ', 'ml@hotmail.com', '1758531990', '2014-07-01', NULL);
INSERT INTO estudiante VALUES (50, 9, 'Lucia     ', 'Salabarria', 'ls@hotmail.com', '1708644444', '2009-08-01', NULL);


--
-- TOC entry 2188 (class 0 OID 16601)
-- Dependencies: 189
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO materia VALUES (1, 'Ideologia           ', 3, 4);
INSERT INTO materia VALUES (2, 'Sistemas Operativos ', 4, 4);
INSERT INTO materia VALUES (3, 'Video               ', 8, 8);
INSERT INTO materia VALUES (4, 'Radio               ', 6, 8);
INSERT INTO materia VALUES (5, 'Periodismo          ', 5, 6);
INSERT INTO materia VALUES (6, 'Desarrollo          ', 8, 6);
INSERT INTO materia VALUES (7, 'Interculturalidad   ', 4, 4);
INSERT INTO materia VALUES (8, 'Investigacion       ', 7, 8);
INSERT INTO materia VALUES (9, 'Impresos            ', 2, 8);
INSERT INTO materia VALUES (10, 'Publicidad          ', 7, 6);
INSERT INTO materia VALUES (11, 'Ingles              ', 3, 10);
INSERT INTO materia VALUES (12, 'Comunicacion        ', 1, 4);
INSERT INTO materia VALUES (13, 'Cultura             ', 1, 4);
INSERT INTO materia VALUES (14, 'Redes               ', 4, 6);
INSERT INTO materia VALUES (15, 'Calculo             ', 1, 6);
INSERT INTO materia VALUES (16, 'Fisica              ', 1, 6);
INSERT INTO materia VALUES (17, 'Quimica             ', 1, 6);
INSERT INTO materia VALUES (18, 'Expresion Oral      ', 5, 4);
INSERT INTO materia VALUES (19, 'Bases de Datos      ', 4, 6);
INSERT INTO materia VALUES (20, 'Algoritmos          ', 4, 4);
INSERT INTO materia VALUES (21, 'Psicologia          ', 4, 6);
INSERT INTO materia VALUES (22, 'No Verbal           ', 1, 4);
INSERT INTO materia VALUES (23, 'Ideologia           ', 3, 4);
INSERT INTO materia VALUES (24, 'Genetica 1          ', 1, 4);
INSERT INTO materia VALUES (25, 'Genetica 2          ', 2, 4);
INSERT INTO materia VALUES (26, 'Planificacion       ', 5, 6);
INSERT INTO materia VALUES (27, 'Seminario           ', 3, 4);
INSERT INTO materia VALUES (28, 'Multimedios         ', 5, 8);
INSERT INTO materia VALUES (29, 'Politica            ', 3, 4);
INSERT INTO materia VALUES (30, 'Escenarios          ', 2, 4);
INSERT INTO materia VALUES (31, 'Biologia 2          ', 2, 4);
INSERT INTO materia VALUES (32, 'QuimicaFluidos      ', 4, 4);
INSERT INTO materia VALUES (33, 'Ecologia            ', 2, 4);
INSERT INTO materia VALUES (34, 'Logica              ', 1, 4);
INSERT INTO materia VALUES (35, 'Realidad Nacional   ', 2, 4);
INSERT INTO materia VALUES (36, 'Estatica            ', 4, 4);
INSERT INTO materia VALUES (37, 'Dinamica            ', 5, 6);
INSERT INTO materia VALUES (38, 'Electronica         ', 7, 6);
INSERT INTO materia VALUES (39, 'Automatismos        ', 8, 6);
INSERT INTO materia VALUES (40, 'Macroeconomia       ', 5, 6);
INSERT INTO materia VALUES (41, 'Finanzas            ', 7, 6);
INSERT INTO materia VALUES (42, 'Auditoria           ', 3, 4);
INSERT INTO materia VALUES (43, 'Contabilidad        ', 2, 4);


--
-- TOC entry 2189 (class 0 OID 16607)
-- Dependencies: 190
-- Data for Name: matriculado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO matriculado VALUES (1, 1);
INSERT INTO matriculado VALUES (2, 1);
INSERT INTO matriculado VALUES (3, 2);
INSERT INTO matriculado VALUES (4, 2);
INSERT INTO matriculado VALUES (5, 3);
INSERT INTO matriculado VALUES (6, 3);
INSERT INTO matriculado VALUES (7, 4);
INSERT INTO matriculado VALUES (8, 4);
INSERT INTO matriculado VALUES (9, 5);
INSERT INTO matriculado VALUES (10, 5);
INSERT INTO matriculado VALUES (11, 6);
INSERT INTO matriculado VALUES (12, 6);
INSERT INTO matriculado VALUES (13, 7);
INSERT INTO matriculado VALUES (14, 7);
INSERT INTO matriculado VALUES (15, 8);
INSERT INTO matriculado VALUES (16, 9);
INSERT INTO matriculado VALUES (17, 10);
INSERT INTO matriculado VALUES (18, 11);
INSERT INTO matriculado VALUES (19, 12);
INSERT INTO matriculado VALUES (20, 13);
INSERT INTO matriculado VALUES (21, 14);
INSERT INTO matriculado VALUES (22, 15);
INSERT INTO matriculado VALUES (23, 16);
INSERT INTO matriculado VALUES (24, 17);
INSERT INTO matriculado VALUES (25, 18);
INSERT INTO matriculado VALUES (26, 19);
INSERT INTO matriculado VALUES (27, 20);
INSERT INTO matriculado VALUES (28, 21);
INSERT INTO matriculado VALUES (29, 22);
INSERT INTO matriculado VALUES (30, 23);
INSERT INTO matriculado VALUES (31, 24);
INSERT INTO matriculado VALUES (32, 25);
INSERT INTO matriculado VALUES (33, 26);
INSERT INTO matriculado VALUES (34, 27);
INSERT INTO matriculado VALUES (35, 28);
INSERT INTO matriculado VALUES (36, 29);
INSERT INTO matriculado VALUES (37, 30);
INSERT INTO matriculado VALUES (38, 31);
INSERT INTO matriculado VALUES (39, 32);
INSERT INTO matriculado VALUES (40, 33);
INSERT INTO matriculado VALUES (41, 34);
INSERT INTO matriculado VALUES (42, 35);
INSERT INTO matriculado VALUES (43, 36);
INSERT INTO matriculado VALUES (44, 37);
INSERT INTO matriculado VALUES (45, 38);
INSERT INTO matriculado VALUES (46, 39);
INSERT INTO matriculado VALUES (47, 40);
INSERT INTO matriculado VALUES (48, 41);
INSERT INTO matriculado VALUES (49, 42);
INSERT INTO matriculado VALUES (50, 43);


--
-- TOC entry 2190 (class 0 OID 16615)
-- Dependencies: 191
-- Data for Name: pertenece; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pertenece VALUES (1, 1);
INSERT INTO pertenece VALUES (2, 1);
INSERT INTO pertenece VALUES (3, 1);
INSERT INTO pertenece VALUES (4, 2);
INSERT INTO pertenece VALUES (5, 2);
INSERT INTO pertenece VALUES (6, 2);
INSERT INTO pertenece VALUES (7, 3);
INSERT INTO pertenece VALUES (8, 3);
INSERT INTO pertenece VALUES (9, 3);
INSERT INTO pertenece VALUES (10, 4);
INSERT INTO pertenece VALUES (11, 4);
INSERT INTO pertenece VALUES (12, 4);
INSERT INTO pertenece VALUES (13, 5);
INSERT INTO pertenece VALUES (14, 5);
INSERT INTO pertenece VALUES (15, 6);
INSERT INTO pertenece VALUES (16, 6);
INSERT INTO pertenece VALUES (17, 7);
INSERT INTO pertenece VALUES (18, 7);
INSERT INTO pertenece VALUES (19, 8);
INSERT INTO pertenece VALUES (20, 8);
INSERT INTO pertenece VALUES (21, 9);
INSERT INTO pertenece VALUES (22, 9);
INSERT INTO pertenece VALUES (23, 10);
INSERT INTO pertenece VALUES (24, 10);
INSERT INTO pertenece VALUES (25, 10);
INSERT INTO pertenece VALUES (26, 11);
INSERT INTO pertenece VALUES (27, 11);
INSERT INTO pertenece VALUES (28, 11);
INSERT INTO pertenece VALUES (29, 12);
INSERT INTO pertenece VALUES (30, 12);
INSERT INTO pertenece VALUES (31, 12);
INSERT INTO pertenece VALUES (32, 13);
INSERT INTO pertenece VALUES (33, 13);
INSERT INTO pertenece VALUES (34, 14);
INSERT INTO pertenece VALUES (35, 14);
INSERT INTO pertenece VALUES (36, 15);
INSERT INTO pertenece VALUES (37, 15);
INSERT INTO pertenece VALUES (38, 16);
INSERT INTO pertenece VALUES (39, 16);
INSERT INTO pertenece VALUES (40, 17);
INSERT INTO pertenece VALUES (41, 17);
INSERT INTO pertenece VALUES (42, 18);
INSERT INTO pertenece VALUES (43, 18);


--
-- TOC entry 2191 (class 0 OID 16623)
-- Dependencies: 192
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO profesor VALUES (1, 3, 'Luis      ', 'Abad      ', 'labad@ups.edu.ec', '1960366848', '$1,500.00', '1994-09-01', NULL);
INSERT INTO profesor VALUES (2, 2, 'Gabriela  ', 'Montero   ', 'gmontero@ups.edu.ec', '2254796673', '$3,000.00', '2000-08-01', NULL);
INSERT INTO profesor VALUES (3, 8, 'Yaima     ', 'Aguila    ', 'yaiguila@ups.edu.ec', '2189361104', '$1,500.00', '1996-05-01', NULL);
INSERT INTO profesor VALUES (4, 1, 'Luis      ', 'Alvarez   ', 'lalvarez@ups.edu.ec', '2227846223', '$4,000.00', '1995-01-01', '2005-09-01');
INSERT INTO profesor VALUES (5, 2, 'Jorge     ', 'Amaya     ', 'jamaya@ups.edu.ec', '2037458582', '$3,000.00', '2003-03-01', NULL);
INSERT INTO profesor VALUES (6, 3, 'Walter    ', 'Gaibor    ', 'wgaibor@ups.edu.ec', '1923976750', '$1,500.00', '1997-09-01', NULL);
INSERT INTO profesor VALUES (7, 5, 'Diego     ', 'Cordova   ', 'dcord@ups.edu.ec', '1787567428', '$1,000.00', '2001-10-01', NULL);
INSERT INTO profesor VALUES (8, 7, 'Patricia  ', 'Calderon  ', 'pcal@ups.edu.ec', '1774663222', '$750.00', '1996-12-01', NULL);
INSERT INTO profesor VALUES (9, 2, 'Hugo      ', 'Zurita    ', 'hzur@ups.edu.ec', '1821252736', '$3,000.00', '2003-05-01', NULL);
INSERT INTO profesor VALUES (10, 3, 'Marcos    ', 'Morales   ', 'mmor@ups.edu.ec', '2217001231', '$1,500.00', '1995-04-01', NULL);
INSERT INTO profesor VALUES (11, 4, 'Carlos    ', 'Serrano   ', 'carser@ups.edu.ec', '2056173907', '$1,250.00', '2001-01-01', NULL);
INSERT INTO profesor VALUES (12, 1, 'Jose      ', 'Aguilar   ', 'jagui@ups.edu.ec', '1932069836', '$4,000.00', '1996-02-01', NULL);
INSERT INTO profesor VALUES (13, 3, 'Maria     ', 'Fernandez ', 'mafer@ups.edu.ec', '1768052133', '$1,500.00', '2002-08-01', '2013-12-01');
INSERT INTO profesor VALUES (14, 8, 'Diana     ', 'Paz       ', 'dpaz@ups.edu.ec', '2027759463', '$500.00', '1997-07-01', NULL);
INSERT INTO profesor VALUES (15, 9, 'Alexis    ', 'Armendariz', 'almen@ups.edu.ec', '2271783097', '$450.00', '2003-03-01', NULL);
INSERT INTO profesor VALUES (16, 3, 'Fernanda  ', 'Mosquera  ', 'fermos@ups.edu.ec', '1949734077', '$1,500.00', '1995-04-01', NULL);
INSERT INTO profesor VALUES (17, 10, 'David     ', 'Vallejo   ', 'daval@ups.edu.ec', '1754562840', '$350.00', '2003-05-01', NULL);
INSERT INTO profesor VALUES (18, 4, 'Ana       ', 'Florido   ', 'anaflo@ups.edu.ec', '1732492388', '$1,250.00', '2004-09-01', NULL);
INSERT INTO profesor VALUES (19, 2, 'Alex      ', 'Moreno    ', 'almor@ups.edu.ec', '2205735438', '$3,000.00', '1994-11-01', NULL);
INSERT INTO profesor VALUES (20, 3, 'Jean      ', 'Jaramillo ', 'jjar@ups.edu.ec', '2241500214', '$1,500.00', '2002-07-01', NULL);
INSERT INTO profesor VALUES (41, 5, 'Juan      ', 'Balas     ', 'jbalas@ups.edu.ec', '1740399294', '$1,500.00', '1996-12-01', NULL);
INSERT INTO profesor VALUES (21, 6, 'Absalon   ', 'Guerrero  ', 'aguerrero@ups.edu.ec', '1719924833', '$1,749.00', '2015-11-01', NULL);
INSERT INTO profesor VALUES (22, 7, 'David     ', 'Morales   ', 'dmorales@ups.edu.ec', '1722170543', '$1,500.00', '2000-10-01', NULL);
INSERT INTO profesor VALUES (23, 8, 'Francisco ', 'Sandoval  ', 'fsandoval@ups.edu.ec', '1790921269', '$1,964.00', '2010-09-01', NULL);
INSERT INTO profesor VALUES (24, 9, 'Maria     ', 'Ramirez   ', 'mramirez@ups.edu.ec', '1785584060', '$3,635.00', '2012-08-01', NULL);
INSERT INTO profesor VALUES (25, 10, 'Roberto   ', 'Rosero    ', 'rrosero@ups.edu.ec', '1714202299', '$5,757.00', '2010-07-01', NULL);
INSERT INTO profesor VALUES (26, 9, 'Michelle  ', 'Pruna     ', 'mpruna@ups.edu.ec', '1702983064', '$1,500.00', '2007-06-01', NULL);
INSERT INTO profesor VALUES (27, 8, 'Estefania ', 'Martinez  ', 'emartinez@ups.edu.ec', '1763730276', '$2,288.00', '2014-05-01', NULL);
INSERT INTO profesor VALUES (28, 7, 'Patricia  ', 'Villagomez', 'pvillagomez@ups.edu.ec', '1734102153', '$5,542.00', '2004-04-01', '2010-06-29');
INSERT INTO profesor VALUES (29, 6, 'Johana    ', 'Escobar   ', 'jescobar@ups.edu.ec', '1739810997', '$5,582.00', '2013-03-01', NULL);
INSERT INTO profesor VALUES (30, 5, 'Bolivar   ', 'Cordova   ', 'bcordova@ups.edu.ec', '1713773789', '$3,107.00', '2009-02-01', NULL);
INSERT INTO profesor VALUES (31, 4, 'Orlando   ', 'Barahona  ', 'obarahona@ups.edu.ec', '1786224577', '$5,508.00', '1995-01-01', NULL);
INSERT INTO profesor VALUES (32, 4, 'Roberto   ', 'Sanchez   ', 'rsanchez@ups.edu.ec', '1768541235', '$5,807.00', '2016-11-01', '2017-02-01');
INSERT INTO profesor VALUES (33, 3, 'Luis      ', 'Montenegro', 'lmontenegro@ups.edu.ec', '1768487046', '$5,567.00', '2003-10-01', NULL);
INSERT INTO profesor VALUES (34, 3, 'Priscila  ', 'Toapanta  ', 'ptoapanta@ups.edu.ec', '1706630562', '$1,885.00', '1996-09-01', NULL);
INSERT INTO profesor VALUES (35, 2, 'Jazmin    ', 'Palacios  ', 'jpalacios@ups.edu.ec', '1705520034', '$2,416.00', '1997-08-01', NULL);
INSERT INTO profesor VALUES (36, 2, 'Alejandra ', 'Noboa     ', 'anoboa@ups.edu.ec', '1734599978', '$3,759.00', '1997-07-01', NULL);
INSERT INTO profesor VALUES (37, 1, 'Patricio  ', 'Guerra    ', 'pguerra@ups.edu.ec', '1799953199', '$5,029.00', '2015-06-01', NULL);
INSERT INTO profesor VALUES (38, 2, 'Arnulfo   ', 'Chiluisa  ', 'achiluisa@ups.edu.ec', '1708171592', '$5,708.00', '2001-05-01', NULL);
INSERT INTO profesor VALUES (39, 10, 'Eutanasio ', 'Montaluisa', 'emontaluisa@ups.edu.ec', '1738340906', '$5,443.00', '1999-04-01', '2017-06-05');
INSERT INTO profesor VALUES (40, 5, 'Francisco ', 'Chacon    ', 'fchacon@ups.edu.ec', '1774213010', '$5,584.00', '2000-03-01', NULL);


--
-- TOC entry 2029 (class 2606 OID 16578)
-- Name: carrera pk_carrera; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY carrera
    ADD CONSTRAINT pk_carrera PRIMARY KEY (id_carrera);


--
-- TOC entry 2032 (class 2606 OID 16584)
-- Name: categoria pk_categoria; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id_categoria);


--
-- TOC entry 2037 (class 2606 OID 16590)
-- Name: ensena pk_ensena; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ensena
    ADD CONSTRAINT pk_ensena PRIMARY KEY (id_prof, id_materia);


--
-- TOC entry 2041 (class 2606 OID 16598)
-- Name: estudiante pk_estudiante; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estudiante
    ADD CONSTRAINT pk_estudiante PRIMARY KEY (id_estudiante);


--
-- TOC entry 2044 (class 2606 OID 16605)
-- Name: materia pk_materia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY materia
    ADD CONSTRAINT pk_materia PRIMARY KEY (id_materia);


--
-- TOC entry 2049 (class 2606 OID 16611)
-- Name: matriculado pk_matriculado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matriculado
    ADD CONSTRAINT pk_matriculado PRIMARY KEY (id_estudiante, id_materia);


--
-- TOC entry 2054 (class 2606 OID 16619)
-- Name: pertenece pk_pertenece; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pertenece
    ADD CONSTRAINT pk_pertenece PRIMARY KEY (id_materia, id_carrera);


--
-- TOC entry 2057 (class 2606 OID 16627)
-- Name: profesor pk_profesor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profesor
    ADD CONSTRAINT pk_profesor PRIMARY KEY (id_prof);


--
-- TOC entry 2027 (class 1259 OID 16579)
-- Name: carrera_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX carrera_pk ON carrera USING btree (id_carrera);


--
-- TOC entry 2030 (class 1259 OID 16585)
-- Name: categoria_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX categoria_pk ON categoria USING btree (id_categoria);


--
-- TOC entry 2033 (class 1259 OID 16593)
-- Name: ensena2_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ensena2_fk ON ensena USING btree (id_materia);


--
-- TOC entry 2034 (class 1259 OID 16592)
-- Name: ensena_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ensena_fk ON ensena USING btree (id_prof);


--
-- TOC entry 2035 (class 1259 OID 16591)
-- Name: ensena_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ensena_pk ON ensena USING btree (id_prof, id_materia);


--
-- TOC entry 2055 (class 1259 OID 16629)
-- Name: esta_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX esta_fk ON profesor USING btree (id_categoria);


--
-- TOC entry 2038 (class 1259 OID 16600)
-- Name: estudia_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX estudia_fk ON estudiante USING btree (id_carrera);


--
-- TOC entry 2039 (class 1259 OID 16599)
-- Name: estudiante_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX estudiante_pk ON estudiante USING btree (id_estudiante);


--
-- TOC entry 2042 (class 1259 OID 16606)
-- Name: materia_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX materia_pk ON materia USING btree (id_materia);


--
-- TOC entry 2045 (class 1259 OID 16614)
-- Name: matriculado2_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX matriculado2_fk ON matriculado USING btree (id_materia);


--
-- TOC entry 2046 (class 1259 OID 16613)
-- Name: matriculado_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX matriculado_fk ON matriculado USING btree (id_estudiante);


--
-- TOC entry 2047 (class 1259 OID 16612)
-- Name: matriculado_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX matriculado_pk ON matriculado USING btree (id_estudiante, id_materia);


--
-- TOC entry 2050 (class 1259 OID 16622)
-- Name: pertenece2_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pertenece2_fk ON pertenece USING btree (id_carrera);


--
-- TOC entry 2051 (class 1259 OID 16621)
-- Name: pertenece_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pertenece_fk ON pertenece USING btree (id_materia);


--
-- TOC entry 2052 (class 1259 OID 16620)
-- Name: pertenece_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX pertenece_pk ON pertenece USING btree (id_materia, id_carrera);


--
-- TOC entry 2058 (class 1259 OID 16628)
-- Name: profesor_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX profesor_pk ON profesor USING btree (id_prof);


--
-- TOC entry 2060 (class 2606 OID 16635)
-- Name: ensena fk_ensena_ensena2_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ensena
    ADD CONSTRAINT fk_ensena_ensena2_materia FOREIGN KEY (id_materia) REFERENCES materia(id_materia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2059 (class 2606 OID 16630)
-- Name: ensena fk_ensena_ensena_profesor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ensena
    ADD CONSTRAINT fk_ensena_ensena_profesor FOREIGN KEY (id_prof) REFERENCES profesor(id_prof) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2061 (class 2606 OID 16640)
-- Name: estudiante fk_estudian_estudia_carrera; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estudiante
    ADD CONSTRAINT fk_estudian_estudia_carrera FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2062 (class 2606 OID 16645)
-- Name: matriculado fk_matricul_matricula_estudian; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matriculado
    ADD CONSTRAINT fk_matricul_matricula_estudian FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2063 (class 2606 OID 16650)
-- Name: matriculado fk_matricul_matricula_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matriculado
    ADD CONSTRAINT fk_matricul_matricula_materia FOREIGN KEY (id_materia) REFERENCES materia(id_materia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2065 (class 2606 OID 16660)
-- Name: pertenece fk_pertenec_pertenece_carrera; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pertenece
    ADD CONSTRAINT fk_pertenec_pertenece_carrera FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2064 (class 2606 OID 16655)
-- Name: pertenece fk_pertenec_pertenece_materia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pertenece
    ADD CONSTRAINT fk_pertenec_pertenece_materia FOREIGN KEY (id_materia) REFERENCES materia(id_materia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2066 (class 2606 OID 16665)
-- Name: profesor fk_profesor_esta_categori; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profesor
    ADD CONSTRAINT fk_profesor_esta_categori FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2017-08-23 02:34:52

--
-- PostgreSQL database dump complete
--

