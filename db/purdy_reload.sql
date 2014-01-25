--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: distributors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE distributors (
    dist_id serial primary key,
    dist_name character varying(100),
    dist_address character varying(100),
    dist_city character varying(100),
    dist_state character varying(100),
    dist_country character varying(100),
    dist_zip1 character varying(100),
    dist_zip2 character varying(100),
    dist_phone character varying(100),
    dist_phone2 character varying(100),
    dist_fax character varying(100),
    dist_email character varying(100),
    dist_website character varying(100),
    dist_manager character varying(100),
    dist_title character varying(100),
    dist_leds character varying(100),
    dist_lcds character varying(100),
    dist_fans character varying(100),
    dist_switches character varying(100),
    dist_monitors character varying(100)
);


ALTER TABLE public.distributors OWNER TO postgres;

--
-- Name: notes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE notes (
    notes_id serial primary key,
    order_id integer,
    note_date character varying(100),
    note_time character varying(100),
    details text,
    role character varying(100)
);


ALTER TABLE public.notes OWNER TO postgres;

--
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--
# copy order_details (orderid,
    product_id,
    product_name,
    orderprice,
    firstname,
    lastname,
    company,
    address1,
    address2,
    city,
    state,
    country,
    zip,
    phone,
    fax,
    email,
    cardholder,
    ccnumber,
    cctype,
    expirymonth,
    expiryyear,
    status,
    shippingnumber,
    shippingmethod,
    shippingpriority,
    shippingcarrier,
    auth_status,
    auth_by,
    auth_date,
    auth_time,
    note,
    sn_flag,
    fld_date,
    fld_time,
    project,
    eau,
    production_start,
    decision_maker,
    decision_title,
    prototype_date,
    buying_criteria,
    target_price,
    how_did,
    competition1,
    competition2,
    competition3,
    competition4,
    product_line) from '/home/shayne/Documents/PurdyCode/PurdySite/db/csv_data/order_details.csv' with delimiter '|' CSV HEADER;
