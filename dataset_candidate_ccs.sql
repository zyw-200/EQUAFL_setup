--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

-- Started on 2021-07-10 16:19:26 +08

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

SET default_with_oids = false;

--
-- TOC entry 204 (class 1259 OID 49367)
-- Name: candidate; Type: TABLE; Schema: public; Owner: firmadyne
--

CREATE TABLE public.candidate (
    image_id integer NOT NULL,
    product character varying,
    version character varying,
    brand character varying,
    network_inferred character varying,
    port character varying
);


ALTER TABLE public.candidate OWNER TO firmadyne;

--
-- TOC entry 2931 (class 0 OID 49367)
-- Dependencies: 204
-- Data for Name: candidate; Type: TABLE DATA; Schema: public; Owner: firmadyne
--

COPY public.candidate (image_id, product, version, brand, network_inferred, port) FROM stdin;
13112	tv-ip121wn	1.2.1.17	TRENDnet	192.168.10.30	80/tcp open  http;
106036	tew-739apbo	FW1.1.9	TRENDnet	192.168.2.254	23/tcp open  telnet;80/tcp open  http;
106037	tew-738apbo	FW1.1.9	TRENDnet	192.168.2.254	23/tcp open  telnet;80/tcp open  http;
106030	tew-740apbo	1.1.11	TRENDnet	192.168.2.254	23/tcp open  telnet;80/tcp open  http;
12979	tv-ip110wn	1.2.2.64	TRENDnet	192.168.10.30	80/tcp open  http;
106049	tew-731br	2.02b01	TRENDnet	192.168.10.1	53/tcp open  domain;80/tcp open  http;
105995	tew-813dru	1.01B03	TRENDnet	192.168.10.1	80/tcp  open  http;443/tcp open  https;
13075	tew-711br	2.00b10	TRENDnet	192.168.10.1	53/tcp open  domain;80/tcp open  http;
13349	tew-673gru	FW100B36	TRENDnet	192.168.10.1	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13528	tew-652brp	1.10B14	TRENDnet	192.168.10.1	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13029	tew-634gru	FW101B06	TRENDnet	192.168.10.1	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
12911	tew-632brp	FW1.10B31	TRENDnet	192.168.10.1	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
4471	wndrmacv1	1.0.0.20	NETGEAR	192.168.1.1	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
108076	wndrmacv2	1.0.0.4	NETGEAR	192.168.1.1	23/tcp   open     telnet;53/tcp   open     domain;80/tcp   open     http;144/tcp  filtered news;720/tcp  filtered unknown;1085/tcp filtered webobjects;1185/tcp filtered catchpole;2191/tcp filtered tvbus;2809/tcp filtered corbaloc;3005/tcp filtered deslogin;3007/tcp filtered lotusmtap;3333/tcp open     dec-notes;4279/tcp filtered vrml-multi-use;6007/tcp filtered X11:7;8100/tcp filtered xprint-server;9001/tcp filtered tor-orport;
3236	wnr1000v1	1.0.1.5	NETGEAR	192.168.1.1	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
20162	dap-1522		D-Link	192.168.0.50	23/tcp    open  telnet;80/tcp    open  http;49152/tcp open  unknown;
19510	dap-1353		D-Link	192.168.0.50	23/tcp    open     telnet;80/tcp    open     http;163/tcp   filtered cmip-man;443/tcp   open     https;497/tcp   filtered retrospect;1001/tcp  filtered webpush;1034/tcp  filtered zincite-a;1148/tcp  filtered elfiq-repl;1501/tcp  filtered sas-3;2190/tcp  filtered tivoconnect;2393/tcp  filtered ms-olap1;2522/tcp  filtered windb;4445/tcp  filtered upnotifyp;4446/tcp  filtered n1-fwp;5226/tcp  filtered hp-status;5432/tcp  filtered postgresql;5566/tcp  filtered westec-connect;5633/tcp  filtered beorl;5802/tcp  filtered vnc-http-2;6666/tcp  filtered irc;8402/tcp  filtered abarsd;9040/tcp  filtered tor-trans;9535/tcp  filtered man;13782/tcp filtered netbackup;49163/tcp filtered unknown;49999/tcp filtered unknown;
106241	dap-2230		D-Link	192.168.0.50	17/tcp    filtered qotd;23/tcp    open     telnet;32/tcp    filtered unknown;80/tcp    open     http;427/tcp   filtered svrloc;443/tcp   open     https;593/tcp   filtered http-rpc-epmap;1119/tcp  filtered bnetgame;1503/tcp  filtered imtc-mcs;2190/tcp  filtered tivoconnect;2604/tcp  filtered ospfd;2717/tcp  filtered pn-requester;5810/tcp  filtered unknown;5999/tcp  filtered ncd-conf;7938/tcp  filtered lgtomapper;9001/tcp  filtered tor-orport;9418/tcp  filtered git;9898/tcp  filtered monkeycom;10003/tcp filtered documentum_s;16993/tcp filtered amt-soap-https;40911/tcp filtered unknown;49156/tcp filtered unknown;52848/tcp filtered unknown;
20568	dap-2553		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18639	dap-2690		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106300	dap-3320	1.01rc014	D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20195	dir-865l		D-Link	192.168.0.1	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
106046	tew-734apo	FW1.1.1	TRENDnet	192.168.10.100	80/tcp   open  http;1900/tcp open  upnp;
19081	dap-2360		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19061	dap-2330		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18736	dap-2310		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106234	dap-1620		D-Link	192.168.0.50	23/tcp    open  telnet;80/tcp    open  http;49152/tcp open  unknown;
106281	dap-2660		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109080	dap-1665	2.03B03	D-Link	192.168.0.50	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
106293	dap-2695		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20023	dap-3310		D-Link	192.168.0.50	23/tcp open  telnet;80/tcp open  http;
106302	dap-3520		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106306	dap-3662		D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19014	di-524		D-Link	192.168.0.1	23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;49152/tcp open  unknown;
106869	dir-615		D-Link	192.168.0.1	80/tcp open  http
10981	dir-652		D-Link	192.168.0.1	80/tcp open  http;
20796	dir-655		D-Link	192.168.0.1	80/tcp open  http;
18421	dir-818lw		D-Link	192.168.0.1	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
19465	dir-820l		D-Link	192.168.0.1	80/tcp   open  http;139/tcp  open  netbios-ssn;443/tcp  open  https;445/tcp  open  microsoft-ds;8181/tcp open  intermapper;
106913	dir-842		D-Link	192.168.0.1	80/tcp  open  http;443/tcp open  https;
20591	dir-850l		D-Link	192.168.0.1	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20880	dir-825		D-Link	192.168.0.1	80/tcp  open     http;443/tcp filtered https;
18627	dsl-2740r		D-Link	192.168.1.1	21/tcp   open  ftp;23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;5555/tcp open  freeciv;
16385	dsp-w215		D-Link	192.168.0.60	80/tcp open  http;
19807	go-rt-ac750		D-Link	192.168.0.1	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
107868	xwn5001	0.4.1.1	NETGEAR	192.168.0.102	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
107877	ex2700	1.0.0.26	NETGEAR	192.168.1.250	80/tcp   open  http3333/tcp open  dec-notes
4954	wnce4004	1.0.0.22	NETGEAR	192.168.1.240	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
107913	ex6400	1.0.0.34	NETGEAR	192.168.1.250	80/tcp   open  http;3333/tcp open  dec-notes;
107923	ex7300	1.0.0.32	NETGEAR	192.168.1.250	80/tcp   open  http;3333/tcp open  dec-notes;
2474	wndr3700v2	1.0.0.8	NETGEAR	192.168.1.1	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
2904	wndr37avv2	1.0.0.10	NETGEAR	192.168.1.1	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
4354	wnr2000v1	1.1.3.9	NETGEAR	192.168.1.1	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
2730	wnr2500	1.0.0.24	NETGEAR	192.168.1.1	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
4499	wpn824v3	1.0.8	NETGEAR	192.168.1.1	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
3409	wnap210	2.1.1	NETGEAR	192.168.0.236	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
2541	wnap320	2.0	NETGEAR	192.168.0.100	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108299	wndap350	2.1.8	NETGEAR	192.168.0.237	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108301	wndap360	2.1.12	NETGEAR	192.168.0.100	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108298	wnd930	2.0.11	NETGEAR	192.168.0.100	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
2521	wac120	2.0.3	NETGEAR	192.168.0.100	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
108589	jnr3300	1.0.0.26	NETGEAR	192.168.1.1	23/tcp open  telnet;53/tcp open  domain;80/tcp open  http;
108836	wnap210v1	2.1.5	NETGEAR	192.168.0.236	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108841	wnap210v2	3.0.5.0	NETGEAR	192.168.0.236	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
7023	wndr3700v4	1.0.1.60	NETGEAR	192.168.1.1	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http443/tcp  open  https3333/tcp open  dec-notes
16275	wndrmac	1.0.0.10	NETGEAR	192.168.1.1	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;631/tcp  open  ipp;3333/tcp open  dec-notes;
108893	wndr4300v2	1.0.0.26	NETGEAR	192.168.1.1	53/tcp  open  domain;80/tcp  open  http;443/tcp open  https;
4330	wndr4300	1.0.1.64	NETGEAR	192.168.1.1	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;443/tcp  open  https;3333/tcp open  dec-notes;
16157	wn2000rptv1	1.0.1.20	NETGEAR	192.168.1.250	80/tcp   open  http;3333/tcp open  dec-notes;
9461	dap-2565	1.11	D-Link	192.168.0.50	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
2563	xavn2001v2	0.4.0.7	NETGEAR	192.168.0.102	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
106005	tew-812dru	FW1.01B05	TRENDnet	192.168.10.1	80/tcp  open  http;443/tcp open  https;
20019	dap-1650		D-Link	192.168.0.50	80/tcp   open  http;443/tcp  open  https;8181/tcp open  intermapper;
19545	dap-3410	1.10rc17	D-Link	192.168.0.50	23/tcp open  telnet;80/tcp open  http;
19969	dir-818l		D-Link	192.168.0.1	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
106919	dir-859	1.04b02	D-Link	192.168.0.1	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
4594	wpn824ext	1.1.1	NETGEAR	192.168.1.250	80/tcp open  http;
4528	wn802tv2	3.1.1	NETGEAR	192.168.0.233	80/tcp  open  http;443/tcp open  https;
\.


--
-- TOC entry 2809 (class 2606 OID 49374)
-- Name: candidate candidate_pkey; Type: CONSTRAINT; Schema: public; Owner: firmadyne
--

ALTER TABLE ONLY public.candidate
    ADD CONSTRAINT candidate_pkey PRIMARY KEY (image_id);


-- Completed on 2021-07-10 16:19:26 +08

--
-- PostgreSQL database dump complete
--

