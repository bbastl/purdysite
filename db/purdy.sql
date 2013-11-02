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
    dist_id integer,
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
    notes_id integer,
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

CREATE TABLE order_details (
    orderid integer,
    product_id integer,
    product_name character varying(100),
    orderprice character varying(100),
    firstname character varying(100),
    lastname character varying(100),
    company character varying(100),
    address1 character varying(100),
    address2 character varying(100),
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
    shippingpriority character varying(100),
    shippingcarrier character varying(100),
    auth_status character varying(100),
    auth_by character varying(100),
    auth_date character varying(100),
    auth_time character varying(100),
    note character varying(100),
    sn_flag character varying(100),
    fld_date character varying(100),
    fld_time character varying(100),
    project character varying(100),
    eau character varying(100),
    production_start character varying(100),
    decision_maker character varying(100),
    decision_title character varying(100),
    prototype_date character varying(100),
    buying_criteria character varying(100),
    target_price character varying(100),
    how_did character varying(100),
    competition1 character varying(100),
    competition2 character varying(100),
    competition3 character varying(100),
    competition4 character varying(100),
    product_line character varying(100)
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product (
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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
    product_id integer NOT NULL,
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

COPY distributors (dist_id, dist_name, dist_address, dist_city, dist_state, dist_country, dist_zip1, dist_zip2, dist_phone, dist_phone2, dist_fax, dist_email, dist_website, dist_manager, dist_title, dist_leds, dist_lcds, dist_fans, dist_switches, dist_monitors) FROM stdin;
1	Allied Electronics	1155 Lola Street, Unit 6	Ottawa	Ontario	CANADA	K1K4C1		(613) 228-1964		(613) 228-8006					N	N	N	N	N
2	Newark InOne	150 West Park Loop Suite 110	Huntsville	AL	USA	35806		(800) 2-NEWARK (800-263-9275)	(256) 837-9091	(256) 837-1288	huntsville@newarkinone.com				Y	Y			
155	Allied Electronics<BR>#43	2970 Cottage Hill Rd., Suite 206	Mobile	AL	USA	36606		251-476-1875		251-473-4325		www.alliedelec.com			Y	Y	Y	Y	N
156	Allied Electronics<br>#92	4835 University Square, Suite 12	Huntsville	AL	USA	35816		256-721-3500		256-721-9877		www.alliedelec.com			Y	Y	Y	Y	N
5	Powell Electronics<br>Southern Region	6767 Madison Pike NW Suite 100	Huntsville	AL	USA	35806		256.971.5900		256.971.5944	tstrope@powell.com	www.powell.com	Tony Strope	Branch Manager	Y	Y	Y	Y	N
6	Allied Electronics<br>#16 CHICAGO - NORTH	420 N. Front St., Ste 104	McHenry,	IL	USA	60050		(815) 759-9155		(815) 759-9154	bill.mohlman@alliedelec.com				Y	Y	Y	Y	N
7	Newark InOne	2601 Crossroads Dr. Suite 100	Madison	WI	USA	53718	7923	(800) 2-NEWARK (800-263-9275)	(608) 243-9230	(608) 243-9210	madison@newarkinone.com				Y	Y			
9	Allied Electronics<br>#67 SEATTLE	19625 62nd Ave. South, #C105	Kent,	WA	USA	98032		(425) 251-0240		(425) 251-0317		www.alliedelec.com			Y	Y	Y	Y	N
10	Powell Electronics<br>Northwest Region	720 South 333 Street, Suite 210	Federal Way,	WA	USA	98003		253.874.2215		253.925.1360	khettinger.powell.com	www.powell.com	Kelly Hettinger	Branch Manager	Y	Y	Y	Y	N
11	Newark InOne	1504 Santa Rosa Rd. Suite 115	Richmond,	VA	USA	23229	1504	(800) 2-NEWARK (800-263-9275)	(804) 282-5671	(804) 282-3109	richmond@newarkinone.com				Y	Y			
12	Allied Electronics<br>#14 NORTHERN VIRGINIA	7406 Alban Station Court, Ste B206	Springfield,	VA	USA	22150	2314	(703) 644-9515		(703) 644-2294					Y	Y	Y	Y	
157	Allied Electronics<BR>#97	10824 Old Mill Road, Ste 5	Omaha	NE	USA	68154		402-697-0038		402-6970238		www.alliedelec.com			Y	Y	Y	Y	
14	Allied Electronics<br>#39 SALT LAKE CITY	515 East 4500 South Professional Plaza, Ste G-210	Salt Lake City,	UT	USA	84107	2966	(801) 261-5244		(801) 261-5465					Y	Y	Y	Y	N
15	Walker Component Group / IEC	443 West Bearcat Drive	Salt Lake City,	UT	USA	84115		801-977-9750	877-274-3442	801-975-1207	slcsales@wcg-iec.com				Y	Y	Y		
16	Newark InOne	7500 Viscount Ave. Suite 292	El Paso,	TX	USA	79925	5694	(800) 2-NEWARK (800-263-9275)	(915) 772-6367	(915) 772-3192	E: elpaso@newarkinone.com				Y	Y			
17	Newark InOne	719 Sawdust Rd. Suite 207	Spring,	TX	USA	77380		(800) 2-NEWARK (800-263-9275)	(281) 296-6332	(281) 296-6331	E: houston@newarkinone.com				Y	Y			
18	Newark InOne	12880 Hillcrest Rd. Suite 115	Dallas,	TX	USA	75230	1501	(800) 2-NEWARK (800-263-9275)	(972) 458-2528	(972) 458-2530	E: dallas@newarkinone.com				Y	Y			
19	Allied Electronics<br>#41 BROWNSVILLE	3505 Boca Chica Blvd, Ste 260	Brownsville,	TX	USA	78521		(956) 548-1129		(956) 548-1235					Y	Y	Y	Y	
20	Allied Electronics<br>#06 DALLAS	9550 Forest Lane, Ste 511	Dallas,	TX	USA	75243	8394	(214) 341-8444		(214) 341-6622					Y	Y	Y	Y	
21	Allied Electronics<br>#74 EL PASO	9434 VISCOUNT BLVD., SUITE 207	El Paso,	TX	USA	79925	5633	(915) 593-6291		(915) 590-3233					Y	Y	Y	Y	N
22	Allied Electronics<br>#05 FORT WORTH SALES	7410 Pebble Drive	Fort Worth,	TX	USA	76118		(817) 595-3500		(817) 595-6444	W: www.alliedelec.com				Y	Y	Y	Y	
23	Allied Electronics<br>#60 HOUSTON	9810 FM 1960 Bypass, Ste 210	Humble,	TX	USA	77338	3501	(281) 446-8005		(281) 446-6782		www.alliedelec.com			Y	Y	Y	Y	N
24	Allied Electronics #605	7 Santa Anita Circle	Wylie,	TX	USA	75098		972-442-1053		972-442-3055	E: ron.davis@alliedelec.com				Y	Y	Y	Y	
25	Allied Electronics #605	7410 Pebble Drive	Fort Worth,	TX	USA	76118		817-917-5930		817-595-6404	E: don.norwich@alliedelec.com				Y	Y	Y	Y	
26	Allied Electronics #605	9550 Forest Lane - Suite 511	Dallas,	TX	USA	75243	8394	214-755-6114		214-341-6622	E: steve.falcone@alliedelec.com				Y	Y	Y	Y	
27	Fuses Unlimited	3302 West Miller Road	Garland,	TX	USA	75041		(972) 907-8600		(972) 669-9626	E: dallas@fusesunlimited.com						Y		
28	Powell Electronics<br>Lower Midwest Region & Mexico	4500 Fuller Dr., Suite 130	Irving,	TX	USA	75038		(972)-719-5404		(972)-719-5405	E: dlindop@powell.com	www.powell.com	Dana Lindop	Branch Manager	Y	Y	Y	Y	N
29	Newark InOne	3737 Executive Center Dr. Suite 105	Austin,	TX	USA	78731	1632	(800) 2-NEWARK (800-263-9275)	(512) 338-0287	(512) 345-2702	E: austin@newarkinone.com				Y	Y			
30	Newark InOne	12880 Hillcrest Rd. Suite 115	Dallas,	TX	USA	75230	1501	(800) 2-NEWARK (800-263-9275)	(972) 458-2528	(972) 458-2530	E: dallas@newarkinone.com				Y	Y			
31	Allied Electronics #605 Austin	3429 Executive Center Dr. - Suite 250	Austin,	TX	USA	78731		512-219-7171		512-219-7701	E: shane.niles@alliedelec.com				Y	Y	Y	Y	
32	Newark InOne	1400 Commerce Center Dr. Suite E	Franklin,	OH	USA	45005		(800) 2-NEWARK (800-263-9275)	(937) 743-0800	(937) 743-9380	E: columbus@newarkinone.com				Y	Y			
34	Allied Electronics<br>#76 CLEVELAND	5755 Granger Road, Ste 756	Independence,	OH	USA	44131		(216) 335-9969		(216) 335-9979					Y	Y	Y	Y	
35	Allied Electronics<br>#71 COLUMBUS	250 E. Wilson Bridge Rd., Suite 270	Worthington,	OH	USA	43085		(614) 785-1270		(614) 785-1277		www.alliedelec.com			Y	Y	Y	Y	N
36	Newark InOne	6400 Rockside Rd.	Independence,	OH	USA	44131		(800) 2-NEWARK (800-263-9275)	(216) 654-1700	(216) 654-1770	E: cleveland@newarkinone.com				Y	Y			
37	Fuses Unlimited	21500 Drake Road	Strongsville,	OH	USA	44149		(440) 238-1330		(440) 238-1245	Email: strongsville@fusesunlimited.com						Y		
38	Newark InOne	6443 SW Beaverton Hillsdale Hwy. Suite 330	Portland,	OR	USA	97225	1692	(800) 2-NEWARK (800-263-9275)	(503) 297-1984	(503) 297-1925	E: portland@newarkinone.com				Y	Y			
39	Allied Electronics<br>#57 PORTLAND	6700 SW 105th Ave., Ste 106	Beaverton,	OR	USA	97008		(503) 626-9921		F:(503) 627-0404					Y	Y	Y	Y	
40	Walker Component Group / IEC	3720 S.W. 141st. Street, Suite 102	Beaverton,	OR	USA	97005		503-641-1690		503-646-3737	E: porsales@wcg-iec.com				Y	Y	Y		
41	Newark InOne	501 Office Center Dr. Suite 410	Ft. Washington,	PA	USA	19034	3211	(800) 2-NEWARK (800-263-9275)	(215) 654-1434	(215) 654-1460	E: philadelphia@newarkinone.com				Y	Y			
42	Newark InOne	100 High Tower Blvd. 1st Floor	Pittsburgh,	PA	USA	15205	1134	(800) 2-NEWARK (800-263-9275)	(412) 788-4790	(412) 788-1566	E: pittsburgh@newarkinone.com				Y	Y			
43	Allied Electronics<br>#25 EASTERN PENNSYLVANIA	Chadds Ford W. Marshallton Bldg, Ste 20	Chadds Ford,	PA	USA	19317	9807	(610) 388-8455		(610) 388-8450					Y	Y	Y	Y	
44	Allied Electronics<br>#89 HARRISBURG	4711 Queen Ave., Ste 202	Harrisburg,	PA	USA	17109		(717) 540-7101		(717) 540-7130					Y	Y	Y	Y	
45	Allied Electronics<br>#88 PITTSBURGH	1500 Ardmore Blvd - Suite 205	Pittsburgh,	PA	USA	15221		(412) 242-8190		(412) 242-8198					Y	Y	Y	Y	
46	Powell Electronics<br>Mid Atlantic	4848 South Island Road	Philadelphia,	PA	USA	19153		800-235-7880		215-495-5410	E: powellinfo@worldnet.att.net						Y	Y	
47	Powell Electronics	200 Commodore Drive	Logan Township,	NJ	USA	08085		856-241-8000		856-241-8630	E: dbelfonti@powell.com	www.powell.com	Darlene Belfonti	Branch Manager	Y	Y	Y	Y	N
48	Allied Electronics<br>#28 GREENVILLE	300 Executive Center Dr., Ste 250, B197	Greenville,	SC	USA	29615	4505	(864) 288-8835		(864) 288-9559					Y	Y	Y	Y	N
49	Newark InOne	9041 Executive Park Dr. Suite 702	Knoxville,	TN	USA	37923	4622	(800) 2-NEWARK (800-263-9275)	(865) 670-1130	(865) 670-9120	E: knoxville@newarkinone.com				Y	Y			
50	Newark InOne	7449 Morgan Rd. 1st Floor	Liverpool,	NY	USA	13090	3901	(800) 2-NEWARK (800-263-9275)	(315) 457-4873	(315) 457-6096	E: syracuse@newarkinone.com				Y	Y			
51	Allied Electronics<br>#32 SUFFOLK COUNTY AREA	2150 Joshua's Path, Ste 14	Hauppauge,	NY	USA	11788		(631) 234-0485		(631) 234-5175					Y	Y	Y	Y	
52	Allied Electronics<br>#63 NY CITY/ WESTERN LONG IS	305 Northern Blvd, Ste 301	Great Neck,	NY	USA	11021		(516) 487-5211		(516) 487-5251					Y	Y	Y	Y	
53	Allied Electronics<br>#11 POUGHKEEPSIE	488 Freedom Plains Rd., Ste 132	Poughkeepsie,	NY	USA	12603		(845) 452-1470		(845) 452-1448					Y	Y	Y	Y	
54	Allied Electronics<br>#64 ROCHESTER	333 Meyro Park, Ste N107	Rochester,	NY	USA	14623		(585) 292-1670		(585) 292-1681		www.alliedelec.com			Y	Y	Y	Y	N
55	Allied Electronics<br>#34 SYRACUSE	101 Old Cove Road, Ste 108	Liverpool,	NY	USA	13090		(315) 453-0960		(315) 453-0963					Y	Y	Y	Y	
56	Newark InOne	4250 Veterans Memorial Hwy. Suite 301.	Holbrook,	NY	USA	11741		(800) 2-NEWARK (800-263-9275)	(631) 738-6776	(631) 738-6886	E: longisland@newarkinone.com				Y	Y			
58	Allied Electronics<br>#85 TULSA	9810 East 42nd St., Ste 130	Tulsa,	OK	USA	74146		(918) 627-9220		(918) 627-9409					Y	Y	Y	Y	
59	Newark InOne	197 Highway 18 South Suite 205	East Brunswick,	NJ	USA	08816	1440	(800) 2-NEWARK (800-263-9275)	(732) 937-6600	(732) 937-6667	E: eastbrunswick@newarkinone.com				Y	Y			
60	Allied Electronics<br>#33 CENTRAL NEW JERSEY	197 Route 18, Ste 260	E. Brunswick,	NJ	USA	08816		(732) 846-4271		(732) 846-4277					Y	Y	Y	Y	
61	Allied Electronics<br>#66 PHILADELPHIA	1 Executive Drive, Unit 1	Moorestown,	NJ	USA	08057		(856) 234-7769		(856) 234-6346					Y	Y	Y	Y	N
62	Allied Electronics	249 Fernhead Ave	Monroe Township,	NJ	USA	08831		(732) 723-030		(732) 261-4899	E: james.sullivan@alliedelec.com				Y	Y	Y	Y	
63	Newark InOne	1701 Pinecroft Rd. Suite 101	Greensboro,	NC	USA	27407	3855	(800) 2-NEWARK (800-263-9275)	(336) 292-7240	(336) 292-9575	E: greensboro@newarkinone.com				Y	Y			
64	Allied Electronics<br>#31 CHARLOTTE	9307 Monroe Road, Ste F	Charlotte,	NC	USA	28270		(704) 846-4023		(704) 846-1642					Y	Y	Y	Y	
65	Allied Electronics<br>#61 RALEIGH	801 Jones Franklin Rd, Ste 290	Raleigh,	NC	USA	27606		(919) 851-2131		(919) 851-2154					Y	Y	Y	Y	
66	Allied Electronics<br>National Account Team	9307 Monroe Rd. Ste. F	Charlotte	NC	USA	28270		(704) 846-4023		(704) 846-1642	E: mike.lausier@alliedelec.com				Y	Y	Y	Y	
67	Powell Electronics<br>Carolinas Region	110 Adams St	Cary,	NC	USA	27513		919-467-1212		919-467-8078	E: pmoody@powell.com	www.powell.com	Paul Moody	Branch Manager	Y	Y	Y	Y	N
68	Newark InOne	11128 John Galt Blvd. Suite 255	Omaha,	NE	USA	68137	2321	(800) 2-NEWARK (800-263-9275)	(402) 592-2423	(402) 592-0508	E: omaha@newarkinone.com				Y	Y			
69	Allied Electronics<br>#17 NASHUA	32 Daniel Webster Highway, Unit 21	Merrimack,	NH	USA	03054		(603) 579-0720		(603) 579-0713					Y	Y	Y	Y	N
70	Allied Electronics<br>#22 ALBUQUERQUE	6301 Indian School Rd, NE, Ste 660	Albuquerque,	NM	USA	87110		(505) 872-2770		(505) 872-2766					Y	Y	Y	Y	
71	Newark InOne	550 Stephenson Hwy. Suite 200	Troy,	MI	USA	48083	1109	(800) 2-NEWARK (800-263-9275)	(248) 583-2899	(248) 583-1092	E: detroit@newarkinone.com				Y	Y			
72	Allied Electronics<br>#70 DETROIT	20270 Middlebelt Rd., Ste 8	Livonia,	MI	USA	48152		248-473-5457		248-473-5853		www.alliedelec.com			Y	Y	Y	Y	N
73	Allied Electronics<br>#08 GRAND RAPIDS	5035 Plainfield NE, Suite E	Grand Rapids,	MI	USA	49525	1064	(616) 365-9960		(616) 365-9895		www.alliedelec.com			Y	Y	Y	Y	N
74	Shand Electronics	2401Electronics	Flint,	MI	USA	48507		800-747-7426		810-232-5044					Y	Y	Y		
75	Newark InOne	2021 East Hennepin Ave. suite 530	Minneapolis,	MN	USA	55413	2722	(800) 2-NEWARK (800-263-9275)	(612) 331-6350	(612) 331-1504	E: minneapolis@newarkinone.com				Y	Y			
76	Allied Electronics<br>#72 MINNEAPOLIS	6120 Earle Brown Drive, Ste 400	Brooklyn Center,	MN	USA	55430		(763) 560-9760		(763) 560-9744					Y	Y	Y	Y	
77	Newark InOne	2458 Old Dorsett Rd. Suite 205	Maryland Heights,	MO	USA	63043		(800) 2-NEWARK (800-263-9275)	(314) 291-7722	(314) 291-7733	E: stlouis@newarkinone.com				Y	Y			
78	Allied Electronics<br>#84 ST. LOUIS	1016 Rock Creek Elementary Dr.	O'Fallon,	MO	USA	63366		(636) 240-9405		(636) 240-9505					Y	Y	Y	Y	N
79	Newark InOne	1919 South Highland Avenue A320	Lombard,	IL	USA	60148	6119	(800) 2-NEWARK (800-263-9275)	(630) 317-1000	(630) 424-8048	E: chicago@newarkinone.com				Y	Y			
80	Allied Electronics<br>#10 CENTRAL ILLINOIS	2205 W. Wabash Ave., Ste 203B	Springfield,	IL	USA	62704		(217) 698-8525		(217) 698-8445					Y	Y	Y	Y	
165	Allied Electronics<br>#38 SAN JOSE	6830 Via Del Oro Suite 100	San Jose	CA	USA	95119	1391	(408) 226-7008		(408) 226-7010	sjo$manager@alliedelec.com	www.alliedelec.com			Y	Y	Y	Y	
82	Allied Electronics<br>#15 CHICAGO - WOOD DALE	800 Roosevelt Rd., Bldg. C, Suite 320	Glen Ellyn	IL	USA	60137		(630) 469-4685		(630) 469-6347		www.alliedelec.com			Y	Y	Y	Y	N
83	Allied Electronics	2022 S. Route 31, Ste G	McHenry,	IL	USA	60050		(815) 759-9155		(815) 759-9154	E: bill.mohlman@alliedelec.com				Y	Y	Y	Y	
84	GC / Waldom Electronics	4301 West 69th Street	Chicago,	IL	USA	60629		800-892-5366		800-526-4977					Y	Y	Y		
85	Newark InOne	4801 North Ravenswood Ave.	CHICAGO,	IL	USA	60640		773-784-5100		773-907-5217					Y	Y			
86	Walker Component Group / IEC	2401 West Hassell Road, Suite 1505	Hoffman Estates,	IL	USA	60195		847-843-2040		847-843-2320	E: chisales@wcg-iec.com				Y	Y	Y		
87	Powell Electronics<br>Upper Midwest Region	7705 Industrial Drive, Suite C	Spring Grove,	IL	USA	60081		815.675.3244		815.675.9374	E: afiorillo@powell.com	www.powell.com	Albert Fiorillo	VP MidWest Division	Y	Y	Y	Y	N
88	Allied Electronics<br>#48 BOISE	4696 Overland Road, Ste 534	Boise,	ID	USA	83705	2864	(208) 331-1414		(208) 331-1484					Y	Y	Y	Y	
89	Allied Electronics<br>#54 CEDAR RAPIDS	1310 Tower Lane NE, Ste A	Cedar Rapids,	IA	USA	52402		(319) 377-7051		(319) 377-7787					Y	Y	Y	Y	N
90	Newark InOne	50 E. 91st Street Suite 213	Indianapolis,	IN	USA	46240	1555	(800) 2-NEWARK (800-263-9275)	(317) 844-0047	(317) 844-0165	E: indianapolis@newarkinone.com				Y	Y			
91	Allied Electronics<br>#77 INDIANAPOLIS	12400 N. Meridian St., Ste 195	Carmel,	IN	USA	46032		(317) 571-1880		(317) 571-1890					Y	Y	Y	Y	
92	Newark InOne	6811 W. 63rd St. Suite 305	Overland Park,	KS	USA	66202	4080	(800) 2-NEWARK (800-263-9275)	(913) 677-0727	(913) 677-2725	E: kansascity@newarkinone.com				Y	Y			
93	Allied Electronics<br>#83 KANSAS CITY	10985 Cody, Ste 115	Overland Park,	KS	USA	66210		(913) 338-4372		(913) 338-3559					Y	Y	Y	Y	
94	Allied Electronics<br>#68 LOUISVILLE	8134 New LaGrange Rd., Ste 202	Louisville,	KY	USA	40222	4678	(502) 339-0114		(502) 339-0365					Y	Y	Y	Y	
95	Newark InOne	7272 Park Circle Dr. Suite 260	Hanover,	MO	USA	21076	1306	(800) 2-NEWARK (800-263-9275)	(410) 712-6922	(410) 712-6932	E: baltimore@newarkinone.com				Y	Y			
96	Allied Electronics<br>#09 BALTIMORE/WASHINGTON D.C	7125 Thomas Edison Dr., Ste 101	Columbia,	MD	USA	21046		(410) 312-0810		(410) 312-0818					Y	Y	Y	Y	
97	Allied Electronics	510 Pearwood	Bel Air,	MD	USA	21014		(410) 420-8935		(410) 420-8935	E: dan.tress@alliedelec.com				Y	Y	Y	Y	N
98	Powell Electronics<br>MD, DC, WV, VA Region	6325 Woodside Court Suite 120	Columbia,	MD	USA	21046		410-290-7929		410-290-7925	E: baiello@powell.com						Y	Y	
99	Newark InOne	1900 West Park Drive, Suite 210	West Borough	MA	USA	01581		(800) 2-NEWARK (800-263-9275)	(508) 229-2200	(508) 229-2222	E: dpellerin@newark.com		Donna Pellerin	Sales Manager	Y	Y	N	N	N
100	Newark InOne	59 Composite Way Suite 200	Boston,	MA	USA	01851	5150	(800) 2-NEWARK (800-263-9275)	(978) 551-4300	(978) 551-4329	E: boston@newarkinone.com				Y	Y			
101	Powell Electronics<br>Northeast Region & Canada	4 Mount Royal, Suit 210	Marlborough,	MA	USA	01752		508-481-7575		508-481-7779	E: dwhite@powell.com				Y	Y	Y	Y	N
102	Allied Electronics<br>#55 BOSTON AREA	200 Stonewall Blvd., Unit 202B, Mailbox 9	Wrentham,	MA	USA	02093		(508) 384-0400		(508) 384-0459					Y	Y	Y	Y	
103	Allied Electronics<br>#18 NORTHERN & WEST MA, ME,	5 Cherry Hill Dr., Ste 210	Danvers,	MA	USA	01923		(978) 646-9120		(978) 646-9130					Y	Y	Y	Y	N
104	Allied Electronics<br>#69 DENVER	6 Inverness Court East #135	Englewood,	CO	USA	80112	5610	(303) 790-1664		(303) 790-8938					Y	Y	Y	Y	N
105	Hubbard Supply Co.	901 W. Second Street	Flint	MI	USA	48503		810-234-8681	800-875-4811	810-234-6142	www.hubbardsupply.com				Y	Y	Y		
106	Hubbard Supply Co.	3900 E. Washington	Saginaw	MI	USA	48601		989-753-2453	800-875-4812	989-753-3266	www.hubbardsupply.com				Y	Y	Y		
107	Hubbard Supply Co.	4560 W. Dickman Road	Battle Creek	MI	USA	49015		269-965-2211	800-632-9606	269-965-3164	www.hubbardsupply.com				Y	Y	Y		
108	Walker Component Group / IEC	1795 E. 66th Ave.	Denver,	CO	USA	80229		303-292-6121 and 877-274-3442		303-292-0114	densales@wcg-iec.com				Y	Y	Y		
109	Newark InOne	34 Jerome Avenue Suite 200	Bloomfield,	CT	USA	06002	2463	(800) 2-NEWARK (800-263-9275)	(860) 243-1731	(860) 242-3949	bloomfield@newarkinone.com				Y	Y			
110	Allied Electronics<br>#19 CHESHIRE	408-412 Highland Ave., Bldg A, Unit 10	Cheshire,	CT	USA	06410		(203) 272-7730		(203) 272-1412					Y	Y	Y	Y	
111	Newark InOne	4725 Paris Street	Denver,	CO	USA	80239	2803	(800) 2-NEWARK (800-263-9275)	(303) 373-4540	(303) 373-0648	denver@newarkinone.com				Y	Y			
112	Newark InOne	1080 Woodcock Rd. Suite 111	Orlando,	FL	USA	32803	3514	(800) 2-NEWARK (800-263-9275)	(407) 896-8350	(407) 896-7348	orlando@newarkinone.com				Y	Y			
113	Newark InOne	3230 West Commercial Blvd. Suite 300	Ft. Lauderdale,	FL	USA	33309	3400	(800) 2-NEWARK (800-263-9275)	(954) 486-1151	(954) 486-9929	ftlauderdale@newarkinone.com				Y	Y			
114	Newark InOne	5601 Mariner St. Suite 104	Tampa,	FL	USA	33609	3416	(800) 2-NEWARK (800-263-9275)	(813) 287-1578	(813) 286-2572	tampa@newarkinone.com				Y	Y			
115	Allied Electronics<br>#91 JACKSONVILLE	8130 W Baymeadows Circle, Ste 111	Jacksonville,	FL	USA	32256	1812	(904) 739-5920		(904) 739-5922					Y	Y	Y	Y	
116	Allied Electronics<br>#90 MIAMI	10400 Griffin Road, Ste 208	Cooper City,	FL	USA	33328		(954) 434-9001		(954) 434-7801					Y	Y	Y	Y	
117	Allied Electronics<br>#81 ORLANDO	2180 W. State Road 434, Ste 1170	Longwood,	FL	USA	32779		(407) 774-8411		(407) 774-8407					Y	Y	Y	Y	
118	Allied Electronics<br>#80 TAMPA	9600 Koger Blvd, Ste 103	St. Petersburg,	FL	USA	33702		(727) 579-4660		(727) 579-1422					Y	Y	Y	Y	
119	Electronic Precepts of Florida	11651 87th Street North	Largo,	FL	USA	33773		727-391-7131		727-393-1177	sales@electronicprecepts.com				Y	Y	Y		
120	Powell Electronics<br>Florida Region & Caribbean,	1890 University Drive, Suite 115	Coral Springs,	FL	USA	33071		945-346-2466		954-346-2722	dmcgain@powell.com	www.powell.com	Trevor Roy McGain	Branch Manager	Y	Y	Y	Y	N
121	Newark InOne	22 Technology Park, Suite 250	Norcross,	GA	USA	33092	3053	(800) 2-NEWARK (800-263-9275)	(770) 448-1300	(770) 448-7843	atlanta@newarkinone.com				Y	Y			
122	Allied Electronics<br>#73 ATLANTA	20 Technology Parkway South, Ste 350	Norcross,	GA	USA	30092		(770) 242-0699		(770) 242-0899					Y	Y	Y	Y	
123	Newark InOne	1600 W. Broadway Rd. Suite 290	Tempe	AZ	USA	85282		(800) 2-NEWARK (800-263-9275)	(480) 966-6340	(480) 966-8146	phoenix@newarkinone.com				Y	Y			
124	Allied Electronics<br>#98 PHOENIX	2111 E. Baseline, Ste F3	Tempe	AZ	USA	85283		(480) 831-2002		(480) 831-2411					Y	Y	Y	Y	
125	Allied Electronics	4008 E. Glenrosa Ave	Phoenix	AZ	USA	85018		(480) 831-2002		(480) 831-1411	scott.parrish@alliedelec.com				Y	Y	Y	Y	
126	Newark InOne	12631-FE. Imperial Hwy. Bldg. F136	Santa Fe Springs	CA	USA	90670		(800) 2-NEWARK (800-263-9275)	(562) 929-9722	(562) 864-7110	losangeles@newarkinone.com				Y	Y			
127	Newark InOne	9444 Waples St. Suite 480	San Diego	CA	USA	92121		T: (800) 2-NEWARK (800-263-9275)	T: (858) 453-8211	F: (858) 535-9883	sandiego@newarkinone.com				Y	Y			
128	Newark InOne	3600 West Bayshore Rd. Suite 104	Palo Alto	CA	USA	94303		(800) 2-NEWARK (800-263-9275)	(650) 812-6300	(650) 812-6333	sanfran@newarkinone.com				Y	Y			
129	Newark InOne	2020 Hurley Way Suite 310	Sacramento	CA	USA	95825		(800) 2-NEWARK (800-263-9275)	(916) 565-1760	(916) 565-1279	sacramento@newarkinone.com				Y	Y			
130	Newark InOne	550 St. Charles Dr. Suite 200	Thousand Oaks	CA	USA	91360		(800) 2-NEWARK (800-263-9275)	(805) 449-1480	(805) 449-1460	thousandoaks@newarkinone.com				Y	Y			
132	Allied Electronics<br>#03 ORANGE COUNTY	7777 Center Ave., Suite 540	Huntington Beach	CA	USA	92647	3063	(714) 379-2535		(714) 379-2536	irv$manager@alliedelec.com	www.alliedelec.com			Y	Y	Y	Y	N
134	Allied Electronics<br>#95 SACRAMENTO	590 Menlo Drive, Ste 8	Rocklin	CA	USA	95765	3705	(916) 435-9370		(916) 435-9380	sac$manager@alliedelec.com	www.alliedelec.com			Y	Y	Y	Y	N
135	Allied Electronics<br>#94 SAN DIEGO	15373 Innovation Drive, 3rd Floor, Suite 380	San Diego	CA	USA	92128	3426	(858) 385-0565		(858) 385-0566	san$manager@alliedelec.com	www.alliedelec.com			Y	Y	Y	Y	N
136	Allied Electronics<br>#78 Simi Valley	40 West Cochran, Suite 108	Simi Valley	CA	USA	93065	6244	(805) 306-0336		(805) 306-0048	cha$manager@alliedelec.com	www.alliedelec.com			Y	Y	Y	Y	N
142	Fuses Unlimited	9248 Eaton Avenue	Chatsworth	CA	USA	91311		818-786-8111		818-786-8222							Y		
143	Fuses Unlimited	44790 S. Grimmer Blvd, Suite #101	Fremont	CA	USA	94538		(510) 651-8911	(800) 255-1919	(510) 651-9011	fremont@fusesunlimited.com						Y		
144	Electro Alliance	1500 Lana Way	Hollister	CA	USA	95023		831-635-1390		831-635-1395	duane@electroalliance.com, mark@electroalliance.com, chris@electronalliance.com				Y	Y			
145	HDB Electronics	2860 Spring Street	Redwood City	CA	USA	94063		650-368-1388		415-368-1347	hdbelect@ix.netcom.com						Y		
146	Kensington Electronics	75 Argonaut	Aliso Viejo	CA	USA	92656		714-588-0375		714-588-0176	sales@keiconn.com				Y	Y	Y		
147	Rose Electronics	2030 Ringwood Ave.	San Jose	CA	USA	95131		408-943-0200		408-943-0360	sales@rose-elec.com				Y	Y	Y		
148	Walker Component Group / IEC	9940 Business Park Drive Suite 190	Sacramento	CA	USA	95827		916-363-6030	877-274-3442	916-362-6926	sacsales@wcg-iec.com				Y	Y	Y		
149	Walker Component Group / IEC	25691 Atlantic Ocean Drive Bldg B Suite 18	Lake Forest	CA	USA	92630		949-597-2081	877-274-3442	949-581-5338	irvsales@wcg-iec.com				Y	Y	Y		
150	Powell Electronics<br>Northern California Region	1900 McCarthy Blvd, Suite 107	Milpitas	CA	USA	95035		408.943.9020		408.943.0337	bwilliams@powell.com	www.powell.com	Bob Williams	Branch Manager (acting)	Y	Y	Y	Y	N
151	Powell Electronics<br>Southern California Region	10330 Pioneer Blvd. Suite 270	Santa Fe Springs	CA	USA	90670		562-906-7755		562-906-7712	bwilliams@powell.com	www.powell.com	Bob Williams	VP Western Region	Y	Y	Y	Y	N
152	Newark InOne	10200 Innovation Dr. Suite 550	Milwaukee,	WI	USA	53226	1403	(800) 2-NEWARK (800-263-9275)	(414) 453-9100	(414) 453-2238	milwaukee@newarkinone.com				Y	Y			
153	Allied Electronics<br>#62 MILWAUKEE	2448 South 102nd St., Ste 150	West Allis,	WI	USA	53227		(414) 543-3372		(414) 543-3272					Y	Y	Y	Y	
158	Allied Electronics<BR>#5	4924 Sailwind Dr.	Fort Worth	TX	USA	76135		817-999-9900				www.alliedelec.com							
159	Allied Electronics<BR>#5	3921 Rochester Dr.	Keller	TX	USA	76248		817-750-2398		817-750-2397		www.alliedelec.com			Y	Y	Y	Y	
160	Allied Electronics <BR>#6	1651 N. Collins, Suite 230	Richardson	TX	USA	78080		214-341-8444		214-341-6622		www.alliedelec.com			Y	Y	Y	Y	
161	Allied Electronics<BR>#92	4835 University Square, Suite 12	Huntsville	AL	USA	74146		918-627-9220		918-627-9409		www.alliedelec.com			Y	Y	Y	Y	
162	 ALLIED ELECTRONICS <br>#75	3737 EXECUTIVE CENTER DR., #230	AUSTIN	TX	USA	78731		512-219-7171		512-219-7701	WWW.ALLIEDELEC.COM				Y	Y	Y	Y	
163	Allied Electronics <BR>#85	9810 East 42nd St., Ste 130	Tulsa	OK	USA	74146		918-627-9220		918-627-9409	www.allliedelec.com				Y	Y	Y		
164	Allied Electronics <BR>#98	1921 S. Alma School Rd., Ste 210	Mesa	AZ	USA	85210		480-831-2002		480-831-2411	www.alliedelec.com				Y	Y	Y		
\.


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notes (notes_id, order_id, note_date, note_time, details, role) FROM stdin;
\.


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY order_details (orderid, product_id, product_name, orderprice, firstname, lastname, company, address1, address2, city, state, country, zip, phone, fax, email, cardholder, ccnumber, cctype, expirymonth, expiryyear, status, shippingnumber, shippingmethod, shippingpriority, shippingcarrier, auth_status, auth_by, auth_date, auth_time, note, sn_flag, fld_date, fld_time, project, eau, production_start, decision_maker, decision_title, prototype_date, buying_criteria, target_price, how_did, competition1, competition2, competition3, competition4, product_line) FROM stdin;
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf) FROM stdin;
\.


--
-- Data for Name: product_displays_intchar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_displays_intchar (product_id, product_name, product_line, item_type, news, lcd, lines, character_size, viewing, outline, driving, backlight, built, product_price, product_sh, pdf, sort) FROM stdin;
1	AND671GST	AND Displays	STN, FSTN, BST	N		1 x 16	3.07 x 6.56	64.5 x 13.8	80 x 36 x 11.3	5	-	HD44780	0	0	AND671GST.pdf	10
2	AND671GST-LED	AND Displays	STN, FSTN, BST	N		1 x 16	3.07 x 6.56	64.5 x 13.8	80 x 36 x 16	5	LED	HD44780	0	0	AND671GST.pdf	11
3	AND471GST	AND Displays	STN, FSTN, BST	N		2 x 16	4.84 x 9.66	99 x 24	122 x 44 x 11.3	5	-	HD44780	0	0	AND471GST.pdf	13
4	AND471GST-LED	AND Displays	STN, FSTN, BST	Y		2 x 16	4.84 x 9 .66	99 x 24	122 x 44 x 13	5	LED	HD44780	0	0	AND471GST-LED.pdf	14
5	AND481GST	AND Displays	Alphanumeric LCDs	N		2 x 16	2.78 x 4.89	62 x 16	85 x 30 x 10.0	5	-	HD44780	0	0	AND481GST.pdf	16
6	AND481GST-LED	AND Displays	STN, FSTN, BST	N		2 x 16	2.78 x 4.89	62 x 16	85 x 30 x 15.8	5	LED	HD44780	0	0	AND481GST.pdf	17
7	AND491GST	AND Displays	STN, FSTN, BST	N		2 x 16	2.95 x 4.35	64.5 x 13.8	80 x 36 x 11.3	5	-	HD44780	0	0	AND491GST.pdf	18
8	AND491GST-LED	AND Displays	STN, FSTN, BST	Y	STN Super Twist	2 x 16	2.95 x 4.35	64.5 x 13.8	80 x 36 x 15.8	5	LED	HD44780	0	0	AND491GST-LED.pdf	19
9	AND731GST	AND Displays	STN, FSTN, BST	N		4 x 16	2.95 x 4.75	62 x 25.6	87 x 60 x 8.8	5	-	HD44780	0	0	AND731GST.pdf	21
10	AND731GST-LED	AND Displays	STN, FSTN, BST	N		4 x 16	2.95 x 4.75	62 x 25.6	87 x 60 x 12.7	5	LED	HD44780	0	0	AND731GST.pdf	22
11	AND501GST	AND Displays	STN, FSTN, BST	N		2 x 20	3.2 x 5.55	83 x 18.6	116 x 37 x 11.3	5	-	HD44780	0	0	AND501GST.pdf	23
12	AND501GST-LED	AND Displays	STN, FSTN, BST	N		2 x 20	3.2 x 5.55	83 x 18.6	116 x 37 x 15.8	5	LED	HD44780	0	0	AND501GST.pdf	24
13	AND501WGST	AND Displays	STN, FSTN, BST	N		2 x 20	3.2 x 5.55	83 x 18.6	116 x 37 x 15.8	5	LED	HD44780	0	0	AND501WGST.pdf	25
14	AND501WGST-LED	AND Displays	STN, FSTN, BST	N		2 x 20	3.2 x 5.55	83 x 18.6	116 x 37 x 15.8	5	LED	HD44780	0	0	AND501WGST.pdf	26
15	AND721GST	AND Displays	STN, FSTN, BST	N		4 x 20	2.95 x 4.75	76 x 25.2	98 x 60 x 12	5	-	HD44780	0	0	AND721GST.pdf	27
16	AND721GST-LED	AND Displays	STN, FSTN, BST	N		4 x 20	2.95 x 4.75	76 x 25.2	98 x 60 x 16	5	LED	HD44780	0	0	AND721GST.pdf	28
17	AND771GST	AND Displays	STN, FSTN, BST	N		2 x 24	3.2 x 5.50	94.5 x 17.8	118 x 36 x 11.3	5	-	HD44780	0	0	AND771GST.pdf	29
18	AND771GST-LED	AND Displays	STN, FSTN, BST	N		2 x 24	3.2 x 5.50	94.5 x 17.8	118 x 36 x 15.8	5	LED	HD44780	0	0	AND771GST.PDF	30
19	AND591GST	AND Displays	STN, FSTN, BST	N		2 x 40	3.2 x 5.55	154 x 15.3	182 x 33.5 x 8.8	5	-	HD44780	0	0	AND591GST.pdf	31
20	AND591GST-LED	AND Displays	STN, FSTN, BST	N		2 x 40	3.2 x 5.55	154 x 15.3	182 x 33.5 x 12.7	5	LED	HD44780	0	0	AND591GST.pdf	32
21	AND791GST	AND Displays	STN, FSTN, BST	N		4 x 40	2.78 x 4.89	149 x 29.5	190 x 54 x 8.8	5	-	HD44780	32	10	AND791GST.pdf	33
22	AND791GST-LED	AND Displays	STN, FSTN, BST	N		4 x 40	2.78 x 4.89	149 x 29.5	190 x 54 x 13.0	5	LED	HD44780	42	10	AND791GST.pdf	34
23	AND081GST	AND Displays	STN, FSTN, BST	Y		1 x 8	4.45 x 8.35	48.0 x 13.0	60 x 36 x 10	5	–	HD44780	0	0	AND081GST-LED.pdf	5
24	AND081GST-LED	AND Displays	STN, FSTN, BST	Y		1 x 8	4.45 x 8.35	48.0 x 13.0	60 x 36 x 13	5	LED	HD44780	0	0	AND081GST-LED.pdf	6
25	AND082GST	AND Displays	STN, FSTN, BST	Y		2 x 8	2.96 x 5.56	38.0 x 16.0	58 x 32 x 8.4	5	–	HD44780	0	0	AND082GST-LED.pdf	7
26	AND082GST-LED	AND Displays		Y		2 x 8	2.96 x 5.56	38.0 x 16.0	58 x 32 x 12.8	5	LED	HD44780	0	0	AND082GST-LED.pdf	9
27	AND491GST3-3V-W-LED	AND Displays		Y	STN	2 x 16	2.95 x 4.35	65.0 x 16.0	80.0 x 36.0 x 8.8	3.3	LED	ST7066U			AND491GST3-3V-W-LED.pdf	20
28	AND671WGST-LED	AND Displays		Y	STN Positive	1 x 16	3.07 x 6.56	85.0 x 16.0	80.0 x 36.0 x 8.8	3.3	White LED	ST7066U			AND671WGST-LED.pdf	12
39	AND000802A-OLED	AND Displays	OLED	Y		2x8		38.0 x 16.0	58.0 x 32.0 x 10	5V, option 3V	OLED	WS0010				35
40	AND001601A-OLED	AND Displays	OLED	Y		1 x 16		66.0 x 16.0	80.0 x 36.0 x 10.0	5V, option 3V	OLED	WS0010				36
41	AND001602B-OLED	AND Displays	OLED	Y		2 x 16		99.0 x 24.0	122.0 x 44.0 x 10.0	5V, option 3V	OLED	WS0010				37
42	AND001602D-OLED	AND Displays	OLED	Y		2 x 16		66.0 x 16.0	85.0 x 30.0 x 10	5V, option 3V	OLED	WS0010				38
43	AND001602A-OLED	AND Displays	OLED	Y		2 x 16		66.0 x 16.0	80.0 x 36.0 x 10.0	5V, option 3V	OLED	WS0010				39
44	AND002002A-OLED	AND Displays	OLED	Y		2 x 20		85.0 x 18.6	116.0 x 37.0 x 9.8	5V, option 3V	OLED	WS0010				40
45	AND002004A-OLED	AND Displays	OLED	Y		4 x 20		77.0 x 25.2	98.0 x 60.0 x 10.0	5V, option 3V	OLED	WS0010				41
46	AND004002A-OLED	AND Displays	OLED	Y		2 x 40		154.4 x 16.5	182.0 x 33.5 x 9.3	5V, option 3V	OLED	WS0010				42
47	AND082GST-LED	AND Displays	STN, FSTN, BST	Y	STN Super Twist	2 x 8	2.96 x 5.56	38.0 x 16.0	58 x 32 x 8.4	5	LED	KS0066	0	0	AND082GST-LED.pdf	8
\.


--
-- Data for Name: product_displays_intgraph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_displays_intgraph (product_id, product_name, product_line, news, item_type, pixel, pixel_pitch, viewing, overall, driving, built, backlight_30, backlight_el, contrast, product_price, product_sh, pdf, sort) FROM stdin;
28	AND1743MST-LED	AND Displays	Y	STN, FSTN, BST	240 x 64	0.50 x 0.50	132 x 76	170 x 95 x 14	+5	T6963C	6:1	LED				AND1743MST-LED.pdf	13
21	AND1264WGST-LED	AND Displays	Y	STN, FSTN, BST	128 x 64	0.52 x 0.52	72.0 x 40.0	87 x 70 x 12.7	+5	T6963C	LED		7:1	call	10	AND1264WGST-LED.pdf	2
29	AND1742MST2	AND Displays	N	STN, FSTN, BST	240 x 128	0.51 x 0.51	134 x 76	180 x 110 x 15.1	+5	RAIO	6:1	CCFL				AND1742MST2.pdf	15
23	AND3222MST2-LEDW	AND Displays	Y	STN, FSTN, BST	320 x 240	0.36 X 0.36	120.14 x 92.14	148 x 120 x 20.5	+5	SID1335	LED		6:1	120	10	AND3222MST-LEDW.pdf	17
26	AND1781BST-LED	AND Displays	Y	STN, FSTN, BST	240 x 64	0.53 x 0.53	130 x 40.4	180 x 65 x 9.7	+5	T6963C	12:1	LED		177	10	AND1781BST-LED.pdf	8
48	AND1743BST-LED	AND Displays	Y	STN, FSTN, BST	240 x 128	0.50 x 0.50	132 x 76	170.0 x 95.0 x 14.0	+5	T6963C	6:1	LED				AND1743BST-LED.pdf	12
8	AND1391ST	AND Displays	N	STN, FSTN, BST	128 x 128	0.43 x 0.43	62 x 62	84.4 x 100 x 14	+5/-14.5	T6963C	-	-	4:1	109	10	AND1391ST.pdf	3
32	AND005016A-OLED	AND Displays	Y		50 x 16	0.70 x 0.60	38.0 x 16.0	58.0 x 32.0 x 10	5V, option 3V	WS0010		OLED					24
33	AND010008A-OLED	AND Displays	Y		100 x 8	0.80 x 0.60	66.0 x 16.0	80.0 x 36.0 x 10.0	5V, option 3V	WS0010			OLED				25
11	AND711AST-EO	AND Displays	N	STN, FSTN, BST	240 x 64	0.53 x 0.53	132 x 39	180 x 65 x 12	+5/-8.5	T6963C	-	EL	4:1	117	10	AND711.pdf	6
12	AND711AST-30	AND Displays	N	STN, FSTN, BST	240 x 64	0.53 x 0.53	132 x 39	180 x 65 x 12	+5/-8.5	T6963C	-	-	4:1	97	10	AND711.pdf	5
13	AND1781BST	AND Displays	N	STN, FSTN, BST	240 x 64	0.53 x 0.53	127.2 x 33.9	180 x 70 x 14	+5/-12.2	T6963C	CCFL	CCFL	6:1	155	10	AND1781.pdf	7
14	AND1781MST-LED	AND Displays	Y	STN, FSTN, BST	240 x 64	0.53 x 0.53	134 x 40.4	180 x 65 x 9.7	+5	T6963C	LED	LED	12:1	177	10	AND1781MST-LED.pdf	10
30	AND1013ST-EO2	AND Displays	Y	STN, FSTN, BST	160 x 128	0.6 x 0.6	101.0 x 82.0	129.0 x 104.5 x 14.0	5	T6963C	4:1	-	EL			AND1013ST-EO2.pdf	4
34	AND010016B-OLED	AND Displays	Y		100 x 16	1.12 x 0.96	99.0 x 24.0	122.0 x 44.0 x 10.0	5V, option 3V	WS0010			OLED				26
25	AND1743FST-LED	AND Displays	Y	STN, FSTN, BST	240 x 128	0.50 x 0.50	132.0 x 76.0	170.0 x 95.0 x 14.0	5	T6963C		LED	6:1	114	10	AND1743FST-LED.pdf	14
37	AND005016A-OLED	AND Displays	Y	OLED	50 x 16	0.70 x 0.60	38.0 x 16.0	58.0 x 32.0 x 10.0	5V, option 3V	WS0010			OLED				18
19	AND3222MST2	AND Displays	Y	STN, FSTN, BST	320 X 240	0.36 X 0.36	120 X 92	148 X 120 X 20.5	+5/-22.0	SED1330	CCFL	CCFL	6:1	187	10	AND3222MST2.pdf	16
38	AND010008A-OLED	AND Displays	Y	OLED	100 x 8	0.80 x 0.60	66.0 x 16.0	80.0 x 36.0 x 10.0	5V, option 3V	WS0010			OLED				19
39	AND010016B-OLED	AND Displays	Y	OLED	100 x 16	1.12 x 0.96	99.0 x 24.0	122.0 x 44.0 x 10.0	5V, option 3V	WS0010			OLED				20
40	AND010016D-OLED	AND Displays	Y	OLED	100 x 16	0.70 x 0.60	66.0 x 16.0	85.0 x 30.0 x 10.0	5V, option 3V	WS0010			OLED				21
41	AND010016A-OLED	AND Displays	Y	OLED	100 x 16	0.70 x 0.60	66.0 x 16.0	80.0 x 36.0 x 10.0	5V, option 3V	WS0010			OLED				22
42	AND010016F-OLED	AND Displays	Y	OLED	100 x 16	0.70 x 0.65	85.0 x 18.60	116.0 x 37.0 x 9.8	5V, option 3V	WS0010			OLED				1
43	AND010032A-OLED	AND Displays	Y	OLED	100 x 32	0.60 x 0.59	77.0 x 25.2	98.0 x 60.0 x 10.0	5V, option 3V	WS0010			OLED				23
46	AND1781STN-LED	AND Displays	Y	STN, FSTN, BST	160 x 128	0.53 x 0.53	134 x 40.4	180 x 65 x 9.7	5	T6963C	5		LED			AND1781STN-LED.pdf	11
47	AND1781FST-LED	AND Displays	Y	STN, FSTN, BST	240 x 64	0.53 x 0.53	133.0 x 39.0	180 x 65 x 12.3	5	T6963C	5		LED			AND1781FST-LED.pdf	9
\.


--
-- Data for Name: product_displays_prototyping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_displays_prototyping (product_id, product_name, news, product_line, item_type, description, product_price, product_sh, pdf, sort) FROM stdin;
23	AND-TFT-5VX-4HB-KIT	Y	AND Displays		5" VGA TFT color lCD monitor with 1,000 nit CCFL backlight -- NTSC plug-and-play prototyping kit with control circuitry, DC/AC inverter, 12VDC power supply & cabling	499	10	AND-TFT-5VX-4HB-KIT.pdf	9
30	AND-TFT35VX-UHB-LED-KIT	Y	AND Displays		3.5" VGA TFT color LCD monitor with 1,000 nit LED backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	299	10.00		5
4	AND-TFT-35XS-LED-KIT	N	AND Displays	Prototyping Kits	3.5" QVGA TFT color LCD monitor with 250 nit LED backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	188	10	AND-TFT-35XS-LED-KIT.pdf	3
32	ANDpSi089C362S-4HB-KIT	Y	AND Displays		8.9" wide SVGA pSi TFT color LCD panel with 1,000 nit CCFL backlight -- LVDS plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling.	902	10		19
33	AND-TFT-43LP-KIT	Y	AND Displays		4.3" VGA TFT color LCD monitor with 500 nit LED backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling			AND-TFT-43LP-KIT.pdf	6
7	AND-TFT-64PA-KIT	n	AND Displays	Prototyping Kits	6.4" QVGA TFT color LCD monitor with 330 nit CCFL backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	280	10	AND-TFT-64PA-KIT.pdf	12
25	ANDpSi020TD-LED-KIT	Y	AND Displays		2.0" QVGA pSi TFT color LCD monitor with 250 nit LED backlight -- NTSC / PAL plug-and-play prototyping kit with control circuitry, 12VDC power supply & cabling	125	10	ANDpSi020TD-LED-KIT.pdf	1
37	AND064VT8-HB-KIT	Y	AND Displays		6.4" QVGA TFT color LCD monitor with 400 nit CCFL backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling 			AND064VT8-HB-LED-KIT.pdf	13
10	ANDpSi056ET0S-HB-KIT	N	AND Displays	Prototyping Kits	5.6" WSVGA pSi TFT color LCD panel with 250 nit CCFL backlight -- digital plug-and-play prototyping kit with control ciruitry, inverter, 12VDC power supply & cabling	962	10	ANDpSi056ET0S-HB-KIT.pdf	10
21	AND-TFT-35VX-KIT	Y	AND Displays		3.5" VGA TFT color LCD monitor with 210 nit LED backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	185	10	AND-TFT-35VX-KIT.pdf	4
12	ANDpSi08C351-HB-KIT	N	AND Displays	Prototyping Kits	8.4" SVGA pSi TFT color LCD panel with 350 nit CCFL backlight -- digital plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	842	10	AND08C351-HB-KIT.pdf	16
22	AND-TFT-5VX-KIT	Y	AND Displays		5" VGA TFT color LCD monitor with 400 nit CCFL backlight -- NTSC plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	285	10	AND-TFT-5VX-KIT.pdf	7
28	AND050VL-LED-KIT	Y	AND Displays		5.0" TFT color LCD monitor or panel with 350 nit LED backlight -- plug-and-play prototyping kit with control circuitry, 12VDC power supply & cabling.	250	10	AND050VL-LED-KIT.pdf	8
27	AND-TFT-25XS-LED-KIT	Y	AND Displays		2.5" TFT color LCD monitor with 250 nit LED backlight -- NTSC & PAL plug-and-play prototyping kit with control circuitry, 12VDC power supply & cabling	125	10	AND-TFT-25XS-LED-KIT.pdf	2
29	ANDpSi089C362S-KIT	Y	AND Displays		8.9" wide SVGA pSi TFT color LCD panel with 250 nit CCFL backlight -- LVDS plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling.	726	10	ANDpSi089C362S-KIT.pdf	18
18	AND12C285-DHB-KIT	N	AND Displays	Prototyping Kits	12.1" SVGA TFT color LCD panel with 500 nit CCFL backlight -- digital plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	906	10	AND12C285-DHB-KIT.pdf	20
34	AND-TFT-56LP-KIT	Y	AND Displays		5.6" TFT color LCD panel with 350 nit CCFL backlight -- digital plug-and-play prototyping kit with control ciruitry, inverter, 12VDC power supply & cabling 			AND-TFT-56LP-KIT.pdf	11
20	ANDpSi121C250F-HB-KIT	Y	AND Displays	Prototyping Kits	12.1" XGA pSi TFT color LCD panel with 400 nit CCFL backlight -- LVDS plug-and-play prototyping kit with control circuitry, inverter, 12VDC power supply & cabling	925	10	ANDpSi121GAOS-HB-KIT.pdf	21
35	AND-TFT-7LP-KIT	Y	AND Displays		7.0" TFT color LCD panel with 250 nit CCFL backlight -- digital plug-and-play prototyping kit with control ciruitry, inverter, 12VDC power supply & cabling 			AND-TFT-7LP-KIT.pdf	14
36	AND-TFT-8LP-KIT	Y	AND Displays		8.0" TFT color LCD panel with 450 nit CCFL backlight -- digital plug-and-play prototyping kit with control ciruitry, inverter, 12VDC power supply & cabling 			AND-TFT-8LP-KIT.pdf	15
\.


--
-- Data for Name: product_displays_segment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_displays_segment (product_id, product_name, news, product_line, item_type, display, digit, package, product_price, product_sh, pdf, sort) FROM stdin;
1	FE1901	N	AND Displays	Seven Segment Displays	FE-01.jpg	0.5	1.1 x 1.2	0	0	FE1901.pdf	1
2	FE0201	N	AND Displays	Seven Segment Displays	FE-02.jpg	0.5	2.0 x 1.2	0	0	FE0201.pdf	2
3	FE0203	N	AND Displays	Seven Segment Displays	FE-03.jpg	0.5	2.0 x 1.2	0	0	FE0203.pdf	3
4	FE0202	N	AND Displays	Seven Segment Displays	FE-04.jpg	0.5	2.0 x 1.2	0	0	FE0202.pdf	4
5	FE0502	N	AND Displays	Seven Segment Displays	FE-04.jpg	0.7	2.75 x 1.5	0	0	FE0502.pdf	6
6	FE0206	N	AND Displays	Seven Segment Displays	FE-05.jpg	0.5	2.0 x 1.2	0	0	FE0206.pdf	7
7	FE0208	N	AND Displays	Seven Segment Displays	FE-06.jpg	0.4	2.0 x 1.2	0	0	FE0208.pdf	8
8	FE0401	N	AND Displays	Seven Segment Displays	FE-07.jpg	0.5	2.75 x 1.2	0	10	FE0401.pdf	9
9	FE0601	N	AND Displays	Seven Segment Displays	FE-07.jpg	0.7	3.7 x 1.2	0	0	FE0601.pdf	10
10	FE1001	N	AND Displays	Seven Segment Displays	FE-08.jpg	0.5	3.7 x 1.2	0	0	FE1001.pdf	11
11	FE0501W	Y	AND Displays		FE-02.jpg	0.7	2.75 x 1.5				5
\.


--
-- Data for Name: product_displays_tftmodules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_displays_tftmodules (product_id, product_name, product_line, news, item_type, screen, pixel, brightness, pixel_pitch, active, overall, driving, input_signal, product_price, product_sh, pdf, sort) FROM stdin;
25	ANDpSi089C362S	AND Displays	Y	Poly-Silicon Color TFT Displays	8.9	1024 x 600	250	0.1905 x 0.1890	195.07 x 113.40	219.5 x 134.5 x 5.2	3.3	LVDS 6-bit interface	574	10	ANDpSi089C362S.pdf	8
38	ANDpSi121C250F-HB	AND Displays	Y	Poly-Silicon Color TFT Displays	12.1	1024 x 768	400	0.24 x 0.24	246.7 x 184.32	278.3 x 209 x 12	3.3	LVDS 6-bit interface				14
3	ANDpSi056ET0S-HB	AND Diplays	N	Poly-Silicon Color TFT Displays	5.6	1024 x 600	250	0.120 x 0.120	122.88 x 72	141.8 x 84.4 x 7.5	3.3	LVDS 6-bit interface	499	10	ANDpSi056ET1S-HB.pdf	4
39	AND-TFT-35VX-UHB-TS	AND Displays	Y	Poly-Silicon Color TFT Displays	3.5	640 x 480	1,300	0.1125 x 0.1095	72.0 x 52.56	84.25 x 65.4 x 4.55	5.0	Digital 6-bit interface			AND-TFT-35VX-UHB-TS.pdf	2
5	ANDpSi08C351-HB	AND Diplays	N	Poly-Silicon Color TFT Displays	8.4	800 x 600	350	0.213 x 0.213	170.4 x 127.8	200 x 150 x 12	3.3	Digital 6-bit interface	437	10	ANDpSi08C351-HB.pdf	7
41	AND104X02-HB	AND Displays	Y	Poly-Silicon Color TFT Displays	10.4	1024 x 768	340	0.2055 x 0.2055	210.43 x 157.8	238.6 x 173.2 x 4.3	3.3	LVDS 6-bit interface			AND104X02-HB.pdf	10
12	AND065A041F-HB2	AND Diplays	N	Poly-Silicon Color TFT Displays	6.5	640 x 480	400	0.207 x 0.207	132.48 x 99.36	153 x 118 x 11	3.3	Digital 6-bit interface	526	10	AND065A041F-HB2.pdf	6
35	AND035VX-UHB-LED	AND Displays	Y	Poly-Silicon Color TFT Displays	3.5	640 x 480	1,300 or 50+/-	0.1125 x 0.1095	72.0 x 52.56	84.25 x 65.4 x 3.45	5.0	Digital 6-bit interface	199	10	AND035VX-UHB-LED.pdf	1
37	ANDpSi064VT-HB-LED	AND Displays	Y	Poly-Silicon Color TFT Displays	6.4	640x 480	400	0.203 x 0.203	129.6 x 97.44	175.4 x 126.9 x 12.5	5.0	LVDS 6-bit interface			AND064VT8-HB-LED.pdf	5
17	AND12C285-DHB	AND Diplays	n	Amorphous-Silicon Color TFT Displaysys	12.1	800 x 600	500	0.3075 x 0.3075	246.0 x 184.5	290 x 220 x 15	5	Digital 6-bit interface	488	10	AND12C285-DHB.pdf	11
18	AND12C285-4HB	AND Diplays	N	Poly-Silicon Color TFT Displays	12.1	800 x 600	850	0.3075 x 0.3075	246.0 x 184.5	290 x 220 x 17	5.0	Digital 6-bit interface	651	10	AND12C285-4HB.pdf	12
19	AND12C285-DHB		N	Poly-Silicon Color TFT Displays	12.1	800 x 600	500	0.3075 x 0.3075	246.0 x 184.5	290 x 220 x 15	5.0	Digital 6-bit interface	451	10	AND12C285-4HB.pdf	11
23	AND050VL-LED	AND Displays	Y	Poly-Silicon Color TFT Displays	5.0	640 x 480	450	0.159 x 0.156	101.76 x 74.88	120.7 x 92.8 x 12.5	5.0	LVDS 6-bit interface	206	10	AND050VL-LED.pdf	3
24	ANDpSi089C362S-4HB	AND Displays	Y	Poly-Silicon Color TFT Displays	8.9	1024 x 600	800	0.1605 x 0.1890	195.07 x 113.40	219.5 x 134.5 x 8.4	3.3	LVDS 6-bit interface	749	10	ANDpSi089C362S-4HB.pdf	9
\.


--
-- Data for Name: product_displays_tftmonitors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_displays_tftmonitors (product_id, product_name, product_line, news, item_type, screen, pixel, brightness, pixel_pitch, active, overall, driving, input_signal, product_price, product_sh, pdf, sort) FROM stdin;
62	AND-TFT-43LP	AND Displays	Y	TFT Monitor	4.3	480 x 272	500	0.198 x 0.198	95.04 x 53.856	105.5 x 67.2 x 2.9	12.0	VGA, NTSC, PAL			AND-TFT-43LP.pdf	8
43	PC-TFT-25XS	AND Displays	Y	TFT Monitor Interface Board	2.5	160 x 234	250	0.1025 x 0.163	49.68 x 37.44	60.6 x 48.4 x 3.45	12.0	NTSC, PAL 	42	10	PC-TFT-25XS.pdf	21
61	AND-TFT-7LP	AND Displays	Y	TFT Monitor	7.0	800 x 480	250	0.1905 x 0.1905	152.4 x 91.44	165 x 104 x 6.2	12.0	NTSC/PAL			AND-TFT-7LP.pdf	18
63	AND-TFT-56LP	AND Displays	Y	TFT Monitor	5.6	640 x 480	350	0.1764 x 0.1764	112.896 x 84.672	126.5 x 100 x 5.7	12	VGA, NTSC, PAL			AND-TFT-56LP.pdf	15
64	AND-TFT_8LP	AND Displays	Y	TFT Monitor	8	800 x 480	450	0.2208 x 0.2070	176.64 x 99.36	192.8 x 116.9 x 6.4	12.0	VGA, NTSC, PAL			AND-TFT-8LP-.pdf	19
6	AND-TFT-5PA 	AND Displays	N	TFT Monitor	5.0	320 x 234	400	0.107 x 0.319	102.7 x 74.5	127 x 93 x 13	12.0*	NTSC/PAL	113	10	AND-TFT-5PA.PDF	11
7	AND-TFT-5PA-DHB 	AND Displays	N	TFT Monitor	5.0	320 x 234	500	0.32 x 0.32	102.7 x 74.5	127 x 93 x 13	12.0*	NTSC/PAL	246	10	AND-TFT-5PA.pdf	12
65	AND-TFT-5LP	AND Displays	Y	TFT Monitor	5.0	640 x 480	200	0.1587 x 0.1587	101.6 x 76.2	132.7 x 90.2 x 23.1	12.0*	NTSC/PAL/SECAM			AND-TFT-5LP.pdf	10
36	AND-TFT-5VX-4HB	AND Displays	Y	TFT Monitor	5.0	640 x 480	1,000	0.156 x 0.159	74.88 x 101.76	91.4 x 119.3 x 7.9	12.0	VGA, NTSC, PAL 	392	10	AND-TFT-5VX-4HB.pdf	14
10	AND-TFT-64PA 	AND Displays	N	TFT Monitor	6.4	320 x 234	330	0.135 x 0.416	129.6 x 97.3	156.3 x 120 x 14.3	12.0*	NTSC/PAL	172	10	AND-TFT-64PA.pdf	16
11	AND-TFT-64PA-DHB 	AND Displays	N	TFT Monitor	6.4	320 x 234	500	0.135 x 0.416	129.6 x 97.3	156.3 x 120 x 14.3	12.0*	NTSC/PAL	266	10	AND-TFT-64PA-DHB.pdf	17
37	PC-TFT-5VX	AND Displays	Y	TFT Monitor Interface Board	5.0	640 x 480	400	0.156 x 0.159	74.88 x 101.76	91.4 x 119.3 x 7.9	12.0	VGA, NTSC, PAL 	68	10	PC-TFT-5VX.pdf	26
59	AND-TFT-35VX-UHB-LED	AND Displays	Y	TFT Monitor	3.5	640 x 480	1,300 or 50+/-	0.1125 x 0.1095	72.0 x 52.56	84.25 x 65.4 x 3.45	5.0	VGA, NTSC, PAL	199	10	AND-TFT-35VX-UHB-LED.pdf	5
60	PC-TFT-050VL-LED	AND Displays	Y	TFT Monitor Interface Board	5.0	640 x 480	450	0.159 x 0.156	101.76 x 74.88	120.7 x 92.8 x 12.5	12.0	VGA, NTSC, PAL	$88	$10	PC-TFT-050VL-LED.pdf	25
66	AND-TFT-5LA	AND Displays	Y	TFT Monitor	5.0	640 x 480	260	0.135 x 0.135	108 x 64.8	120.7 x 75.75 x 3.1	3.3	NTSC/PAL/SECAM			AND-TFT-5LA.pdf	9
16	PC-TFT-5PA	AND Displays	N	TFT Monitor Interface Board	5.0	320 x 234	400	0.107 x 0.319	102.7 x 74.5	127 x 93 x 13	12.0*	NTSC/PAL	51	10	PC-TFT-5PA.pdf	24
31	AND-TFT-35VX	AND Displays	N	TFT Monitor	3.5	640 x 480	210	0.1125 x 0.1095	72 x 52.56	84.25 x 65.40 x 3.45	5.0	 VGA, NTSC, PAL 	124	10	AND-TFT-35VX.pdf	6
18	PC-TFT-64PA	AND Displays	N	TFT Monitor Interface Board	6.4	320 x 234	330	0.135 x 0.416	129.6 x 97.3	156.3 x 120 x 14.3	12.0*	NTSC/PAL	51	10	PC-TFT-64PA.pdf	27
39	AND-TFT-35XS-LED	AND Displays	Y	TFT Monitor	3.5	320 x 234	250	0.074 x 0.225	71.6 x 52.65	83.5 x 63.1 x 3.6	12.0	NTSC, PAL 	62	10	AND-TFT-35XS-LED.pdf	7
32	AND-TFT-5VX	AND Displays	N	TFT Monitor	5.0	640 x 480	400	0.156 x 0.159	74.88 x 101.76	91.4 x 119.3 x 7.9	12.0	VGA, NTSC, PAL 	224	10	AND-TFT-5VX.pdf	13
33	PC-TFT-35VX	AND Displays	N	TFT Monitor Interface Board	3.5	640 x 480	210	0.1125 x 0.1095	72 x 52.56	84.25 x 65.40 x 3.45	5.0	VGA, NTSC, PAL	84	10	PC-TFT-35VX.pdf	22
40	PC-TFT-35XS	AND Displays	Y	TFT Monitor Interface Board	3.5	320 x 234	250	0.074 x 0.225	71.6 x 52.65	83.5 x 63.1 x 3.6	12.0	NTSC, PAL 	47	10	PC-TFT-35XS.pdf	23
41	ANDpSi020TD-LED	AND Displays	Y	TFT Monitor	2.0	320 x 240	250	0.053 x x0.159	40.672 x 30.48	46.1 x 40.96 x 2.53	12.0	NTSC, PAL	47	10	ANDpSi020TD-LED.pdf	1
42	PC-TFT-20TD	AND Displays	Y	TFT Monitor Interface Board	2.0	320 x 240	250	0.053 x 0.159	40.672 x 30.48	46.1 x 40.96 x 2.53	12.0	NTSC, PAL	49	10	PC-TFT-20TD.pdf	20
44	AND-TFT-25XS-LED	AND Displays	Y	TFT Monitor	2.5	160 x 234	250	0.1025 x 0.163	49.68 x 37.44	60.6 x 48.4 x 3.45	12.0	NTSC, PAL	45	10	AND-TFT-25XS-LED.pdf	2
\.


--
-- Data for Name: product_fans_accessories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_fans_accessories (product_id, product_name, product_line, item_type, news, fan_compat, construction, product_price, product_sh, description, pdf, sort) FROM stdin;
1	5514	Interfan	Metal Finger guards	N	40 mm	Nickel chrome plated wire guards, spot welded	0	0		Finger_Guards.pdf	1
2	5516	Interfan	Metal Finger guards	N	60 mm	Nickel chrome plated wire guards, spot welded	0	0		Finger_Guards.pdf	2
3	5508	Interfan	Metal Finger guards	N	80 mm	Nickel chrome plated wire guards, spot welded	0	0		Finger_Guards.pdf	3
4	5520	Interfan	Metal Finger guards	N	92 mm	Nickel chrome plated wire guards, spot welded	0	0		Finger_Guards.pdf	4
5	5504	Interfan	Metal Finger guards	N	120 mm	Nickel chrome plated wire guards, spot welded	0	0		Finger_Guards.pdf	5
6	5506	Interfan	Metal Finger guards	N	162 mm	Nickel chrome plated wire guards, spot welded	0	0		Finger_Guards.pdf	6
7	60FGM	Interfan	Metal Filter guards	N	60 mm	Metal mesh filter	0	0		Filter_Guards.pdf	7
8	80FGM	Interfan	Metal Filter guards	N	80 mm	Metal mesh filter	0	0		Filter_Guards.pdf	8
9	92FGM	Interfan	Metal Filter guards	N	92 mm	Metal mesh filter	0	0		Filter_Guards.pdf	9
10	120FGM	Interfan	Metal Filter guards	N	120 mm	Metal mesh filter	0	0		Filter_Guards.pdf	10
11	162FGM	Interfan	Metal Filter guards	N	162 mm	Metal mesh filter	0	0		Filter_Guards.pdf	11
12	40FP-45	Interfan	Plastic Filter Guards	N	40 mm	Plastic filter and finger guard assembly (45PPI foam filter media)	0	0		Plastic_Filter_Guards.pdf	12
13	60FP-45	Interfan	Plastic Filter Guards	N	60 mm	Plastic filter and finger guard assembly (45PPI foam filter media)	0	0		Plastic_Filter_Guards.pdf	13
14	80FP-45	Interfan	Plastic Filter Guards	N	80 mm	Plastic filter and finger guard assembly (45PPI foam filter media)	0	0		Plastic_Filter_Guards.pdf	14
15	92FP-45	Interfan	Plastic Filter Guards	N	92 mm	Plastic filter and finger guard assembly (45PPI foam filter media)	0	0		Plastic_Filter_Guards.pdf	15
16	120FP-45	Interfan	Plastic Filter Guards	N	120 mm	Plastic filter and finger guard assembly (45PPI foam filter media)	0	0		Plastic_Filter_Guards.pdf	16
17	162FP-45	Interfan	Plastic Filter Guards	N	162 mm	Plastic filter and finger guard assembly (45PPI foam filter media)	0	0		Plastic_Filter_Guards.pdf	17
18	5505	Interfan	Power Cords	N	-	 24 in. (straight) plug and cord for terminal block; blunt cut ends	0	0		Cords.pdf	18
19	5505-45D	Interfan	Power Cords	N	-	24 (45) plug and cord for terminal block; blunt cut ends	0	0		Cords.pdf	19
\.


--
-- Data for Name: product_fans_axial_ac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_fans_axial_ac (product_id, product_name, product_line, item_type, news, frame, voltage, airflow, inputp, speed, noise, weight, construction, guard, product_price, product_sh, pdf, sort) FROM stdin;
1	PM033-115-8025B-4	Interfan	AC Fans	Y	80 x 80 x 25 (3.2 x 3.2 x 1.0)	115	33	10.0	2700	33	8	Aluminum housing,  plastic impeller,  ball sleeve bearing 22AWG wire leads	5508 80FP-45 5505	0	0	PM033.pdf	1
2	PM033-230-8025B-4	Interfan	AC Fans	Y	80 x 80 x 25 (3.2 x 3.2 x 1.0)	230	33	10.0	2700	33	8	Aluminum housing,  plastic impeller,  ball sleeve bearing 22AWG wire leads	5508<br>80FP-45<br> 5505	0	0	PM033.pdf	2
3	PM037-115-8038BT-4	Interfan	AC Fans	N	80 x 80 x 38 (3.2 x 3.2 x 1.5)	115	37	12.0	2700	39	10.3	Aluminum alloy housing,  plastic impeller,  sealed ball bearing,  terminal block	5508<br>80FP-45	0	0	PM037.pdf	3
4	PM037-230-8038BT-4	Interfan	AC Fans	N	80 x 80 x 38 (3.2 x 3.2 x 1.5)	230	37	12.0	2700	39	10.3	Aluminum alloy housing,  plastic impeller,  sealed ball bearing,  terminal block	5508<br>80FP-45	0	0	PM037.pdf	4
5	PM040-115-9225BT-4	Interfan	AC Fans	N	92 x 92 x 25 (3.6 x 3.6 x 1.0)	115	40	12.0	2400	39	8.0	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5508 92FP-45 5505	0	0	PM040-9225.pdf	5
6	PM040-230-9225BT-4	Interfan	AC Fans	N	92 x 92 x 25 (3.6 x 3.6 x 1.0)	230	40	12.0	2400	39	8.0	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5508 92FP-45 5505	0	0	PM040-9225.pdf	6
7	PM053-115-1225BT-4	Interfan	AC Fans	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	115	53	13.0	1900	38	11.8	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5504 5502 120FP-45 5505	0	0	PM053.pdf	7
8	PM053-230-1225BT-4	Interfan	AC Fans	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	230	53	13.0	1900	38	11.8	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5504 5502 120FP-45 5505	0	0	PM053.pdf	8
9	PM080-115-1225BT-4	Interfan	AC Fans	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	115	80	18.0	2300	45	11.8	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5504 5502 120FP-45 5505	0	0	PM080.pdf	9
10	PM080-230-1225BT-4	Interfan	AC Fans	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	230	80	18.0	2900	45	11.8	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5504 5502 120FP-45 5505	0	0	PM080.pdf	10
13	PM115-115-1238BT-4	Interfan	AC Fans	N	120 x 120 x 38 (4.7 x 4.7 x 1.5)	115	115	20.0	3000	49	18.2	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5504 5502 120FP-45 5505	0	0	PM115.pdf	11
14	PM115-230-1238BT-4	Interfan	AC Fans	N	120 x 120 x 38 (4.7 x 4.7 x 1.5)	230	115	20.0	3000	49	18.2	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5504 5502 120FP-45 5505	0	0	PM115.pdf	12
17	PM238-115-1751BT-4	Interfan	AC Fans	N	172 x 150 x 51 (6.8 x 6.0 x 2.0)	115	238	32.0	3100	55	33.3	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5506 5505	0	0	PM238.pdf	13
18	PM238-230-1751BT-4	Interfan	AC Fans	N	172 x 150 x 51 (6.8 x 6.0 x 2.0)	230	238	38.0	3100	55	33.3	Aluminum housing,  plastic impeller,  sealed ball bearing,  terminal block	5506 5505	0	0	PM238.pdf	14
19	PMB24-115-4B	Interfan	AC Radial Blowers	N	120 x 120 x 38 (4.8 x 4.8 x 1.5)	115	24	20.0	2300	53	23	Plastic housing,  plastic wheel,  sealed ball bearing,  20 AWG wire leads		0	0	PMB24.pdf	15
20	PMB24-230-4B	Interfan	AC Radial Blowers	N	120 x 120 x 38 (4.8 x 4.8 x 1.5)	230	24	20.0	2300	53	23	Plastic housing,  plastic wheel,  sealed ball bearing,  20 AWG wire leads		0	0	PMB24.pdf	16
\.


--
-- Data for Name: product_fans_axial_dc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_fans_axial_dc (product_id, product_name, product_line, item_type, news, frame, voltage, airflow, inputp, inputc, speed, noise, weight, construction, guard, product_price, product_sh, pdf, sort) FROM stdin;
2	PO002-05D-2510B-4	Interfan	DC Fans (Brushless)	N	25 x 25 x 10 (1.0 x 1.0 x 0.4)	5	2.3	0.35	80	10000	25	0.3	Plastic housing and impeller, sealed ball bearing, 28AWG wire leads	N/A	0	0	PO002(25x10).pdf	1
3	PO002-12D-2510B-4	Interfan	DC Fans (Brushless)	N	25 x 25 x 10 (1.0 x 1.0 x 0.4)	12	2.3	0.96	80	10000	25	0.3	Plastic housing and impeller, sealed ball bearing, 28AWG wire leads	N/A	0	0	PO002(25x10).pdf	2
4	PO004-05D-3010B-4	Interfan	DC Fans (Brushless)	N	30 x 30 x 10	5	4.1	0.35	70	8000	24	0.3	Plastic housing and impeller, sealed ball bearing, 28AWG wire leads	N/A	0	0	PO004.pdf	3
5	PO004-12D-3010B-4	Interfan	DC Fans (Brushless)	N	30 x 30 x 10	12	4.1	0.72	60	8000	24	0.3	Plastic housing and impeller, sealed ball bearing, 28AWG wire leads	N/A	0	0	PO004.pdf	4
9	PO006-12D-1B-2	Interfan	DC Fans (Brushless)	N	40 x 40 x 13 (1.6 x 1.6 x 0.5)	12	6.4	1.5	95	6000	31	1.2	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	40FP-45	0	0	PO006.pdf	5
10	PO006-24D-1B-2	Interfan	DC Fans (Brushless)	N	40 x 40 x 13 (1.6 x 1.6 x 0.5)	24	6.4	1.5	50	6000	31	1.2	Plastic housing and impeller,  sealed ball bearing	40FP-45	0	0	PO006.pdf	6
11	PO005-12D-1B-3	Interfan	DC Fans (Brushless)	N	40 x 40 x 20 (1.6 x 1.6 x 0.8)	12	5	1.8	150	6000	34	1.2	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	40FP-45	0	0	PO005.pdf	7
12	PO005-24D-1B-3	Interfan	DC Fans (Brushless)	N	40 x 40 x 20 (1.6 x 1.6 x 0.8)	24	5	2.4	100	6000	34	1.2	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	40FP-45	0	0	PO005.pdf	8
13	PO012-12D-2B-2	Interfan	DC Fans (Brushless)	Y	60 x 60 x 25 (2.4 x 2.4 x 1.0)	12	12	0.9	80	2750	41	2.7	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5516 60FP-45 60FGM	0	0	PO012.pdf	9
14	PO012-24D-2B-2	Interfan	DC Fans (Brushless)	Y	60 x 60 x 25 (2.4 x 2.4 x 1.0)	24	12	0.9	40	2750	41	2.7	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5516 60FP-45 60FGM	0	0	PO012.pdf	10
15	PO019-12D-2B-2	Interfan	DC Fans (Brushless)	N	60 x 60 x 25 (2.4 x 2.4 x 1.0)	12	19	1.8	140	4300	34	2.7	Plastic housing and impeller,  sealed ball bearing	5516 60FP-45 60FGM	0	0	PO019.pdf	11
16	PO019-24D-2B-2	Interfan	DC Fans (Brushless)	N	60 x 60 x 25 (2.4 x 2.4 x 1.0)	24	19	1.8	80	4300	34	2.7	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5516 60FP-45 60FGM	0	0	PO019.pdf	12
17	PO014-12D-2B-3	Interfan	DC Fans (Brushless)	N	62 x 62 x 15 (2.5 x 2.5 x 0.6)	12	14	2.4	200	3700	30	1.5	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5516 60FP-45	0	0	PO014.pdf	13
39	PO125-12D-1238B-2	Interfan	DC Fans (Brushless)	N	120 x 120 x 38.5 (4.7 x 4.7 x 1.5)	12	125	10.0	710	3000	52	8.8	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5507 5502 120FP-45 5505	0	0	PO125.pdf	28
42	HS-12D-4508S-4	Interfan	DC Heat Sink Fans	N	45 x 45 x 7 (1.7 x 1.7 x 0.3)	12	-	0.72	60	8000	27	0.6	Aluminum alloy housing, plastic impeller,ball bear,28AWG wire leads	N/A	0	0	HS-05D-4508S-4.pdf	32
45	POB28-12D-5B-2	Interfan	DC Radial Blowers	Y	126 x 127 x 31 (4.96 x 5.0 x 1.54)	12	28	8	490	2500	47	9.4	Plastic housing and impeller, sealed ball bearing, 24AWG wire leads	N/A	0	0	POB28.pdf	35
18	PO014-24D-2B-3	Interfan	DC Fans (Brushless)	N	62 x 62 x 15 (2.5 x 2.5 x 0.6)	24	14	2.4	100	3700	30	1.5	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5516 60FP-45	0	0	PO014.pdf	14
19	PO025-12D-3B-2	Interfan	DC Fans (Brushless)	N	80 x 80 x 25 (3.2 x 3.2 x 1.0)	12	27	1	80	2150	25	3	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 80FP-45 80FGM	0	0	PO025.pdf	15
20	PO025-24D-3B-2	Interfan	DC Fans (Brushless)	N	80 x 80 x 25 (3.2 x 3.2 x 1.0)	24	27	1	40	2150	25	3	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 80FP-45 80FGM	0	0	PO025.pdf	16
21	PO035-12D-3B-2	Interfan	DC Fans (Brushless)	N	80 x 80 x 25 (3.2 x 3.2 x 1.0)	12	35	2.4	200	2950	31	3.6	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 80FP-45 80FGM	0	0	PO035.pdf	17
22	PO035-24D-3B-2	Interfan	DC Fans (Brushless)	N	80 x 80 x 25 (3.2 x 3.2 x 1.0)	24	35	2.4	100	2950	31	3.6	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 80FP-45 80FGM	0	0	PO035.pdf	18
23	PO042-12D-3B-2	Interfan	DC Fans (Brushless)	N	80 x 80 x 25 (3.2 x 3.2 x 1.0)	12	42	2.4	160	3500	37	3	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 80FP-45 80FGM	0	0	PO042.pdf	19
24	PO042-24D-3B-2	Interfan	DC Fans (Brushless)	N	80 x 80 x 25 (3.2 x 3.2 x 1.0)	24	42	2.4	100	3500	37	3	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 80FP-45 80FGM	0	0	PO042.pdf	20
47	PO125-48D-1238B-2		DC Fans (Brushless)	N	120 x 120 x 38.5 (4.7 x 4.7 x 1.5)	48	125	10.0	210	3000	52	8.8	Plastic Housing and impeller, sealed ball bearing, 24AWG wire leads	5504, 5502, 120FP-45, 5505	0	0	PO125.pdf	30
48	PO045-12D-9225B-4T	Interfan	DC Fans (Brushless)	N	92 x 92 x 25 (3.6 x 3.6 x 1.0)	12	45	2.4	170	2400	32	3.6	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5520, 92FP-45, 92FGM	0	0	PO045.pdf	21
27	PO053-12D-3B-2	Interfan	DC Fans (Brushless)	N	92 x 92 x 32 (3.6 x 3.6 x 1.3)	12	53	3.5	280	3200	39	5.1	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5520 92FP-45	0	0	PO053.pdf	22
28	PO053-24D-3B-2	Interfan	DC Fans (Brushless)	N	92 x 92 x 32 (3.6 x 3.6 x 1.3)	24	53	3.5	140	3200	39	5.1	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5520 92FP-45	0	0	PO053.pdf	23
29	PO078-12D-4B-2	Interfan	DC Fans (Brushless)	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	12	78	4.5	370	2650	42	6.4	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5504 5502 120FP-45	0	0	PO078.pdf	24
31	PM082-12D-4B	Interfan	DC Fans (Brushless)	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	12	82	6.7	560	3200	45	9	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5504 5502 120FP-45	0	0	PM082.pdf	25
32	PM082-24D-4B	Interfan	DC Fans (Brushless)	N	120 x 120 x 25 (4.7 x 4.7 x 1.0)	24	82	7.2	300	3250	45	9	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5504 5502 120FP-45	0	0	PM082.pdf	26
40	PO125-24D-1238B-2	Interfan	DC Fans (Brushless)	N	120 x 120 x 38.5 (4.7 x 4.7 x 1.5)	48	125	10.0	370	3000	52	8.8	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5508 5502 120FP-45 5505	0	0	PO125.pdf	29
36	PO106-12D-4BT-7	Interfan	DC Fans (Brushless)	N	120 x 120 x 38 (4.7 x 4.7 x 1.5)	12	108	6.6	550	2950	43	9.2	Plastic housing and impeller, sealed ball bearing, 26AWG wire leads	5504 5502 120FP-45 5505	0	0	PO106.pdf	27
41	HS-05D-4508S-4	Interfan	DC Heat Sink Fans	N	45 x 45 x 8 (1.7 x 1.7 x 0.3)	5	-	0.45	90	8000	24	0.6	Aluminum alloy housing, plastic impeller,ball bear,28AWG wire leads	N/A	0	0	HS-05D-4508S-4.pdf	31
43	POB19-12D-9733B-2	Interfan	DC Radial Blowers	Y	97 x 95 x 33 (3.88 x 3.8 x 1.32	12	18.7	3.7	300	2450	43	3.8	Plastic housing and impeller, sealed ball bearing, 24AWG wire leads	N/A	0	0	POB19.pdf	33
44	POB19-24D-9733B-2	Interfan	DC Radial Blowers	Y	97 x 95 x 33 (3.88 x 3.8 x 1.32	24	18.7	3.7	165	2450	43	3.8	Plastic housing and impeller, sealed ball bearing, 24AWG wire leads	N/A	0	0	POB19.pdf	34
46	POB28-24D-5B-2	Interfan	DC Radial Blowers	Y	126 x 127 x 31 (4.96 x 5.0 x 1.54)	24	28	8	280	2500	47	9.4	Plastic housing and impeller, sealed ball bearing, 24AWG wire leads	N/A	0	0	POB28.pdf	36
\.


--
-- Data for Name: product_fibre_connectors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_fibre_connectors (product_id, product_name, news, product_line, item_type, polish, connector, product_price, product_sh, pdf, sort) FROM stdin;
1	Singlemode and Multimode Glass Fiber Assemblies and Connectors	n	Interoptics	Glass Fiber Cable Assemblies	Standard, Super, Ultra & Angle	Simplex & Duplex		10	connectors.pdf	1
2	Simplex and Duplex Plastic Fiber Assemblies and Connectors	n	Interoptics	Plastic Fiber Cable Custom Assemblies	Standard	SMA, ST, FC, EIAJ digital Audio, JIS Industrial		10	connectors.pdf	2
\.


--
-- Data for Name: product_fibre_modems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_fibre_modems (product_id, product_name, product_line, item_type, news, data, wavelength, fibers, mounting, sizem, operating, connectors, product_price, product_sh, pdf, sort) FROM stdin;
1	RS-232, 4-channel full duplex	Interoptics		n	DC to 64 KB/s	850nm	2	25-pin connector	2.13  W x 2.21 L x 0.63 H",-20C to '+70C,Optical: SMA or ST,495,10,opto-232C.pdf,1\r\n2,RS-422 (Data Lines Only) full duplex,Interoptics,",n,DC to 5 MB/s,850nm,2,25-pin connector,"2.13  W x 2.21 L x 0.63 H	-20C to '+70C	Optical: SMA or ST	262	10	opto-rs422.pdf	2
4	Centronics Terminal & Printer Units 15,000 lines/minute	Interoptics		n	30 KB/s	850nm	2	25-pin connector	50	-20C to '+70C	Optical: SMA or ST	792	10	opto-3800.pdf	4
\.


--
-- Data for Name: product_led_blue_white; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_led_blue_white (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf) FROM stdin;
1	AND190HBA		N	T-3 Package (10 mm)									0	0	
2	AND190HBB			T-3 Package (10 mm)									0	0	
3	AND410HB			T-1 3/4 Package (5 mm)									0	0	
4	AND520HB			T-1 3/4 Package (5 mm)									0	0	
5	AND262HBA			T-1 Package (3 mm)									0	0	
6	AND262HBB			T-1 Package (3 mm)									0	0	
7	AND4BA (Flat)			T-1 Package (3 mm) Surface Mount Package									0	0	
8	AND4BC (Flat)			T-1 Package (3 mm) Surface Mount Package									0	0	
9	AND4BRA (Rt Angle)			T-1 Package (3 mm) Surface Mount Package									0	0	
10	AND4BRB (Rt Angle)			T-1 Package (3 mm) Surface Mount Package									0	0	
11	AND5BA (Domed)			T-1 Package (3 mm) Surface Mount Package									0	0	
12	AND5BB (Domed)			T-1 Package (3 mm) Surface Mount Package									0	0	
13	AND6BA (TOP LED)			T-1 Package (3 mm) Surface Mount Package									0	0	
14	AND6BB (TOP LED)			T-1 Package (3 mm) Surface Mount Package									0	0	
15	AND6BC (TOP LED)			T-1 Package (3 mm) Surface Mount Package									0	0	
16	AND7BA (Flat LP)			T-1 Package (3 mm) Surface Mount Package									0	0	
17	AND190HW			T-3 Package (10 mm)									0	0	
18	AND420HWA			T-1 3/4 Package (5 mm) White									0	0	
19	AND420HWB			T-1 3/4 Package (5 mm) White									0	0	
20	AND520HW			T-1 3/4 Package (5 mm) White									0	0	
21	AND720HW			T-1 3/4 Package (5 mm) White									0	0	
22	AND262HW			T-1 Package (3 mm) White									0	0	
23	AND4WA (TOP LED)			T-1 Package (3 mm) Surface White									0	0	
24	AND4WB (Flat)			T-1 Package (3 mm) Surface White									0	0	
25	AND7WA (Flat LP)			T-1 Package (3 mm) Surface White									0	0	
\.


--
-- Data for Name: product_leds_dual_color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_dual_color (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND2451RGL	AND Optoelectronics	N	Dual Color LEDs	Red/Green	Milky, Diffused	700/567	0.7/0.8	1.2/2.7	10	120	GaAsP/GaP	0	0	AND2451.pdf	1
2	AND126SG	AND Optoelectronics	N	Dual Color LEDs	Red/Green	Milky, Diffused	635/565	12/12	14/14	10	60	GaAsP/GaP	0	0	AND126SG.pdf	2
3	AND116SG	AND Optoelectronics	N	Dual Color LEDs	Red/Green	Milky, Diffused	635/565	10/10	12/12	10	70	GaAsP/GaP	0	0	AND116SG.pdf	3
4	AND208SGA	AND Optoelectronics	N	Dual Color LEDs	Red/Green	Milky, Diffused	625/565	8.0/8.0	14.0/14.0	10	110	GaAsP/GaP	0	0	AND208SGA.pdf	4
5	AND208YGA	AND Optoelectronics	N	Dual Color LEDs	Yellow/Green	Milky, Diffused	590/565	3.2/8.0	6.0/14.0	10	110	GaAsP/GaP	0	0	AND208YGA.pdf	5
\.


--
-- Data for Name: product_leds_green; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_green (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND190HGP	AND Optoelectronics	N	T-3 Package (10mm)	Green	Clear	574	1,200	2,000	20	8	InGaAIP	0	0	AND190HGP.pdf	1
2	AND190GCP	AND Optoelectronics	N	T-3 Package (10mm)	Green	Clear	576	370	700	20	8	GaP	0	0	AND190GCP.pdf	2
4	AND412HG	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Green	Clear	505	1,250	2,200	20	12	InGaN	0	0	AND412HG.pdf	4
5	AND520HG	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Clear	525	2,500	5,000	20	20	InGaN	0	0	AND520HG.pdf	5
6	AND240GCP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Clear	576	350	780	20	20	GaP	0	0	AND240GCP.pdf	6
7	AND135PGP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Clear	567	300	500	20	25	GaP	0	0	AND135PGP.pdf	7
8	AND113G	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Green, Clear	565	20	50	10	30	GaP	0	0	AND113G-GP.pdf	8
9	AND113GP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Green, Clear	565	5	20	50	10	GaP	0	0	AND113G-GP.pdf	9
10	AND114G	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Green, Diffused	565	5	18	10	60	GaP	0	0	AND114G-GP.pdf	10
11	AND114GP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Green	Green, Diffused	565	5	18	10	60	GaP	0	0	AND114G-GP.pdf	11
12	AND160NG	AND Optoelectronics	N	T-1 Package (3mm)	Green	Clear	570	8	15	20	140	GaP	0	0	AND160NG.pdf	12
13	AND262GCP	AND Optoelectronics	N	T-1 Package (3mm)	Green	Clear	567	70	110	20	36	GaP	0	0	AND262GCP.pdf	13
14	AND262HG	AND Optoelectronics	N	T-1 Package (3mm)	Green	Clear	525	630	1,000	20	35	GaN	0	0	AND262HG.pdf	14
15	AND123G	AND Optoelectronics	N	T-1 Package (3mm)	Green	Green, Clear	565	20	50	10	50	GaP	0	0	AND123G.pdf	15
16	AND124G	AND Optoelectronics	N	T-1 Package (3mm)	Green	Green, Diffused	565	8	20	10	60	GaP	0	0	AND124G.pdf	16
17	AND4GA (Flat)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	570	8	15	20	140	GaP	0	0	AND4GA.pdf	17
18	AND4GRA (Rt Angle)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	540	8	15	20	140	InGaN	0	0	AND4GRA.pdf	18
19	AND4PGA (Flat)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	555	0.85	2.0	20	140	GaP	0	0	AND4PGA.pdf	19
20	AND5GA (Domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	570	75	125	20	30	GaP	0	0	AND5GA.pdf	20
21	AND5G (Domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	570	75	125	20	30	GaP	0	0	AND5G.pdf	21
22	AND5PGA (Domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	555	20	35	20	30	GaP	0	0	AND5PGA.pdf	22
23	AND6GA (TOP LED)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	525	110	170	20	120	InGaN	0	0	AND6GA.pdf	23
24	AND7GA (Flat LP)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	525	112	180	20	120	InGaN	0	0	AND7GA.pdf	24
25	AND7GB (Flat LP)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Green	Clear	573	30	45	20	120	InGaN	0	0	AND7GB.pdf	25
26	AND157HGP	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Green	Clear	575	630	1,250	20	20	InGaAIP	0	0	AND157HGPnew.pdf	3
\.


--
-- Data for Name: product_leds_green_segment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_green_segment (product_id, product_name, product_line, news, item_type, led, face, display, characteristics, luminous, ifma, polarity, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND2307SAL	AND Optoelectronics	N	7 Segments	Red	Red	2.3	RHDP, 10 pin	7.5	10	C-A	GaAsP	0	0	AND2307.pdf	1
2	AND2307SCL	AND Optoelectronics	N	7 Segments	Red	Red	2.3	RHDP, 10 pin	7.5	10	C-C	GaAsP	0	0	AND2307.pdf	2
3	AND1510SAL	AND Optoelectronics	N	7 Segments	Red	Red	1.5	RHDP, 10 pin	4.6	10	C-A	GaAsP	0	0	AND1510.pdf	3
4	AND1510SCL	AND Optoelectronics	N	7 Segments	Red	Red	1.5	RHDP, 10 pin	4.6	10	C-C	GaAsP	0	0	AND1510.pdf	4
5	AND4310SAL	AND Optoelectronics	N	7 Segments	Red	Red	0.4	RHDP & LHDP, 14 pin	3.3	10	C-A	GaAsP	0	0	AND4310.pdf	5
6	AND4310SCL	AND Optoelectronics	N	7 Segments	Red	Red	0.4	RHDP & LHDP, 14 pin	3.3	10	C-C	GaAsP	0	0	AND4310.pdf	6
7	AND5610SAL	AND Optoelectronics	N	7 Segments	Red	Red	0.5	RHDP, 10 pin	3.3	10	C-A	GaAsP	0	0	AND5610.pdf	8
8	AND5610SCL	AND Optoelectronics	N	7 Segments	Red	Red	0.5	RHDP, 10 pin	3.3	10	C-C	GaAsP	0	0	AND5610.pdf	7
9	AND8010SAL	AND Optoelectronics	N	7 Segments	Red	Red	0.8	RHDP, 16 pin	3.80	10	C-C	GaAsP/GaP	0	0	AND8010.pdf	9
10	AND8010SCL	AND Optoelectronics	N	7 Segments	Red	Red	0.8	RHDP, 16 pin	3.8	10	C-C	GaAsP/GaP	0	0	AND8010.pdf	10
11	AND5420OALB	AND Optoelectronics	N	16 Segments	Red	Red	0.5	RHDP, 18 pin	3.3	10	C-A	GaAsP	0	0	AND5420.pdf	11
12	AND5420OCLB	AND Optoelectronics	N	16 Segments	Red	Red	0.5	RHDP, 18 pin	3.3	10	C-C	GaAsP	0	0	AND5420.pdf	12
13	AND8010SALB	AND Optoelectronics	N	16 Segments	Red	Red	0.8	RHDP, 18 pin	3.8	10	C-C	GaAsP/GaP	0	0	AND8010-B.pdf	13
14	AND8010SCLB	AND Optoelectronics	N	16 Segments	Red	Red	0.8	RHDP, 18 pin	3.8	10	C-C	GaAsP/GaP	0	0	AND8010-B.pdf	14
15	AND2307GAL	AND Optoelectronics	N	7 Segments Green	Green	Gray	2.3	RHDP, 10 pin	6.5	10	C-A	GaP	0	0	AND2307.pdf	15
16	AND2307GCL	AND Optoelectronics	N	7 Segments Green	Green	Gray	2.3	RHDP, 10 pin	6.5	10	C-C	GaP	0	0	AND2307.pdf	16
17	AND8010GAL	AND Optoelectronics	N	7 Segments Green	Green	Gray	0.8	RHDP & LHDP, 16 pin	3.3	10	C-A	GaP	0	0	AND8010.pdf	17
18	AND8010GCL	AND Optoelectronics	N	7 Segments Green	Green	Gray	0.8	RHDP & LHDP, 16 pin	3.3	10	C-C	GaP	0	0	AND8010.pdf	18
19	AND4310GAL	AND Optoelectronics	N	7 Segments Green	Green	Green	0.4	RHDP & LHDP, 14 pin	2.8	10	C-A	GaP	0	0	AND4310.pdf	19
\.


--
-- Data for Name: product_leds_orange_amber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_orange_amber (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND190HAP	AND Optoelectronics	N	T-3 Package (10mm)	Amber	Clear	612	4,500	8,000	20	6	InGaAIP	0	0	AND190HAP.pdf	1
2	AND190HOP	AND Optoelectronics	N	T-3 Package (10mm)	Orange	Clear	620	4,000	6,000	20	6	InGaAIP	0	0	AND190HOP.pdf	2
3	AND157HAP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Amber	Clear	612	1,200	2,000	20	20	InGaAIP	0	0	AND157HAP.pdf	3
4	AND185HOP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Orange	Clear	620	9,000	11,700	20	6	InGaAIP	0	0	AND185HOP.pdf	4
5	AND185HAP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Amber	Clear	612	8,500	11,150	20	6	InGaAIP	0	0	AND185HAP.pdf	5
6	AND156HOP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Orange	Clear	620	6300	800	20	25	InGaAIP	0	0	AND156HOP.pdf	6
7	AND262HOP	AND Optoelectronics	N	T-1 Package (3mm)	Orange	Clear	620	250	420	20	40	InGaAIP	0	0	AND262HOP.pdf	7
8	AND262HAP	AND Optoelectronics	N	T-1 Package (3mm)	Amber	Clear	612	240	390	20	40	InGaAIP	0	0	AND262HAP.pdf	8
9	AND4OA (Flat)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Orange	Clear	620	27	60	20	140	InGaAIP	0	0	AND4OA.pdf	9
10	AND5OA (Domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Orange	Clear	620	490	750	20	30	InGaAIP	0	0	AND5OA.pdf	10
\.


--
-- Data for Name: product_leds_red; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_red (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND190CRP	AND Optoelectronics	N	T-3 Package (10mm)	Red	Clear	660	6000	11000	20	8	GaAlAs	0	0	AND190CRP.pdf	2
2	AND191CRP	AND Optoelectronics	N	T-3 Package (10mm)	Red	White Diffused	660	180	600	20	20	GaAlAs	0	0	AND191CRP.pdf	3
3	AND190HRP	AND Optoelectronics	n	T-3 Package (10mm)	Red	Clear	644	5600	10000	20	8	InGaAlP	0	10	AND190HRP.pdf	4
4	AND113R	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Clear	700	5	18	10	30	GaP	0	0	AND113R.pdf	1
5	AND113RP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Clear	700	5	18	10	30	GaP	0	0	AND113R-RP.pdf	5
6	AND114R	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Diffused	700	2	5	10	60	GaP	0	0	AND114R-RP.pdf	6
7	AND114RP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Diffused	700	2	5	10	60	GaP	0	0	AND114R-RP.pdf	7
39	AND186CRP	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Red	Water clear	632	2393	3589	20	6	AlGaInP			AND186CRP.pdf	23
9	AND130CR	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	660	1200	2000	20	16	GaAlAs	0	0	AND130CR.pdf	9
10	AND120CRP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	660	1200	2000	20	22	GaAlAs	0	0	AND120CRP.pdf	10
11	AND120CR	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	660	1200	2000	20	22	GaAlAs	0	0	AND120CR.pdf	11
12	AND155CRP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	660	630	1250	20	20	GaAlAs	0	0	AND155CRP.pdf	12
13	AND120BR	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	660	500	1100	20	35	GaAlAs	0	0	AND120BR.pdf	13
14	AND134CRP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red Diffused	660	360	600	20	40	GaAlAs	0	0	AND134CRP.pdf	14
15	AND116CR	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Milky Diffused	660	56	130	20	60	GaAlAs	0	0	AND116CR.pdf	15
16	AND180HRP	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Red	Clear	644	3,200	6,000	20	8	AIGaInP	0	0	AND180HRPnew.pdf	16
17	AND157HRP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	644	700	1800	20	20	InGaAIP	0	0	AND157HRP.pdf	17
18	AND113S	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Clear	625	50	150	10	30	GaAsP	0	0	AND113S.pdf	18
19	AND114S	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Diffused	625	20	50	10	60	GaAsP	0	0	AND1145R-SP.pdf	19
20	AND114SP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Red, Diffused	625	20	50	10	60	GaAsP	0	0	AND1145R-SP.pdf	20
21	AND180HSP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Red	Clear	623	3200	6000	20	8	InGaAIP	0	0	AND180HSP.pdf	21
22	AND157HSP	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Red	Clear	632	4,500	5,650	20	30	InGaAIP	0	0	AND157HSP.pdf	22
23	AND123R	AND Optoelectronics	Y	T-1 Package (3mm)	Bright Red	Red Transparent	700	5	12	20	50	GaP	0	0	AND123R.pdf	24
24	AND124R	AND Optoelectronics	N	T-1 Package (3mm)	Red	Red, Diffused	700	1.3	3	10	60	GaP	0	0	AND124R.pdf	25
25	AND125CRP	AND Optoelectronics	N	T-1 Package (3mm)	Red	Clear	660	360	600	20	36	GaAlAs	0	0	AND125CRP.pdf	26
26	AND126CR	AND Optoelectronics	n	T-1 Package (3mm)	Red	Milky Diffused	660	75	180	20	65	GaAlAs	0	10	AND126CR.pdf	27
27	AND262HS	AND Optoelectronics	N	T-1 Package (3mm)	Red	Clear	632	400	630	20	10	InGaAIP	0	0	AND262HS.pdf	28
28	AND4RA (Flat)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Red	Clear	660	20	40	20	140	GaAIAs	0	0	AND4RA.pdf	29
29	AND4RRA (Rt Angle)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Red	Clear	632	90	139	20	120	InGaAIP	0	0	AND4RRA.pdf	30
30	AND4SA (Flat)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Red	Clear	640	1.53	5	20	140	GaAsP	0	0	AND4SA.pdf	31
31	AND5RA (Domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Red	Clear	660	290	480	20	30	GaAIAs	0	0	AND5RA.pdf	32
32	AND5SA (Domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Red	Clear	640	24	40	20	30	GaAsP	0	0	AND5SA.pdf	33
33	AND7RA (Flat LP)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount Package	Red	Clear	624	90	135	20	120	InGaAIP	0	0	AND7RA.pdf	34
40	AND180CRP-B	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Super Bright Red	Water Clear	660	5000	8000	20	20	AlGaInP	Call		AND180CRP-B.pdf	8
\.


--
-- Data for Name: product_leds_special_shape; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_special_shape (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND205RA	AND Optoelectronics	N	Special Shape Package	Red	Red, Diffused	700	0.5	1	10	1 x 5	GaP	0	0	AND205RA.pdf	1
2	AND208RA	AND Optoelectronics	N	Special Shape Package	Red	Red, Diffused	700	0.5	1	10	2 x 5	GaP	0	0	AND208RA.pdf	2
3	AND211RA	AND Optoelectronics	N	Special Shape Package	Red	Red, Diffused	700	0.5	1	10	2 x 4	GaP	0	0	AND211RA.pdf	3
4	AND218RPA	AND Optoelectronics	N	Special Shape Package	Red	Red, Diffused	700	0.5	1	10	2 x 5	GaP	0	0	AND218RPA.pdf	4
5	AND226R	AND Optoelectronics	N	Special Shape Package	Red	Red, Diffused	700	0.5	1	10	Flat	GaP	0	0	AND226R.pdf	5
6	AND233CRP	AND Optoelectronics	N	Special Shape Package	Red	Clear	660	320	800	20		GaAIAs	0	0	AND233CRP.pdf	6
7	AND205YA	AND Optoelectronics	N	Special Shape Package	Yellow	Yellow, Diffused	590	2	4	10	1 x 5	GaAsP	0	0	AND205YA.pdf	7
8	AND211YA	AND Optoelectronics	N	Special Shape Package	Yellow	Yellow, Diffused	590	2	4	10	2 x 4	GaAsP	0	0	AND211YA.pdf	8
9	AND218YPA	AND Optoelectronics	N	Special Shape Package	Yellow	Yellow, Diffused	590	2	4	10	2 x 5	GaAsP	0	0	AND218YPA.pdf	9
10	AND226Y	AND Optoelectronics	N	Special Shape Package	Yellow	Yellow, Diffused	590	2	4	10	Flat	GaAsP	0	0	AND226Y.pdf	10
11	AND208YA	AND Optoelectronics	N	Special Shape Package	Yellow	Yellow, Diffused	590	2	3.5	10	2 x 5	GaAsP	0	0	AND208YA.pdf	11
12	AND233GCP	AND Optoelectronics	N	Special Shape Package	Green	Clear	567	60	150	20		GaP	0	0	AND233GCP.pdf	12
13	AND205GA	AND Optoelectronics	N	Special Shape Package	Green	Green, Diffused	565	2	4	10	1 x 5	GaP	0	0	AND205GA.pdf	13
14	AND211GA	AND Optoelectronics	N	Special Shape Package	Green	Green, Diffused	565	2	4	10	2 x 4	GaP	0	0	AND211GA.pdf	14
15	AND218GPA	AND Optoelectronics	N	Special Shape Package	Green	Green, Diffused	565	2	4	10	2 x 5	GaP	0	0	AND218GPA.pdf	15
16	AND226G	AND Optoelectronics	N	Special Shape Package	Green	Green, Diffused	565	2	4	10	Flat	GaP	0	0	AND226G.pdf	16
17	AND208GA	AND Optoelectronics	N	Special Shape Package	Green	Green, Diffused	565	2	3.5	10	2 x 5	GaP	0	0	AND208GA.pdf	17
\.


--
-- Data for Name: product_leds_yellow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_leds_yellow (product_id, product_name, product_line, news, item_type, led, lens, peak, lmin, typ, ifma, total, material, product_price, product_sh, pdf, sort) FROM stdin;
1	AND190HYP	AND Optoelectronics	N	T-3 Package (10mm)	Yellow	Clear	590	4500	6300	20	6	InGaAIP	0	0	AND190HYP.pdf	1
2	AND180HYP	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Yellow	Clear	590	2,500	4,000	20	6	AIGaInP	0	0	AND180HYPnew.pdf	2
3	ANDS4E38XX16	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Clear	590	2500	3200	20	16	InGaAIP	0	0	ANDS4E38XX16.pdf	3
4	ANDS4E38XX20	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Clear	590	2000	3000	20	20	InGaAIP	0	0	ANDS4E38XX20.pdf	4
5	AND180AYP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Clear	590	1600	2500	20	6	InGaAlP	0	0	AND180AYP.pdf	5
6	AND157HYP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Clear	590	1200	2500	20	15	InGaAIP	0	0	AND157HYP-.pdf	6
7	AND156EYP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Clear	590	300	700	20	50	InGaAIP	0	0	AND156EYP.pdf	7
8	AND181YP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Yellow, Clear	590	37	75	10	15	GaAsP	0	0	AND181YP.pdf	10
9	AND113Y	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Yellow, Clear	590	20	50	10	30	GaAsP	0	0	AND113Y-YP.pdf	12
10	AND113YP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Yellow, Clear	590	20	50	10	30	GaAsP	0	0	AND113Y-YP.pdf	11
11	AND114Y	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Yellow, Diffused	590	5	18	10	60	GaAsP	0	0	AND114Y-YP.pdf	13
12	AND114YP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Yellow, Diffused	590	5	18	10	60	GaAsP	0	0	AND114Y-YP.pdf	14
13	AND262YAP	AND Optoelectronics	N	T-1 Package (3mm)	Yellow	Clear	595	72	120	20	36	InGaAlP	0	0	AND262YAP.pdf	15
14	AND123Y	AND Optoelectronics	N	T-1 Package (3mm)	Yellow	Yellow, Clear	590	10	45	10	50	GaAsP	0	0	AND123Y.pdf	16
15	AND124Y	AND Optoelectronics	Y	T-1 Package (3mm)	Yellow	Yellow, Diffused	590	8	20	10	60	GaAsP	0	0	AND124Y.pdf	17
16	AND4YA (Flat)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount	Yellow	Clear	590	58	80	20	140	InGaAIP	0	0	AND4YA.pdf	18
17	AND5YA (domed)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount	Yellow	Clear	590	395	625	20	30	InGaAIP	0	0	AND5YA.pdf	19
18	AND7YA (Flat LP)	AND Optoelectronics	N	T-1 Package (3mm) Surface Mount	Yellow	Clear	589	90	135	20	120	InGaAIP	0	0	AND7YA.pdf	20
21	AND156QYP	AND Optoelectronics	N	T-1 3/4 Package (5mm)	Yellow	Clear	590	3,600	4,000	20	30	InGaAiP	0	0	AND156QYP.pdf	8
24	AND156SYP	AND Optoelectronics	Y	T-1 3/4 Package (5mm)	Super Yellow	Clear	589	4500	6200	20	30	AlGaInP			AND156SYP-B.pdf	9
\.


--
-- Data for Name: product_switches_keypads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_switches_keypads (product_id, product_name, product_line, item_type, news, description, key_config, key_type, dimensions, product_price, product_sh, pdf, sort) FROM stdin;
1	KNM20S14	Interswitch	IP67 Keypads	n	1x4 monoblock immersion proof keypad, with springless mechanical contacts, including key tops and mounting hardware	1x4	Flush	32.4x89.5x18.5	58	10	Monobloc_1x4.pdf	1
2	KNM30S14	Interswitch	IP67 Keypads	n	1x4 monoblock immersion proof keypad, with springless mechanical contacts, including key tops and mounting hardware	1x4	Raised	34.4x91.6x23.8	58	10	Monobloc_1x4.pdf	2
3	KNM20S34	Interswitch	IP67 Keypads	n	3x4 monoblock immersion proof keypad, springless mechanical contacts, without mounting hardware or key tops	3x4	Flush	70.5x89.5x18.5	87	10	Monobloc_3x4.pdf	3
4	KNM30S34	Interswitch	IP67 Keypads	n	3x4 monoblock immersion proof keypad, springless mechanical contacts, without mounting hardware or key tops	3x4	Raised	72.6x91.6x23.8	89	10	Monobloc_3x4.pdf	4
5	KNM20S44	Interswitch	IP67 Keypads	n	4x4 monoblock immersionproof keypad, springless mechanical contacts, without key tops or mounting hardware	4x4	Flush	89.5x89.5x18.5	108	10	Monobloc_4x4.pdf	5
6	KNM30S44	Interswitch	IP67 Keypads	n	4x4 monoblock immersionproof keypad, springless mechanical contacts, without key tops or mounting hardware	4x4	Raised	91.6x91.6x23.8	111	10	Monobloc_4x4.pdf	6
\.


--
-- Data for Name: product_switches_keypads2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_switches_keypads2 (product_id, product_name, product_line, item_type, news, description, forp, product_price, product_sh, pdf, sort) FROM stdin;
1	KKE1B-ACCC	Interswitch	IP67 Keypads Accessories	n	Set of 16 key tops 0-9 / A-F	All	0	10		1
2	KKE1B-ADDD	Interswitch	IP67 Keypads Accessories	n	Set of 16 key tops 0-15	All	0	10		2
3	KKE1B-AGGG	Interswitch	IP67 Keypads Accessories	n	Set of 26 key tops A-Z	All	0	10		3
4	KKE1B-ALLL	Interswitch	IP67 Keypads Accessories	n	Set of 21 key tops 0-9/A-F/+/-/*/#/.	All	0	10		4
5	KKE4L-ACCC	Interswitch	IP67 Keypads Accessories	n	Set of 20 key tops 0-9 /A-F/4 blanks	All	0	10		5
6	KKE12L-ALLL	Interswitch	IP67 Keypads Accessories	n	Set of 25 key tops 0-9 / A-F / + / - /* /# /. /4 blanks/12 transparent covers	All	0	10		6
7	KKE16L-ALLL	Interswitch	IP67 Keypads Accessories	n	Set of 25 key tops 0-9 / A-F / + / - /* /# /. /4 blanks/16 transparent covers	All	0	10		7
8	KZBEA	Interswitch	IP67 Keypads Accessories	n	Front mounting hardware	KNM20S44 & KNM30S44	0	10		8
9	KZBEB	Interswitch	IP67 Keypads Accessories	n	Front mounting hardware	KNM20S34 & KNM30S34	0	10		9
10	KZBEC	Interswitch	IP67 Keypads Accessories	n	Rear mounting hardware	KNM20S34 & KNM20S44	0	10		10
11	KZBED	Interswitch	IP67 Keypads Accessories	n	Rear mounting hardware	KNM20S34	0	10		11
12	KZBEE	Interswitch	IP67 Keypads Accessories	n	Rear mounting hardware	KNM30S34 & KNM30S44	0	10		12
13	KZBEF	Interswitch	IP67 Keypads Accessories	n	Rear mounting hardware	KNM30S34	0	10		13
14	KZDIH34	Interswitch	IP67 Keypads Accessories	n	Toroidal sealing ring for rear mounting the 3x4 key pads	KNM20S34 & KNM30S34	0	10		14
15	KZDIV34	Interswitch	IP67 Keypads Accessories	n	Toroidal sealing ring for front mounting the 3x4 key pads	KNM20S34 & KNM30S34	0	10		15
16	KZDIH44	Interswitch	IP67 Keypads Accessories	n	Toroidal sealing ring for rear mounting the 4x4 key pads	KNM20S44 & KNM30S44	0	10		16
17	KZDIV44	Interswitch	IP67 Keypads Accessories	n	Toroidal sealing ring for front mounting the 4x4 key pads	KNM20S44 & KNM30S44	0	10		17
\.


--
-- Data for Name: product_switches_led; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_switches_led (product_id, product_name, product_line, item_type, news, description, characters, available, maximum, supply, dimensions, product_price, product_sh, pdf, sort) FROM stdin;
1	100 Series	Interswitch		n	Small size front mounted display module with 9mm character height, compatible with Interswitch Series V thumbwheel switches	0-9	BCD, CMOS and TTL logic	36	5, 12 or 24	8 x 26.5 x 48.5-79	86	10		1
2	300 Series	Interswitch		n	Small size front mounted display module with 9mm character height, compatible with Interswitch Series U thumbwheel switches	0-9	BCD	40		8 x 33 x 51-66	98	10		2
3	500 Series	Interswitch		n	Medium size front mounted display module with 9mm character height, compatible with Interswitch Series H thumbwheel switches and combinable with Series H, M and S	0-9	BCD	50		10 x 33 x 40-74	98	10		3
4	800 Series	Interswitch		n	Large size front mounted display module with 20mm character height, compatible with Interswitch Series H  and M thumbwheel switches	0-9	BCD, CMOS and TTL logic	140	5, 12 or 24	20 x 33 x 40-76	110	10		4
5	900 Series	Interswitch		n	Very large size front mounted display module with 25, 35 and 45mm character heights, compatible with Interswitch Series G thumbwheel switches	0-9	BCD	95	12 or 24	40 x 76 x 81.5	257	10		5
\.


--
-- Data for Name: product_switches_rotary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_switches_rotary (product_id, product_name, product_line, item_type, news, knob, description, number, product_price, product_sh, pdf, sort) FROM stdin;
1	RDS10-112	Interswitch		N	Flat/Flush Shaft	BCD Real Code	10	0	0	rotary-flat.pdf	1
2	RDS10-122	Interswitch		N	Flat/Flush Shaft	BCD Complement	10	0	0	rotary-flat.pdf	2
3	RDS16-112	Interswitch		N	Flat/Flush Shaft	Hexadecimal	16	0	0	rotary-flat.pdf	3
4	RDS16-122	Interswitch		N	Flat/Flush Shaft	Hexadecimal Complement	16	0	0	rotary-flat.pdf	4
5	RDS10-212	Interswitch		N	Exposed Shaft	BCD Real Code	10	0	0	rotary-flat.pdf	5
6	RDS10-222	Interswitch		N	Exposed Shaft	BCD Complement	10	0	0	rotary-flat.pdf	6
7	RDS16-212	Interswitch		N	Exposed Shaft	Hexadecimal	16	0	0	rotary-flat.pdf	7
8	RDS16-222	Interswitch		N	Exposed Shaft	Hexadecimal Complement	16	0	0	rotary-flat.pdf	8
9	RDS10-312	Interswitch		N	Wheel	BCD Real Code	10	0	0	rotary-wheel.pdf	9
10	RDS10-322	Interswitch		n	Wheel	BCD Complement	10	0	10	rotary-wheel.pdf	10
11	RDS16-312	Interswitch		n	Wheel	Hexadecimal	16	0	10	rotary-wheel.pdf	11
12	RDS16-322	Interswitch		N	Wheel	Hexadecimal Complement	16	0	0	rotary-wheel.pdf	12
13	RDS10-412	Interswitch		N	Knob	BCD Real Code	10	0	0	rotary-knob.pdf	13
14	RDS10-422	Interswitch		N	Knob	BCD Complement	10	0	0	rotary-knob.pdf	14
15	RDS16-412	Interswitch		N	Knob	Hexadecimal	16	0	0	rotary-knob.pdf	15
16	RDS16-422	Interswitch		N	Knob	Hexadecimal Complement	16	0	0	rotary-knob.pdf	16
25	AS01-006-390T	Interswitch		N		Right Angle Socket		0	0	rotary-RAS.pdf	17
\.


--
-- Data for Name: product_switches_thumb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_switches_thumb (product_id, product_name, product_line, item_type, news, description, positions, available, maximum, working, dimensions, product_price, product_sh, pdf, sort) FROM stdin;
2	B Series	Interswitch		N	Medium size front mounted thumbwheel switch	10, 16	See A Series	pmaximum	42	12.5 x 58 x 57.1	73	10	B-Series.pdf	2
4	E Series	Interswitch		n	Small size rear mounted thumbwheel switch	10	Dec 0-9, BCD pos & neg, Single pole, Resistance	1	42	16 x 18 x 31.5	49	10		4
5	G Series	Interswitch		n	Very large size front mounted thumbwheel switch	10	2-pole, BCD pos, BCD + 2 inputs	2	42	20 x 76 x 79	122	10	G-Series.pdf	5
7	L Series	Interswitch		n	Small size rear mounted thumbwheel switch	10	See E Series	0.5	42	8 x 18 x 31.5	29	10	L-Series.pdf	7
9	N Series	Interswitch		n	Small size rear mounted thumbwheel switch	10	See E Series		42	7 x 18 x 31.5	29	10		9
10	P Series	Interswitch		N	Small size rear mounted thumbwheel switch	10, 11, 16	See H Series	pmaximum	42	10 x 24.2 x 38	29	10		10
11	Q Series	Interswitch		n	Medium size rear mounted IP65 thumbwheel switch	10	Decimal 0-9, BCD pos, 2-pole	2	42	12.7 x 33 x 47	147	10	Q-Series.pdf	11
12	S Series	Interswitch		n	Small size front mounted thumbwheel switch	10	See H Series	1	42	10 x 33 x 38	61	10	S-Series.pdf	12
14	V Series	Interswitch		n	Small size front mounted thumbwheel switch	10	Dec 0-9, Single pole, Resistance, BCD pos & neg	0.5	42	8 x 26.5 x 32.5	27	10	V-Series.pdf	14
15	W Series	Interswitch		n	Medium size front mounted IP65 thumbwheel switch	10	Dec, Single pole, BCD pos & neg	1	42	12.5 x 58 x 57.1	66	10	W-Series.pdf	15
16	A Series			N	Medium size rear mounted thumbwheel switch	10, 16	Dec 0-9, BCD ps +cmp, Aiken pos BCD +2 inputs, BCD pos & neg, Single pole	pmaximum	42	11x39x53.6	73	10		1
17	D Series			N	Small size front mounted push button thumbwheel switch	10	Dec 0-9, Kelvin, Single pole, BCD pos, BCD neg	1	42	7.62x24x33.5	39	10	D-Series.pdf	3
18	H Series			N	Small size front mounted thumbwheel switch	10, 11, 16	Dec 0-9, BCD pos +comp, BCD +2, BCD+comp, Hex, Kelvin, BCD pos & neg, 1-pole	1	42	10x33x38	49	10	H-Series.pdf	6
19	M Series			N	Small size front mounted thumbwheel switch	10, 11, 16	Dec 0-9, BCD +comp, BCD +2, BCD +comp, Hex Kelvin, BCD pos & neg, Single pole, Resistance	1	42	7x18x31.5	29	10	M-Series.pdf	8
20	U Series			N	Small size front mounted thumbwheel switch	10, 16	Dec 0-9, Kelvin, Hex, Single pole, BCD pos & neg, Resistance	1	42	8x33x38	24	10	U-Series.pdf	13
21	Z Series			N	Small size front mounted push button thumbwheel switch	10	Single pole, BCD pos & neg	0.50	50	7.6x15x24	29	10	Z-Series.pdf	16
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