CREATE TABLE order_details (
    orderid integer,
    product_id integer,
    product_name character varying(100),
    orderprice character varying(100),
    firstname character varying(100),
    lastname character varying(100),
    company character varying(100),
    address1 text,
    address2 text,
    city character varying(100),
    state character varying(100),
    country character varying(100),
    zip character varying(100),
    phone character varying(100),
    fax character varying(100),
    email character varying(100),
    cardholder character varying(100),
    ccnumber character varying(100),
    cctype character varying(100),
    expirymonth character varying(100),
    expiryyear character varying(100),
    status character varying(100),
    shippingnumber character varying(100),
    shippingmethod character varying(100),
    shippingpriority text,
    shippingcarrier character varying(100),
    auth_status character varying(100),
    auth_by character varying(100),
    auth_date character varying(100),
    auth_time character varying(100),
    note text,
    sn_flag character varying(100),
    fld_date character varying(100),
    fld_time character varying(100),
    project text,
    eau character varying(100),
    production_start character varying(100),
    decision_maker character varying(100),
    decision_title character varying(100),
    prototype_date character varying(100),
    buying_criteria text,
    target_price character varying(100),
    how_did character varying(100),
    competition1 character varying(100),
    competition2 character varying(100),
    competition3 character varying(100),
    competition4 character varying(100),
    product_line character varying(100),
    id serial primary key
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led character varying(100),
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total integer,
    material character varying(100),
    product_price double precision,
    product_sh double precision,
    pdf character varying(255)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_displays_intchar; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_displays_intchar (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    lcd character varying(100),
    lines character varying(100),
    character_size character varying(100),
    viewing character varying(100),
    outline character varying(100),
    driving character varying(100),
    backlight character varying(100),
    built character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_displays_intchar OWNER TO postgres;

--
-- Name: product_displays_intgraph; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_displays_intgraph (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    pixel character varying(100),
    pixel_pitch character varying(100),
    viewing character varying(100),
    overall character varying(100),
    driving character varying(100),
    built character varying(100),
    backlight_30 character varying(100),
    backlight_el character varying(100),
    contrast character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_displays_intgraph OWNER TO postgres;

--
-- Name: product_displays_prototyping; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_displays_prototyping (
    product_id serial primary key,
    product_name character varying(100),
    news text,
    product_line character varying(100),
    item_type character varying(100),
    description text,
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_displays_prototyping OWNER TO postgres;

--
-- Name: product_displays_segment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_displays_segment (
    product_id serial primary key,
    product_name character varying(100),
    news text,
    product_line character varying(100),
    item_type character varying(100),
    display character varying(100),
    digit character varying(100),
    package character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_displays_segment OWNER TO postgres;

--
-- Name: product_displays_tftmodules; item_type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_displays_tftmodules (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    screen character varying(100),
    pixel character varying(100),
    brightness character varying(100),
    pixel_pitch character varying(100),
    active character varying(100),
    overall character varying(100),
    driving character varying(100),
    input_signal character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_displays_tftmodules OWNER TO postgres;

--
-- Name: product_displays_tftmonitors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_displays_tftmonitors (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    screen character varying(100),
    pixel character varying(100),
    brightness character varying(100),
    pixel_pitch character varying(100),
    active character varying(100),
    overall character varying(100),
    driving character varying(100),
    input_signal character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_displays_tftmonitors OWNER TO postgres;

--
-- Name: product_fans_accessories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_fans_accessories (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    fan_compat character varying(100),
    construction character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    description text,
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_fans_accessories OWNER TO postgres;

--
-- Name: product_fans_axial_ac; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_fans_axial_ac (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    frame character varying(100),
    voltage character varying(100),
    airflow character varying(100),
    inputp character varying(100),
    speed character varying(100),
    noise character varying(100),
    weight character varying(100),
    construction character varying(100),
    guard character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_fans_axial_ac OWNER TO postgres;

--
-- Name: product_fans_axial_dc; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_fans_axial_dc (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
   item_type character varying(100),
    news text,
    frame character varying(100),
    voltage character varying(100),
    airflow character varying(100),
    inputp character varying(100),
    inputc character varying(100),
    speed character varying(100),
    noise character varying(100),
    weight character varying(100),
    construction character varying(100),
    guard character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_fans_axial_dc OWNER TO postgres;

--
-- Name: product_fibre_connectors; item_type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_fibre_connectors (
    product_id serial primary key,
    product_name character varying(100),
    news text,
    product_line character varying(100),
    item_type character varying(100),
    polish text,
    connector text,
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_fibre_connectors OWNER TO postgres;

--
-- Name: product_fibre_modems; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_fibre_modems (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    data text,
    wavelength character varying(100),
    fibers character varying(100),
    mounting character varying(100),
    sizem character varying(255),
    operating character varying(100),
    connectors character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_fibre_modems OWNER TO postgres;

--
-- Name: product_led_blue_white; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_led_blue_white (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led character varying(100),
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(10),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255)
);


ALTER TABLE public.product_led_blue_white OWNER TO postgres;

--
-- Name: product_leds_dual_color; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_dual_color (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_dual_color OWNER TO postgres;

--
-- Name: product_leds_green; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_green (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_green OWNER TO postgres;

--
-- Name: product_leds_green_segment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_green_segment (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    face character varying(100),
    display character varying(100),
    characteristics character varying(100),
    luminous character varying(100),
    ifma character varying(100),
    polarity character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_green_segment OWNER TO postgres;

--
-- Name: product_leds_orange_amber; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_orange_amber (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_orange_amber OWNER TO postgres;

--
-- Name: product_leds_red; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_red (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_red OWNER TO postgres;

--
-- Name: product_leds_special_shape; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_special_shape (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_special_shape OWNER TO postgres;

--
-- Name: product_leds_yellow; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_leds_yellow (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    news text,
    item_type character varying(100),
    led text,
    lens character varying(100),
    peak character varying(100),
    lmin character varying(100),
    typ character varying(100),
    ifma character varying(100),
    total character varying(100),
    material character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_leds_yellow OWNER TO postgres;

--
-- Name: product_switches_keypads; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_switches_keypads (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    description text,
    key_config character varying(100),
    key_type character varying(100),
    dimensions character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_switches_keypads OWNER TO postgres;

--
-- Name: product_switches_keypads2; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_switches_keypads2 (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    description text,
    forp character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_switches_keypads2 OWNER TO postgres;

--
-- Name: product_switches_led; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_switches_led (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    description text,
    characters character varying(100),
    available character varying(100),
    maximum character varying(100),
    supply character varying(100),
    dimensions character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_switches_led OWNER TO postgres;

--
-- Name: product_switches_rotary; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_switches_rotary (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    knob character varying(100),
    description text,
    number character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_switches_rotary OWNER TO postgres;

--
-- Name: product_switches_thumb; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_switches_thumb (
    product_id serial primary key,
    product_name character varying(100),
    product_line character varying(100),
    item_type character varying(100),
    news text,
    description text,
    positions character varying(100),
    available character varying(100),
    maximum character varying(100),
    working character varying(100),
    dimensions character varying(100),
    product_price character varying(10),
    product_sh character varying(10),
    pdf character varying(255),
    sort character varying(10)
);


ALTER TABLE public.product_switches_thumb OWNER TO postgres;

--
-- Data for Name: distributors; Type: TABLE DATA; Schema: public; Owner: postgres
--

