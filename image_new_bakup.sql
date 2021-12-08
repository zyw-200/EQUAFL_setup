--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

-- Started on 2021-07-14 17:42:05 +08

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
-- TOC entry 202 (class 1259 OID 16569)
-- Name: image_new; Type: TABLE; Schema: public; Owner: firmadyne
--

CREATE TABLE public.image_new (
    image_id integer NOT NULL,
    firmname character varying NOT NULL,
    product character varying,
    version character varying,
    description character varying,
    brand_id integer DEFAULT 1 NOT NULL,
    hash character varying,
    rootfs_extracted boolean DEFAULT false,
    kernel_extracted boolean DEFAULT false,
    network_inferred character varying,
    network_connection boolean DEFAULT false,
    arch character varying,
    kernel_version character varying,
    port character varying
);


ALTER TABLE public.image_new OWNER TO firmadyne;

--
-- TOC entry 2947 (class 0 OID 16569)
-- Dependencies: 202
-- Data for Name: image_new; Type: TABLE DATA; Schema: public; Owner: firmadyne
--

COPY public.image_new (image_id, firmname, product, version, description, brand_id, hash, rootfs_extracted, kernel_extracted, network_inferred, network_connection, arch, kernel_version, port) FROM stdin;
106039	FW_TEW-740APBO2K_v2(2.00.00K).zip	TEW-740APBO2K_v2	2.00.00K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	old;80/tcp closed http;
16030	FW_TEW-737HRE(1.00.15).zip	TEW-737HRE_v1_1	1.00.15	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.2.132')]	f	mipseb	\N	old down
106008	FW_TEW-810DR_v1(1.13b04).zip	TEW-810DR_v11	1.13b04	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	old down
13112	FW_TV-IP121WN_V2(1.2.1.17).zip	TV-IP121WN_v2	1.2.1.17	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
106010	TEW-810DRv1_(FW1.12B01).zip	TEW-810DR	FW1.12B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	old;80/tcp closed http;
106036	TEW-739APBOv1_(FW1.1.9).zip	TEW-739APBO_v13	FW1.1.9	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
106037	TEW-738APBOv1_(FW1.1.9).zip	TEW-738APBO_v13	FW1.1.9	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
13492	FW_TEW-751DR_v1(1.01B01).zip	TEW-751DR	1.01B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	old;80/tcp open  http;
106017	FW_TEW-755AP_v1(1.02B06).zip	TEW-755AP	1.02B06	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	old infer failed
12934	TEW-810DRv1_(FW1.01B02).zip	TEW-810DR_v11	FW1.01B02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	old timeout
13625	TEW-736REv1_(FW1.1.2.0).zip	TEW-736RE	FW1.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13277	FW_TW100-BRV214_v1.0R(1.00.05).zip	TW100-BRV214	1.00.05	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	old infer failed
13386	FW_TEW-753DAP(v1_0R)-2-0-0.zip	TEW-753DAP	v1_0R	\N	52	\N	f	f	[('eth0', '192.168.10.100')]	f	mipseb	\N	old infer failed
106012	FW_TEW-755AP_v1(1.03B08).zip	TEW-755AP2KAC	1.03B08	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;53/tcp open  domain;80/tcp open  http;
105926	FW_TEW-828DRU_v1(1.0.9.0).zip	TEW-828DRU	1.0.9.0	\N	52	\N	f	f	False	f	armel	\N	\N
13212	FW_TEW-752DRU_v1(1.01B01).zip	TEW-752DRU	1.01B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	old down
13398	TEW-812DRUv1.0R_(FW1.0.10.0).zip	TEW-812DRU	FW1.0.10.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106025	FW_TEW-740APBO_v1(2.02).zip	TEW-740APBO_v2	2.02	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	old;80/tcp closed http;
13400	TEW-812DRUv1.0_(FW1.0.8.0).zip	TEW-812DRU	FW1.0.8.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106023	FW_TEW-750DAP_v1(1.01B03).zip	TEW-750DAP	1.01B03	\N	52	\N	f	f	[('br0', '169.254.1.0'), ('br0', '192.168.10.100')]	f	mipsel	\N	old down
13397	TEW-812DRUv1.0R_(FW1.0.11.0).zip	TEW-812DRU	FW1.0.11.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106028	FW_TEW-740APBO2K_v3(3.02K).zip	TEW-740APBO2K_v3	3.02K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	old;80/tcp closed http;
13396	TEW-812DRUv1.0R_(FW1.0.13.0).zip	TEW-812DRU	FW1.0.13.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13399	TEW-812DRUv1.0R_(FW1.0.9.0).zip	TEW-812DRU	FW1.0.9.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13211	TEW-752DRUv1.0R_(FW1.00B08).zip	TEW-752DRU	FW1.00B08	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	old;80/tcp open  http;
13395	TEW-812DRUv1_(1.0.7.0).zip	TEW-812DRU	1.0.7.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
16032	FW_TEW-737HRE(v1.1R)-1.02B02.zip	TEW-737HRE_v1_1	v1.1R	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.2.132')]	f	mipseb	\N	old down
106003	TEW-812DRUv1_(FW1.0.14.0).zip	TEW-812DRU	FW1.0.14.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106004	TEW-812DRUv1_(FW1.0.15.0).zip	TEW-812DRU	FW1.0.15.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106030	FW_TEW-740APBO_v1(1.1.11).zip	TEW-740APBO	1.1.11	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
106006	FW_TEW-811DRU_v1(1.0.10.0).zip	TEW-811DRU	1.0.10.0	\N	52	\N	f	f	False	f	armel	\N	\N
106022	FW_TEW-751DR_v1(1.03B03).zip	TEW-751DR	1.03B03	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	old timeout
13056	FW_TEW-811DRU_v1(1.0.2.0).zip	TEW-811DRU	1.0.2.0	\N	52	\N	f	f	False	f	armel	\N	\N
13111	FW_TV-IP121WN_V2(1.2.2.23).zip	TV-IP121WN_v2	1.2.2.23	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
13057	FW_TEW-811DRU_v1(1.0.6.1).zip	TEW-811DRU	1.0.6.1	\N	52	\N	f	f	False	f	armel	\N	\N
106011	TEW-810DRv1_(FW1.12B02).zip	TEW-810DR_v11	FW1.12B02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	down
106038	TEW-736REv1_(FW1.1.3.0).zip	TEW-736RE	FW1.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
106014	FW_TEW-755AP_v1(1.04B06).zip	TEW-755AP2KAC	1.04B06	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
13058	FW_TEW-811DRU_v1(1.0.4.0).zip	TEW-811DRU	1.0.4.0	\N	52	\N	f	f	False	f	armel	\N	\N
106009	FW_TEW-810DR_v1(1.14B02).zip	TEW-810DR_v11	1.14B02	\N	52	\N	f	f	False	f	mipsel	\N	\N
106019	FW_TEW-755AP_v1(107B07).zip	TEW-755AP	107B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
106026	FW_TEW-740APBO_v2(2.00.00).zip	TEW-740APBO_v2	2.00.00	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	old timeout
12967	FW_TEW800MB(v1.0.1.0)_08012013.zip	TEW-800MB	v1.0.1.0	\N	52	\N	f	f	False	f	armel	\N	\N
109936	NC450_v1.3.4_171130.zip	TL-NC450	v2	\N	51	\N	f	f	False	f	mipsel	\N	\N
106031	FW_TEW-740APBO_v1(1.1.12).zip	TEW-740APBO	1.1.12	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
106027	FW_TEW-740APBO_v2(2.01).zip	TEW-740APBO_v2	2.01	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	down
106032	FW_TEW-739APBO_v1(1.1.11).zip	TEW-739APBO_v13	1.1.11	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
13279	FW_TW100-BRV214_v1(1.00.08).zip	TW100-BRV214	1.00.08	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	down
13108	FW_TV-IP121WN_V2(1.2.2.24).zip	TV-IP121WN_v2	1.2.2.24	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
106015	FW_TEW-755AP_v1(1.08B04).zip	TEW-755AP2KAC	1.08B04	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
106018	FW_TEW-755AP_v1(1.11B03).zip	TEW-755AP2KAC	1.11B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
13301	FW_TEW-750DAP_v1(1.00B14).zip	TEW-750DAP	1.00B14	\N	52	\N	f	f	False	f	mipsel	\N	\N
12979	FW_TV-IP110WN_V2(1.2.2.64).zip	TV-IP110WN_v2	1.2.2.64	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
108067	WNDR4300-V1.0.2.80.zip	WNDR4300	1.0.2.80	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
12980	FW_TV-IP110WN_V2(1.2.2.65).zip	TV-IP110WN_v2	1.2.2.65	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
105770	fw_tpe-5240ws_v1(v2.10.010).zip	TPE-5240WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105774	fw_tpe-5028ws_v1(v2.10.010).zip	TPE-5028WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105786	fw_tpe-2840ws_v2(v2.10.010).zip	TPE-2840WS_v2	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105798	fw_tpe-1620ws_v2(v2.10.010).zip	TPE-1620WS_v2	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13031	FW_TEW-731BR_v1.0R(1.00b29).zip	TEW-731BR	1.00b29	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
106063	TEW-658BRMv1_(FW1.03.B15).zip	TEW-658BRM	FW1.03.B15	\N	52	\N	f	f	False	f	mipseb	\N	\N
13653	FW_TEW-654TR(1.10B25).zip	TEW-654TR	1.10B25	\N	52	\N	f	f	False	f	mipsel	\N	\N
12881	TEW-658BRMv1_(FW1.03B04).zip	TEW-658BRM	FW1.03B04	\N	52	\N	f	f	False	f	mipseb	\N	\N
106064	FW_TEW-654TR(1.10B26).zip	TEW-654TR	1.10B26	\N	52	\N	f	f	False	f	mipsel	\N	\N
12882	TEW-658BRMv1_(FW1.03B06).zip	TEW-658BRM	FW1.03B06	\N	52	\N	f	f	False	f	mipseb	\N	\N
13658	FW_TEW-654TR(110B23).zip	TEW-654TR	110B23	\N	52	\N	f	f	False	f	mipsel	\N	\N
12878	TEW-658BRMv1_(FW1.03B12).zip	TEW-658BRM	FW1.03B12	\N	52	\N	f	f	False	f	mipseb	\N	\N
13142	TEW-732BRv1_(FW1.02B03).zip	TEW-732BR	FW1.02B03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	no results
106049	FW_TEW-731BR_v2(2.02b01).zip	TEW-731BR_v2	2.02b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
13110	FW_TV-IP121WN_V2(1.2.1.20).zip	TV-IP121WN_v2	1.2.1.20	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
16029	FW_TEW-731BR_v1(2.01b01).zip	TEW-731BR_v2_RU	2.01b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
13032	FW_TEW-731BR_v1(1.02b03).zip	TEW-731BR	1.02b03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
13381	FW_TEW-731BR_v2(2.00b08).zip	TEW-731BR_v2	2.00b08	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
13077	FW_TEW-659BRV_v1.0R(1.00.02).zip	TEW-659BRV	1.00.02	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	old infer failed
12981	FW_TV-IP110WN_V2(1.2.2.66).zip	TV-IP110WN_v2	1.2.2.66	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
106051	TEW-733GRv1_(FW1.03B01).zip	TEW-733GR	FW1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	old;80/tcp open  http;
106042	FW_TEW-740APBO_v2(2.01K).zip	TEW-740APBO2K_v2	2.01K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	down
13107	FW_TV-IP121WN_V2(1.2.2.26).zip	TV-IP121WN_v2	1.2.2.26	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	Not shown: 918 closed ports, 81 filtered ports;PORT   STATE SERVICE;80/tcp open  http;
13109	FW_TV-IP121WN_V2(1.2.2.28).zip	TV-IP121WN_v2	1.2.2.28	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	Not shown: 999 closed ports;PORT   STATE SERVICE;80/tcp open  http;
106041	FW_TEW-740APBO2K_v2(2.10K).zip	TEW-740APBO2K_v2	2.10K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	old timeout
106050	FW_TEW-731BR_v1(1.03b01).zip	TEW-731BR	1.03b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
13035	FW_TEW-731BR_v1.0R_v1.1R(1.01b09).zip	TEW-731BR	1.01b09	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
13080	FW_TEW-639GR_672GR(v1.0.9.161).zip	TEW-672GR_v1	v1.0.9.161	\N	52	\N	f	f	False	f	mipsel	\N	\N
13585	FW_TEW-672GR_V1(1.0.6.33).zip	TEW-672GR_v1	1.0.6.33	\N	52	\N	f	f	False	f	mipsel	\N	\N
13583	FW_TEW-672GR_V1(v1.0.8.16).zip	TEW-672GR_v1	v1.0.8.16	\N	52	\N	f	f	False	f	mipsel	\N	\N
13582	FW_TEW-672GR_V1.0(1.0.7.10).zip	TEW-672GR_v1	1.0.7.10	\N	52	\N	f	f	False	f	mipsel	\N	\N
105769	FW_WS-2-10-024-ALL.zip	TPE-5240WS	ALL	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13210	TEW-657BRMv1.0R(1.00.1).zip	TEW-657BRM	1.00.1	\N	52	\N	f	f	False	f	mipseb	\N	\N
12848	TEW-656BRGv1.0R(FW1.01c1).zip	TEW-656BRG	FW1.01c1	\N	52	\N	f	f	False	f	mipsel	\N	\N
12883	TEW-658BRMv1.0R(1.02.B08).zip	TEW-658BRM	1.02.B08	\N	52	\N	f	f	False	f	mipseb	\N	\N
12875	TEW-658BRMv1.0R(1.02.B12).zip	TEW-658BRM	1.02.B12	\N	52	\N	f	f	False	f	mipseb	\N	\N
12879	TEW-658BRMv1.0R(1.02.B14).zip	TEW-658BRM	1.02.B14	\N	52	\N	f	f	False	f	mipseb	\N	\N
105772	FW_TPE-5028WS_v1(1.00.010).zip	TPE-5028WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
12876	TEW-658BRMv1.0R(1.02.B18).zip	TEW-658BRM	1.02.B18	\N	52	\N	f	f	False	f	mipseb	\N	\N
13353	FW_TEW-655BR3G_v1(1.09b3).zip	TEW-655BR3G	1.09b3	\N	52	\N	f	f	False	f	mipsel	\N	\N
12877	TEW-658BRMv1.0R(1.02B10).zip	TEW-658BRM	1.02B10	\N	52	\N	f	f	False	f	mipseb	\N	\N
13657	FW_TEW-654TR(1.00B19).zip	TEW-654TR	1.00B19	\N	52	\N	f	f	False	f	mipsel	\N	\N
12880	TEW-658BRMv1.0R_(FW1.03.B09).zip	TEW-658BRM	FW1.03.B09	\N	52	\N	f	f	False	f	mipseb	\N	\N
13650	FW_TEW-654TR(1.10B20).zip	TEW-654TR	1.10B20	\N	52	\N	f	f	False	f	mipsel	\N	\N
13034	FW_TEW-731BR_v1(1.02b05).zip	TEW-731BR	1.02b05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
13352	FW_TEW-655BR3G_v1(1.09b10).zip	TEW-655BR3G	1.09b10	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;80/tcp closed http;
106040	FW_TEW-740APBO2K_v2(2.02K).zip	TEW-740APBO2K_v2	2.02K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	down
13178	TEW-733GRv1.0R_(FW1.00B15).zip	TEW-733GR	FW1.00B15	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	old timeout
105813	fw_tpe-082ws_v1(v2.10.010).zip	TPE-082WS_v11	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105814	FW_TPE-082WS_v1(1.00.011).zip	TPE-082WS	1.00.011	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105857	FW_TI-PG102i_v1(1.0.10.S0).zip	TI-PG102i	1.0.10.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105866	FW_TI-G642i_v1(1.0.4.S0).zip	TI-G642i_v1.0R	1.0.4.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105874	FW_TI-G160WS_v1(1.0.9.S0).zip	TI-G160WS	1.0.9.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105982	TEW-821DAPv1_(FW1.00B12).zip	TEW-821DAP	FW1.00B12	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	old infer failed
105948	1.00b18.zip	TEW-824DRU	1.00b18	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipseb	\N	old infer failed
105979	TEW-820APv1_(FW1.01B01).zip	TEW-820AP	FW1.01B01	\N	52	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
105952	FW_TEW-824DRU_v1(1.01b01).zip	TEW-824DRU	1.01b01	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipseb	\N	old infer failed
105943	FW_TEW-825DAP_v1(1.01B07).zip	TEW-825DAP	1.01B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;53/tcp open  domain;80/tcp open  http;
105929	FW_TEW-827DRU_v2(2.03B02).zip	TEW-827DRU_v2	2.03B02	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	old timeout
105957	FW_TEW-822DRE_v1&2(1.01B06).zip	TEW-822DRE_v2	1.01B06	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N	80/tcp open  http;
105965	FW_TEW-821DAP_v2(2.00b10).zip	TEW-821DAP_v2	2.00b10	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	80/tcp open  http;
13667	TEW-818DRUv1.0R_(FW1.0.5.0).zip	TEW-818DRU	FW1.0.5.0	\N	52	\N	f	f	False	f	armel	\N	\N
105981	TEW-818DRUv1_(FW1.0.11.0).zip	TEW-818DRU	FW1.0.11.0	\N	52	\N	f	f	False	f	armel	\N	\N
105968	FW_TEW-821DAP_v1(1.05B13).zip	TEW-821DAP2KAC	1.05B13	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;53/tcp open  domain;80/tcp open  http;
105983	TEW-818DRUv1_(FW1.0.13.0).zip	TEW-818DRU	FW1.0.13.0	\N	52	\N	f	f	False	f	armel	\N	\N
105984	TEW-818DRUv1_(FW1.0.14.0).zip	TEW-818DRU	FW1.0.14.0	\N	52	\N	f	f	False	f	armel	\N	\N
105985	FW_TEW-816DRM_v1(1.0.0.2).zip	TEW-816DRM	1.0.0.2	\N	52	\N	f	f	False	f	mipseb	\N	\N
105928	FW_TEW-827DRU_v2(2.01B03).zip	TEW-827DRU_v2	2.01B03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13669	TEW-818DRUv1_(FW1.0.6.0).zip	TEW-818DRU	FW1.0.6.0	\N	52	\N	f	f	False	f	armel	\N	\N
105847	FW_TI-PG541i_v1(1.1.8.S0).zip	TI-PG541i	1.1.8.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
13670	TEW-818DRUv1_(FW1.0.7.0).zip	TEW-818DRU	FW1.0.7.0	\N	52	\N	f	f	False	f	armel	\N	\N
13666	TEW-818DRUv1_(FW1.0.8.0).zip	TEW-818DRU	FW1.0.8.0	\N	52	\N	f	f	False	f	armel	\N	\N
105945	FW_TEW-825DAP_v1(1.02B05).zip	TEW-825DAP	1.02B05	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
105986	FW_TEW-816DRM_v1(1.0.0.3).zip	TEW-816DRM	1.0.0.3	\N	52	\N	f	f	False	f	mipseb	\N	\N
105949	FW_TEW-825DAP_v1(1.08B04).zip	TEW-825DAP	1.08B04	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
105950	FW_TEW-825DAP_v1(1.09B03).zip	TEW-825DAP	1.09B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	80/tcp open  http;
105811	FW_TPE-082WS_v1(2.10.024).zip	TPE-082WS_v11	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105858	FW_TI-PG102i_v1(1.0.11.S0).zip	TI-PG102i	1.0.11.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105867	FW_TI-G642i_v1(1.0.5.S0).zip	TI-G642i_v1.0R	1.0.5.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105954	FW_TEW-824DRU_v1(1.04b01).zip	TEW-824DRU	1.04b01	\N	52	\N	f	f	[('br-lan', '192.168.10.1'), ('br-lan', '192.168.10.1')]	f	mipseb	\N	down
105973	FW_TEW-821DAP_v1(1.09B03).zip	TEW-821DAP2KAC	1.09B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
105962	FW_TEW-822DRE_v1_v2(1.03B02).zip	TEW-822DRE_v2	1.03B02	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N	80/tcp open  http;
105969	FW_TEW-821DAP_v2(2.02b01).zip	TEW-821DAP_v2	2.02b01	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	80/tcp open  http;
105955	FW_TEW-823DRU_v1(1.00b36).zip	TEW-823DRU	1.00b36	\N	52	\N	f	f	False	f	mipseb	\N	\N
13297	FW_TEW-823DRU_v1(1.00b30).zip	TEW-823DRU	1.00b30	\N	52	\N	f	f	False	f	mipseb	\N	\N
105976	FW_TEW-821DAP_v1(1.03b02).zip	TEW-821DAP	1.03b02	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	old infer failed
105958	FW_TEW-823DRU_v1(1.01b02).zip	TEW-823DRU	1.01b02	\N	52	\N	f	f	False	f	mipseb	\N	\N
105960	FW_TEW-823DRU_v1(1.02b01).zip	TEW-823DRU	1.02b01	\N	52	\N	f	f	False	f	mipseb	\N	\N
105967	FW_TEW-821DAP_v2(2.01b05).zip	TEW-821DAP_v2	2.01b05	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	80/tcp open  http;
105971	FW_TEW-821DAP_v1(1.07B07).zip	TEW-821DAP2KAC	1.07B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
105931	FW_TEW-827DRU_v2(2.05B11).zip	TEW-827DRU_v2	2.05B11	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	down
105932	FW_TEW-827DRU_v2(2.04B03).zip	TEW-827DRU_v2	2.04B03	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	down
105972	FW_TEW-821DAP_v1(1.05B16).zip	TEW-821DAP2KAC	1.05B16	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;53/tcp open  domain;80/tcp open  http;
105977	FW_TEW-821DAP_v1(1.04b08).zip	TEW-821DAP	1.04b08	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	down
105934	FW_TEW-827DRU_v2(2.07B02).zip	TEW-827DRU_v2	2.07B02	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	down
105978	TEW-821DAPv1_(FW1.02B02).zip	TEW-821DAP	FW1.02B02	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	down
105846	FW_TI-PG541i_v1(1.1.7.S0).zip	TI-PG541i	1.1.7.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105974	FW_TEW-821DAP_v1(1.08B04).zip	TEW-821DAP2KAC	1.08B04	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
109939	NC450_v1.1.6_161124.zip	TL-NC450		\N	51	\N	f	f	False	f	mipsel	\N	\N
105892	FW_TEW-WLC100P_v1(V2.04b10).zip	TEW-WLC100P	V2.04b10	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105887	FW_TFC-1600MM_C1(2.03).zip	TFC-1600MM_c1	2.03	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105987	FW_TEW-816DRM_v1(1.0.0.4).zip	TEW-816DRM	1.0.0.4	\N	52	\N	f	f	False	f	mipseb	\N	\N
105635	FW_TWG-431BR_v1(v1.0.11).zip	TWG-431BR	v1.0.11	\N	52	\N	f	f	False	f	mipsel	\N	\N
13323	Firmware_TW100-BRM504_C1.0R.zip	TW100-BRM504_c1	C1.0R	\N	52	\N	f	f	False	f	mipsel	\N	\N
13460	Firmware_TW100-BRM504_B1_20006.zip	TW100-BRM504_b1	20006	\N	52	\N	f	f	False	f	mipsel	\N	\N
13458	Firmware_TW100-BRM504b1_FW2005.zip	TW100-BRM504_b1	FW2005	\N	52	\N	f	f	False	f	mipsel	\N	\N
13578	Firmware_TW100-BRM504_0121.zip	TW100-BRM504	0121	\N	52	\N	f	f	False	f	mipsel	\N	\N
13579	Firmware_TW100-BRM504_20004.zip	TW100-BRM504	20004	\N	52	\N	f	f	False	f	mipsel	\N	\N
13372	FW_TV-M7(2.01.1).zip	TV-M7	2.01.1	\N	52	\N	f	f	False	f	el	\N	\N
13373	FW_TV-M7(v1.1.0build1).zip	TV-M7	v1.1.0build1	\N	52	\N	f	f	False	f	el	\N	\N
13406	FW_TV-IP851WC(1.00.01).zip	TV-IP851WC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13405	FW_TV-IP851WC(1.02).zip	TV-IP851WC	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
105652	FW_TV-IP851WC(1.03.03).zip	TV-IP851WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13421	FW_TV-IP751WIC(1.00.01).zip	TV-IP751WIC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13404	FW_TV-IP851WC(v1.01.01).zip	TV-IP851WC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105653	FW_TV-IP751WIC(1.03.03).zip	TV-IP751WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
105655	FW_TV-IP851WC_V1(1.03.03).zip	TV-IP851WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13123	FW_TV-IP751WC(1.00.01).zip	TV-IP751WC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13423	FW_TV-IP751WIC(v1.00.01).zip	TV-IP751WIC	v1.00.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13120	FW_TV-IP751WC(1.02).zip	TV-IP751WC	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13422	FW_TV-IP751WIC(v1.01.01)_032813.zip	TV-IP751WIC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105658	FW_TV-IP751WC(1.03.03).zip	TV-IP751WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13424	FW_TV-IP751WIC(v1.0R)-1.02.10.zip	TV-IP751WIC	v1.0R	\N	52	\N	f	f	False	f	mipsel	\N	\N
13124	FW_TV-IP751WC(v1.00.01).zip	TV-IP751WC	v1.00.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105659	FW_TV-IP751WIC_V1(1.03.03).zip	TV-IP751WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13119	FW_TV-IP751WC(v1.01.01)_032813.zip	TV-IP751WC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13425	TV-IP751WIC(1.02).zip	TV-IP751WIC	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13122	FW_TV-IP751WC(v1.0R)-1.02.10.zip	TV-IP751WC	v1.0R	\N	52	\N	f	f	False	f	mipsel	\N	\N
105661	FW_TV-IP751WC_V1(1.03.03).zip	TV-IP751WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13639	FW_TV-IP851WIC(1.00.01).zip	TV-IP851WIC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13640	FW_TV-IP851WIC(1.02).zip	TV-IP851WIC	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
105664	FW_TV-IP851WIC(1.03.03).zip	TV-IP851WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
105988	FW_TEW-816DRM_v1(1.0.0.5).zip	TEW-816DRM	1.0.0.5	\N	52	\N	f	f	False	f	mipseb	\N	\N
13263	TEW-815DAPv1_(FW1.0.2.0).zip	TEW-815DAP	FW1.0.2.0	\N	52	\N	f	f	False	f	armel	\N	\N
105989	TEW-816DRMv1_(FW1.0.0.0).zip	TEW-816DRM	FW1.0.0.0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105990	TEW-816DRMv1_(FW1.0.0.1).zip	TEW-816DRM	FW1.0.0.1	\N	52	\N	f	f	False	f	mipseb	\N	\N
105992	FW_TEW-817DTR_v1(1.01B06).zip	TEW-817DTR	1.01B06	\N	52	\N	f	f	False	f	mipsel	\N	\N
105889	FW_TEW-WLC100P_v1(2.07b01).zip	TEW-WLC100P	2.07b01	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	old;23/tcp open  telnet;
105895	FW_TEW-WLC100_v1(2.00b20).zip	TEW-WLC100	2.00b20	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N	old down
105995	FW_TEW-813DRU_v1(1.01B03).zip	TEW-813DRU	1.01B03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
105896	FW_TEW-WLC100_v1(2.08b01).zip	TEW-WLC100	2.08b01	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	old down
105891	FW_TEW-WLC100P_v1(V2.03b03).zip	TEW-WLC100P	V2.03b03	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N	down
105998	FW_TEW-812DRU_v2(2.1.2.2).zip	TEW-812DRU_v2	2.1.2.2	\N	52	\N	f	f	False	f	armel	\N	\N
13766	TEW-812DRUv2.0R_(FW2.0.2.0).zip	TEW-812DRU_v2	FW2.0.2.0	\N	52	\N	f	f	False	f	armel	\N	\N
13764	TEW-812DRUv2.0R_(FW2.0.4.0).zip	TEW-812DRU_v2	FW2.0.4.0	\N	52	\N	f	f	False	f	armel	\N	\N
13767	TEW-812DRUv2_(FW2.0.6.0).zip	TEW-812DRU_v2	FW2.0.6.0	\N	52	\N	f	f	False	f	armel	\N	\N
105888	FW_TEW-WLC100P_v1(2.06b05).zip	TEW-WLC100P	2.06b05	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105890	FW_TEW-WLC100P_v1(2.08b01).zip	TEW-WLC100P	2.08b01	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	old down
13476	FW_TEW-813DRU_v1(1.00B23).zip	TEW-813DRU	1.00B23	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
105994	TEW-817DTRv1_(FW1.00B06).zip	TEW-817DTR	FW1.00B06	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	old timeout
105993	FW_TEW-817DTR_v1(1.02B01).zip	TEW-817DTR	1.02B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	old;80/tcp open  http;
105897	FW_TEW-WLC100_v1(V2.02b07).zip	TEW-WLC100	V2.02b07	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N	down
105898	FW_TEW-WLC100_v1(2.06b05).zip	TEW-WLC100	2.06b05	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105882	FW_TI-G102i_v1(1.0.6.S0).zip	TI-G102i_v1.0R	1.0.6.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
105899	FW_TEW-WLC100_v1(V2.03b03).zip	TEW-WLC100	V2.03b03	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N	down
105893	FW_TEW-WLC100P_v1(V2.05b02).zip	TEW-WLC100P	V2.05b02	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105900	FW_TEW-WLC100_v1(V2.04b10).zip	TEW-WLC100	V2.04b10	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105894	FW_TEW-WLC100P_v1(V2.05b04).zip	TEW-WLC100P	V2.05b04	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105902	FW_TEW-WLC100_v1(V2.05b02).zip	TEW-WLC100	V2.05b02	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
105903	FW_TEW-WLC100_v1(V2.07b01).zip	TEW-WLC100	V2.07b01	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N	down
13638	FW_TV-IP851WIC(v1.01.01).zip	TV-IP851WIC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105666	FW_TV-IP851WIC_V1(1.03.03).zip	TV-IP851WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
12857	FW_TV-IP651WI(1.01.01).zip	TV-IP651WI	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
12856	FW_TV-IP651WI(1.02.01).zip	TV-IP651WI	1.02.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
12854	FW_TV-IP651WI(1.02.02).zip	TV-IP651WI	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
12855	FW_TV-IP651WI(1.04.01).zip	TV-IP651WI	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
12853	FW_TV-IP651WI(1.06.08).zip	TV-IP651WI	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N	\N
105672	FW_TV-IP651WI(1.07.01).zip	TV-IP651WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
12858	FW_TV-IP651WI(v.1.05.04).zip	TV-IP651WI	v.1.05.04	\N	52	\N	f	f	False	f	mipsel	\N	\N
105673	FW_TV-IP651WI_V1(1.07.01).zip	TV-IP651WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
12859	tvip651wi_v103_01.zip	TV-IP651WI	01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13524	FW_TV-IP-551WI-1.06.08.zip	TV-IP551WI	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N	\N
13525	FW_TV-IP551WI(1.01.01).zip	TV-IP551WI	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13619	FW_TV-IP-551W-1.06.08.zip	TV-IP551W	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N	\N
13527	FW_TV-IP551WI(1.02.02).zip	TV-IP551WI	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13621	FW_TV-IP551W(1.01.01).zip	TV-IP551W	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13526	FW_TV-IP551WI(1.04.01).zip	TV-IP551WI	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13618	FW_TV-IP551W(1.02.02).zip	TV-IP551W	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
105679	FW_TV-IP551WI(1.07.01).zip	TV-IP551WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13620	FW_TV-IP551W(1.04.01).zip	TV-IP551W	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13523	FW_TV-IP551WI(v105_04).zip	TV-IP551WI	v105_04	\N	52	\N	f	f	False	f	mipsel	\N	\N
105680	FW_TV-IP551W(1.07.01).zip	TV-IP551W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105681	FW_TV-IP551WI_V1(1.07.01).zip	TV-IP551WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13617	FW_TV-IP551W(v1.05.04).zip	TV-IP551W	v1.05.04	\N	52	\N	f	f	False	f	mipsel	\N	\N
13522	tvip551wi_v103_01.zip	TV-IP551WI	01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105682	FW_TV-IP551W_V1(1.07.01).zip	TV-IP551W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13616	tvip551w_v103_01.zip	TV-IP551W	01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13074	FW_TV-IP651W(1.01.01).zip	TV-IP651W	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13073	FW_TV-IP651W(1.02.01).zip	TV-IP651W	1.02.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13071	FW_TV-IP651W(1.02.02).zip	TV-IP651W	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13069	FW_TV-IP651W(1.04.01).zip	TV-IP651W	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13068	FW_TV-IP651W(1.06.08).zip	TV-IP651W	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N	\N
105725	FW_TV-IP651W(1.07.01).zip	TV-IP651W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13070	FW_TV-IP651W(v1.05.04).zip	TV-IP651W	v1.05.04	\N	52	\N	f	f	False	f	mipsel	\N	\N
105726	FW_TV-IP651W_V1(1.07.01).zip	TV-IP651W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13072	tvip651w_v103_01.zip	TV-IP651W	01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13807	FW_TV-IP302PI_V1(1.02.32).zip	TV-IP302PI	1.02.32	\N	52	\N	f	f	False	f	armel	\N	\N
13806	FW_TV-IP302PI_V1(1.02.34).zip	TV-IP302PI	1.02.34	\N	52	\N	f	f	False	f	armel	\N	\N
105746	FW_TV-IP302PI_V1(1.02.38).zip	TV-IP302PI	1.02.38	\N	52	\N	f	f	False	f	armel	\N	\N
13496	Firmware_TS-U200_1.97.zip	TS-U200	1.97	\N	52	\N	f	f	False	f	mipsel	\N	\N
13498	Firmware_TS-U200_1.98.zip	TS-U200	1.98	\N	52	\N	f	f	False	f	mipsel	\N	\N
13497	TSU200.1.86.0325.2005.zip	TS-U200	TSU200.1.86.0325.2005	\N	52	\N	f	f	False	f	mipsel	\N	\N
12888	Firmware_TS-U100_1.98.zip	TS-U100	1.98	\N	52	\N	f	f	False	f	mipsel	\N	\N
12887	TSU100.1.86.0325.2005.zip	TS-U100	TSU100.1.86.0325.2005	\N	52	\N	f	f	False	f	mipsel	\N	\N
12908	FW_TS-S402(1.00.17).zip	TS-S402	1.00.17	\N	52	\N	f	f	False	f	armeb	\N	\N
12909	FW_TS-S402(2.00.09).zip	TS-S402	2.00.09	\N	52	\N	f	f	False	f	armeb	\N	\N
12910	FW_TS-S402(2.00.10).zip	TS-S402	2.00.10	\N	52	\N	f	f	False	f	armeb	\N	\N
12907	FW_TS-S402(2.00.11).zip	TS-S402	2.00.11	\N	52	\N	f	f	False	f	armeb	\N	\N
105748	FW_TS-S402(2.00.13).zip	TS-S402	2.00.13	\N	52	\N	f	f	False	f	armeb	\N	\N
105750	TPL-430AP_FW1.0.zip	TPL-430APK	FW1.0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105751	FW_TPL-410AP(1.00.14).zip	TPL-410APK(v2.0R)	1.00.14	\N	52	\N	f	f	False	f	mipseb	\N	\N
12936	FW_TPL-310AP_v1.0R(1.61).zip	TPL-310AP(v2.0R)	1.61	\N	52	\N	f	f	False	f	mipseb	\N	\N
105775	FW_TPE-4840WS_v1(1.00.06).zip	TPE-4840WS	1.00.06	\N	52	\N	f	f	False	f	armel	\N	\N
105776	FW_TPE-4840WS_v1(1.00.09).zip	TPE-4840WS	1.00.09	\N	52	\N	f	f	False	f	armel	\N	\N
105777	FW_TPE-4840WS_v1(1.00.10).zip	TPE-4840WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N	\N
105778	FW_TPE-4840WS_v1(1.00.08).zip	TPE-4840WS	1.00.08	\N	52	\N	f	f	False	f	armel	\N	\N
105779	FW_TPE4840WS-1.00.05.zip	TPE-4840WS	1.00.05	\N	52	\N	f	f	False	f	armel	\N	\N
105780	FW_TPE4840WS-1.00.07.zip	TPE-4840WS	1.00.07	\N	52	\N	f	f	False	f	armel	\N	\N
105783	FW_TPE-30102WS_v1(1.00.16).zip	TPE-30102WS	1.00.16	\N	52	\N	f	f	False	f	\N	\N	\N
105784	FW_TPE-30102WS_v1(1.00.17).zip	TPE-30102WS	1.00.17	\N	52	\N	f	f	False	f	\N	\N	\N
105787	FW_TPE-2840WS_v1(1.00.04).zip	TPE-2840WS	1.00.04	\N	52	\N	f	f	False	f	armel	\N	\N
105788	FW_TPE-2840WS_v1(1.00.07).zip	TPE-2840WS	1.00.07	\N	52	\N	f	f	False	f	armel	\N	\N
105789	FW_TPE-2840WS_v1(1.00.09).zip	TPE-2840WS	1.00.09	\N	52	\N	f	f	False	f	armel	\N	\N
105790	FW_TPE-2840WS_v1(1.00.10).zip	TPE-2840WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N	\N
105791	FW_TPE-224WS_C1(4.00.019).zip	TPE-224WS_c1_1	4.00.019	\N	52	\N	f	f	False	f	mipseb	\N	\N
105792	FW_TPE-224WS_C1(4.00.020).zip	TPE-224WS_c1_1	4.00.020	\N	52	\N	f	f	False	f	mipseb	\N	\N
105793	FW_TPE-2840WS_v1(1.00.11).zip	TPE-2840WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N	\N
13275	FW_TPE-224WS_C1(4.00.010).zip	TPE-224WS_c1	4.00.010	\N	52	\N	f	f	False	f	mipseb	\N	\N
13276	FW_TPE-224WS_C1(4.00.011).zip	TPE-224WS_c1	4.00.011	\N	52	\N	f	f	False	f	mipseb	\N	\N
105794	FW_TPE-224WS_C1(4.00.015).zip	TPE-224WS_c1	4.00.015	\N	52	\N	f	f	False	f	mipseb	\N	\N
16034	FW_TPE-1620WS_v1(1.00.16).zip	TPE-1620WS_v11	1.00.16	\N	52	\N	f	f	False	f	armel	\N	\N
12899	FW_TPE-1620WS_v1(1.00.13).zip	TPE-1620WS_v11	1.00.13	\N	52	\N	f	f	False	f	armel	\N	\N
105799	FW_TPE-1620WS_v1(1.00.18).zip	TPE-1620WS_v11	1.00.18	\N	52	\N	f	f	False	f	armel	\N	\N
105800	FW_TPE-1620WS_v1(1.00.17).zip	TPE-1620WS_v11	1.00.17	\N	52	\N	f	f	False	f	armel	\N	\N
105801	FW_TPE-1620WS_v1(1.00.19).zip	TPE-1620WS_v11	1.00.19	\N	52	\N	f	f	False	f	armel	\N	\N
105802	FW_TPE-1620WS_v1(1.00.20).zip	TPE-1620WS_v11	1.00.20	\N	52	\N	f	f	False	f	armel	\N	\N
105803	FW_TPE-1620WS_v1(1.00.21).zip	TPE-1620WS_v11	1.00.21	\N	52	\N	f	f	False	f	armel	\N	\N
12901	FW_TPE-1620WS_v1(1.00.10).zip	TPE-1620WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N	\N
12902	FW_TPE-1620WS_v1(1.00.11).zip	TPE-1620WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N	\N
105804	FW_TPE-1020WS_v1(1.0.0.28).zip	TPE-1020WS_v11	1.0.0.28	\N	52	\N	f	f	False	f	armel	\N	\N
105805	FW_TPE-1020WS_v1(1.0.0.29).zip	TPE-1020WS_v11	1.0.0.29	\N	52	\N	f	f	False	f	armel	\N	\N
12918	FW_TPE-1020WS_v1(1.00.13).zip	TPE-1020WS_v11	1.00.13	\N	52	\N	f	f	False	f	armel	\N	\N
105806	FW_TPE-1020WS_v1(1.0.0.26).zip	TPE-1020WS_v11	1.0.0.26	\N	52	\N	f	f	False	f	armel	\N	\N
12920	FW_TPE-1020WS_v1(1.00.10).zip	TPE-1020WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N	\N
16033	FW_TPE-1020WS_v1(1.00.19).zip	TPE-1020WS_v11	1.00.19	\N	52	\N	f	f	False	f	armel	\N	\N
105807	FW_TPE-1020WS_v1(1.00.21).zip	TPE-1020WS_v11	1.00.21	\N	52	\N	f	f	False	f	armel	\N	\N
105808	FW_TPE-1020WS_v1(1.00.23).zip	TPE-1020WS_v11	1.00.23	\N	52	\N	f	f	False	f	armel	\N	\N
12919	FW_TPE-1020WS_v1(1.00.11).zip	TPE-1020WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N	\N
105809	FW_TPE-1020WS_v1(1.00.24).zip	TPE-1020WS	1.00.24	\N	52	\N	f	f	False	f	armel	\N	\N
105810	FW_TPE-1020WS_v1(1.00.25).zip	TPE-1020WS_v11	1.00.25	\N	52	\N	f	f	False	f	armel	\N	\N
105818	FW_TL2-PG484_v1(1.01.08).zip	TL2-PG484	1.01.08	\N	52	\N	f	f	False	f	armel	\N	\N
105819	FW_TL2-PG484_v1(1.01.11).zip	TL2-PG484	1.01.11	\N	52	\N	f	f	False	f	armel	\N	\N
105820	FW_TL2-PG284_v1(1.01.08).zip	TL2-PG284	1.01.08	\N	52	\N	f	f	False	f	armel	\N	\N
105821	FW_TL2-PG284_v1(1.00.03).zip	TL2-PG284	1.00.03	\N	52	\N	f	f	False	f	armel	\N	\N
105822	FW_TL2-PG284_v1(1.01.11).zip	TL2-PG284	1.01.11	\N	52	\N	f	f	False	f	armel	\N	\N
105823	FW_TL2-G448_v1(1.01.04).zip	TL2-G448	1.01.04	\N	52	\N	f	f	False	f	armel	\N	\N
105824	FW_TL2-G448_v1(1.01.07).zip	TL2-G448	1.01.07	\N	52	\N	f	f	False	f	armel	\N	\N
105825	FW_TL2-G244_v2(2.00.04).zip	TL2-G244_v2	2.00.04	\N	52	\N	f	f	False	f	armel	\N	\N
105826	FW_TL2-G448_v1(1.00.05).zip	TL2-G448	1.00.05	\N	52	\N	f	f	False	f	armel	\N	\N
105827	FW_TL2-G244_v2(2.01.05).zip	TL2-G244_v2	2.01.05	\N	52	\N	f	f	False	f	armel	\N	\N
105828	FW_TL2-G244_v2(2.01.04).zip	TL2-G244_v2	2.01.04	\N	52	\N	f	f	False	f	armel	\N	\N
105829	FW_TL2-G244_v2(2.02.08).zip	TL2-G244_v2	2.02.08	\N	52	\N	f	f	False	f	armel	\N	\N
12860	FW_TL2-G244_v1.0R(1.00.06).zip	TL2-G244	1.00.06	\N	52	\N	f	f	False	f	armel	\N	\N
105830	FW_TL2-G244_v2(2.02.04).zip	TL2-G244_v2	2.02.04	\N	52	\N	f	f	False	f	armel	\N	\N
13627	FW_TL2-E284_v1.0R(1.00.010).zip	TL2-E284	1.00.010	\N	52	\N	f	f	False	f	armel	\N	\N
13626	FW_TL2-E284_v1.0R(1.00.011).zip	TL2-E284	1.00.011	\N	52	\N	f	f	False	f	armel	\N	\N
12861	FW_TL2-G244_v1.0R(1.00.07).zip	TL2-G244	1.00.07	\N	52	\N	f	f	False	f	armel	\N	\N
105838	FW_TI-PG541i_v1(1.1.3.S0).zip	TI-PG541i_v1.0R	1.1.3.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105839	FW_TI-PG541i_v1(1.1.1.D0).zip	TI-PG541i	1.1.1.D0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105840	FW_TI-PG541i_v1(1.0.9.S0).zip	TI-PG541i	1.0.9.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105841	FW_TI-PG541i_v1(1.1.1.S0).zip	TI-PG541i	1.1.1.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105842	FW_TI-PG541i_v1(1.1.4.S0).zip	TI-PG541i	1.1.4.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105843	FW_TI-PG541i_v1(1.1.2.S0).zip	TI-PG541i	1.1.2.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105844	FW_TI-PG541i_v1(1.1.5.S0).zip	TI-PG541i	1.1.5.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105845	FW_TI-PG541i_v1(1.1.6.S0).zip	TI-PG541i	1.1.6.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105848	FW_TI-PG1284i_v1(1.1.3.S0).zip	TI-PG1284i	1.1.3.S0	\N	52	\N	f	f	False	f	armel	\N	\N
105849	TI-PG1284i-086-1.0.0.S0.zip	TI-PG1284i_v2.0R	1.0.0.S0	\N	52	\N	f	f	False	f	armel	\N	\N
105850	FW_TI-PG1284i_v1(1.1.4.S0).zip	TI-PG1284i	1.1.4.S0	\N	52	\N	f	f	False	f	armel	\N	\N
105851	FW_TI-PG102i_v1(1.0.5.S0).zip	TI-PG102i_v1.0R	1.0.5.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105852	FW_TI-PG1284i_v1(1.1.7.S0).zip	TI-PG1284i	1.1.7.S0	\N	52	\N	f	f	False	f	armel	\N	\N
105853	FW_TI-PG102i_v1(1.0.6.S0).zip	TI-PG102i_v1.0R	1.0.6.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105854	FW_TI-PG1284i_v1(1.1.8.S0).zip	TI-PG1284i	1.1.8.S0	\N	52	\N	f	f	False	f	armel	\N	\N
105855	FW_TI-PG102i_v1(1.0.7.S0).zip	TI-PG102i_v1.0R	1.0.7.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105856	FW_TI-PG1284i_v1(1.1.9.S0).zip	TI-PG1284i	1.1.9.S0	\N	52	\N	f	f	False	f	armel	\N	\N
105859	FW_TI-PG102i_v1(1.0.4.S0).zip	TI-PG102i	1.0.4.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105860	FW_TI-PG102i_v1(1.0.8.S0).zip	TI-PG102i	1.0.8.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105861	FW_TI-PG102i_v1(1.0.9.S0).zip	TI-PG102i	1.0.9.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105862	FW_TI-G642i_v1(1.0.0.S0).zip	TI-G642i_v1.0R	1.0.0.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105863	FW_TI-G642i_v1(1.0.1.S0).zip	TI-G642i_v1.0R	1.0.1.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105864	FW_TI-G642i_v1(1.0.2.S0).zip	TI-G642i_v1.0R	1.0.2.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105865	FW_TI-G642i_v1(1.0.3.S0).zip	TI-G642i_v1.0R	1.0.3.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105868	FW_TI-G160WS_v1(1.0.2.S0).zip	TI-G160WS	1.0.2.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105869	FW_TI-G160WS_v1(1.0.3.S0).zip	TI-G160WS	1.0.3.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105870	FW_TI-G160WS_v1(1.0.4.S0).zip	TI-G160WS	1.0.4.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105871	FW_TI-G160WS_v1(1.0.5.S0).zip	TI-G160WS	1.0.5.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105872	FW_TI-G160WS_v1(1.0.6.S0).zip	TI-G160WS	1.0.6.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105873	FW_TI-G160WS_v1(1.0.8.D0).zip	TI-G160WS	1.0.8.D0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105875	FW_TI-G160WS_v1(1.07.D1).zip	TI-G160WS	1.07.D1	\N	52	\N	f	f	False	f	mipseb	\N	\N
105877	FW_TI-G102i_v1(1.0.0.S0).zip	TI-G102i_v1.0R	1.0.0.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105878	FW_TI-G102i_v1(1.0.1.S0).zip	TI-G102i_v1.0R	1.0.1.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105879	FW_TI-G102i_v1(1.0.2.S0).zip	TI-G102i_v1.0R	1.0.2.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105880	FW_TI-G102i_v1(1.0.3.S0).zip	TI-G102i_v1.0R	1.0.3.S0	\N	52	\N	f	f	False	f	mipseb	\N	\N
105883	FW_THA-103AC(1.00).zip	THA-103AC	1.00	\N	52	\N	f	f	False	f	mipsel	\N	\N
13036	FW_THA-101(1.01).zip	THA-101	1.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
105884	FW_THA-101(1.02).zip	THA-101	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13637	FW_TEW-713RE(1.02).zip	TEW-713RE	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
105885	FW_THA-103AC_v1(1.00_F-20170120).zip	THA-103AC	1.00_F-20170120	\N	52	\N	f	f	False	f	mipsel	\N	\N
105886	FW_THA-101(1.03).zip	THA-101	1.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13792	FW_TFC-1600MM_A(1.17).zip	TFC-1600MM_a1	1.17	\N	52	\N	f	f	False	f	\N	\N	\N
13096	Firmware_TFC-1600MM_1.15.zip	TFC-1600MM	1.15	\N	52	\N	f	f	False	f	\N	\N	\N
13097	FW_TFM-1600MM(v1.21).zip	TFC-1600MM	v1.21	\N	52	\N	f	f	False	f	\N	\N	\N
13292	TEW-MFP1v1_(FW1.045).zip	TEW-MFP1	FW1.045	\N	52	\N	f	f	False	f	mipsel	\N	\N
105905	TEW-MFP1v1_(FW1.070.1).zip	TEW-MFP1	FW1.070.1	\N	52	\N	f	f	False	f	mipsel	\N	\N
105917	FW_TEW-828DRU_v1(1.0.2.0).zip	TEW-828DRU	1.0.2.0	\N	52	\N	f	f	False	f	armel	\N	\N
105918	dd-wrtFW_TEW-828DRU_v1(v3-r27490).zip	TEW-828DRU_v11	v3-r27490	\N	52	\N	f	f	False	f	armel	\N	\N
105919	FW_TEW-828DRU_v1(1.0.4.0).zip	TEW-828DRU	1.0.4.0	\N	52	\N	f	f	False	f	armel	\N	\N
105920	FW_TEW-828DRU_v1(1.0.5.0).zip	TEW-828DRU_v11	1.0.5.0	\N	52	\N	f	f	False	f	armel	\N	\N
105921	FW_TEW-828DRU_v1(1.0.6.0).zip	TEW-828DRU_v11	1.0.6.0	\N	52	\N	f	f	False	f	armel	\N	\N
105922	FW_TEW-828DRU_v1(1.0.7.2).zip	TEW-828DRU	1.0.7.2	\N	52	\N	f	f	False	f	armel	\N	\N
105923	FW_TEW-828DRU_v1(1.0.8.1).zip	TEW-828DRU	1.0.8.1	\N	52	\N	f	f	False	f	armel	\N	\N
105924	FW_TEW-828DRU_v1(1.0.7.0).zip	TEW-828DRU_v11	1.0.7.0	\N	52	\N	f	f	False	f	armel	\N	\N
13075	FW_TEW-711BR_v2(2.00b10).zip	TEW-711BR_v2	2.00b10	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
13114	FW_TEW-716BRG_v1(1.03).zip	TEW-716BRG	1.03	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;80/tcp closed http;
13349	TEW-673GRU_FW100B36.zip	TEW-673GRU	FW100B36	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
106062	FW_TEW-711BR_v1(1.03b01).zip	TEW-711BR	1.03b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
106061	TEW-711BRv2_(FW2.01b01).zip	TEW-711BR_v2	FW2.01b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
13115	TEW-716BRG_(FW1.02).zip	TEW-716BRG	FW1.02	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old timeout
13184	FW_TEW-714TRU_EU_1.01.zip	TEW-714TRU	1.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13185	FW_TEW-714TRU_EU_1.02.zip	TEW-714TRU	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13788	TEW-712BRv1_(FW1.01B02).zip	TEW-712BR	FW1.01B02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old timeout
13308	TEW-676APBOv1(FW1.02).zip	TEW-676APBO	FW1.02	\N	52	\N	f	f	[('bre0', '192.168.10.100')]	f	mipsel	\N	old;80/tcp closed http;
106060	FW_TEW-714TRU_EU_1.04.zip	TEW-714TRU	1.04	\N	52	\N	f	f	False	f	mipsel	\N	\N
12962	FW_TEW-711BR_v1.0R_v1.1R(1.01b09).zip	TEW-711BR	1.01b09	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
13351	TEW-673GRUv1.0R(1.00b24).zip	TEW-673GRU	1.00b24	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13348	TEW-673GRUv1.0R(100b21).zip	TEW-673GRU	100b21	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
12960	FW_TEW-711BR_v1(1.02b03).zip	TEW-711BR	1.02b03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
12959	FW_TEW-711BR_v1(1.02b05).zip	TEW-711BR	1.02b05	\N	52	\N	f	f	False	f	mipseb	\N	\N
14472	TD-W8968_V2_140514.zip	TD-W8968		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
13101	TEW-692GRv1(FW1.0.0.11).zip	TEW-692GR	FW1.0.0.11	\N	52	\N	f	f	False	f	mipsel	\N	\N
13099	TEW-692GRv1.0R(FW1.0.0.0).zip	TEW-692GR	FW1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13098	TEW-692GRv1_(FW1.0.2.0).zip	TEW-692GR	FW1.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13100	TEW-692GRv1_(FW1.0.8.0).zip	TEW-692GR	FW1.0.8.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13004	FW_TEW-691GRv1(1.0.0.25).zip	TEW-691GR	1.0.0.25	\N	52	\N	f	f	False	f	mipsel	\N	\N
13007	TEW-691GR_(1.0.0.0).zip	TEW-691GR	1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13370	TEW-690APv1_(FW0.0.0.50).zip	TEW-690AP	FW0.0.0.50	\N	52	\N	f	f	False	f	mipsel	\N	\N
13006	TEW-691GRv1.0R(1.0.0.25).zip	TEW-691GR	1.0.0.25	\N	52	\N	f	f	False	f	mipsel	\N	\N
13369	TEW-690APv1_(FW1.0.0.8).zip	TEW-690AP	FW1.0.0.8	\N	52	\N	f	f	False	f	mipsel	\N	\N
13005	TEW-691GRv1_(FW1.0.1.0).zip	TEW-691GR	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13455	FW_TEW-687GAv1.0R(1.0.0.0).zip	TEW-687GA	1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13371	TEW-690APv1_(FW1.0.1.0).zip	TEW-690AP	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13003	TEW-691GRv1_(FW1.1.2.0).zip	TEW-691GR	FW1.1.2.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
105999	TEW-812DRUv2_(FW2.0.10.0).zip	TEW-812DRU_v2	FW2.0.10.0	\N	52	\N	f	f	False	f	armel	\N	\N
13368	TEW-690APv1_(FW1.0.2.0).zip	TEW-690AP	FW1.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106000	TEW-812DRUv2_(FW2.1.0.0).zip	TEW-812DRU_v2	FW2.1.0.0	\N	52	\N	f	f	False	f	armel	\N	\N
13001	TEW-691GRv1_(FW1.1.3.0).zip	TEW-691GR	FW1.1.3.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13768	TEW-812DRUv2_(FW2.0.8.0).zip	TEW-812DRU_v2	FW2.0.8.0	\N	52	\N	f	f	False	f	armel	\N	\N
106001	TEW-812DRUv2_(FW2.1.1.0).zip	TEW-812DRU_v2	FW2.1.1.0	\N	52	\N	f	f	False	f	armel	\N	\N
106002	TEW-812DRUv2_(FW2.1.2.0).zip	TEW-812DRU_v2	FW2.1.2.0	\N	52	\N	f	f	False	f	armel	\N	\N
106054	TEW-722BRMv1_(FW1.02B02).zip	TEW-722BRM	FW1.02B02	\N	52	\N	f	f	False	f	mipseb	\N	\N
106055	TEW-722BRMv1_(FW1.02B08).zip	TEW-722BRM	FW1.02B08	\N	52	\N	f	f	False	f	mipseb	\N	\N
13475	TEW-680MBv1.0R(FW1.0.0.7).zip	TEW-680MB	FW1.0.0.7	\N	52	\N	f	f	False	f	mipsel	\N	\N
13474	TEW-680MBv1_(FW1.0.1.0).zip	TEW-680MB	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
106056	TEW-721BRMv1_(FW1.01B01).zip	TEW-721BRM	FW1.01B01	\N	52	\N	f	f	False	f	mipseb	\N	\N
106057	TEW-721BRMv1_(FW1.02B02).zip	TEW-721BRM	FW1.02B02	\N	52	\N	f	f	False	f	mipseb	\N	\N
106058	TEW-721BRMv1_(FW1.02B07).zip	TEW-721BRM	FW1.02B07	\N	52	\N	f	f	False	f	mipseb	\N	\N
13182	FW_TEW-714TRU_A_1.01.zip	TEW-714TRU	1.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13187	FW_TEW-714TRU_A_1.02.zip	TEW-714TRU	1.02	\N	52	\N	f	f	False	f	mipsel	\N	\N
13183	FW_TEW-714TRU_A_1.03.zip	TEW-714TRU	1.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
13636	FW_TEW-713RE(1.01).zip	TEW-713RE	1.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
106059	FW_TEW-714TRU_A_1.04.zip	TEW-714TRU	1.04	\N	52	\N	f	f	False	f	mipsel	\N	\N
13530	FW_TEW-652BRP_V1(1.10b08).zip	TEW-652BRP	1.10b08	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	no results
106067	FW_TEW-651BR_v2(2.05B01).zip	TEW-651BR_v2.2R	2.05B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
106068	FW_TEW-651BR_v2.0R(2.00b12).zip	TEW-651BR_v2.1	2.00b12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
13632	FW_TEW-638PAP_V1(1.2.7).zip	TEW-638PAP	1.2.7	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N	old infer failed
13081	FW_TEW-639GR_V1.0(1.0.7.10).zip	TEW-639GR	1.0.7.10	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N	old infer failed
13402	FW_TEW-652BRU_v1.0R(1.00b12).zip	TEW-652BRU	1.00b12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
16117	TEW-651BRv2.x_(FW2.04B1).zip	TEW-651BR_v2.3R	FW2.04B1	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
16118	TEW-652BRPv3.x_(FW3.03B01).zip	TEW-652BRP_v3.2	FW3.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
13378	TEW-638APBv3(FW3.0.1.0).zip	TEW-638APB_v3	FW3.0.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
12943	TEW-639GRv3(FW3.0.0.0).zip	TEW-639GR_v3	FW3.0.0.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13674	FW_TEW-IP637AP(V3_3.0.4.0).zip	TEW-637AP_v3	V3_3.0.4.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13377	TEW-638APBv3_(FW3.1.2.0).zip	TEW-638APB_v31	FW3.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13528	FW_TEW652BRP_V1(1.10B14).zip	TEW-652BRP	1.10B14	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13379	TEW-638APBv3(3.0.0.1).zip	TEW-638APB_v31	3.0.0.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
12946	TEW-639GRv3(FW3.0.0.4).zip	TEW-639GR_v3	FW3.0.0.4	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13529	TEW-652BRPV1(FW1.10B29).zip	TEW-652BRP	FW1.10B29	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13267	FW_TEW-651BR(1.00B13).zip	TEW-651BR	1.00B13	\N	52	\N	f	f	False	f	mipseb	\N	\N
13272	FW_TEW-651BR(1.01B11).zip	TEW-651BR	1.01B11	\N	52	\N	f	f	False	f	mipseb	\N	\N
13270	FW_TEW-651BR(1.01B12).zip	TEW-651BR	1.01B12	\N	52	\N	f	f	False	f	mipseb	\N	\N
13269	TEW651BR_FW101B0022.zip	TEW-651BR	FW101B0022	\N	52	\N	f	f	False	f	mipseb	\N	\N
13447	FW_TEW-652BRP_v2.0R_v2.1R_v2.2R(2.00b44).zip	TEW-652BRP_v2	2.00b44	\N	52	\N	f	f	False	f	mipseb	\N	\N
13271	TEW651BR_FW101B18.zip	TEW-651BR	FW101B18	\N	52	\N	f	f	False	f	mipseb	\N	\N
13450	TEW-652BRP_v2.0R(2.00).zip	TEW-652BRP_v2	2.00	\N	52	\N	f	f	False	f	mipseb	\N	\N
13805	FW_TEW-650APv1_(0.0.0.185).zip	TEW-650AP	0.0.0.185	\N	52	\N	f	f	False	f	mipsel	\N	\N
13448	TEW-652BRPv2(FW2.00B45).zip	TEW-652BRP_v2	FW2.00B45	\N	52	\N	f	f	False	f	mipseb	\N	\N
13804	TEW-650APv1_(FW1.0.1.0).zip	TEW-650AP	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13803	TEW-650APv1_(FW1.0.2.0).zip	TEW-650AP	FW1.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13451	TEW-652BRPV2.0R(2.00B32).zip	TEW-652BRP_v2	2.00B32	\N	52	\N	f	f	False	f	mipseb	\N	\N
13449	TEW-652BRPV2.0R(2.00B36).zip	TEW-652BRP_v2	2.00B36	\N	52	\N	f	f	False	f	mipseb	\N	\N
13453	TEW-652BRPv2.0R(200B16).zip	TEW-652BRP_v2	200B16	\N	52	\N	f	f	False	f	mipseb	\N	\N
13452	TEW-652BRPv2.0R(200B22).zip	TEW-652BRP_v2	200B22	\N	52	\N	f	f	False	f	mipseb	\N	\N
13383	TEW-647GAv2(1.0.1.29).zip	TEW-647GA_v2	1.0.1.29	\N	52	\N	f	f	False	f	mipsel	\N	\N
13384	TEW-647GAv2(1.01.75).zip	TEW-647GA_v2	1.01.75	\N	52	\N	f	f	False	f	mipsel	\N	\N
13020	FW_TEW-647GA(v0.0.7.47).zip	TEW-647GA	v0.0.7.47	\N	52	\N	f	f	False	f	mipsel	\N	\N
13262	TEW-640MBv1.0R(1.0.0.0).zip	TEW-640MB	1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13513	FW_TEW-639GRv2(2.0.0.50).zip	TEW-639GR_v2	2.0.0.50	\N	52	\N	f	f	False	f	mipsel	\N	\N
13517	TEW-639GRv2(2.0.0.82).zip	TEW-639GR_v2	2.0.0.82	\N	52	\N	f	f	False	f	mipsel	\N	\N
13514	TEW-639GRv2(FW2.0.0.0).zip	TEW-639GR_v2	FW2.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13082	FW_TEW-639GR_V1(1.0.8.16).zip	TEW-639GR	1.0.8.16	\N	52	\N	f	f	False	f	mipsel	\N	\N
13515	TEW-639GRv2_(FW2.0.0.58).zip	TEW-639GR_v2	FW2.0.0.58	\N	52	\N	f	f	False	f	mipsel	\N	\N
13079	FW_TEW-639GR_V1.0(1.0.6.33).zip	TEW-639GR	1.0.6.33	\N	52	\N	f	f	False	f	mipsel	\N	\N
12944	TEW-639GRv3_(3.1.2.0).zip	TEW-639GR_v3	3.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
106070	TEW-638APBv3_(FW3.1.4.0).zip	TEW-638APB_v31	FW3.1.4.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13631	TEW-638PAP_V1(1.2.5).zip	TEW-638PAP	1.2.5	\N	52	\N	f	f	False	f	mipsel	\N	\N
13652	FW_TEW-654TR_v1.0R(1.02.01).zip	TEW-654TR	1.02.01	\N	52	\N	f	f	False	f	mipsel	\N	\N
13078	TEW-639GRv1.0(1.0.9.178).zip	TEW-639GR	1.0.9.178	\N	52	\N	f	f	False	f	mipsel	\N	\N
13634	TEW-638PAPv1_(FW1.2.1.5).zip	TEW-638PAP	FW1.2.1.5	\N	52	\N	f	f	False	f	mipsel	\N	\N
13656	FW_TEW-654TR_v1.0R(1.10.10).zip	TEW-654TR	1.10.10	\N	52	\N	f	f	False	f	mipsel	\N	\N
12945	TEW-639GRv3_(FW3.0.2.0).zip	TEW-639GR_v3	FW3.0.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13635	TEW-638PAPv1_(FW1.2.13).zip	TEW-638PAP	FW1.2.13	\N	52	\N	f	f	False	f	mipsel	\N	\N
13655	FW_TEW-654TR_v1.0R(1.10.12).zip	TEW-654TR	1.10.12	\N	52	\N	f	f	False	f	mipsel	\N	\N
13633	TEW-638PAPv1_(FW1.2.16).zip	TEW-638PAP	FW1.2.16	\N	52	\N	f	f	False	f	mipsel	\N	\N
13654	FW_TEW-654TRv1(1.10B21).zip	TEW-654TR	1.10B21	\N	52	\N	f	f	False	f	mipsel	\N	\N
14198	TL-WA701ND_V2_140324.zip	TL-WA701ND	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
14197	TL-WA701ND_V2_130528.zip	TL-WA701ND	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
12947	TEW-639GRv3_(FW3.0.3.0).zip	TEW-639GR_v3	FW3.0.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
13651	TEW-654TRv1_(FW1.10B24).zip	TEW-654TR	FW1.10B24	\N	52	\N	f	f	False	f	mipsel	\N	\N
12941	TEW-639GRv3_(FW3.1.5.0).zip	TEW-639GR_v3	FW3.1.5.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
12948	TEW-639GRv3_(FW3.1.6.0).zip	TEW-639GR_v3	FW3.1.6.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
13239	FW_TEW-638APB_V1.0.8.zip	TEW-638APB	V1.0.8	\N	52	\N	f	f	False	f	mipsel	\N	\N
13145	FW_TEW-455APBOv2(2.1.5)_FCC.zip	TEW-455APBO_v3	2.1.5	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;
13154	FW_TEW-455APBOv2(2.0.6)_FCC.zip	TEW-455APBO_v2	2.0.6	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;
106082	FW_TEG-524WS_v1(2.10.024).zip	TEG-524WS	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13029	TEW-634GRU_FW101B06.zip	TEW-634GRU	FW101B06	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13148	FW_TEW-455APBOv2(2.05_CE).zip	TEW-455APBO_v2	2.05_CE	\N	52	\N	f	f	[('eth0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;
13676	TEW-637APv3_(FW3.0.1.0).zip	TEW-637AP_v3	FW3.0.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
106083	fw_teg-524ws_v1(v2.10.010).zip	TEG-524WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13028	TEW-634GRUv1_(FW1.01B14).zip	TEW-634GRU	FW1.01B14	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13144	FW_TEW-455APBOv2(2.05_FCC).zip	TEW-455APBO_v2	2.05_FCC	\N	52	\N	f	f	[('eth0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;
105925	FW_TEW-828DRU_v1(1.0.8.2).zip	TEW-828DRU_v11	1.0.8.2	\N	52	\N	f	f	False	f	armel	\N	\N
13678	TEW-637APv3_(FW3.1.1.0).zip	TEW-637AP_v3	FW3.1.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
12911	TEW-632BRPA1(FW1.10B31).zip	TEW-632BRP_A1.1	FW1.10B31	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
13150	FW_TEW-455APBOv2(2.1.1)_CE.zip	TEW-455APBO_v2	2.1.1	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;
13679	TEW-637APv3_(FW3.1.2.0).zip	TEW-637AP_v3	FW3.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13356	TEW-655BR3Gv1_(FW1.09b8).zip	TEW-655BR3G	FW1.09b8	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old timeout
13146	FW_TEW-455APBOv2(2.1.4)_FCC.zip	TEW-455APBO_v2	2.1.4	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet
13147	FW_TEW-455APBOv3(2.1.3)_CE.zip	TEW-455APBO_v2	2.1.3	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet
16022	FW_TEW-435BRM_D1.0(v1012).zip	TEW-435BRM_d1_1	v1012	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N	down
13484	TEW-436BRM(v1.00.14).zip	TEW-436BRM	v1.00.14	\N	52	\N	f	f	False	f	mipseb	\N	\N
13675	TEW-637v3_(FW3.0.0.1).zip	TEW-637AP_v3	FW3.0.0.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
12914	TEW-632BRPv1_1R_(110b19).zip	TEW-632BRP_A1.1	110b19	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http2601/tcp open  zebra2602/tcp open  ripd
13697	Firmware_TEW-435BRM(B1)_20007.zip	TEW-435BRM_b1	B1	\N	52	\N	f	f	False	f	mipsel	\N	\N
12973	Firmware_TEW-435BRM_0121e.zip	TEW-435BRM	0121e	\N	52	\N	f	f	False	f	mipsel	\N	\N
12977	Firmware_TEW-435BRM_40007.zip	TEW-435BRM	40007	\N	52	\N	f	f	False	f	mipsel	\N	\N
13126	FW_TEW-434APB(v1.01.b02).zip	TEW-434APB	v1.01.b02	\N	52	\N	f	f	False	f	mipseb	\N	\N
16020	FW_TEW-432BRP_D1(3.10B0013).zip	TEW-432BRP_d1_2	3.10B0013	\N	52	\N	f	f	False	f	mipseb	\N	\N
109954	AP300(US)_V1_180907(Beta).zip	AP300		\N	51	\N	f	f	False	f	armel	\N	\N
16021	FW_TEW-432BRP_D1(3.10B0015).zip	TEW-432BRP_d1_2	3.10B0015	\N	52	\N	f	f	False	f	mipseb	\N	\N
13155	FW_TEW-455APBOv2(2.1.3)_FCC.zip	TEW-455APBO_v2	2.1.3	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet
13159	TEW-432BRPvD1.2(FW3.10B19).zip	TEW-432BRP_d1_2	FW3.10B19	\N	52	\N	f	f	False	f	mipseb	\N	\N
13780	fw_tew-435brm_d1.0(v1011).zip	TEW-435BRM_d1_1	v1011	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N	down
16115	TEW432BRP_D1.2R_FW3.10B20.zip	TEW-432BRP_d1_2	FW3.10B20	\N	52	\N	f	f	False	f	mipseb	\N	\N
13134	FW_TEW-430APB_C1.x_D1.x(2.11).zip	TEW-430APB_d1	2.11	\N	52	\N	f	f	False	f	mipseb	\N	\N
12895	FW_TEW-638APB_V2(1.1.10).zip	TEW-638APB_v2	1.1.10	\N	52	\N	f	f	False	f	mipsel	\N	\N
13132	FW_TEW-430APB_C1.x_D1.x(2.12).zip	TEW-430APB_d1	2.12	\N	52	\N	f	f	False	f	mipseb	\N	\N
13649	Firmware_TEW-411BRPplus_2.07_EU.zip	TEW-411BRPplus	EU	\N	52	\N	f	f	False	f	mipsel	\N	\N
12896	FW_TEW-638APB_V2(1.1.8).zip	TEW-638APB_v2	1.1.8	\N	52	\N	f	f	False	f	mipsel	\N	\N
13770	Firmware_TEW-410APBplus_1.3.06b.zip	TEW-410APBplus	1.3.06b	\N	52	\N	f	f	False	f	mipsel	\N	\N
13291	Firmware_TEW-230APB_3.1.zip	TEW-230APB	3.1	\N	52	\N	f	f	False	f	mipseb	\N	\N
12905	FW_TEW-637AP_V2(1.3.0.82).zip	TEW-637AP_v2	1.3.0.82	\N	52	\N	f	f	False	f	mipsel	\N	\N
13592	fimage_WHTa_201.zip	TEW-212APBO	201	\N	52	\N	f	f	False	f	\N	\N	\N
13591	fimage_WHTs_200.zip	TEW-212APBO	200	\N	52	\N	f	f	False	f	\N	\N	\N
12903	FW_TEW-637AP_V2(1.3.0.84).zip	TEW-637AP_v2	1.3.0.84	\N	52	\N	f	f	False	f	mipsel	\N	\N
16019	FW_TEG-448WS_C1(1.00.14).zip	TEG-448WS_c11	1.00.14	\N	52	\N	f	f	False	f	armel	\N	\N
13801	FW_TEW-637APB_V1.0(1.2.0.26).zip	TEW-637AP	1.2.0.26	\N	52	\N	f	f	False	f	mipsel	\N	\N
13332	FW_TEW-636APB_v1.x(1.0.0.5).zip	TEW-636APB	1.0.0.5	\N	52	\N	f	f	False	f	mipseb	\N	\N
106084	FW_TEG-448WS_C1(1.00.15).zip	TEG-448WS_c11	1.00.15	\N	52	\N	f	f	False	f	armel	\N	\N
106085	FW_TEG-448WS_C1(1.00.16).zip	TEG-448WS_c11	1.00.16	\N	52	\N	f	f	False	f	armel	\N	\N
12963	TEW-635BRMv2.0R(1.00.01).zip	TEW-635BRM_v2	1.00.01	\N	52	\N	f	f	False	f	mipseb	\N	\N
13570	FW_TEG-448WS_C1(1.00.09).zip	TEG-448WS_c1	1.00.09	\N	52	\N	f	f	False	f	armel	\N	\N
12964	TEW-635BRMv2.0R(1.00.03).zip	TEW-635BRM_v2	1.00.03	\N	52	\N	f	f	False	f	mipseb	\N	\N
13500	FW_TEW-635BRM_V1.0(1.00.06).zip	TEW-635BRM	1.00.06	\N	52	\N	f	f	False	f	\N	\N	\N
13502	FW_TEW-635BRM_V1.0(1.00.09).zip	TEW-635BRM	1.00.09	\N	52	\N	f	f	False	f	\N	\N	\N
106086	FW_TEG-448WS_C1(1.00.17).zip	TEG-448WS_c11	1.00.17	\N	52	\N	f	f	False	f	armel	\N	\N
13042	FW_TEW-636APB_v1.x(1005).zip	TEW-636APB_v11	1005	\N	52	\N	f	f	False	f	mipseb	\N	\N
13499	FW_TEW-635BRM_V1.0(1.00.1C).zip	TEW-635BRM	1.00.1C	\N	52	\N	f	f	False	f	\N	\N	\N
13501	FW_TEW-635BRMv1.0(1004).zip	TEW-635BRM	1004	\N	52	\N	f	f	False	f	\N	\N	\N
13503	FW_TEW-635BRMV1.0R(1005).zip	TEW-635BRM	1005	\N	52	\N	f	f	False	f	\N	\N	\N
106087	FW_TEG-448WS_C1(1.00.18).zip	TEG-448WS_c1	1.00.18	\N	52	\N	f	f	False	f	armel	\N	\N
105980	FW_TEW-818DRU_v1(1.0.14.6).zip	TEW-818DRU	1.0.14.6	\N	52	\N	f	f	False	f	armel	\N	\N
106097	FW_TEG-30284_v1(1.00.014).zip	TEG-30284	1.00.014	\N	52	\N	f	f	False	f	armel	\N	\N
106098	FW_TEG-30284_v1(1.00.015).zip	TEG-30284	1.00.015	\N	52	\N	f	f	False	f	armel	\N	\N
106099	FW_TEG-30284_v1(1.00.016).zip	TEG-30284	1.00.016	\N	52	\N	f	f	False	f	armel	\N	\N
106100	FW_TEG-30284_v1(1.00.022).zip	TEG-30284	1.00.022	\N	52	\N	f	f	False	f	armel	\N	\N
106101	FW_TEG-30284_v1(1.00.024).zip	TEG-30284	1.00.024	\N	52	\N	f	f	False	f	armel	\N	\N
14195	TL-WA701ND_V1_130110_beta.zip	TL-WA701ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
106103	FW_TEG-30284_v1(1.00.10).zip	TEG-30284	1.00.10	\N	52	\N	f	f	False	f	armel	\N	\N
109975	TL-WPA4220(US_AR_BR)_V4_180514.zip	TL-WPA4220		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
13555	FW_TEG-424WS_v2(4.00.011).zip	TEG-424WS_v2	4.00.011	\N	52	\N	f	f	False	f	mipseb	\N	\N
13554	FW_TEG-424WS_v2(4.00.012).zip	TEG-424WS_v2	4.00.012	\N	52	\N	f	f	False	f	mipseb	\N	\N
106088	FW_TEG-424WS_v2(4.00.015).zip	TEG-424WS_v2	4.00.015	\N	52	\N	f	f	False	f	mipseb	\N	\N
106089	FW_TEG-424WS_v2(4.00.020).zip	TEG-424WS_v2	4.00.020	\N	52	\N	f	f	False	f	mipseb	\N	\N
106090	FW_TEG-40128_v1(1.00.014).zip	TEG-40128	1.00.014	\N	52	\N	f	f	False	f	armel	\N	\N
106091	FW_TEG-40128_v1(1.00.015).zip	TEG-40128	1.00.015	\N	52	\N	f	f	False	f	armel	\N	\N
106092	FW_TEG-40128_v1(1.00.021).zip	TEG-40128	1.00.021	\N	52	\N	f	f	False	f	armel	\N	\N
106093	FW_TEG-40128_v1(1.00.023).zip	TEG-40128	1.00.023	\N	52	\N	f	f	False	f	armel	\N	\N
106094	FW_TEG-40128_v1(1.00.10).zip	TEG-40128	1.00.10	\N	52	\N	f	f	False	f	armel	\N	\N
106095	TEG-40128_v1(1.00.013).zip	TEG-40128	1.00.013	\N	52	\N	f	f	False	f	armel	\N	\N
106096	FW_TEG-30284_v1(1.00.013).zip	TEG-30284	1.00.013	\N	52	\N	f	f	False	f	armel	\N	\N
109958	AP500(US)_V1_151214_1481264774509i.zip	AP500		\N	51	\N	f	f	False	f	armel	\N	\N
13927	TL-WA801ND_V1_130131_beta.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
106102	FW_TEG-284WS_v1(1.00.010).zip	TEG-284WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13350	TEW-673GRU_FW100B40.zip	TEW-673GRU	FW100B40	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp    open     http;1009/tcp  filtered unknown;2601/tcp  open     zebra;2602/tcp  open     ripd;5815/tcp  filtered unknown;19101/tcp filtered unknown;55055/tcp filtered unknown;
14194	201121815584511.zip	TL-WA701ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
106104	FW_TEG-284WS_v1(2.10.024).zip	TEG-284WS	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13551	FW_TEW-651BR_v2.0R_v2.1R_v2.2R(2.00b12).zip	TEW-651BR_v2.3R	2.00b12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
16026	FW_TEW-652BRP_v3.0R(3.00b13).zip	TEW-652BRP_v3.1	3.00b13	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
14646	201092016340219.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
16024	FW_TEW-651BR_v2.0R(2.01b05)-TRMEX.zip	TEW-651BR_v2.1	2.01b05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
4552	WNDR4500v2-V1.0.0.26_1.0.16.zip	WNDR4500v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
14650	201042810325414.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
14652	20103154143115.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
13931	TL-WA801ND_V1_120309.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
109974	TL-WPA4220_V4_190326.zip	TL-WPA4220		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
13930	20113181424711.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
109965	TL-WA801ND_V2_150422.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
13933	TL-WA801ND_V2_140425.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
13928	TL-WA801ND_V2_130121.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
14647	TL-WA901ND_V2_130131_beta.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
14651	TL-WA901ND_V2_120224.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
14654	20113181395511.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
109966	TL-WA901ND_V3_150409.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109967	TL-WA901ND_V3_141030.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
14645	TL-WA901ND_V3_130828.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109968	TL-WA901ND(US)_V4_151102_1481264684761f.zip	TL-WA901ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109976	TL-WPA4220(US)_V4_180503.zip	TL-WPA4220		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110000	TL-WPA8630(US)_V2_171011.zip	TL-WPA8630 KIT	v2	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp open  http
109977	TL-WA801ND(US)_V3_151217.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109979	TL-WA801ND_V3_150723.zip	TL-WA801ND		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
110002	TL-WPA8630P(US)_V1_160511.zip	TL-WPA8630P KIT		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp open  http
109994	TL-WPA7510KIT_V2_190214.zip	TL-WPA7510 KIT	v2	\N	51	\N	f	f	False	f	mipsel	\N	\N
110001	TL-WPA8630P(US)_V1_170405(AP).zip	TL-WPA8630P KIT		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp open  http
109956	TL-WA1201(US)_V2_200104.zip	TL-WA1201		\N	51	\N	f	f	[('eth0', '192.168.0.1')]	f	mipseb	\N	
13668	TEW-818DRUv1.0R_OpenSource.zip	TEW-818DRU	OpenSource	\N	52	\N	f	f	[('br0', '169.254.255.1'), ('br0', '113.152.222.182')]	f	armel	\N	All 1000 scanned ports on 169.254.255.1 are filtered
109955	TL-WA1201(EU&US)_V2_200709.zip	TL-WA1201		\N	51	\N	f	f	[('eth0', '192.168.0.1')]	f	mipseb	\N	
14193	TL-WA701ND_V1_120228.zip	TL-WA701ND		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
108933	Archer_C5_v2_gpl_code.tar.bz2	Archer C5	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109018	TL-WR841N_V13_GPL.tar.gz	TL-WR841N		\N	51	\N	f	f	False	f	\N	\N	\N
109035	GPL_ArcherC2v1.tar.gz	Archer C2		\N	51	\N	f	f	False	f	\N	\N	\N
109108	DXS-1210-SERIES_REVA2_FIRMWARE_v1.15.005.zip	DXS-1210-12TC	1.15.005	\N	18	\N	f	f	False	f	armel	\N	\N
109110	DXS-1210-SERIES_REVA2_FIRMWARE_v1.20.007_HOTFIX.zip	DXS-1210-12TC	1.20.007	\N	18	\N	f	f	False	f	armel	\N	\N
109111	DXS-1210-SERIES_REVA2_FIRMWARE_v1.20.010_HOTFIX.zip	DXS-1210-12TC	1.20.010	\N	18	\N	f	f	False	f	armel	\N	\N
109114	DXS-1210-12SC_REVA1_FIRMWARE_v1.00.024.zip	DXS-1210-12SC	1.00.024	\N	18	\N	f	f	False	f	armel	\N	\N
109314	DGS-1500-28P_REVA_FIRMWARE_v2.51B022_BETA.zip	DGS-1500-28P	2.51B022	\N	18	\N	f	f	False	f	armel	\N	\N
109319	DGS-1210-52MP_REVF_FIRMWARE_v6.00.021.zip	DGS-1210-Series	6.00.021	\N	18	\N	f	f	False	f	mipseb	\N	\N
109325	DGS-1210-SERIES_REVF_FIRMWARE_v6.12.007_HOTFIX.zip	DGS-1210-Series	6.12.007	\N	18	\N	f	f	False	f	mipseb	\N	\N
10413	DGS-1210-10P_REVA_FIRMWARE_2.02.005.ZIP	DGS-1210-Series	2.02.005	\N	18	\N	f	f	False	f	armel	\N	\N
109340	DGS-1210-10-ME_REVB_FIRMWARE_v7.03.006.zip	DGS-1210-10/ME	7.03.006	\N	18	\N	f	f	False	f	armel	\N	\N
16031	FW_TEW-737HRE(v1.1R)-1.02B01.zip	TEW-737HRE_v1_1	v1.1R	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.2.132')]	f	mipseb	\N	down
4471	WNDRMAC Firmware Version 1.0.0.20.zip	WNDRMACv1	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
108076	WNDRMACv2 Firmware Version 1.0.0.4.zip	WNDRMACv2	1.0.0.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open     telnet;53/tcp   open     domain;80/tcp   open     http;144/tcp  filtered news;720/tcp  filtered unknown;1085/tcp filtered webobjects;1185/tcp filtered catchpole;2191/tcp filtered tvbus;2809/tcp filtered corbaloc;3005/tcp filtered deslogin;3007/tcp filtered lotusmtap;3333/tcp open     dec-notes;4279/tcp filtered vrml-multi-use;6007/tcp filtered X11:7;8100/tcp filtered xprint-server;9001/tcp filtered tor-orport;
3236	WNR1000 - Initial Release Firmware Version 1.0.1.5 (North America).zip	WNR1000v1	1.0.1.5	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
108945	TL-WA901NDV5_GPL.tar.gz	TL-WA901ND	v5	\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109004	TL-WDR3600_GPL_2.6.31.tar.gz	TL-WDR3600		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109005	TL-WR810NV2_US_GPL.tar.gz	TL-WR810N	v2	\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109016	TL-WR841NV11_eu.tar.gz	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109020	TL-WDR3500_GPL_2.6.31.tar.gz	TL-WDR3500		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109021	TL-WR940V6.0_GPL.tar.gz	TL-WR940N	v6	\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109025	TL-WR710N_UK_1.0_2.0_GPL.tar.gz	TL-WR710N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109354	DGS-1100-08PD_REVB_FIRMWARE_v1.00.006.zip	DGS-1100-08PD	1.00.006	\N	18	\N	f	f	[('eth0', '192.168.1.254')]	f	mipseb	\N	no results
16028	FW_TEW-652BRP_v3.0R_v3.1R_v3.2R(3.02b05).zip	TEW-652BRP_v3.2	3.02b05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
12915	FW_TEW632BRR_A1.x(110B13).zip	TEW-632BRP_A1.1	110B13	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	no results
13761	TEW-738APBOv1_(FW1.0.19).zip	TEW-738APBO_v13	FW1.0.19	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
13623	TEW-736REv1.0R(FW1.0.1.0).zip	TEW-736RE	FW1.0.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
109010	TL-WR810N1.0_EU_GPL.tar.gz	TL-WR810N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109017	TL-WR841NV12_us.tar.gz	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
109030	TL-WR940V4_GPL.tar.gz	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
20162	DAP-1522_fw_revA_1-40b03_all_de_20120726.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	23/tcp    open  telnet;80/tcp    open  http;49152/tcp open  unknown;
19510	DAP-1353_fw_RevB_v3.10-rc006-2010-08-06.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp    open     telnet;80/tcp    open     http;163/tcp   filtered cmip-man;443/tcp   open     https;497/tcp   filtered retrospect;1001/tcp  filtered webpush;1034/tcp  filtered zincite-a;1148/tcp  filtered elfiq-repl;1501/tcp  filtered sas-3;2190/tcp  filtered tivoconnect;2393/tcp  filtered ms-olap1;2522/tcp  filtered windb;4445/tcp  filtered upnotifyp;4446/tcp  filtered n1-fwp;5226/tcp  filtered hp-status;5432/tcp  filtered postgresql;5566/tcp  filtered westec-connect;5633/tcp  filtered beorl;5802/tcp  filtered vnc-http-2;6666/tcp  filtered irc;8402/tcp  filtered abarsd;9040/tcp  filtered tor-trans;9535/tcp  filtered man;13782/tcp filtered netbackup;49163/tcp filtered unknown;49999/tcp filtered unknown;
106241	DAP-2230_fw_revA_1-03-rc018_all_en_20160329.zip	dap-2230		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	17/tcp    filtered qotd;23/tcp    open     telnet;32/tcp    filtered unknown;80/tcp    open     http;427/tcp   filtered svrloc;443/tcp   open     https;593/tcp   filtered http-rpc-epmap;1119/tcp  filtered bnetgame;1503/tcp  filtered imtc-mcs;2190/tcp  filtered tivoconnect;2604/tcp  filtered ospfd;2717/tcp  filtered pn-requester;5810/tcp  filtered unknown;5999/tcp  filtered ncd-conf;7938/tcp  filtered lgtomapper;9001/tcp  filtered tor-orport;9418/tcp  filtered git;9898/tcp  filtered monkeycom;10003/tcp filtered documentum_s;16993/tcp filtered amt-soap-https;40911/tcp filtered unknown;49156/tcp filtered unknown;52848/tcp filtered unknown;
20568	DAP-2553_fw_v1.07_a3c0_2010-03-12.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18639	DAP-2690_B1_firmware_v3.00rc013.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106300	DAP-3320_fw_revA1_1-01-014_eu_multi_20160419.zip	dap-3320	1.01rc014	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109031	TL-WR940V5.0_GPL.tar.gz	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
13186	FW_TEW-714TRU_EU_1.03.zip	TEW-714TRU	1.03	\N	52	\N	f	f	False	f	mipsel	\N	\N
108928	TD-W8968 v1_OpenSource.tar.gz	TD-W8968		\N	51	\N	f	f	False	f	\N	\N	\N
18224	DIR-816L_fw_revB1_2-02_all_multi_20140219.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open     telnet;24/tcp    filtered priv-mail;53/tcp    open     domain;80/tcp    open     http;443/tcp   open     https;524/tcp   filtered ncp;1035/tcp  filtered multidropper;1080/tcp  filtered socks;4900/tcp  filtered hfcs;5087/tcp  filtered biotic;7004/tcp  filtered afs3-kaserver;7777/tcp  filtered cbt;8181/tcp  open     intermapper;9200/tcp  filtered wap-wsp;9917/tcp  filtered unknown;17988/tcp filtered unknown;49152/tcp open     unknown;
20195	DIR-865L_fw_revA1_1-06_all_multi_20140121.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
109355	DGS-1100-08PD_REVB_FIRMWARE_v1.00B008_HOTFIX.zip	DGS-1100-08PD	1.00.008	\N	18	\N	f	f	[('eth0', '192.168.1.254')]	f	mipseb	\N	no results
20671	DSL-2741B_fw_reve_517b50_ALL_multi_20100308.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp    open     ftp;22/tcp    open     ssh;23/tcp    open     telnet;80/tcp    open     http;163/tcp   filtered cmip-man;543/tcp   filtered klogin;1027/tcp  filtered IIS;1028/tcp  open     unknown;1052/tcp  filtered ddt;1328/tcp  filtered ewall;1501/tcp  filtered sas-3;2020/tcp  filtered xinupageserver;7000/tcp  filtered afs3-fileserver;7920/tcp  filtered unknown;9050/tcp  filtered tor-socks;16001/tcp filtered fmsascon;33354/tcp filtered unknown;50300/tcp filtered unknown;54328/tcp filtered unknown;
2491	MBRN3000-V1.0.0.74_2.0.12WW.zip	MBRN3000	1.0.0.74	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1071/tcp  filtered bsquare-voip;1073/tcp  filtered bridgecontrol;1100/tcp  filtered mctp;1301/tcp  filtered ci3-software-1;1417/tcp  filtered timbuktu-srv1;1556/tcp  filtered veritas_pbx;1594/tcp  filtered sixtrak;2301/tcp  filtered compaqdiag;2382/tcp  filtered ms-olap3;2492/tcp  filtered groove;3945/tcp  filtered emcads;5718/tcp  filtered dpm;5911/tcp  filtered cpdlc;5952/tcp  filtered unknown;6059/tcp  filtered X11:59;6699/tcp  filtered napster;7025/tcp  filtered vmsvc-2;7741/tcp  filtered scriptview;8649/tcp  filtered unknown;10001/tcp filtered scp-config;32782/tcp filtered unknown;34571/tcp filtered unknown;50006/tcp filtered unknown;55055/tcp filtered unknown;
13076	FW_TEW-711BR_v2(2.00b11).zip	TEW-711BR_v2	2.00b11	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
110029	TL-WA750RE_V1_130628.zip	TL-WA750RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
20528	DIR-845L_fw_revA1_1-02b05_all_en_20130909.zip	dir-845l	1.02b05	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	old;80/tcp closed http;
110028	TL-WA830RE_V3_151201.zip	TL-WA830RE	v3	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
14092	TL-WA750RE_V1_131015.zip	TL-WA750RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
14487	TL-WA730RE_V2_130510.zip	TL-WA730RE	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
14485	TL-WA730RE_V2_120928.zip	TL-WA730RE	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
14094	TL-WA750RE_V1_140401.zip	TL-WA750RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
110033	TL-WA860REV5_200923.zip	TL-WA860RE	v5	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110034	TL-WA860RE_V5_191216.zip	TL-WA860RE	v5	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110035	TL-WA860RE(EU_UK_US)_V5_181108.zip	TL-WA860RE	v5	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110041	RE210(US)_V1_160504.zip	RE210		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110042	RE210(US)_V1_151229.zip	RE210		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
15181	TL-WA830RE_V2_140901.zip	TL-WA830RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
110036	RE200_v4.zip	RE200	v4	\N	51	\N	f	f	False	f	mipsel	\N	\N
110037	RE200(US)_V4_200708.zip	RE200	v4	\N	51	\N	f	f	False	f	mipsel	\N	\N
110038	RE200_V4_200514.zip	RE200	v4	\N	51	\N	f	f	False	f	mipsel	\N	\N
110039	RE220_v2_201022.zip	RE220	v2	\N	51	\N	f	f	False	f	mipsel	\N	\N
14483	TL-WA730RE_V1_100921.zip	TL-WA730RE		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
15180	TL-WA830RE_v1_111108.zip	TL-WA830RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp open  http
110043	TL-WA854RE_V1_141224_USA.zip	TL-WA854RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
110048	RE200(EU)_V2_181113.zip	RE200		\N	51	\N	f	f	[('br-lan', '192.168.0.254')]	f	mipsel	\N	down
110051	RE200(EU_UK_US_ES_CA_AR_ID)_V2_180412.zip	RE200		\N	51	\N	f	f	[('br-lan', '192.168.0.254')]	f	mipsel	\N	down
110047	RE200(US)_V1_160329.zip	RE200		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110044	TL-WA860RE(US_V1_141203.zip	TL-WA860RE		\N	51	\N	f	f	False	f	mipseb	\N	\N
110026	TL-WPA8730_KIT(US)_V1_160519.zip	TL-WPA8730 KIT		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110062	TL-WA850RE(US_USA)_V2_171123.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110050	RE220_V1_201022.zip	RE220		\N	51	\N	f	f	False	f	mipsel	\N	\N
110058	TL-WA860RE(EU_UK_US)_V4_171116.zip	TL-WA860RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110052	RE220(US)_V1_191024.zip	RE220		\N	51	\N	f	f	False	f	mipsel	\N	\N
110053	RE200_V3_201030.zip	RE200		\N	51	\N	f	f	False	f	mipsel	\N	\N
110054	RE220(US)_V1_190616.zip	RE220		\N	51	\N	f	f	False	f	mipsel	\N	\N
110055	RE200_V3_190731.zip	RE200		\N	51	\N	f	f	False	f	mipsel	\N	\N
110056	RE200_V3_190505.zip	RE200		\N	51	\N	f	f	False	f	mipsel	\N	\N
110064	TL-WA850RE(EU_UK_FR_DE_US_AU_BR_ES_AR_KR_JP)_V4_180409.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110017	TL-WPA8630_KIT(US)_V1_160309.zip	TL-WPA8630 KIT		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp open  http
110065	TL-WA850RE_V4_171218.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110067	TL-WA850RE_V5_181107.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110069	TL-WA850RE_V6_200923.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110071	TL-WA850RE_V6_191206.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110025	TL-WPA8730(US)_V1_170413.zip	TL-WPA8730 KIT		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
106007	FW_TEW-811DRU_v1(1.0.8.0).zip	TEW-811DRU	1.0.8.0	\N	52	\N	f	f	False	f	armel	\N	\N
13671	TEW-818DRUv1_(FW1.0.9.0).zip	TEW-818DRU	FW1.0.9.0	\N	52	\N	f	f	False	f	armel	\N	\N
106053	TEW-722BRMv1_(FW1.01B02).zip	TEW-722BRM	FW1.01B02	\N	52	\N	f	f	False	f	mipseb	\N	\N
13062	TEW-721BRMv1(FW1.00B13).zip	TEW-721BRM	FW1.00B13	\N	52	\N	f	f	False	f	mipseb	\N	\N
106113	fw_teg-204ws_v1(v2.10.010).zip	TEG-204WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13170	FW_TEG-240WS_D1(1.00.08).zip	TEG-240WS_d11	1.00.08	\N	52	\N	f	f	False	f	armel	\N	\N
16018	FW_TEG-240WS_D1(1.00.13).zip	TEG-240WS_d11	1.00.13	\N	52	\N	f	f	False	f	armel	\N	\N
106106	FW_TEG-240WS_D1(1.00.16).zip	TEG-240WS_d1	1.00.16	\N	52	\N	f	f	False	f	armel	\N	\N
106107	FW_TEG-240WS_D1(1.00.17).zip	TEG-240WS_d11	1.00.17	\N	52	\N	f	f	False	f	armel	\N	\N
106108	FW_TEG-240WS_D1(1.00.19).zip	TEG-240WS_d1	1.00.19	\N	52	\N	f	f	False	f	armel	\N	\N
106109	FW_TEG-240WS_v1(1.00.18).zip	TEG-240WS_d11	1.00.18	\N	52	\N	f	f	False	f	armel	\N	\N
13235	FW_TEG-2248WS_C1(4.00.007).zip	TEG-2248WS_c1	4.00.007	\N	52	\N	f	f	False	f	mipseb	\N	\N
13236	FW_TEG-2248WS_C1(4.00.011).zip	TEG-2248WS_c1	4.00.011	\N	52	\N	f	f	False	f	mipseb	\N	\N
106110	FW_TEG-2248WS_C1(4.00.020).zip	TEG-2248WS_c1	4.00.020	\N	52	\N	f	f	False	f	mipseb	\N	\N
106118	FW_TEG-082WS_v2(1.00.010).zip	TEG-082WS_v2	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
106119	FW_TEG-082WS_v2(2.10.024).zip	TEG-082WS_v2	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105930	FW_TEW-827DRU_v2(2.02B02).zip	TEW-827DRU_v2	2.02B02	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	down
13559	FW_TEG-160WS_D1(1.00.08).zip	TEG-160WS_d11	1.00.08	\N	52	\N	f	f	False	f	armel	\N	\N
16017	FW_TEG-160WS_D1(1.00.13).zip	TEG-160WS_d11	1.00.13	\N	52	\N	f	f	False	f	armel	\N	\N
106114	FW_TEG-160WS_D1(1.00.14).zip	TEG-160WS_d11	1.00.14	\N	52	\N	f	f	False	f	armel	\N	\N
106115	FW_TEG-160WS_D1(1.00.15).zip	TEG-160WS_d11	1.00.15	\N	52	\N	f	f	False	f	armel	\N	\N
106116	FW_TEG-160WS_D1(1.00.16).zip	TEG-160WS_d11	1.00.16	\N	52	\N	f	f	False	f	armel	\N	\N
106117	FW_TEG-160WS_D1(1.00.17).zip	TEG-160WS_d1	1.00.17	\N	52	\N	f	f	False	f	armel	\N	\N
105997	TEW-813DRUv1_(FW1.01B05).zip	TEW-813DRU	FW1.01B05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
106120	fw_teg-082ws_v2(v2.10.010).zip	TEG-082WS_v2	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
12961	FW_TEW-711BR_v1.0R(1.00b31).zip	TEW-711BR	1.00b31	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
12995	FW_TEG-082WS-1.00.09.zip	TEG-082WS	1.00.09	\N	52	\N	f	f	False	f	armel	\N	\N
106121	FW_TEG-082WS_v1(1.00.11).zip	TEG-082WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N	\N
106122	FW_TEG-082WS_v1(1.00.12).zip	TEG-082WS	1.00.12	\N	52	\N	f	f	False	f	armel	\N	\N
106123	FW_TEG-082WS_v1(1.00.13).zip	TEG-082WS	1.00.13	\N	52	\N	f	f	False	f	armel	\N	\N
106124	FW_TEG-082WS_v1(1.00.14).zip	TEG-082WS	1.00.14	\N	52	\N	f	f	False	f	armel	\N	\N
13266	TE100-MFP1v1_(FW1.045).zip	TE100-MFP1	FW1.045	\N	52	\N	f	f	False	f	mipsel	\N	\N
106127	TE100-MFP1v1_(FW1.070.1).zip	TE100-MFP1	FW1.070.1	\N	52	\N	f	f	False	f	mipsel	\N	\N
13420	FW_TDM-C504(1.04).zip	TDM-C504	1.04	\N	52	\N	f	f	False	f	mipseb	\N	\N
13419	TDM-C504v1.0R(1.00).zip	TDM-C504	1.00	\N	52	\N	f	f	False	f	mipseb	\N	\N
13117	FW_TDM-C500(1.03).zip	TDM-C500	1.03	\N	52	\N	f	f	False	f	mipseb	\N	\N
13116	TDM-C500v1_(FW1.00).zip	TDM-C500	FW1.00	\N	52	\N	f	f	False	f	mipseb	\N	\N
108929	8968V2_OpenSource.tar.bz2	TD-W8968		\N	51	\N	f	f	False	f	\N	\N	\N
105933	FW_TEW-827DRU_v2(2.06B04).zip	TEW-827DRU_v2	2.06B04	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	down
105991	TEW-814DAPv1_(FW1.01B01).zip	TEW-814DAP	FW1.01B01	\N	52	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
12933	TEW-810DRv1.0R_(FW1.00B18).zip	TEW-810DR	FW1.00B18	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N	old;53/tcp  open  domain;80/tcp  open  http;443/tcp open  https;
106111	FW_TEG-204WS_v1(1.00.010).zip	TEG-204WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
106046	TEW-730APOv1_(FW1.1.1).zip	TEW-734APO	FW1.1.1	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
13699	FW_TEW-718BRM_v1(1.00.11).zip	TEW-718BRM	1.00.11	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	no results
106112	FW_TEG-204WS_v1(2.10.024).zip	TEG-204WS	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
106013	FW_TEW-755AP_v1(1.03B10).zip	TEW-755AP2KAC	1.03B10	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;53/tcp open  domain;80/tcp open  http;
106105	fw_teg-284ws_v1(v2.10.010).zip	TEG-284WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13180	TEW-733GR_v1(FW1.02B01).zip	TEW-733GR	FW1.02B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	down
19081	DAP-2360_fw_revALL_1-10-rc041_all_en_20121106.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19061	DAP-2330_fw_revA_1-01-rc014_all_en_20140922.zip	dap-2330		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18640	DAP-2690_fw_revB1_v3-01rc053_all_en_20140126.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
105946	FW_TEW-825DAP_v1(1.07B07).zip	TEW-825DAP	1.07B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
106016	FW_TEW-755AP_v1(1.09B03).zip	TEW-755AP2KAC	1.09B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh;80/tcp open  http;
105996	FW_TEW-813DRU_v1(1.02B01).zip	TEW-813DRU	1.02B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
105951	FW_TEW-825DAP_v1(1.11B03).zip	TEW-825DAP	1.11B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh80/tcp open  http
105956	FW_TEW-823DRU_v1(1.00b37).zip	TEW-823DRU	1.00b37	\N	52	\N	f	f	False	f	mipseb	\N	\N
13456	TEW-687GAv1_(FW1.0.1.0).zip	TEW-687GA	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13067	TEW-722BRMv1(FW1.00B14).zip	TEW-722BRM	FW1.00B14	\N	52	\N	f	f	False	f	mipseb	\N	\N
13512	TEW-639GRv2_(FW2.0.2.0).zip	TEW-639GR_v2	FW2.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N	\N
13485	TEW-436BRM(v1.01.04).zip	TEW-436BRM	v1.01.04	\N	52	\N	f	f	False	f	mipseb	\N	\N
109007	11N_GPL.tgz	TL-WR841N		\N	51	\N	f	f	False	f	mipseb	\N	\N
105632	7510GPL.tar.gz	TL-WA7510N	v2	\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
105966	FW_TEW-824DRU_v1(1.03b02).zip	TEW-824DRU_v11	1.03b02	\N	52	\N	f	f	[('br-lan', '192.168.10.1'), ('br-lan', '192.168.10.1')]	f	mipseb	\N	old infer failed
106136	eap_gpl_code.tar.bz2	EAP220		\N	51	\N	f	f	False	f	\N	\N	\N
19136	DAP-1160_fw_RevAll_v1.30b09.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19142	DAP-1160_fw_RevAll_v1.32B04.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19138	DAP-1160_RevAll_fw_v112b02_2007-10-25.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19137	DAP-1160_RevAll_fw_v112b04-2007-12-19.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19143	DAP-1160_revAll_fw_version-1.10b15.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19144	DAP1160_fw_RevAll_FW120b06.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19141	DAP-1160_fw_RevAll_v1.41B01.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19140	DAP-1160_fw_revB1_2-00_all_multi_20140117.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
105599	DAP-1160_revall_sw_fwupdate-tool-zum-updaten-von-fw-version-1.00_v1.10.b15.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
105959	FW_TEW-822DRE_v1_2(1.03B01).zip	TEW-822DRE_v2	1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N	80/tcp open  http;
18503	DAP-1320 _fw_revB_2-03b02_eu_multi_20141231.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N	\N
105963	TEW-822DRE_FW102B02.zip	TEW-822DRE_v2	FW102B02	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N	80/tcp open  http;
106066	FW_TEW-652BRP_v3(3.04b01).zip	TEW-652BRP_v3.2	3.04b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
18498	DAP-1320_fw_revA1_1-00b24_all_en_20130722.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	old down
18508	DAP-1320_fw_revB1_2-02b01_eu_multi_20140828.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
105975	FW_TEW-821DAP_v1(1.11B03).zip	TEW-821DAP2KAC	1.11B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp open  ssh80/tcp open  http
18500	DAP-1320_fw_revB1_2-03b02_eu_multi_20141125.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N	\N
18502	DAP-1320_fw_revB_2-03_eu_multi_20141231.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N	\N
105600	DAP-1320_fw_revC_3-00_eu_multi_20150609.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N	\N
105601	DAP-1330_fw_revA_1-00_eu_multi_20151202.zip	dap-1330		\N	18	\N	f	f	False	f	mipseb	\N	\N
20448	DAP-1350_fw_revA1_1.12EUB07.zip	dap-1350	1.12EUB07	\N	18	\N	f	f	False	f	mipsel	\N	\N
19513	DAP-1353_fw_for-all-hardware-Rev_v210-r0030(0214181803)-080201.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
13493	FW_TEW-751DR_v1(1.00B11).zip	TEW-751DR	1.00B11	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	down
19500	DAP-1353_fw_RevA_v2.10_93ph.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19506	DAP-1353_fw_RevA_v2.10_a29a_160a_dbg02.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
18505	DAP-1320_fw_revA2_1-20_all_multi_20140408.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	old;
105609	TL-WR802N2.0_GPL.tar.gz	TL-WR802N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	old;80/tcp filtered http;
13033	FW_TEW-731BR_v1.0R(1.00b27).zip	TEW-731BR	1.00b27	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
12849	FW_TEW-656BRG_v1.0R(1.01c4).zip	TEW-656BRG	1.01c4	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;80/tcp closed http;
106020	FW_TEW-753DAP_v1(2.0.3).zip	TEW-753DAP	2.0.3	\N	52	\N	f	f	[('eth0', '192.168.10.100')]	f	mipseb	\N	old infer failed
106021	TEW-752DRUv1_(FW1.03B01).zip	TEW-752DRU	FW1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	down
106033	FW_TEW-739APBO_v1(1.1.12).zip	TEW-739APBO_v13	1.1.12	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
13376	TEW-638APBv3_(FW3.1.3.0).zip	TEW-638APB_v3	FW3.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
13153	FW_TEW-455APBOv2(2.1.5)_CE.zip	TEW-455APBO_v3	2.1.5	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;
13355	FW_TEW-655BR3G_v1.0R(1.09b7).zip	TEW-655BR3G	1.09b7	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
16027	FW_TEW-652BRP_v3.0R_v3.1R_v3.2R(3.02b02).zip	TEW-652BRP_v3.2	3.02b02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
106024	TEW-751DRv1_(FW1.03B01).zip	TEW-751DR	FW1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	down
106029	FW_TEW-740APBO_v2(2.10).zip	TEW-740APBO_v2	2.10	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	down
18506	DAP-1320_fw_revA2_1-20b07_all_en_20140318.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
18499	DAP-1320_fw_revB1_2-00_all_multi_20140605.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
18509	DAP-1320_fw_revB1_2-01b03_eu_multi_20140826.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
13149	FW_TEW-455APBOv2(2.0.7)_CE.zip	TEW-455APBO_v2	2.0.7	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet
13151	FW_TEW-455APBOv2(2.1.1)_FCC.zip	TEW-455APBO_v2	2.1.1	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet
12949	TEW-639GRv3_(3.1.1.0).zip	TEW-639GR_v3	3.1.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
12942	TEW-639GRv3_(FW3.1.3.0).zip	TEW-639GR_v3	FW3.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
18504	DAP-1320_fw_revB_2-02B01_eu_multi_20140929.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
20160	DAP-1522_fw_revAll_v1.20-rc016.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	23/tcp    open  telnet;80/tcp    open  http;49152/tcp open  unknown;
106237	DAP-1665_fw_revA_1-16_eu_multi_20160712.zip	dap-1665		\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
106240	DAP-2230_fw_revA_1-01-rc010_all_en_20151118.zip	dap-2230		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18736	DAP-2310 _fw_revA1_1-16_all_multi_20140108.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18431	DAP-1665_fw_revA_1-13b05_eu_multi_20150128.zip	dap-1665	1.13b05	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
106234	DAP-1620_fw_revA_1-04_eu_multi_20160622.zip	dap-1620		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	23/tcp    open  telnet;80/tcp    open  http;49152/tcp open  unknown;
106229	DAP-1520_fw_revA_1-08_eu_multi_20160620.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	old timeout
106227	DAP-1360_fw_revC_3-07_eu_multi_20150804.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
106228	DAP-1365_fw_revA_1-00b04_eu_multi_20160419.zip	dap-1365	1.00b04	\N	18	\N	f	f	False	f	mipseb	\N	\N
18738	DAP-2310_fw_revALL_1-10rc009_all_en_20120726.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20157	DAP-1522_fw_revA_1-41b02_all_en_20120229.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	23/tcp    open  telnet;80/tcp    open  http;49152/tcp open  unknown;
20158	DAP-1522_fw_revB_2-01b02_all_en_20110511.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N	23/tcp open  telnet;80/tcp open  http;
106231	DAP-1520_fw_revA_1-07_eu_multi_20160126.zip	dap-1520	1.07b03	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
106071	TEW-639GRv3_(FW3.1.7.0).zip	TEW-639GR_v3	FW3.1.7.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
18981	DAP-1520_fw_revA1_1-02b04_all_en_20140421.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	old;80/tcp open  http;
19508	DAP-1353_RevB_fw_v3.01-rc002_2010-03-19.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106238	DAP-1665_fw_revA_1-14b06_eu_multi_20151216.zip	dap-1665	1.14b06	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
18740	DAP-2310_fw_revB1_2-01-rc013_eu_en_20141016.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19502	DAP-1353_fw_RevB_v3.15-rc012.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
10088	DAP-1522_REVB_FIRMWARE_PATCH_2.03.B01.ZIP	dap-1522		\N	18	\N	f	f	False	f	\N	\N	\N
106244	DAP-2230_fw_revA1_1-02_eu_multi_20151231.zip	dap-2230	1.02rc014	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18744	DAP-2310_fw_revALL_1-15-rc014_all_en_20121106.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18977	DAP1520_fw_revA1_1-00_all_en_140102.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
106232	DAP-1620_fw_revA_1-01_eu_multi_20151209.zip	dap-1620		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	old timeout
19511	DAP-1353_fw_revAll_v.210-r0023(1129174051).zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19505	DAP-1353_fw_RevAll_v2.01_r0021.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19503	DAP-1353_fw_revAll_v2.10-r0016(0910094904).zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19509	DAP-1353_fw_revAll_v200-r009.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19512	DAP-1353_fw_revAll_v210-r0029(0205172447)-08-11-01.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19507	DAP-1353_fw_v2.10_83rb(0328174915).zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
19504	DAP-1353_fw_v2.10p02-rc010.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
110073	RE205_V3_201030.zip	RE205	v3	\N	51	\N	f	f	False	f	mipsel	\N	\N
19501	DAP-1353_fw_RevA_v2.11-rc013.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N	\N
110074	RE205_V3_20191011.zip	RE205	v3	\N	51	\N	f	f	False	f	mipsel	\N	\N
106246	DAP-2310_fw_revB1_207-031_eu_multi_20160331.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106230	DAP-1520_fw_revA_1-06_eu_multi_20150323.zip	dap-1520	1.06b04	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
18321	DAP-1360_fw_RevAll_v1.03-B02-2010-01-04.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
13673	TEW-637APv3_(3.0.0.1).zip	TEW-637AP_v3	3.0.0.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
18326	DAP-1360_fw_Rev-A1_v1.10B08.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
18319	DAP-1360_fw_revb_2-14b05_ALL_en_20120922.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
20156	DAP-1522_fw_revB_2-04b07_all_en_20120726.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N	23/tcp open  telnet80/tcp open  http
18318	DAP-1360_fw_revb_211b29_ALL_en_20111103.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
18743	DAP-2310_fw_revB1_2_00_rc006_all_en_20140418.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
18316	DAP-1360_fw_revC1_3-04b01_all_en_20130606.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
18325	DAP-1360_fw_revC1_3-05_eu_multi_20150212.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
18322	DAP-1360_fw_revC1_3-06_eu_multi_20150212.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
18317	DAP-1360_fw_revC1_v3-02B04_all_en_20120306.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
20564	DAP-2553_fw_revALL_1-20-rc011_all_en_20120726.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19084	DAP-2360_fw_revALL_1-00rc016_all_en_20120726.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106281	DAP-2660_fw_1_10_rc043_eu_en_20150612.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20430	DAP-2660_fw_revA1_1-0-6-rc025_eu_en_20150123.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	443/tcp open  https;
20569	DAP-2553_fw_v101-r0031.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20562	DAP-2553_fw_v106-r0046.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106254	DAP-2360_fw_revB1_2-06-018_eu_multi_20160418.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106255	DAP-2360_fw_revB1_207-043_eu_multi_20160322.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19090	DAP-2360_fw_revB1_2_00rc006_all_en_20140417.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19082	DAP-2360_fw_revB_2-0-1-rc012_all_en_20140909.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106256	DAP-2360_fw_revB_2_05_rc031_eu_en_20150612.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106258	DAP-2360_fw_revB_2_07_rc043_eu_en_20160316.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
20566	DAP-2553_fw_v112-rc007-2010-03-24.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106266	DAP-2553_fw_revA_1-32-rc074_eu_en_20160325.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
20565	DAP-2553_fw_revALL_1-25-rc016_all_en_20120726.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106253	DAP-2330_fw_revA_1-07-rc028_eu_en_20160324.zip	dap-2330		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109080	DAP-1665_REVB_FIRMWARE_v2.03B03.zip	DAP-1665	2.03B03	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.176.3')]	f	mipsel	\N	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
20427	DAP-2660_fw_revA1_1-05-rc016_eu_en_20140910.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
8630	DAP-1665_FIRMWARE_1.00B15.ZIP	DAP-1665	1.00B15	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
20560	DAP-2553_fw_revALL_1-30-rc055_all_en_20131108.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
20561	DAP-2553_fw_revB1_3-01-rc010_eu_en_20150303.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106268	DAP-2553_fw_revB_3-05-rc020_all_en_20151005.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106269	DAP-2553_fw_revB_3-06-rc027_eu_en_20160328.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106283	DAP-2660_fw_revA_1_11_rc046_eu_en_20150709.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106247	DAP-2310_fw_revB_2-07-rc031_eu_en_20160318.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
8632	DAP-1665_FIRMWARE_1.11B05.ZIP	DAP-1665	1.11B05	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
8633	DAP-1665_REVA_FIRMWARE_1.13.B05.ZIP	DAP-1665	1.13.B05	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
109087	DAP-1665_REVA_FIRMWARE_1.14.B06.ZIP	DAP-1665	1.14.B06	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
18794	DAP-2590_fw_revALL_1-13rc024_all_en_20100428.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18790	DAP-2590_fw_RevAll_v1.10rc007.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18792	DAP-2590_RevAll_fw_v100-r0019.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18791	DAP-2590_fw_revA2_1-25rc056_all_en_20120907.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18793	DAP-2590_fw_revALL_1-15rc012_all_en_20101130.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18795	DAP-2590_fw_revALL_1-20rc039_all_en_20120726.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N	\N
19091	DAP-2360_fw_revALL_1-11-rc062_all_en_20140107.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
8631	DAP-1665_FIRMWARE_1.10B11.ZIP	DAP-1665	1.10B11	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
109088	DAP-1665_REVA_FIRMWARE_1.15.B08.ZIP	DAP-1665	1.15.B08	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
109089	DAP-1665_REVA_FIRMWARE_1.16.B01.ZIP	DAP-1665	1.16.B01	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
110079	RE380D(US)_V1_160614.zip	RE380D		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	armel	\N	down
109109	DXS-1210-SERIES_REVA2_FIRMWARE_v1.15B017_HOTFIX.zip	DXS-1210-12TC	1.15.017	\N	18	\N	f	f	False	f	armel	\N	\N
106252	DAP-2330_fw_revA_1-06-rc020_eu_en_20150714.zip	dap-2330		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
12897	FW_TEW-638APB_V2(1.2.7).zip	TEW-638APB_v2	1.2.7	\N	52	\N	f	f	False	f	mipsel	\N	\N
105608	gpl_902acv1_eu.tar.gz	TL-WR902AC		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
106293	DAP-2695_fw_1_15_rc050_eu_en_20150612.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20023	DAP-3310_Firmware-v101-rc01.zip	dap-3310		\N	18	\N	f	f	[('bre0', '192.168.0.50')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
106299	DAP-3320_fw_revA1_1-00-rc011_all_en_20150818.zip	dap-3320	1.00rc011	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
12904	TEW-637AP_V2(FW1.3.0.106).zip	TEW-637AP_v2	FW1.3.0.106	\N	52	\N	f	f	False	f	mipsel	\N	\N
106302	DAP-3520_fw_revA_1-17-rc047_all_en_20160330.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106306	DAP-3662_fw_revA1A2_1-02-031_eu_multi_20160414.zip	dap-3662		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19077	DCHM225_fw_revA1_1-0-2_all_multi_20140826.zip	dch-m225		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N	old down
18327	DAP-1360_fw_revC_3-06_eu_multi_20150212.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N	\N
19139	DAP-1160_RevAll_fw_v112b01(1001114242).zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N	\N
19076	DCH-M225_fw_revA_1_02b01_all_en_20140806.zip	dch-m225	1.02b01	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N	old infer failed
105610	TL-WR802NV3_eu.tar.gz	TL-WR802N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http;1900/tcp open  upnp;
18637	DAP-2690_fw_Rev-All_v101-rc019.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18635	DAP-2690_fw_Rev-All_v1.10_b88j.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N	\N
18636	DAP-2690_fw_revALLl_1-11rc040_all_en_20120726.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N	\N
19996	DAP-2695_fw_revA1_1-11-rc044_eu_en_20150123.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18641	DAP-2690_Firmware v1.15rc049.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20984	DAP-3520_FWv1.16rc040.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
20558	DCS-5010L_fw_revA1_1-03b8_all_en_20140313.zip	dcs-5010l		\N	18	\N	f	f	False	f	mipsel	\N	\N
106294	DAP-2695_fw_revA1_117-063_eu_multi_20160322.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19992	DAP-2695_fw_revA_1-01rc021_all_en_20131119.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106295	DAP-2695_fw_revA_1_16_rc053_eu_en_20150708.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
18464	DAP-3662_fw_revA1_1-00EU-rc016_eu_en_20150319.zip	dap-3662	1.00eu	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106324	DCH-G020_fw_revA2_1-22_all_multi_20151222.zip	dch-g020	1.22b04	\N	18	\N	f	f	[('br0', '192.168.0.60')]	f	mipseb	\N	old;80/tcp open  http;
106308	DAP-3662_fw_revA_1-01EUrc023_eu_en_20150804.zip	dap-3662	1.01eu	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19993	DAP2695-firmware-v100-rc015.bin	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
13030	FW_TEW-634GRU(1.00).zip	TEW-634GRU	1.00	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
19075	DCH-M225_fw_revA1_1-03_all_en_20150126.zip	dch-m225	1.03	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N	down
18638	DAP-2690_fw_revB_1_v3-00rc013_all_en_20121220.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
110087	RE230(US)_V1_200330.zip	RE230		\N	51	\N	f	f	False	f	mipsel	\N	\N
106072	TEW-637APv3_(FW3.1.3.0).zip	TEW-637AP_v3	FW3.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
18979	DAP-1520_fw_revA1_1-01_all_multi_20140210.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
106291	DAP-2690_fw_revB_3-16-rc0100_all_en_20160325.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19951	DAP-3690_fw_revALL_1-00rc011_all_en_20120802.zip	dap-3690	1.00	\N	18	\N	f	f	False	f	mips64eb	\N	\N
19950	DAP-3690_fw_revA1_1_10EU_rc061_eu_en_20141229.zip	dap-3690	1.10	\N	18	\N	f	f	False	f	mips64eb	\N	\N
19953	DAP-3690_fw_revA1_eu_en_20141229.zip	dap-3690	1.10	\N	18	\N	f	f	False	f	mips64eb	\N	\N
18702	DCH-S150_fw_revA1_1-0-3_eu_multi_20141007.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
18703	DCH-S150_fw_revA1_1-0-4_all_en_20141201.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
18706	DCH-S150_fw_revA1_1-0-7_all_en_20150327.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
106325	DCH-S150_fw_revA1_1-0-9_all_multi_20150701.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
106326	DCH-S150_fw_revA2_1-2-1_all_multi_20151028.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
106327	DCH-S150_fw_revA2_1-20_all_multi_20150908.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
18704	DCH-S150_fw_revA_1-0-3_all_en_20140910.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
18700	DCH-S150_fw_revA_1-0-4_all_en_20141022.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
106328	DCH-S150_fw_revB_2-02b04_eu_multi_20160422.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
106329	DCH-S160_fw_revA2_1-20_all_en_20150821.zip	dch-s160	1.20	\N	18	\N	f	f	False	f	mipseb	\N	\N
106330	DCH-S160_fw_revA2_1-22_all_en_20160222.zip	dch-s160	1.22b03	\N	18	\N	f	f	False	f	mipseb	\N	\N
106331	DCH-S220_fw_revA2_1-20_all_en_20150819.zip	dch-s220	1.20	\N	18	\N	f	f	False	f	mipseb	\N	\N
106332	DCH-S220_fw_revA2_1-22_eu_en_20160222.zip	dch-s220	1.22b03	\N	18	\N	f	f	False	f	mipseb	\N	\N
19700	dcs5009l_fw_revA1_1-02-b3_all_multi_20150212.zip	dcs-5009l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20447	DAP-1350_fw_revALL_1-14euB01_all_eu_20120726.zip	dap-1350	1.14eub01	\N	18	\N	f	f	False	f	mipsel	\N	\N
19279	DCS-5020L_fw_ revA1_1-00b07_all_en_20131017.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
9299	DCS-5020L_fw_revA1_1-01b2_all_en_20130625.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
19281	DCS-5020L_fw_revA1_1-02b5_all_en_131225.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
19282	DCS-5020L_fw_revA1_1-04b5_all_en_141003.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
19277	DCS-5020L_fw_revA1_1-06-01_eu_multi_20150313.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
19274	DCS-5020L_fw_revA_1-01b2_all_en_20130531.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
19278	dcs5020l_fw_revA1_1-05-b8_all_multi_20150212.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
20731	DCS-5220_fw_verB1_2.01_100714.zip	dcs-5220		\N	18	\N	f	f	False	f	armel	\N	\N
20932	DCS-5615_fw_revA1_1-00-10_eu_multi_20140702.zip	dcs-5615		\N	18	\N	f	f	False	f	armel	\N	\N
20933	DCS-5615_fw_revA1_1-01-00_eu_multi_20140507.zip	dcs-5615	1.01	\N	18	\N	f	f	False	f	armel	\N	\N
106449	DCS-5615_FW_revA1_1-03-03_eu_multi_20150803.zip	dcs-5615	1.03	\N	18	\N	f	f	False	f	armel	\N	\N
106450	DCS-5615_fw_revA1_1-05-02_eu_multi_20160201.zip	dcs-5615	1.05	\N	18	\N	f	f	False	f	armel	\N	\N
18474	DCS-6045LKT_fw_revA1_1-01-02_eu_multi_20150303.zip	dcs-6045lkt	1.01	\N	18	\N	f	f	False	f	mipsel	\N	\N
106499	DCS-8200LH_fw_revA1_1-01-01_eu_multi_20160704.zip	dcs-8200lh		\N	18	\N	f	f	False	f	mipseb	\N	\N
106500	DCS-8200LH_fw_revA1_1-00-08_eu_multi_20160426.zip	dcs-8200lh	1.00	\N	18	\N	f	f	False	f	mipseb	\N	\N
18731	DCS_930_fw_verALL_1-00b9_all_en_110419.zip	dcs-930		\N	18	\N	f	f	False	f	mipsel	\N	\N
18730	DCS_930_fw_revALL_1-03b4_all_en_120509.zip	dcs-930	1.03	\N	18	\N	f	f	False	f	mipsel	\N	\N
20859	DCS-930L_fw_revALL_1-03_b4_all_eu_20111125.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20854	DCS-930L_fw_revALL_1-04b3_all_eu_20120110.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20846	DCS-930L_fw_verALL_1-03b3_all_en_110708.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20849	DCS-930L_fw_revA1_1-07B5_all_en_20121119.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20851	DCS-930L_fw_revA1_1-08B4_all_en_20130514.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20856	DCS-930L_fw_revA1_1-09B2_all_en_20131226.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20847	DCS-930L_fw_revA1_1-11B1_all_en_20140422.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20850	DCS-930L_fw_revA1_1-12-03_eu_multi_20150303.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20855	DCS-930L_fw_revALL_1-05b8_all_eu_20120704.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
20853	DCS-930L_fw_revB1_2-01-03_eu_multi_20150303.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
106522	dcs930lb1_v2.12.01.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18612	DCS-932_fw_verALL_1-01b3_all_eu_20120110.zip	dcs-932	1.01b3	\N	18	\N	f	f	False	f	mipsel	\N	\N
18840	DCS-932L_fw_revALL_1-01b3_all_en_110708.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18832	DCS-932L_fw_revALL_1-02b3_all_eu_20120110.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18834	DCS-932L_fw_revA1_1-07b2_all_en_20131226.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18836	DCS-932L_fw_revA1_1-08b2_all_en_20140306.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18842	DCS-932L_fw_revA1_1-09b1_all_en_20140422.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18839	DCS-932L_fw_revALL_1-03b8_all_eu_20120704.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18712	DCS-933L_fw_revA1_1-02b5_all_en_20130930.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18714	DCS-933L_fw_revA1_1-04b1_all_en_20140502.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18717	DCS-933L_fw_revA1_1-07-01_eu_multi_20150303.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18715	DCS-933L_fw_revA_1-01b7_all_en_20130531.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18713	dcs933l_fw_revA1_1-05_all_multi_20141027.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18711	dcs933l_fw_revA1_1-06-b6_all_multi_20150206.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18430	DAP-1665_fw_revA_1-13_eu_multi_20150128.zip	dap-1665		\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
18428	DAP-1665_fw_revA1_1-00_all_en_131202.zip	dap-1665	1.00	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
18429	DAP-1665_fw_revA1_1-11_all_multi_20140605.zip	dap-1665	1.11	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	down
18980	DAP-1520_fw_revA1_1-04b02_eu_multi_20140801.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
18978	DAP-1520_fw_revA_1-05B02_eu_multi_20141007.zip	dap-1520	1.05b02	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
18497	DAP-1320_fw_revA1_1-11b10_all_en_20130918.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
20155	DAP-1522_fw_RevAll_v1.22_rc029-2010-09-08.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	23/tcp    open  telnet80/tcp    open  http49152/tcp open  unknown
18507	DAP-1320_fw_revB1_2-01b03_all_multi_20140728.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
20161	DAP-1522_fw_revB1_2-07_all_multi_20140206.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N	80/tcp open  http
20159	DAP-1522_fw_revB_2-07b01_all_en_20121203.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N	80/tcp open  http
106236	DAP-1620_fw_revA_1-03_eu_multi_20160317.zip	dap-1620	1.02b02	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	53/tcp open  domain80/tcp open  http
106284	DAP-2660_fw_revA_1_13_rc074_eu_en_20160316.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	Not shown: 997 closed portsPORT    STATE SERVICE23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106245	DAP-2230_fw_revA1_1-03-018_eu_multi_20160406.zip	dap-2230	1.03rc018	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	down
18745	DAP-2310_fw_revB1_2-02-rc019_all_en_20150211.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19714	DES-1210-52_fw_verA1_2-03-001_all_en_121002.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
20553	DCS-935L_fw_revA1_1-03-01_eu_multi_20150330.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N	\N
19712	DES-1210-52_fw_verALL_2-01-002_all_en_110620.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
106546	DCS-935L_fw_revA1_1-04-06_eu_multi_20150521.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N	\N
19711	DES-1210-52_fw_verB1_3-10-011_all_en_121127.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
106547	DCS-935L_fw_revA1_1-05-01_eu_multi_20150622.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N	\N
106723	DGS-1210_fw_revC_4-10-004_eu_multi_20160114.zip	dgs-1210		\N	18	\N	f	f	False	f	armel	\N	\N
20457	DGS-1210-10_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-10		\N	18	\N	f	f	False	f	armel	\N	\N
106549	DCS-935L_fw_revA1_1-07-03_eu_multi_20151221.zip	dcs-935l	1.07	\N	18	\N	f	f	False	f	mipseb	\N	\N
18517	DGS-1210-10P_fw_revALL_2-02-002_all_en_20120621.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
106550	DCS-935L_fw_revA1_1-08-06_eu_multi_20160201.zip	dcs-935l	1.08	\N	18	\N	f	f	False	f	mipseb	\N	\N
18515	DGS-1210-10P_fw_revALL_2-03-001_all_en_20121115.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
19817	DCS-950G_fw_revALL_107_ALL_en_070104.zip	dcs-950g		\N	18	\N	f	f	False	f	mipsel	\N	\N
18511	DGS-1210-10P_fw_revB1_3-12-015_all_multi_20140522.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
106561	DCS-960L_fw_revA1_1-03-05_eu_multi_20160411.zip	dcs-960l	1.03	\N	18	\N	f	f	False	f	mipseb	\N	\N
106728	DGS-1210-10P_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
106574	DES-1210_fw_revC_4-10-004_eu_multi_20160119.zip	des-1210		\N	18	\N	f	f	False	f	mipseb	\N	\N
18513	DGS-1210-10P_fw_revB_3-10-013_all_en_20121113.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
19490	DES-1210-08P_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
18516	DGS-1210-10P_fw_revC_4-00-057_eu_multi_20141124.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
18514	DGS-1210-10P_fw_revC_4-00-064_eu_multi_20150303.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N	\N
106575	DES-1210-08P_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19422	DGS-1210-16_fw_revALL_2-02-002_all_en_20120621.zip	dgs-1210-16		\N	18	\N	f	f	False	f	armel	\N	\N
19492	DES-1210-08P_fw_revC1_4-00-050_eu_multi_20141023.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106576	DES-1210-08P_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106577	DES-1210-08P_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106578	DES-1210-08P_fw_revC_4-10-004_eu_multi_20160119.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106579	DES-1210-08P_fw_revC_4-11-011_eu_multi_20160301.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19496	DES-1210-08P_fw_verA1_2-03-001_all_en_121002.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19494	DES-1210-08P_fw_verALL_2-01-002_all_en_110620.zip	des-1210-08p		\N	18	\N	f	f	False	f	armel	\N	\N
19493	DES-1210-08P_fw_verALL_2-02-002_all_en_20120417.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19497	DES-1210-08P_fw_verB1_3-10-011_all_en_121127.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
18571	DES-1210-28_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
106585	DES-1210-28_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
18573	DES-1210-28_fw_revC_4-00-042_eu_multi_20141119.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
106586	DES-1210-28_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
106587	DES-1210-28_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
18576	DES-1210-28_fw_verA1_2-02-002_all_en_120213.zip	des-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
18575	DES-1210-28_fw_verALL_2-01-002_all_en_110620.zip	des-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
18572	DES-1210-28_fw_verB1_3-10-011_all_en_121127.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
19696	DES-1210-28P_fw_revB1_3-10-011_all_en_20121127.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19691	DES-1210-28P_fw_revB1_3-11-001_all_multi_20140206.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19694	DES-1210-28P_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19689	DES-1210-28P_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106592	DES-1210-28P_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19690	DES-1210-28P_fw_revC_4-00-050_eu_multi_20141027.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106594	DES-1210-28P_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106595	DES-1210-28P_fw_revC_4-10-004_eu_multi_20160119.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
106596	DES-1210-28P_fw_revC_4-12-016_eu_multi_20160519.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
19693	DES-1210-28P_fw_verA1_2-03-001_all_en_121002.zip	des-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
19692	DES-1210-28P_fw_verALL_2-01-002_all_en_110620.zip	des-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
19695	DES-1210-28P_fw_verALL_2-02-002_all_en_20120417.zip	des-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
19710	DES-1210-52_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
19715	DES-1210-52_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
106604	DES-1210-52_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
106545	DCS-933L_fw_revAx_1-13-05_eu_multi_20160129.zip	dcs-933l	1.13	\N	18	\N	f	f	False	f	mipsel	\N	\N
20552	DCS-935L_fw_revA1_1-00_all_multi_20141015.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N	\N
20550	DCS-935L_fw_revA1_1-00b27_all_en_20141014.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N	\N
19713	DES-1210-52_fw_revC_4-00-042_eu_multi_20140926.zip	des-1210-52		\N	18	\N	f	f	False	f	mipseb	\N	\N
106605	DES-1210-52_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-52		\N	18	\N	f	f	False	f	mipseb	\N	\N
106606	DES-1210-52_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-52		\N	18	\N	f	f	False	f	mipseb	\N	\N
20557	DCS-5010L_fw_revA1_1-06-01_eu_multi_20150313.zip	dcs-5010l	1.06	\N	18	\N	f	f	[('br0', '10.255.255.1'), ('br0', '10.255.255.1')]	f	mipsel	\N	old down
19679	DHP-1565_fw_revA_1_1-00b35_en_20121024.zip	dhp-1565	1.00b35	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.50'), ('br0', '169.254.83.90')]	f	mipseb	\N	old down
19995	DAP-2695_fw_revA_1-10-rc035_all_en_20140909.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19681	DHP-1565_fw_reva_100b28_ALL_en_20111111.zip	dhp-1565		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.50'), ('br0', '169.254.83.90')]	f	mipseb	\N	old down
20551	DCS-935L_fw_revA1_1-02-b02_all_multi_20150116.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N	\N
106548	DCS-935L_fw_revA1_1-06-02_eu_multi_20150818.zip	dcs-935l	1.06	\N	18	\N	f	f	False	f	mipseb	\N	\N
19276	DCS-5020L_fw_revA1_1-03b8_all_en_140122.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N	\N
20937	DGS-1210-20_fw_revB1_3-01-003_all_en_20120912.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N	\N
20934	DGS-1210-20_fw_revB1_3-10-013_all_en_20121024.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N	\N
106740	DGS-1210-20_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N	\N
19108	DGS-1210-24_fw_revA_2-03-001_all_en_20121102.zip	dgs-1210-24		\N	18	\N	f	f	False	f	armel	\N	\N
19112	DGS-1210-24_fw_revALL_2-02-002_all_en_20120621.zip	dgs-1210-24		\N	18	\N	f	f	False	f	armel	\N	\N
20930	DGS-1210-28-fw_revC1_4-00-012_all_en_20130823.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
20929	DGS-1210-28_fw_revB1_3-01-003_all_en_20120912.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
20927	DGS-1210-28_fw_revB1_3-10-013_all_en_20121106.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
106748	DGS-1210-28_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
20928	DGS-1210-28_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N	\N
106751	DGS-1210-28MP_fw_revE_5-00-017_eu_multi_20160708.zip	dgs-1210-28mp		\N	18	\N	f	f	False	f	armel	\N	\N
18801	DGS-1210-28P_fw_revB1_3-00-012_all_en_20120912.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18798	DGS-1210-28P_fw_revB1_3-10-013_all_en_20121024.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
106754	DGS-1210-28P_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18799	DGS-1210-28P_fw_revC1_4-00-043_all_multi_20140421.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18800	DGS-1210-28P_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
106755	DGS-1210-28P_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
19977	DGS_1210_48_fw_revALL_v2_02_002_all_en_20120621.zip	dgs-1210-48		\N	18	\N	f	f	False	f	armel	\N	\N
19974	DGS_1210_48_fw_revALL_v2_03_001_all_en_20121024.zip	dgs-1210-48		\N	18	\N	f	f	False	f	armel	\N	\N
106762	DGS-1210-52_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
19936	DGS-1210-52_fw_revC1_4-00-025_all_multi_20131218.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
106763	DGS-1210-52_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
19938	DGS_1210_52_fw_revB1_v3_01_003_all_en_20120912.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
19937	DGS_1210_52_fw_revB1_v3_10_013_all_en_20121024.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N	\N
18237	DGS-1210-52MP_fw_revC1_4-00-057_eu_multi_20141211.zip	dgs-1210-52mp		\N	18	\N	f	f	False	f	armel	\N	\N
106765	DGS-1210-52MP_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-52mp		\N	18	\N	f	f	False	f	armel	\N	\N
19572	DGS-1210-52P_fw_revC1_4-00-055_eu_multi_20141211.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N	\N
19573	DGS-1210-52P_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N	\N
106769	DGS-1210-52P_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N	\N
18825	DGS-1500-20_fw_revA1_2-50-008_all_multi_20140220.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N	\N
18827	DGS-1500-20_fw_revA_2-10-002_all_en_20121105.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N	\N
18824	DGS-1500-20_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N	\N
18828	DGS-1500-20_fw_revALL_1-00-015_all_en_20111014.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N	\N
18826	DGS-1500-20_fw_revALL_2-00-015_all_en_20120810.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N	\N
20654	DGS-1500-28_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N	\N
20657	DGS_1500_28_fw_revA_2_10_002_all_en_20121105.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N	\N
20653	DGS_1500_28_fw_revALL_1_10_005_all_en_20120508.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N	\N
20656	DGS_1500_28_fw_revALL_2_00_015_all_en_20120810.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N	\N
106785	DGS-1500-28_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-28	2.51	\N	18	\N	f	f	False	f	armel	\N	\N
18601	DGS-1500-28P_fw_revA1_2-50-008_all_en_20140220.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18602	DGS-1500-28P_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18603	DGS_1500_28P_fw_revA_2_10_002_all_en_20121105.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18604	DGS_1500_28P_fw_revALL_2_00_015_all_en_20120810.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N	\N
106788	DGS-1500-28P_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-28p	2.51	\N	18	\N	f	f	False	f	armel	\N	\N
20407	DGS-1500-52_fw_revA1_2_50_008_all_en_20140220.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N	\N
20404	DGS-1500-52_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N	\N
20406	DGS_1500_52_fw_revALL_1_10_005_all_en_20120508.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N	\N
20409	DGS_1500_52_fw_revALL_2_00_015_all_en_20120810.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N	\N
106789	DGS-1500-52_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-52	2.51	\N	18	\N	f	f	False	f	armel	\N	\N
106783	DGS-1500-20_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-20	2.51	\N	18	\N	f	f	False	f	armel	\N	\N
20658	DGS-1500-28_fw_revA_2-50-008_all_en_20140220.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N	\N
19495	DES-1210-08P_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N	\N
18577	DES-1210-28_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N	\N
109115	DXS-1210-12SC_REVA1_FIRMWARE_v1.10.013.zip	DXS-1210-12SC	1.10.013	\N	18	\N	f	f	False	f	armel	\N	\N
109116	DXS-1210-SERIES_REVA2_FIRMWARE_v1.20.015_HOTFIX.zip	DXS-1210-12SC	1.20.015	\N	18	\N	f	f	False	f	armel	\N	\N
109117	DXS-1210-12TC_REVA1_FIRMWARE_v1.00.035.zip	DXS-1210-12TC	1.00.035	\N	18	\N	f	f	False	f	armel	\N	\N
109118	DXS-1210-12TC_REVA1_FIRMWARE_v1.10.013.zip	DXS-1210-12TC	1.10.013	\N	18	\N	f	f	False	f	armel	\N	\N
10887	DIR-640L_FIRMWARE_1.02B02.ZIP	DIR-640L	1.02B02	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	23/tcp  open  telnet;443/tcp open  https;
9621	DWL-8600AP_REVA_FIRMWARE_4.3.0.1B003.ZIP	DWL-8600AP	4.3.0.1.B003	\N	18	\N	f	f	False	f	mips64eb	\N	\N
109131	DWL-8600AP_REVA_FIRMWARE_v4.3.0.2.zip	DWL-8600AP	4.3.0.2	\N	18	\N	f	f	False	f	mips64eb	\N	\N
109151	DWL-6600AP_REVA_FIRMWARE_4.2.0.10.ZIP	DWL-6600AP	4.2.0.10	\N	18	\N	f	f	False	f	mipsel	\N	\N
109152	DWL-6600AP_REVA_FIRMWARE_v4.2.0.13.zip	DWL-6600AP	4.2.0.13	\N	18	\N	f	f	False	f	mipsel	\N	\N
109153	DWL-6600AP_REVA_FIRMWARE_v4.2.0.14.zip	DWL-6600AP	4.2.0.14	\N	18	\N	f	f	False	f	mipsel	\N	\N
109154	DWL-6600AP_REVA_FIRMWARE_v4.2.0.15.zip	DWL-6600AP	4.2.0.15	\N	18	\N	f	f	False	f	mipsel	\N	\N
10598	DWL-3150_FIRMWARE_1.00.ZIP	DWL-3150	1.00	\N	18	\N	f	f	False	f	mipsel	\N	\N
10597	DWL-3150_FIRMWARE_1.10.ZIP	DWL-3150	1.10	\N	18	\N	f	f	False	f	mipsel	\N	\N
109161	DWL-3600AP_REVA_FIRMWARE_v4.2.0.14.zip	DWL-3600AP	4.2.0.14	\N	18	\N	f	f	False	f	mipsel	\N	\N
109162	DWL-2600AP_REVA_FIRMWARE_4.2.0.10.ZIP	DWL-2600AP	4.2.0.10	\N	18	\N	f	f	False	f	mipsel	\N	\N
109163	DWL-2600AP_REVA_FIRMWARE_v4.2.0.13.zip	DWL-2600AP	4.2.0.13	\N	18	\N	f	f	False	f	mipsel	\N	\N
109164	DWL-2600AP_REVA_FIRMWARE_v4.2.0.14.zip	DWL-2600AP	4.2.0.14	\N	18	\N	f	f	False	f	mipsel	\N	\N
109165	DWL-2600AP_REVA_FIRMWARE_v4.2.0.15.zip	DWL-2600AP	4.2.0.15	\N	18	\N	f	f	False	f	mipsel	\N	\N
109166	DWL-2600AP_REVA_FIRMWARE_v4.2.0.16.zip	DWL-2600AP	4.2.0.16	\N	18	\N	f	f	False	f	mipsel	\N	\N
109167	DWL-2600AP_REVA_FIRMWARE_v4.2.0.17.zip	DWL-2600AP	4.2.0.17	\N	18	\N	f	f	False	f	mipsel	\N	\N
109180	DWC-1000_REVB_FIRMWARE_v4.6.0.2.zip	DWC-1000	4.6.0.2	\N	18	\N	f	f	False	f	\N	\N	\N
109182	DWC-1000_REVB_FIRMWARE_v4.6.1.1.zip	DWC-1000	4.6.1.1	\N	18	\N	f	f	False	f	\N	\N	\N
109183	DWC-1000_REVA_FIRMWARE_v4.6.0.2.zip	DWC-1000	4.6.0.2	\N	18	\N	f	f	False	f	\N	\N	\N
109185	DWC-1000_REVA_FIRMWARE_v4.6.1.1.zip	DWC-1000	4.6.1.1	\N	18	\N	f	f	False	f	\N	\N	\N
109186	DWC-1000_REVB_FIRMWARE_v4.7.2.2.zip	DWC-1000	4.7.2.2	\N	18	\N	f	f	False	f	\N	\N	\N
109187	DWC-1000_REVA_FIRMWARE_v4.7.1.1_WW.zip	DWC-1000	4.7.1.1	\N	18	\N	f	f	False	f	\N	\N	\N
109188	DWC-1000_REVA_FIRMWARE_v4.7.2.2.zip	DWC-1000	4.7.2.2	\N	18	\N	f	f	False	f	\N	\N	\N
109199	DSR-250_REVC_FIRMWARE_v3.17_WW.zip	DSR-250	3.17	\N	18	\N	f	f	False	f	armel	\N	\N
109204	DSR-250N_REVA_FIRMWARE_v3.17_WW.zip	DSR-250N	3.17	\N	18	\N	f	f	False	f	armel	\N	\N
109213	DSR-250_REVA_FIRMWARE_v3.17_WW.zip	DSR-250	3.17	\N	18	\N	f	f	False	f	armel	\N	\N
109214	DSR-150N_REVA_FIRMWARE_v3.17_WW.zip	DSR-150N	3.17	\N	18	\N	f	f	False	f	armel	\N	\N
109224	DSR-150_REVC_FIRMWARE_v3.17_WW.zip	DSR-150	3.17	\N	18	\N	f	f	False	f	armel	\N	\N
9648	DSR-150_REVA1_FIRMWARE_1.09B32.ZIP	DSR-150	1.09B32	\N	18	\N	f	f	False	f	armel	\N	\N
109236	DSR-150_REVA_FIRMWARE_v3.17_WW.zip	DSR-150	3.17	\N	18	\N	f	f	False	f	armel	\N	\N
8658	DSN-3400-10_FIRMWARE_1.3.0.24.ZIP	DSN-3400-10	1.3.0.24	\N	18	\N	f	f	False	f	\N	\N	\N
8656	DSN-3400-10_FIRMWARE_1.4.0.27.ZIP	DSN-3400-10	1.4.0.27	\N	18	\N	f	f	False	f	\N	\N	\N
8653	DSN-3400-10_FIRMWARE_1.4.1.ZIP	DSN-3400-10	1.4.1	\N	18	\N	f	f	False	f	\N	\N	\N
8655	DSN-3400-10_FIRMWARE_1.5.1.ZIP	DSN-3400-10	1.5.1	\N	18	\N	f	f	False	f	\N	\N	\N
8659	DSN-3200-10_FIRMWARE_1.6.1.23.ZIP	DSN-3200-10	1.6.1.23	\N	18	\N	f	f	False	f	\N	\N	\N
109258	DMS-1100-SERIES_REVA_FIRMWARE_v1.00.12.zip	DMS-1100-10TS	1.00.012	\N	18	\N	f	f	False	f	armel	\N	\N
10348	DGS-1500-52_FIRMWARE_2.10.002.ZIP	DGS-1500-52	2.10.002	\N	18	\N	f	f	False	f	armel	\N	\N
10351	DGS-1500-52_FIRMWARE_2.50.008.ZIP	DGS-1500-52	2.50.008	\N	18	\N	f	f	False	f	armel	\N	\N
10347	DGS-1500-52_FIRMWARE_2.51.005.ZIP	DGS-1500-52	2.51.005	\N	18	\N	f	f	False	f	armel	\N	\N
109313	DGS-1500-52_REVA_FIRMWARE_v2.51B022_BETA.zip	DGS-1500-52	2.51B022	\N	18	\N	f	f	False	f	armel	\N	\N
10620	DGS-1500-28P_FIRMWARE_2.10.002.ZIP	DGS-1500-28P	2.10.002	\N	18	\N	f	f	False	f	armel	\N	\N
10612	DGS-1500-28P_FIRMWARE_2.50.008.ZIP	DGS-1500-28P	2.50.008	\N	18	\N	f	f	False	f	armel	\N	\N
10621	DGS-1500-28P_FIRMWARE_2.51.005.ZIP	DGS-1500-28P	2.51.005	\N	18	\N	f	f	False	f	armel	\N	\N
10628	DGS-1500-28_FIRMWARE_2.10.002.ZIP	DGS-1500-28	2.10.002	\N	18	\N	f	f	False	f	armel	\N	\N
10622	DGS-1500-28_FIRMWARE_2.50.008.ZIP	DGS-1500-28	2.50.008	\N	18	\N	f	f	False	f	armel	\N	\N
8978	DGS-1500-20_FIRMWARE_2.10.002.ZIP	DGS-1500-20	2.10.002	\N	18	\N	f	f	False	f	armel	\N	\N
10631	DGS-1500-28_FIRMWARE_2.51.005.ZIP	DGS-1500-28	2.51.005	\N	18	\N	f	f	False	f	armel	\N	\N
8984	DGS-1500-20_FIRMWARE_2.51.005.ZIP	DGS-1500-20	2.51.005	\N	18	\N	f	f	False	f	armel	\N	\N
109315	DGS-1500-28_REVA_FIRMWARE_v2.51B022_BETA.zip	DGS-1500-28	2.51B022	\N	18	\N	f	f	False	f	armel	\N	\N
109316	DGS-1500-20_REVA_FIRMWARE_v2.51B022_BETA.zip	DGS-1500-20	2.51B022	\N	18	\N	f	f	False	f	armel	\N	\N
109320	DGS-1210_SERIES_REVF_FIRMWARE_v6.10.007.zip	DGS-1210-Series	6.10.007	\N	18	\N	f	f	False	f	mipseb	\N	\N
10420	DGS-1210-10_REVC_FIRMWARE_4.00.064.ZIP	DGS-1210-Series	4.00.064	\N	18	\N	f	f	False	f	armel	\N	\N
109321	DGS-1210-SERIES_REVF_FIRMWARE_v6.11.033_HOTFIX.zip	DGS-1210-Series	6.11.033	\N	18	\N	f	f	False	f	mipseb	\N	\N
109323	DGS-1210-SERIES_REVF_FIRMWARE_v6.12.004_HOTFIX.zip	DGS-1210-Series	6.12.004	\N	18	\N	f	f	False	f	mipseb	\N	\N
10963	DGS-1210-20_REVB_FIRMWARE_3.10.013.ZIP	DGS-1210-Series	3.10.013	\N	18	\N	f	f	False	f	armel	\N	\N
109324	DGS-1210-SERIES_REVF_FIRMWARE_v6.12.006_HOTFIX.zip	DGS-1210-Series	6.12.006	\N	18	\N	f	f	False	f	mipseb	\N	\N
19421	DGS-1210-16_fw_revALL_2-03-001_all_en_20121024.zip	dgs-1210-16		\N	18	\N	f	f	False	f	armel	\N	\N
106741	DGS-1210-20_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N	\N
106756	DGS-1210-28P_fw_revC_4-10-004_eu_multi_20160114.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N	\N
18701	DCH-S150_fw_revA1_1-0-6_all_multi_20141231.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N	\N
20022	DAP-3310_fw_revA2_1_10_rc_19_eu_en_20141111.zip	dap-3310	1.10rc19	\N	18	\N	f	f	[('bre0', '192.168.0.50')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
20983	DAP-3520_fw_revA1_1.15rc039_all_en_20130308.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106323	DCH-G020_fw_revA2_v1-24b02_all_multi.zip	dch-g020		\N	18	\N	f	f	[('br0', '192.168.0.60')]	f	mipseb	\N	old timeout
106307	DAP-3662_fw_revA_1-02-rc031_eu_en_20160330.zip	dap-3662		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106593	DES-1210-28P_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N	\N
18831	DCS-932L_fw_revB1_2-01-03_eu_multi_20150303.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N	\N
106770	DGS-1210-52P_fw_revC_4-10-004_eu_multi_20160119.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N	\N
19699	DCS-5009L_fw_revA1_1-03-01_eu_multi_20150313.zip	dcs-5009l	1.03	\N	18	\N	f	f	False	f	mipsel	\N	\N
19146	dhp-310av_fw_revA_1-04b09_all_en_20140305.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
19150	dhp310av_fw_revA_1.01b09_all_en_20130219.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
18449	DIR-300_fw_reva_103b01DE_ALL_de_071211.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
19533	DI-524UP_fw_reva_100_ALL_en_051019.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
19535	DI-524UP_fw_revab_102_ALL_en_060626.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
19539	DI-524UP_fw_revab_103_ALL_multi_061017.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
19538	DI-524UP_fw_revab_103b17_ALL_multi_070323.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
19534	DI-524UP_fw_revab_104b23_ALL_multi_070621.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
19536	DI-524UP_fw_revab_106b02_ALL_multi_20080514.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
19537	DI-524UP_fw_revAx_108b02_all_en_20131112.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
20007	DI-634M_fw_reva_11b0027_ALL_en_050711.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N	\N
20006	di-634m_fw_reva_121b39_ALL_en_051102.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N	\N
20009	di-634m_fw_reva_12b35_ALL_en_050822.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N	\N
20008	di-634m_fw_reva_122b49_ALL_en_060302.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N	\N
20903	DIR-100_fw_reva_100DE_ALL_de_061120.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20896	DIR-100_fw_reva_102_ALL_en_070618.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20908	DIR-100_fw_reva_102DE_ALL_de_070618.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20907	DIR-100_fw_reva_111DEb04_ALL_de_080115.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20899	DIR-100_fw_reva_112DEb01_ALL_de_080527.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20894	DIR-100_fw_reva_113DE_ALL_de_20100811.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20901	DIR-100_fw_revA1_1-14_eu_en_20140124.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20895	DIR-100_fw_reva_113_ALL_en_20110915.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20897	DIR-100_fw_reva_113DE_ALL_de_20110916.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20900	DIR-100_fw_reva_113FR_ALL_fr_20110915.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20279	DIR-120_fw_revA1_105wwb02_all_en_20131112.zip	dir-120		\N	18	\N	f	f	False	f	mipseb	\N	\N
20025	DIR-505L_fw_revA1_1-02_eu_en_20140219.zip	dir-505l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old down
106857	DIR-505L_fw_revA_1-03_eu_multi_20141117.zip	dir-505l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old down
20534	DIR-505_fw_revA1A2_1-08_eu_en_20140428.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
20538	DIR-505_fw_revA1A2_1-08b07_all_en_20140414.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
20531	DIR-505_fw_revA_1-09b02_all_multi_20140725.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
20537	DIR-505_fw_revA_1-09b06_eu_multi_20140815.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
18448	DIR-300_fw_reva_105DE_ALL_en_20090213.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
18452	DIR-300_fw_revb1_212wwb02_ALL_de_20120118.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18458	DIR-300_fw_revB5_2-15b01_all_en_20130716.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18457	DIR-300_fw_revb_205b03_ALL_de_20101123.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18451	DIR-300_fw_revb_214b01_ALL_20130206.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
8636	DIR-300_REVB_FIRMWARE_PATCH_2.06.ZIP	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18460	DIR_300_fw_revb1_214b01_ALL_en_20130430_instructions.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
20539	DIR-505_fw_revA_1-10b02_eu_multi_20141230.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
19641	DIR-320_fw_reva_110b07_ALL_de_20081121.zip	dir-320		\N	18	\N	f	f	False	f	mipsel	\N	\N
20411	DIR-457_fw_reva_101b01_ALL_de_20091231.zip	dir-457		\N	18	\N	f	f	False	f	mipsel	\N	\N
20412	DIR-457_fw_reva_103B03_ALL_de_20101021.zip	dir-457	1.03B03	\N	18	\N	f	f	False	f	mipsel	\N	\N
19553	DIR-501_fw_reva_103b03_ALL_de_20110318.zip	dir-501		\N	18	\N	f	f	False	f	mipseb	\N	\N
18459	DIR-300_fw_revb_204b01_ALL_de_20100302.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
20416	DIR-510L_fw_revA1_1-01b02_all_en_131218.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old timeout
18461	DIR-300_fw_revb_201DE_ALL_de_20090708.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;
20535	DIR-505_fw_reva_104b03_ALL_en_20120720.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old;53/tcp open  domain;80/tcp open  http;
18447	DIR-300_fw_revA1_1-06b05_all_en_20131011.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
18456	DIR-300_fw_reva_105DE_ALL_de_20090213.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
20533	DIR-505_fw_reva_104b17_ALL_en_20120921.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
20414	DIR-510L_fw_revA1_1-02b04_all_en_20140107.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old down
20415	DIR-510L_fw_revA1_1-02_eu_multi_20140305.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
18455	DIR-300_fw_reva_104b03DE_ALL_de_080305.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
20532	DIR-505_fw_revA1A2_1-06b05_all_en_20121218.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old down
19014	DI-524_fw_revEx_513b01_all_en_20131112.zip	di-524		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;49152/tcp open  unknown;
19758	DIR-615_fw_revd_410DEb02_ALL_de_20081212.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;
106858	DIR-510L_fw_revA_1-05_eu_multi_20150327.zip	dir-510l	1.05b10	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
19912	DIR-600_fw_revb_203b02_ALL_de_20100316.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;
20325	DIR-518L_fw_revA1_1-01b08_all_multi_20140616.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
19753	DIR-615_fw_revd_410DEb04_ALL_de_20090122.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;
19295	DIR-626L_fw_revA_103B01_ALL_en_20130327.zip	dir-626l	1.03b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old timeout
19293	DIR-626L_fw_revA1_101B02_all_en_20121102.zip	dir-626l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;80/tcp closed http;
20324	DIR-518L_fw_revA_1-01_all_multi_20140616.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
19919	DIR-600_fw_revb12_211deb06_all_de_20111222.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19760	DIR-615_fw_revd_411DEb02_ALL_de_20090302.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19294	DIR-626L_fw_revA_105B01_beta_ALL_en_20150310.zip	dir-626l	1.05b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
20413	DIR-510L_fw_revA1_1-04b01_eu_multi_20140731.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
20408	DGS_1500_52_fw_revA_2_10_002_all_en_20121105.zip.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N	\N
19907	DIR-600_fw_revb12_212b02_ALL_de_20120117.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.1')]	f	mipsel	\N	down
19900	DIR-600_fw_revb12_215b01_ALL_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19924	DIR-600_fw_revB5_2-11B11_all_en_20111013.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19747	DIR-615_fw_rev_Dx_414b02_all_en_29042013.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19903	DIR-600_fw_revb_201b01_ALL_de_20090708.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;
106869	DIR-615_fw_revC1_3-14B01_eu_20150625_beta.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http
106860	DIR-510L_fw_revA_1-07_eu_multi_20160407.zip	dir-510l	1.07b02	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
19905	DIR-600_fw_revB5_2-12B02_all_en_20120511.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106861	DIR-518L_fw_revA_1-04_eu_multi_20160107.zip	dir-518l	1.04b01	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
19898	DIR-600_fw_revB5_2-13B01_all_en_20121123.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19911	DIR-600_fw_revB5_2-14B01_all_en_20130225.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19915	DIR-600_fw_revB5_2-15B02_all_en_20130319.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19920	DIR-600_fw_revB5_2-16B02_all_en_20130422.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19923	DIR-600_fw_revb5_2-16b05_all_en_20130527.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19917	DIR-600_fw_revb5_211b11_ALL_de_20110816.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19908	DIR-600_fw_revb5_215b01_ALL_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19906	DIR-600_fw_revB_2-16b05_all_en_20130610.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19918	DIR-600_fw_revB_2-17_eu_multi_20141124.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106862	DIR-600_fw_revB_2-18_eu_multi_20150717.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
9841	DIR-600_REVB_FIRMWARE_PATCH_2.06.ZIP	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19909	DIR_600_fw_revb1_215b01_ALL_en_20130430_instructions.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19899	DIR_600_fw_revb5_215b01_ALL_en_20130430_instructions.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19746	DIR-615_fw_revD3_4.13b02_eu_en_20130306.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19766	DIR-615_fw_revd_413b02_ALL_en_20101206.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19756	DIR-615_fw_revD_414b04_all_en_20131029.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19765	DIR-615_fw_revQ_17-01b03_all_en_20140904.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http49152/tcp open  unknown
19770	DIR-615_fw_revQ_17-02_eu_multi_20141121.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http49152/tcp open  unknown
18886	DIR-605L-fw_revA1_112WWb07.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18882	DIR-605L_fw_revA1_1-16b01_all_en_20150515.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18878	DIR-605L_fw_revA_1-14b01_all_en_20121119.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18889	DIR-605L_fw_revB1_2-04_all_multi_20140312.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18874	DIR-605L_fw_revB2_2-05b04_all_multi_20140811.zip.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18873	DIR-605L_fw_revB_2-00b05_all_en_20130402.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18870	DIR-605L_fw_revB_2-06_all_en_20140925.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18868	DIR-605L_fw_revB_2-06_eu_multi_20141120.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
106864	DIR-605L_fw_revB_2-07_eu_multi_20150615.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
106866	DIR-605L_fw_revB_2-09_eu_multi_20160330.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18883	DIR-605L_fw_revBx_2-08b02_all_en_20150508.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
18556	DIR-810L_fw_revA1_1-02b22_all_en_20140710.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;80/tcp closed http;
20803	DIR-655_fw_revC1_3-01B07_eu_en_20140312.zip	dir-655		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old;80/tcp open  http;
19165	DIR-636L_fw_reva_101B03_ALL_de_20120418.zip	dir-636l		\N	18	\N	f	f	False	f	mipsel	\N	\N
18547	DIR-810L_fw_revA1_1-02b22_eu_multi_20140904.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old timeout
19433	DIR-645_fw_reva_102b07_ALL_en_20111104.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
19435	DIR-645_fw_reva_102b11_ALL_de_20120117.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
10981	DIR-652_fw_revB_1_200B40_eu_en_20121018.zip	dir-652		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http;
20796	DIR-655_fw_revC_3-02_eu_multi_20141226.zip	dir-655		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http;
18929	DIR-815_fw_reva_101b08_ALL_de_20110328.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;80/tcp open  http;
19163	DIR-636L_fw_revA_105B09_beta_All_en_20150309.zip	dir-636l	1.05b09	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;80/tcp closed http;
18542	DIR-810L_fw_revB_2-02_eu_multi_20140922.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18557	DIR-810L_fw_revB_2-03-b02_eu_multi_20141219.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19434	DIR_645_fw_reva_104B05_ALL_en_20130430_instructions.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
106885	DIR-645_fw_revA_1-05_eu_multi_20150721.zip	dir-645	1.05b01	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
18552	DIR-810L_fw_revB_2-03_eu_multi_20141219.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
20971	DIR-652_fw_reva_100b33DE_ALL_de_20100528.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N	\N
20973	DIR-652_fw_reva_102b11DE_ALL_de_20110727.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N	\N
20972	DIR-652_fw_reva_102b11DE_ALL_en_20110727.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N	\N
20970	DIR-652_fw_revA_106B05_ALL_en_20120327.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N	\N
18930	DIR-815_fw_reva_100b02_ALL_de_20100806.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old timeout
20805	DIR-655_fw_revb_200b01.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20790	DIR-655_fw_revb_200b03.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20789	DIR-655_fw_revb_200b07.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20793	DIR-655_fw_revB1_2-09B13_all_en_20131022.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20811	DIR-655_fw_revb_201b05_ALL_de_20101115.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20810	DIR-655_fw_revb_205b06_ALL_de_20120118.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20795	DIR-655_fw_revb_206b02_ALL_en_20120215.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
18548	DIR-810L_fw_revA1_1-00b17_all_en_20130314.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18539	DIR-810L_fw_revA1_1-01b04_all_en_20130327.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106886	DIR_655_fw_revB1_2-10B01_eu_20150615.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N	\N
20472	DIR-657_fw_reva_101b15_ALL_de_20120118.zip	dir-657		\N	18	\N	f	f	False	f	eb	\N	\N
20471	DIR-657_fw_reva_101b15_ALL_en_20120118.zip	dir-657	1.01b15	\N	18	\N	f	f	False	f	eb	\N	\N
18734	DIR-685_fw_reva_100DEb05_ALL_de_20090526.zip	dir-685		\N	18	\N	f	f	False	f	\N	\N	\N
18733	DIR-685_fw_reva_200patch04_ALL_de_20101117.zip	dir-685		\N	18	\N	f	f	False	f	\N	\N	\N
18735	DIR-685_fw_reva_201b03_ALL_de_20110309.zip	dir-685	2.01B03	\N	18	\N	f	f	False	f	\N	\N	\N
19432	DIR-645_fw_reva_102b07_ALL_de_20111104.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	old timeout
19162	DIR-636L_fw_reva_101B03_ALL_en_20120418.zip	dir-636l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old infer failed
18928	DIR-815_fw_reva_102patch01b06_ALL_de_20120214.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18925	DIR-815_fw_reva_103b01_ALL_de_20120423.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
9049	DIR-815_REVB_FIRMWARE_PATCH_2.04.B01.ZIP	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
18926	DIR_815_fw_reva_104B02_ALL_en_20130430_instructions.zip	dir-815	1.04B02	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106906	DIR-810L_fw_revB_2-04b01beta2_eu_multi_20160615.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106907	DIR-810L_fw_revC_3-00_eu_multi_20150325.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106908	DIR-810L_fw_revC_3-01b01beta06_eu_multi_20160627.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18545	DIR-810L_revA_1-03b01_beta_all_en_20150305.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18551	DIR-810L_revB_2-04b01_beta_all_en_20150305.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18543	DIR810L_fw_revB1_2-01b03_all_multi_20140710.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18549	DIR810L_fw_revB1_2-02b01_all_multi_20140909.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19430	DIR-645_fw_reva_102b11_ALL_en_20120117.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
106875	DIR-626L_fw_revA_1-06_eu_multi_20160325.zip	dir-626l	1.06b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19428	DIR-645_fw_revA_103B11_ALL_en_20121012.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
9405	DIR-645_REVA_FIRMWARE_PATCH_1.05.B01.ZIP	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
19368	DIR-816_fw_revA_1-01b02_eu_multi_20141231.zip	dir-816		\N	18	\N	f	f	False	f	mipsel	\N	\N
18228	DIR-816L_fw_revA_1-00_eu_multi_20141231.zip	dir-816l		\N	18	\N	f	f	False	f	mipsel	\N	\N
10409	DGS-1210-10P_REVA_A2_FIRMWARE_2.03.001.ZIP	DGS-1210-Series	2.03.001	\N	18	\N	f	f	False	f	armel	\N	\N
19166	DIR-636L_fw_revA_1-04b06_all_en_20130305.zip	dir-636l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19532	DI-524UP_fw_revab_107b01_ALL_multi_20100128.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N	\N
18421	DIR-818LW_fw_revA1_1-00_all_multi_20140219.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
19465	DIR-820L_fw_revA_1-06b02_eu_multi_20150427.zip	dir-820l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http;139/tcp  open  netbios-ssn;443/tcp  open  https;445/tcp  open  microsoft-ds;8181/tcp open  intermapper;
20106	DIR-826L_fw_revA_104B06_ALL_en_20130520.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;80/tcp closed http;
106913	DIR-842_fw_revA_1-02_eu_multi_20151008.zip	dir-842		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
20591	DIR-850L FW1.09b03.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20530	DIR_845L_fw_reva_101B02_ALL_en_20130430_instructions.zip	dir-845l	1.01b02	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	old timeout
20193	DIR-865L_fw_rev_A_105b01_all_en_26042013.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
106911	DIR-818LW_fw_revA_1-05_eu_multi_20160314.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20880	DIR-825_fw_revb_201EUb17_ALL_multi_20091019.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp  open     http;443/tcp filtered https;
106922	DIR-860L_fw_revB_2-03_eu_multi_20150602.zip	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	old timeout
106914	DIR-842_fw_revB_2-01b4_eu_multi_20160506.zip	dir-842		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	53/tcp  open  domain;80/tcp  open  http;443/tcp open  https;
20601	DIR-850L_fw_revA1_1-07b01_all_en_20130621.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20905	DIR-100_fw_revA1_114wwb02_all_en_20131112.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N	\N
20719	DIR-860L_fw_revB_2-00_eu_multi_20141121.zip	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	old;80/tcp open  http;
18235	DIR-816L_fw_revB1_2-03_all_multi_20140325.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20878	DIR-825_fw_revb_202EUb04_ALL_multi_20100212.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20111	DIR-826L_fw_revA_1_102B26_all_en_20121121.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106915	DIR-842_fw_revB_2-02_eu_multi_20160718.zip	dir-842		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	53/tcp  open  domain;80/tcp  open  http;443/tcp open  https;
20590	DIR-850L_fw_revA1_1-10_all_en_140109.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
18425	DIR-818LW_fw_revB1_2-01_eu_multi_20140915.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
18422	DIR-818LW_fw_revB_2-03_eu_multi_20141127.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20190	DIR-865L_fw_reva_100b24_ALL_en_20121807.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20881	DIR-825_fw_revb_204EUb02_ALL_multi_20100826.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http;
20110	DIR_826L_revA_106B01_beta_ALL_en_20150309.zip	dir-826l	1.06b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
20108	DIR-826L_fw_reva_101b03_ALL_de_20120418.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old infer failed
20883	DIR-825_fw_revb_205EUb09_07_all_multi_20120106.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http
20877	DIR-825_fw_revB_206EUb04_ALL_multi_20120319.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http
110089	RE305(V3)_20201202.zip	RE305	v3	\N	51	\N	f	f	False	f	mipsel	\N	\N
20882	DIR-825_fw_revC_1_301B12_en_20121204.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http
20594	DIR-850L_fw_revA_1-06b05_all_en_20130613.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20598	DIR-850L_fw_revA_1-12b05_eu_multi_20141212.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
19483	DIR-857_fw_reva_101b09_ALL_en_20120504.zip	dir-857		\N	18	\N	f	f	False	f	eb	\N	\N
19484	DIR-857_fw_revA_103b01_ALL_en_20121009.zip	dir-857	1.03B01	\N	18	\N	f	f	False	f	eb	\N	\N
20727	DIR-860L_fw_revA1_1-04b02_all_en_20130917.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
20729	DIR-860L_fw_revA1_1-07_all_multi_20140213.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
20717	DIR-860L_fw_revA1_1-07b01_all_en_20140124.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
20728	DIR-860L_fw_revA_1-02b01_all_en_20130520.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
106920	DIR-860L_fw_revA_1-09_eu_multi_20150629.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
106921	DIR-860L_fw_revA_1-10_eu_multi_20150720.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
10666	DIR-860L_REVA_FIRMWARE_PATCH_1.10..B04.ZIP	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
106928	DIR-869_fw_revA_1-02_eu_multi_20160801.zip	dir-869		\N	18	\N	f	f	[('br0', '169.254.201.7')]	f	mipseb	\N	old down
20191	DIR_865L_fw_reva_105b01_ALL_en_20130430_instructions.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20132	DIR-868_fw_revA1_1-00_all_multi_20140506.zip	dir-868		\N	18	\N	f	f	False	f	armel	\N	\N
18754	DIR-868L_fw_revA1_1-07b02_all_en_20140122.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
18751	DIR-868L_fw_revA1_1-08b07_eu_multi_20140729.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
18750	DIR-868L_fw_revA_1-01b05_all_en_20130603.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
18749	DIR-868L_fw_revA_1-06b01_all_en_20131115.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
18752	DIR-868L_fw_revA_1-09_eu_multi_20150212.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
106923	DIR-868L_fw_revA_1-09_eu_multi_20150702.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
106924	DIR-868L_fw_revA_1-10_eu_multi_20150723.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
18748	DIR-868L_fw_revB1_2-00b07_eu_multi_20140729.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
18753	DIR-868L_fw_revB_2-01b05_eu_multi_20150323.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
106925	DIR-868L_fw_revB_2-03_eu_multi_20150527.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
106926	DIR-868L_fw_revC_3-00_eu_multi_20151022.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
8921	DIR-868L_REVA_FIRMWARE_PATCH_1.10.B04_WW.ZIP	dir-868l		\N	18	\N	f	f	False	f	armel	\N	\N
20189	DIR-865L_fw_reva_101b06_ALL_en_20120719.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
106930	DIR-880_REVA_FIRMWARE_PATCH_1.04.B01_WW.ZIP	dir-880l		\N	18	\N	f	f	False	f	armel	\N	\N
18329	DIR-880L_fw_revA1_1-01b09_eu_multi_20140627.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N	\N
18330	DIR-880L_fw_revA1_1-02b13_eu_multi_20141103.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N	\N
18332	DIR-880L_fw_revA_1-02_eu_multi_20141210.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N	\N
106931	DIR-880L_fw_revA_1-03_eu_multi_20150527.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N	\N
106932	DIR880L_fw_revA1_1.00SG.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N	\N
106933	DIR-880L_fw_revA_1-05b2-f7hb_eu_multi_20151109.zip	dir-880l	1.05b02	\N	18	\N	f	f	False	f	armel	\N	\N
106934	DIR-880L_fw_revA_1-06_eu_multi_20151228.zip	dir-880l	1.06b01	\N	18	\N	f	f	False	f	armel	\N	\N
106935	DIR-880L_fw_revA_1-07b08_eu_multi_20160516.zip	dir-880l	1.07b08	\N	18	\N	f	f	False	f	armel	\N	\N
19048	DIR-890L_fw_revA_1-01_eu_multi_20141219.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N	\N
19051	DIR-890L_fw_revA_1-02_eu_multi_20150212.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N	\N
9114	DIR-890L_fw_revA_1-06b04_en_multi_20150416.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N	\N
106936	DIR-890L_fw_revA_1-10_eu_multi_20160729.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N	\N
106937	DIR-890L_fw_revA_1-07_eu_multi_20150720.zip	dir-890l	1.07b09	\N	18	\N	f	f	False	f	armel	\N	\N
106938	DIR-890L_fw_revA_1-08_eu_multi_20150901.zip	dir-890l	1.08	\N	18	\N	f	f	False	f	armel	\N	\N
106939	DIR-890L_fw_revA_1-09_eu_multi_20160512.zip	dir-890l	1.09b14	\N	18	\N	f	f	False	f	armel	\N	\N
20909	DMC-1002_fw_revA_1-17_all_en_20071203.zip	DMC-1002	1.17	\N	18	\N	f	f	False	f	\N	\N	\N
19247	DNS-313_fw_all_eng_1.01b14V1_080422.zip	dns-313		\N	18	\N	f	f	False	f	\N	\N	\N
107074	DNS-320L_sw_revA3_Elephantdrive_Package_2-9-25_all_en_20160104.zip	dns-320l		\N	18	\N	f	f	False	f	\N	\N	\N
107100	DNS-320LW_sw_revA2_D-Link-Vault-Addon-2-7_all_multi_20150202.zip	dns-320lw		\N	18	\N	f	f	False	f	\N	\N	\N
20750	DNS-323_Firefly_v100.zip	dns-323		\N	18	\N	f	f	False	f	\N	\N	\N
107111	DNS-323_sw_Skript_fun_plug_squeezebox7.4.1_installieren.zip	dns-323		\N	18	\N	f	f	False	f	armel	\N	\N
107114	DNS-323_C1_FW_v1.10_Firefly_Package_v1.01_03022011.zip	dns-323		\N	18	\N	f	f	False	f	\N	\N	\N
109326	DGS-1210-52MP-ME_REVB_FIRMWARE_v7.02B051_WW.zip	DGS-1210-52MP/ME	7.02.051	\N	18	\N	f	f	False	f	armel	\N	\N
109327	DGS-1210-52MP_ME_REVB_FIRMWARE_v7.03.006.zip	DGS-1210-52MP/ME	7.03.006	\N	18	\N	f	f	False	f	armel	\N	\N
109328	DGS-1210-28P-ME_REVB_FIRMWARE_v7.02B051_WW.zip	DGS-1210-28P/ME	7.02.051	\N	18	\N	f	f	False	f	armel	\N	\N
109329	DGS-1210-28P_ME_REVB_FIRMWARE_v7.03.006.zip	DGS-1210-28P/ME	7.03.006	\N	18	\N	f	f	False	f	armel	\N	\N
109330	DGS-1210-52-ME_REVB_FIRMWARE_v7.02B051_WW.zip	DGS-1210-52/ME	7.02.051	\N	18	\N	f	f	False	f	armel	\N	\N
109331	DGS-1210-52_ME_REVB_FIRMWARE_v7.03.006.zip	DGS-1210-52/ME	7.03.006	\N	18	\N	f	f	False	f	armel	\N	\N
109332	DGS-1210-28-ME_REVB_FIRMWARE_v7.02B051_WW.zip	DGS-1210-28/ME	7.02.051	\N	18	\N	f	f	False	f	armel	\N	\N
109333	DGS-1210-28_ME_REVB_FIRMWARE_v7.03.006.zip	DGS-1210-28/ME	7.03.006	\N	18	\N	f	f	False	f	armel	\N	\N
109334	DGS-1210-28-ME_REVB_FIRMWARE_v7.03.012_HOTFIX.zip	DGS-1210-28/ME	7.03.012	\N	18	\N	f	f	False	f	armel	\N	\N
109335	DGS-1210-28-ME_REVB_FIRMWARE_v7.03B019_HOTFIX.zip	DGS-1210-28/ME	7.03.019	\N	18	\N	f	f	False	f	armel	\N	\N
109336	DGS-1210-10P-ME_REVB_FIRMWARE_v7.02B051_WW.zip	DGS-1210-10P/ME	7.02.051	\N	18	\N	f	f	False	f	armel	\N	\N
109337	DGS-1210-10P_ME_REVB_FIRMWARE_v7.03.006.zip	DGS-1210-10P/ME	7.03.006	\N	18	\N	f	f	False	f	armel	\N	\N
109338	DGS-1210-10P-ME_REVB_FIRMWARE_v7.03B011_HOTFIX.zip	DGS-1210-10P/ME	7.03.011	\N	18	\N	f	f	False	f	armel	\N	\N
109339	DGS-1210-10-ME_REVB_FIRMWARE_v7.02B051_WW.zip	DGS-1210-10/ME	7.02.051	\N	18	\N	f	f	False	f	armel	\N	\N
9722	DES-1210-52_REVC_FIRMWARE_4.00_WW.ZIP	DES-1210-52	4.00	\N	18	\N	f	f	False	f	mipseb	\N	\N
109385	DES-1210-52_REVC_FIRMWARE_4.00.064_WW.ZIP	DES-1210-52	4.00.064	\N	18	\N	f	f	False	f	mipseb	\N	\N
109386	DES-1210-52_REVC_FIRMWARE_v4.10.004.zip	DES-1210-52	4.10.004	\N	18	\N	f	f	False	f	mipseb	\N	\N
8738	DES-1210-28P_REVC_FIRMWARE_4.00.050.ZIP	DES-1210-28P	4.00.050	\N	18	\N	f	f	False	f	mipseb	\N	\N
109387	DES-1210-52_REVC_FIRMWARE_v4.10B045_BETA.zip	DES-1210-52	4.10.045	\N	18	\N	f	f	False	f	mipseb	\N	\N
106865	DIR-605L_fw_revB_2-08_eu_multi_20151209.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N	\N
20723	DIR-860L_fw_revA1_1-08b02_all_en_20140306.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N	\N
107122	DNS-323_sw_Skript_fun_plug_squeezebox7.5.3_installieren.zip	dns-323		\N	18	\N	f	f	False	f	armel	\N	\N
107166	DNS-327L_sw_revA1_D-Link_Vault_Addon_2-9-20_all_en_20160104.zip	dns-327l		\N	18	\N	f	f	False	f	\N	\N	\N
107182	DNS-340L _sw_D-Link_Vault_Add-on_revA1_2-7_all_multi_20141104.zip	dns-340l		\N	18	\N	f	f	False	f	\N	\N	\N
107199	DNS-340L_sw_revA1_Elephantdrive_Package_2-9-20_all_multi_20160104.zip	dns-340l		\N	18	\N	f	f	False	f	\N	\N	\N
18395	DSL-2542B_fw_revd_EU100_ALL_multi_20070907.zip	dsl-2542b		\N	18	\N	f	f	False	f	\N	\N	\N
18393	DSL-2542B_fw_revd_EU121_ALL_multi_20091019.zip	dsl-2542b		\N	18	\N	f	f	False	f	\N	\N	\N
18396	DSL-2542B_fw_revd_EU123_ALL_multi_20101229.zip	dsl-2542b		\N	18	\N	f	f	False	f	\N	\N	\N
18394	DSL-2542B_fw_revd_EU123_ALL_multi_20110211.zip	DSL-2542B	1.23	\N	18	\N	f	f	False	f	\N	\N	\N
19940	DSL-2543B_fw_revd_EU100_ALL_multi_20070612.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19943	DSL-2543B_fw_revd_EU110_ALL_multi_20080711.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19941	DSL-2543B_fw_revd_EU120_ALL_multi_20081020.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19945	DSL-2543B_fw_revd_EU120_ALL_multi_20090205.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19939	DSL-2543B_fw_revd_EU120_ALL_multi_20090715.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19947	DSL-2543B_fw_revd_EU120_ALL_multi_20090730.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19942	DSL-2543B_fw_revd_EU121_ALL_multi_20091020.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19946	DSL-2543B_fw_revd_EU123_ALL_multi_20101229.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N	\N
19944	DSL-2543B_fw_revd_EU123_ALL_multi_20110211.zip	DSL-2543B	1.23	\N	18	\N	f	f	False	f	\N	\N	\N
20015	DSL-2640B_fw_revb_EU400_310022800_ALL_multi_080610.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N	\N
20011	DSL-2640B_fw_refb3_5-00_eu_en_20100304.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N	\N
20013	DSL-2640B_fw_revA_400_en_20090616.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N	\N
8735	DES-1210-28P_REVB_FIRMWARE_3.10.011.ZIP	DES-1210-28P	3.10.011	\N	18	\N	f	f	False	f	mipseb	\N	\N
109389	DES-1210-28P_REVC_FIRMWARE_v4.12.016.zip	DES-1210-28P	4.12.016	\N	18	\N	f	f	False	f	mipseb	\N	\N
20529	DIR-845L_fw_revA_1_FW100b20_en_20130103.zip	dir-845l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
20722	DIR-860L_fw_revB_2-01_eu_multi_20150310.zip	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
20107	DIR-826L_fw_revA_1-05_eu_multi_20141204.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
20109	DIR-826L_fw_revA_105B13_ALL_en_20140731.zip	dir-826l	1.05b13	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18454	DIR-300_fw_reva_104DEb16_ALL_de_080705.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
18450	DIR-300_fw_reva_104DEb16_ALL_en_080705.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
2	DIR-300_fw_revb1_212wwb02_ALL_en_20120118.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18453	DIR_300_fw_reva_106WWb02_ALL_en_20130430_instructions.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
20540	DIR-505_fw_revA1A2_1-07b18_all_en_20131031.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
20536	DIR-505_fw_revA_1-10_eu_multi_20141230.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
20417	DIR-510L_fw_revA1_1-03B03_eu_multi_20140526.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
106859	DIR-510L_fw_revA_1-06_eu_multi_20150917.zip	dir-510l	1.06b02	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
20328	DIR-518L_fw_revA_1-03_eu_multi_20150305.zip	dir-518l	1.03	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
19901	DIR-600_fw_revb12_205b01_ALL_de_20101123.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19910	DIR-600_fw_revB1B2_2-15B01_all_en_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19921	DIR-600_fw_revB5_2-15B01_all_en_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19913	DIR-600_fw_revb5_212b02_ALL_de_20120117.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19914	DIR-600_fw_revBx_2-17b02_all_en_20140317.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19755	DIR-615_fw_revd_411DEb15_ALL_de_20100303.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
19767	DIR-615_fw_revd_413DEb02_ALL_de_20101206.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106909	DIR-816L_fw_revA_1-01_eu_multi_20150720.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
18230	DIR-816L_fw_revB_2-04B02_eu_multi_20141006.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
18426	DIR-818LW_fw_revA1_1-04_all_multi_20140901.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
9898	DIR-818LW_REVB_FIRMWARE_PATCH_2.05.B01.ZIP	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
106912	DIR-825_fw_revB1_2-10B01_eu_20150615_beta.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp open  http
20592	DIR-850L_fw_revA1_ 1-09b04_all_en_20130912.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20194	DIR-865L_fw_revA1_1-05b07_all_en_20130718.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
18627	UK_101b02.bin	dsl-2740r		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;5555/tcp open  freeciv;
20276	DSL-2770L_fw_A1_1-00_eu_en_130904.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	no results
19352	DSL-2740B_fw_reve_517b49_ALL_multi_20100308.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
20277	DSL-2770L_fw_revA1_1-00_eu_en_20130320.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	no results
19356	DSL-2740B_fw_reve_517_ALL_multi_20101007.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
20677	DSL-2741B_fw_reve_517_ALL_multi_20101007.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
107279	DSL-2770L_fw_revA1_1-06_eu_06162015_beta.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	no results
20273	DSL-2770L_fw_revA1_1.03_05202014_ITA.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	
107280	DSL-2770L_fw_revA1_1-03_eu_multi_20150720.zip	dsl-2770l	1.03	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	
20012	DSL-2640B_fw_revb3_EU500_ALL_multi_20100403.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N	\N
20016	DSL-2640B_HW-B2_WT_1.1.0b5_20100409.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N	\N
20018	DSL-2640B_HW-E1_WI_1.00_20110414.zip	dsl-2640b		\N	18	\N	f	f	False	f	mipseb	\N	\N
19003	DSL-2641B_fw_revb3_EU500_ALL_multi_20100126.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N	\N
19007	DSL-2641B_fw_revb3_EU500_ALL_multi_20100308.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N	\N
19004	DSL-2641B_fw_revb2_EU400_310022800_ALL_multi_080610.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N	\N
19005	DSL-2641B_fw_revb3_EU501_ALL_multi_20100831.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N	\N
19006	DSL-2641B_fw_reve1_100b04_04142011_ALL_multi_20110414.zip	dsl-2641b		\N	18	\N	f	f	False	f	mipseb	\N	\N
19002	DSL-2641B_fw_reve1_201_03092012_ALL_multi_20120309.zip	dsl-2641b		\N	18	\N	f	f	False	f	mipseb	\N	\N
19349	DSL-2740B_fw_revc_228eu_ALL_en.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N	\N
19358	DSL-2740B_fw_revc_261b243_ALL_multi_080609.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N	\N
19353	DSL-2740B_fw_revc_289b401_ALL_multi_20090202.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N	\N
19354	DSL-2740B_fw_revA_v2-51b181_en_20080430.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N	\N
19350	DSL-2740B_fw_revc_295b484_ALL_multi_20090420.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N	\N
19351	DSL-2740B_fw_revF1_1-00__eu_en_20100906.zip	dsl-2740b		\N	18	\N	f	f	False	f	mipseb	\N	\N
19355	DSL-2740B_HW-F1_EU_2.04_08072012_BETA.zip	dsl-2740b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20672	DSL-2741B_fw_revc_261b244_ALL_multi_080609.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N	\N
20678	DSL-2741B_fw_revc_273b248_ALL_multi_20080818.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N	\N
20674	DSL-2741B_fw_revc_289b402_ALL_multi_20090202.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N	\N
20675	DSL-2741B_fw_revc_295b481_ALL_multi_20090330.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N	\N
20673	DSL-2741B_fw_revc_303b489_ALL_multi_20100120.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N	\N
20680	DSL-2741B_fw_revf1_100b09_04142011_ALL_multi_20110414.zip	dsl-2741b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20682	DSL-2741B_fw_revf1_201_03092012_ALL_multi_20120309.zip	dsl-2741b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20205	DSL-2750B_1.00_WI_20130723.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20199	DSL-2750B_1.00_WI_20131121.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
107273	DSL-2750B_1.00_WI_20150713.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20209	DSL-2750B_1.02_WI_20141113.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20201	DSL-2750B_2.03_WI_20121113.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20204	DSL-2750B_fw_revD1_1_01_eu_multi_20130311.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
107274	DSL-2750B_fw_revE1_1-00_eu_multi_20151124.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20206	DSL-2750B_HW-B1_EU_2.04_08062012_BETA.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20207	DSL-2750B_HW_D1_EU_1.02_05292014_ITA.bin	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20202	DSL-2750B_HW_D1_EU_1.02_06102013.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20203	DSL-2750B_HW_D1_EU_1.03_11052014.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
20200	DSL-2750B_revB1_2-02_eu_en_20120424.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
19462	DSL-300t_fw_revALL_100b02t02eu20040618_ALL_en_040618.zip	dsl-300t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20963	DSL-320B_fw_revd_120_ALL_multi_20090326.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N	\N
20966	DSL-320B_fw_revd_121_ALL_multi_20090416.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N	\N
20964	DSL-320B_fw_revA_v121_en_20090622.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N	\N
20965	DSL_320B_fw_revd2_125_ALL_en_20130430_instructions.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N	\N
20099	DSL-320T_fw_revA_300B01T01EU20061124_ALL_eng_20061124.zip	dsl-320t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20097	DSL-320T_fw_revA_300B01T02EU_ALL_eng_20060126.zip	dsl-320t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20098	DSL-320T_fw_revA_310B01T01EU20070628_ALL_en_20070628.zip	DSL-320T	3.10	\N	18	\N	f	f	False	f	mipsel	\N	\N
18259	DSL-321B_fw_revd_100DE_ALL_deu_20080131.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N	\N
18255	DSL-321B_fw_revd_101DE_ALL_multi_20090421.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N	\N
18257	DSL-321B_fw_revd_103DE_ALL_multi_20101228.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N	\N
18258	DSL-321b_fw_revD_1_1-00_eu_en_20100324.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N	\N
107284	DSL-3580L_fw_revA2_1-01_eu_multi_20150515.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N	\N
19875	DSL-3580L_fw_revA2_2-00_eu_multi_20141016.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N	\N
107285	DSL-3580L_fw_revA2_2-01_eu_multi_20150515.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N	\N
16385	DSP-W215_fw_revA1_1-10_all_en_20140715.zip	dsp-w215		\N	18	\N	f	f	[('br0', '192.168.0.60')]	f	mipseb	\N	80/tcp open  http;
110091	RE305(V3)_200715.zip	RE305	v3	\N	51	\N	f	f	False	f	mipsel	\N	\N
19874	DSL-3580L_fw_revA1_1-01_all_en_20140307.zip	dsl-3580l	1.01	\N	18	\N	f	f	False	f	mipseb	\N	\N
19872	DSL-3580L_fw_revA2_2-00_eu_multi_20140921.zip	dsl-3580l	2.00	\N	18	\N	f	f	False	f	mipseb	\N	\N
19674	DSL-360t_fw_revALL_100b02t02de20050429pb_ALL_en_20050429.zip	dsl-360t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20626	DSL-362t_fw_revALL_20050607zb_CZ_cz_200500607.zip	dsl-362t		\N	18	\N	f	f	False	f	mipsel	\N	\N
18804	DSL-380T_fw_revA_300B01T02DE20070211_ALL_de_20070211.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N	\N
18807	DSL-380T_fw_revA_300B01T02EU_ALL_eng_20060126.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N	\N
18806	DSL-380T_fw_reva_300B01T02DE20070430_ALL_de_20070430.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20968	DSL-504T_fw_revALL_100B02T02_EEU_PL_040610.zip	dsl-504t	1.00	\N	18	\N	f	f	False	f	mipsel	\N	\N
19558	DSL-524T_fw_revA_300B01T01EUA20061124_ALL_eng_20061124.zip	dsl-524t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19560	DSL-524T_fw_revA_300B01T02EU-A_ALL_eng_20060209.zip	dsl-524t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19561	DSL-524T_fw_reva_300B01T02EUA20070510_ALL_en_20070510.zip	dsl-524t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19559	DSL-524T_fw_revA_310B01T02EUA20070613_ALL_en_20070613.zip	dsl-524t	3.10	\N	18	\N	f	f	False	f	mipsel	\N	\N
19575	DSL-562t_fw_revALL_20040813_ALL_multi_040813.zip	dsl-562t		\N	18	\N	f	f	False	f	mipsel	\N	\N
18905	DSL-564t_fw_revALL_20040813_ALL_en_040813.zip	dsl-564t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19826	DSL-584T_fw_revA_300B01T02EU-A_ALL_eng_20060209.zip	dsl-584t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19827	DSL-584T_fw_reva_300B01T02EUA20060717_ALL_en_060717.zip	dsl-584t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19825	DSL-584T_fw_reva_300B01T02EUA20061127_ALL_en_061127.zip	dsl-584t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19608	DSL-G624T_fw_revA_300B01T02EU-A_ALL_eng_20060208.zip	dsl-g624t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19607	DSL-G624T_fw_reva_302B01T02EUA20061124_ALL_en_061127.zip	dsl-g624t		\N	18	\N	f	f	False	f	mipsel	\N	\N
19606	DSL-G624T_fw_reva_302B01T02EUA20070413_ALL_en_20070413.zip	dsl-g624t	3.02	\N	18	\N	f	f	False	f	mipsel	\N	\N
19609	DSL-G624T_fw_revA_310B01T02EUA20070613_ALL_en_20070613.zip	dsl-g624t	3.10	\N	18	\N	f	f	False	f	mipsel	\N	\N
20342	dsl-g664t_fw_deu_eng_100b02t02_eu_20040707.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20345	dsl-g664t_fw_deu_eng_100b02t02_eu_20040721.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20341	DSL-g664t_fw_revALL_20040804_ALL_multi_20040804.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20344	DSL-g664t_fw_revALL_20050817_CZ_cz_20050817.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20435	DSL-G684T_fw_revA_300B01T02EU-A_ALL_eng_20060208.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20437	DSL-G684T_fw_reva_300B01T02EUA20060717_ALL_en_060717.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20438	DSL-G684T_fw_reva_302B01T02EUA20061124_ALL_en_061124.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20439	DSL-G684T_fw_reva_302B01T02EUA20071221_ALL_en_20071221.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N	\N
20365	DSM-320_fw_revA_5_1.07_all_en_20080811.zip	dsm-320	1.07	\N	18	\N	f	f	False	f	armel	\N	\N
18382	DSP-W215_fw_revB1_2-0-2_eu_en_20141204.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N	\N
18384	DSP-W215_fw_revB1_2-0-3_all_en_20150430.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N	\N
107307	DSP-W215_fw_revB1_2-0-4_all_multi_20150706.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N	\N
107308	DSP-W215_fw_revB2_2-20_all_en_20150813.zip	dsp-w215	2.20b10	\N	18	\N	f	f	False	f	mipseb	\N	\N
107309	DSP-W215_FW_revB2_2-21_eu_en_20151012.zip	dsp-w215	2.21b01	\N	18	\N	f	f	False	f	mipseb	\N	\N
107310	DSP-W215_fw_revB2_2-22_all_multi_20160301.zip	dsp-w215	2.22b05	\N	18	\N	f	f	False	f	mipseb	\N	\N
18383	DSP-W215B1_fw_revB1_2-01_eu_multi_20141006.zip	dsp-w215b1		\N	18	\N	f	f	False	f	mipseb	\N	\N
20383	DSR-1000N_fw_revALL_1-03B12_all_en_110131.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N	\N
20374	DSR-1000N_fw_revALL_1-03B23_all_en_110330.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N	\N
20384	DSR-1000N_fw_revALL_1-03B27_all_en_110408.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N	\N
20380	DSR-1000N_fw_revALL_1-03B36_all_en_110610.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N	\N
20382	DSR-1000N_fw_revALL_1-03B43_all_en_110620.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N	\N
20369	DSR-1000N_fw_revALL_1-04B58_all_en_20120210.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20372	DSR-1000N_fw_revALL_1-06B43_all_en_20120720.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20376	DSR-1000N_fw_revALL_1-06B53_all_en_20120821.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20370	DSR-1000N_fw_revALL_1-06B79_all_en_20121112.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
19647	DSR-150N_fw_revALL_1-05b29_all_en_20120726.zip	dsr-150n		\N	18	\N	f	f	False	f	\N	\N	\N
18436	DSR-250N_fw_revALL_1-01B46_all_en_20111005.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N	\N
18441	DSR-250N_fw_revALL_1-01B56_all_en_20111031.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N	\N
18442	DSR-250N_fw_revALL_1-05b06_all_en_20120119.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N	\N
18439	DSR-250N_fw_revALL_1-05B73_all_en_20121112.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N	\N
20831	DSR-500N_fw_revALL_1-03B27_all_en_110408.zip	dsr-500n		\N	18	\N	f	f	False	f	\N	\N	\N
20823	DSR-500N_fw_revALL_1-03B43_all_en_110620.zip	dsr-500n		\N	18	\N	f	f	False	f	\N	\N	\N
20824	DSR-500N_fw_revALL_1-04B13_all_en_110919.zip	dsr-500n		\N	18	\N	f	f	False	f	\N	\N	\N
20838	DSR-500N_fw_revALL_1-06B43_all_en_20120720.zip	dsr-500n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20835	DSR-500N_fw_revALL_1-06B53_all_en_20120821.zip	dsr-500n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20832	DSR-500N_fw_revALL_1-06B79_all_en_20121112.zip	dsr-500n		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20781	DVA-G3342SD_fw_revab_18_ALL_de_070817.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20785	DVA-G3342SD_fw_revab_191beta_ALL_de_071004.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20780	DVA-G3342SD_fw_revab_203_ALL_de_071030.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20782	DVA-G3342SD_fw_revab_207_ALL_de_080903.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20572	DWR-921_fw_revA1_1-01b04_all_en_20130522.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;80/tcp closed http;
19807	GO-RT-AC750_fw_revA_1-01b03_eu_multi_20141017.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
20570	DWR-921_fw_revB1_2-01b03_all_en_140918.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
19813	GO-RT-AC750_fw_revB_2-00_eu_multi_20141117.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
107728	DWR-921_fw_revB1_2-02-b08_eu_en_20150701.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
20784	DVA-G3342SD_fw_revab_2091_ALL_de_090324.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20223	DWC-1000_A1_FW_4.2.0.6_WW.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
20218	DWC-1000_A1_FW_4.3.0.2.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
20215	DWC-1000_fw_revALL_4-1-0-2_10244_all_en_20120906.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
20217	DWC-1000_fw_revALL_4-1-0-2_all_en_20120618.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
20216	DWC-1000_fw_revB_4-3-0-2_all_en_20140826.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
107550	DWC-1000_fw_revB_4-4-1-2_all_en_20150804.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
20219	DWC-1000_fw_revA1_4-2-0-6_all_multi_20140115.zip	dwc-1000	4.2	\N	18	\N	f	f	False	f	\N	\N	\N
20214	DWC-1000_fw_revALL_4-2-0-3_all_en_20130430.zip	dwc-1000	4.2	\N	18	\N	f	f	False	f	\N	\N	\N
107552	DWC-1000_fw_revA_4-4-1-2_all_en_20150804.zip	dwc-1000	4.4	\N	18	\N	f	f	False	f	\N	\N	\N
18579	DWL-2600_FW_v4_2_0_1_c9_oa_20121120.zip	dwl-2600ap		\N	18	\N	f	f	False	f	mipsel	\N	\N
20467	DWL-3600AP_fw_revA1_rev4-1-0-11_all_en_20120928.zip	dwl-3600ap	4.1	\N	18	\N	f	f	False	f	\N	\N	\N
20609	DWL-6600AP_fw_revALL_4-1-0-11_all_en_20120925.zip	dwl-6600ap		\N	18	\N	f	f	False	f	\N	\N	\N
107625	DWL-6700_fw_4_4_0_6_eu_en_20150612.zip	dwl-6700		\N	18	\N	f	f	False	f	mipseb	\N	\N
107626	DWL-6700AP_fw_revA_4-4-0-7_eu_en_20150724.zip	dwl-6700ap	4.4	\N	18	\N	f	f	False	f	mipseb	\N	\N
19622	DWL-8600AP_fw_revALL_3-0-0-14_all_en_20110711.zip	dwl-8600ap		\N	18	\N	f	f	False	f	mips64eb	\N	\N
19618	DWL-8600AP_fw_revALL_4-1-0-8_for_DWC-1000.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N	\N
19623	DWL-8600AP_fw_v1.0.0.6.zip	dwl-8600ap		\N	18	\N	f	f	False	f	mips64eb	\N	\N
19624	DWL-8600AP_fw_revA1_4.1.0.14_all_en_121217.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N	\N
19620	DWL-8600AP_fw_revALL_3-0-0-16_all_en_20120726.zip	dwl-8600ap		\N	18	\N	f	f	False	f	mips64eb	\N	\N
19619	DWL-8600AP_fw_revALL_4-1-0-11_all_en_20120928.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N	\N
19621	DWL-8600AP_fw_revALL_4_1_0_14_1024.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N	\N
18313	dwl-g700ap_fw_revB_v213b06.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N	\N
18308	DWL-G700AP_fw_v201r13_0716(0916131744).zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N	\N
18311	DWL-G700AP_fw_v210r14_0330.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N	\N
18310	DWL-g700ap_fw_v212b03(0330120936).zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N	\N
18312	DWL-G700AP_fw_RevB_v2.31b02.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N	\N
107721	20150916_D-link_DWR-116_V1-00_TM_b01.bin	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N	\N
20642	DWR-116_fw_revA1_1-02b03_all_en_20131030.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N	\N
20645	DWR-116_fw_revA1_1-04b03_all_en_20140808.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N	\N
107722	DWR-116_fw_revA1_1-05b01_all_en_20150824.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N	\N
107723	DWR-116_fw_revA_1-06-EUB02_eu_en_20160218.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N	\N
20641	DWR-116_fw_revAX_1_01b05_eu_en_20140312.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N	\N
20644	DWR-116_fw_revA1_1-03b03_all_en_201410219.zip	dwr-116	1.03b03	\N	18	\N	f	f	False	f	mipsel	\N	\N
20643	DWR-116_fw_revA1_1-04_eu_en_20141016.zip	dwr-116	1.04	\N	18	\N	f	f	False	f	mipsel	\N	\N
107724	DWR-116_fw_revA1_1-06b02_all_en_20151106.zip	dwr-116	1.06b02	\N	18	\N	f	f	False	f	mipsel	\N	\N
107725	DWR-118 _fw_revA_1-00-b02_eu_en_20150812.zip	dwr-118		\N	18	\N	f	f	False	f	mipsel	\N	\N
107726	DWR-118_fw_revA1_1-01b01_all_en_20160715.zip	dwr-118		\N	18	\N	f	f	False	f	mipsel	\N	\N
110095	RE205_V1_171218.zip	RE205		\N	51	\N	f	f	False	f	mipsel	\N	\N
110097	RE205_V2_201202.zip	RE205		\N	51	\N	f	f	False	f	mipsel	\N	\N
107729	DWR-921_fw_revC_3-00-b07_eu_en_20150903.zip	dwr-921		\N	18	\N	f	f	False	f	mipsel	\N	\N
107730	DWR-921_fw_revC_3-01-b01_eu_en_20150920.zip	dwr-921		\N	18	\N	f	f	False	f	mipsel	\N	\N
107733	DWR-953_fw_revAx_1-00-b06_eu_multi_20160506.zip	dwr-953		\N	18	\N	f	f	False	f	mipsel	\N	\N
20058	DWS-3024_fw_revAll_incl-Firmware-fuer-Accesspoints_3.0.0.12.zip	dws-3024		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20055	DLink UWS_UAP 3.0.0.23 Patch Release(0515121237).zip	dws-3024		\N	18	\N	f	f	False	f	mips64eb	\N	\N
20519	DWS-4026-DWL-8600ap_fw_v1.0.0.6.zip	dws-4026		\N	18	\N	f	f	False	f	\N	\N	\N
20524	DWS-4026-DWL-8600AP_fw_v1008.zip	dws-4026		\N	18	\N	f	f	False	f	\N	\N	\N
20520	DWS-4026_DWL-8600AP-A1_FW_v30014_20110508.zip	dws-4026		\N	18	\N	f	f	False	f	\N	\N	\N
107739	DXS-1100_fw_revA_1-00-005_eu_multi_20160629.zip	dxs-1100		\N	18	\N	f	f	False	f	armel	\N	\N
19289	DXS-1210-10TS_fw_revA_1-00-021_eu_multi_20150303.zip	dxs-1210-10ts		\N	18	\N	f	f	False	f	armel	\N	\N
107744	DXS-1210-10TS_fw_revA_1-10-013_eu_multi_20151215.zip	dxs-1210-10ts		\N	18	\N	f	f	False	f	armel	\N	\N
107746	DXS-1210-10TS_fw_revA_1-10-015_eu_multi_20160118.zip	dxs-1210-10ts	1.10	\N	18	\N	f	f	False	f	armel	\N	\N
18896	DXS-1210-12TC_fw_revA_1-00_eu_en_20150211.zip	dxs-1210-12tc		\N	18	\N	f	f	False	f	armel	\N	\N
107748	DXS-1210-12TC_fw_revA_1-10-015_eu_multi_20160118.zip	dxs-1210-12tc	1.10	\N	18	\N	f	f	False	f	armel	\N	\N
107757	GO-DSL-AC750_fw_revT1_1-04_eu_multi_20160105.zip	go-dsl-ac750		\N	18	\N	f	f	False	f	mipseb	\N	\N
20238	GO-DSL-AC750_other software_revT1_1-02_eu_multi_20141029.zip	go-dsl-ac750		\N	18	\N	f	f	False	f	mipseb	\N	\N
20239	GO_DSL_AC750_fw_revT1_1-02_eu_en_20140506.zip	go-dsl-ac750	1.02	\N	18	\N	f	f	False	f	mipseb	\N	\N
2490	MBRN3000-V1.0.0.72_2.0.12NA.zip	MBRN3000	1.0.0.72	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1169/tcp  filtered tripwire;1805/tcp  filtered enl-name;3077/tcp  filtered orbix-loc-ssl;6123/tcp  filtered backup-express;11111/tcp filtered vce;
3636	MVBR1210C_V1.2.0.35BM.zip	MVBR1210C	1.2.0.35	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	old;80/tcp closed http;
107804	D6000_V1.0.0.61_1.0.1.zip	D6000	1.0.0.61	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
107809	D6100-V1.0.0.46_0.0.46.zip	D6100	1.0.0.46	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
107798	D3600_V1.0.0.41_1.0.1_FW.zip	D3600	1.0.0.41	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
2492	MBRN3000 Firmware Version 1.0.0.65_2.0.12 (NA).zip	MBRN3000	1.0.0.65	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
107799	D3600_V1.0.0.59_1.0.1.zip	D3600	1.0.0.59	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
107805	D6000-V1.0.0.47_1.0.1_FW.zip	D6000	1.0.0.47	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
2937	EVA8000 Firmware Version 2.1.83 (North America).zip	EVA8000	2.1.83	\N	33	\N	f	f	False	f	\N	\N	\N
4818	EVA9150 Firmware Version 2.3.16 (NA).zip	EVA9150	2.3.16	\N	33	\N	f	f	False	f	mipsel	\N	\N
4814	EVA9150 Firmware Version 2.2.127 (NA).zip	EVA9150	2.2.127	\N	33	\N	f	f	False	f	mipsel	\N	\N
4808	EVA9150 Firmware Version 2.3.14 (NA).zip	EVA9150	2.3.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
4812	EVA9000 Firmware Recovery Tool (NA).zip	EVA9150		\N	33	\N	f	f	False	f	mipsel	\N	\N
107810	D6100-V1.0.0.50_0.0.50.zip	D6100	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
3836	MBM621 Firmware Version 1.1.3.zip	MBM621	1.1.3	\N	33	\N	f	f	False	f	mipseb	\N	\N
1989	MBR1200 Firmware Version 1.2.2.53WW.zip	MBR1200	1.2.2.53	\N	33	\N	f	f	False	f	mipsel	\N	\N
4445	MBR1515-V1.2.2.68Retail.zip	MBR1515	1.2.2.68	\N	33	\N	f	f	False	f	mipsel	\N	\N
4983	MBR1516-V1.2.2.84-BM.zip	MBR1516	1.2.2.84	\N	33	\N	f	f	False	f	mipsel	\N	\N
4016	MBR624GU Firmware Version 6.01.30.59 (North America).zip	MBR624GU	6.01.30.59	\N	33	\N	f	f	False	f	armel	\N	\N
4011	MBR624GU Firmware Version 6.01.30.61.zip	MBR624GU	6.01.30.61	\N	33	\N	f	f	False	f	armel	\N	\N
4017	MBR624GU Firmware Version 6.00.22.14 (North America).zip	MBR624GU	6.00.22.14	\N	33	\N	f	f	False	f	armel	\N	\N
4014	MBR624GU Firmware Version 6.00.22.12 (North America).zip	MBR624GU	6.00.22.12	\N	33	\N	f	f	False	f	armel	\N	\N
4008	MBR624GU Firmware Version 6.00.28.43 (North America).zip	MBR624GU	6.00.28.43	\N	33	\N	f	f	False	f	armel	\N	\N
2494	MBRN3000 Firmware Version 1.0.0.69 (NA).zip	MBRN3000	1.0.0.69	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
107801	D3600_V1.0.0.61_1.0.1.zip	D3600	1.0.0.61	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
107807	D6000_FW_V1.0.0.49_1.0.1.zip	D6000	1.0.0.49	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
107808	D6000_V1.0.0.59_1.0.1.zip	D6000	1.0.0.59	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
107834	D7800_FW_V1.0.1.10.zip	D7800	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
6119	swi_nhd1w_1.0.95.1.zip	AirCard Hub	1.0.95.1	\N	33	\N	f	f	False	f	mipsel	\N	\N
6233	Hub_swi_nhd1w_1.0.95.0.zip	AirCard Hub	1.0.95.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
6162	AC803S_1780690_01.13.00_032.field.zip	AirCard 803S (Sprint)	01.13.00	\N	33	\N	f	f	False	f	armel	\N	\N
6224	AC802S_1453010_01.07.09_041.field.zip	AirCard 802S (Sprint)	01.07.09	\N	33	\N	f	f	False	f	armel	\N	\N
107788	DC112A-V1.0.0.24_1.0.60.zip	DC112A	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N	\N
107789	DC112A-V1.0.0.30_1.0.60.zip	DC112A	1.0.0.30	\N	33	\N	f	f	False	f	armel	\N	\N
107790	DC112A-V1.0.0.4_1.0.60ZAIN.zip	DC112A (Zain)	1.0.0.4	\N	33	\N	f	f	False	f	armel	\N	\N
107833	D7800_FW_V1.0.1.16.zip	D7800	1.0.1.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
107831	D7800_FW_V1.0.0.46.zip	D7800	1.0.0.46	\N	33	\N	f	f	False	f	\N	\N	\N
2653	DG632 Firmware Version 3.6.0C_38 (from 3.6.x to this version).zip	DG632	3.6.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
107835	D7800_V1.0.0.48.zip	D7800	1.0.0.48	\N	33	\N	f	f	False	f	\N	\N	\N
2658	DG632 Firmware Version 3.6.0.zip	DG632	3.6.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
2655	DG632 Firmware Version 3.40.zip	DG632	3.40	\N	33	\N	f	f	False	f	mipsel	\N	\N
2654	DG632 Firmware Version 3.3.0.a.cx.zip	DG632	3.3.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
107837	D7800_V1.0.0.40_FW.zip	D7800	1.0.0.40	\N	33	\N	f	f	False	f	\N	\N	\N
107838	D7800_V1.0.0.44_FW.zip	D7800	1.0.0.44	\N	33	\N	f	f	False	f	\N	\N	\N
107839	D7800_V1.0.0.38_FW.zip	D7800	1.0.0.38	\N	33	\N	f	f	False	f	\N	\N	\N
4982	DG834B Firmware Version 3.01.25.zip	DG834B	3.01.25	\N	33	\N	f	f	False	f	mipsel	\N	\N
4216	DG834Bv2 Firmware Version V3.01.37.zip	DG834Bv2	3.01.37	\N	33	\N	f	f	False	f	mipsel	\N	\N
4369	DG834GT_V1.03.23.zip	DG834GT	1.03.23	\N	33	\N	f	f	False	f	\N	\N	\N
107842	DG834 and DG834G Firmware Version 3.01.25.zip	DG834Gv1	3.01.25	\N	33	\N	f	f	False	f	mipsel	\N	\N
107843	DG834(v1 & v2) and DG834G(v1 & v2) Firmware Version 3.01.29.zip	DG834Gv1	3.01.29	\N	33	\N	f	f	False	f	mipsel	\N	\N
107844	DG834Gv2_V3.01.26.zip	DG834Gv2	3.01.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
3466	DG834GBv3_V4.01.41.zip	DG834Gv3	4.01.41	\N	33	\N	f	f	False	f	mipsel	\N	\N
3934	DG834Gv3_V4.01.42.zip	DG834Gv3	4.01.42	\N	33	\N	f	f	False	f	mipsel	\N	\N
107845	dg834v3_dg834gv3_na_4_03_04.zip	DG834Gv3	4.03.04	\N	33	\N	f	f	False	f	mipsel	\N	\N
3248	DG834Bv4_V5.01.16.zip	DG834Gv4	5.01.16	\N	33	\N	f	f	False	f	\N	\N	\N
2844	DG834Gv4_V5.01.17.zip	DG834Gv4	5.01.17	\N	33	\N	f	f	False	f	\N	\N	\N
15966	DG834V3_V4.01.40.zip	DG834Gv3	4.01.40	\N	33	\N	f	f	False	f	mipsel	\N	\N
4992	DG834Gv5-V1.6.01.34.zip	DG834Gv5	1.6.01.34	\N	33	\N	f	f	False	f	armel	\N	\N
3778	DG834GV Firmware Version 1.02.39.zip	DG834GVv1	1.02.39	\N	33	\N	f	f	False	f	mipsel	\N	\N
3779	DG834GV Firmware Version 1.02.42.zip	DG834GVv1	1.02.42	\N	33	\N	f	f	False	f	mipsel	\N	\N
3782	DG834GV Firmware Version 1.02.41.zip	DG834GVv1	1.02.41	\N	33	\N	f	f	False	f	mipsel	\N	\N
3780	DG834GV Firmware Version 1.02.26.zip	DG834GVv1	1.02.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
4854	DGN2200M Firmware Version 1.0.0.35 (North America).zip	DGN2200M	1.0.0.35	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
4945	DGN2200 DGN2200B Firmware Version 1.0.0.36 (NA).zip	DGN2200v1	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
107846	DGN1000v3-V1.0.0.22_0.0.22.zip	DGN1000Bv3	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old down
4671	DG834PN Firmware Version 1.03.30.zip	DG834PN	1.03.30	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;49152/tcp open  unknown;
16513	DGND3700 Firmware Version 1.0.0.12 (NA).zip	DGND3700v1	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old;80/tcp closed http;
4860	DGN2200M-V1.0.0.37_1.0.21WW_A.zip	DGN2200M	1.0.0.37	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
107849	DGN2200-V1.0.0.50_7.0.50NA.zip	DGN2200v1	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
2939	DG834GV v2 Firmware Version 2.02.42.zip	DG834GVv2	2.02.42	\N	33	\N	f	f	False	f	mipsel	\N	\N
2938	DG834GV v2 Firmware Version 2.02.40.zip	DG834GVv2	2.02.40	\N	33	\N	f	f	False	f	mipsel	\N	\N
4231	DG834N Firmware Version 1.02.08.zip	DG834Nv1	1.02.08	\N	33	\N	f	f	False	f	\N	\N	\N
4226	DG834N Firmware Version 1.01.06.zip	DG834Nv1	1.01.06	\N	33	\N	f	f	False	f	\N	\N	\N
4228	DG834N firmware version 1.01.02.zip	DG834Nv1	1.01.02	\N	33	\N	f	f	False	f	\N	\N	\N
4227	DG834N Firmware Version 1.01.03.zip	DG834Nv1	1.01.03	\N	33	\N	f	f	False	f	\N	\N	\N
4225	DG834N Firmware version 0.00.18.zip	DG834Nv1	0.00.18	\N	33	\N	f	f	False	f	\N	\N	\N
16524	DG834 and DG834G Firmware Version 3.01.32 (for use outside UK and North America).zip	DG834Nv1	3.01.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
4674	DG834PN Firmware Version 1.03.18.zip	DG834PN	1.03.18	\N	33	\N	f	f	False	f	mipseb	\N	\N
4672	DG834PN Firmware Version 1.03.39.zip	DG834PN	1.03.39	\N	33	\N	f	f	False	f	\N	\N	\N
4675	DG834PN Firmware Version 1.03.35.zip	DG834PN	1.03.35	\N	33	\N	f	f	False	f	\N	\N	\N
4138	DGN1000(B)v3_V1.0.0.8_0.0.8.zip	DGN1000Bv3	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
4865	DGN2200M Firmware Version 1.0.0.33 (North America).zip	DGN2200M	1.0.0.33	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
16527	DG834 and DG834G Firmware Version 3.01.37 (for use in Germany and Austria only).zip	DG834v1	3.01.37	\N	33	\N	f	f	False	f	mipsel	\N	\N
16526	DG834 and DG834G Firmware Version 3.01.31 (for use in UK only).zip	DG834v1	3.01.31	\N	33	\N	f	f	False	f	mipsel	\N	\N
16523	DG834 and DG834G Firmware Version 3.01.38 (for use in UK only).zip	DG834v1	3.01.38	\N	33	\N	f	f	False	f	mipsel	\N	\N
2678	DG834 (v1_v2) and DG834G (v1_v2) Firmware version 1.05.00.zip	DG834v1	1.05.00	\N	33	\N	f	f	False	f	mipsel	\N	\N
3444	DG834v4 DG834Gv4 Firmware Version 5.01.09.zip	DG834v4	5.01.09	\N	33	\N	f	f	False	f	\N	\N	\N
2317	DG834v3 DG834Gv3 Firmware Version 4.01.04 (initial release).zip	DG834v3	4.01.04	\N	33	\N	f	f	False	f	mipsel	\N	\N
2318	DG834v3 DG834Gv3 Firmware Version 4.01.30.zip	DG834v3	4.01.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
2316	DG834v3DG834Gv3 Firmware 4.01.37.zip	DG834v3	4.01.37	\N	33	\N	f	f	False	f	mipsel	\N	\N
3441	DG834v4 DG834Gv4 Firmware Version 5.01.01.zip	DG834v4	5.01.01	\N	33	\N	f	f	False	f	\N	\N	\N
2321	DG834v3 and DG834Gv3 Firmware Version 4.01.40.zip	DG834v3	4.01.40	\N	33	\N	f	f	False	f	mipsel	\N	\N
3438	DG834v4 DG834Gv4 Firmware Version 5.03.16 (North America).zip	DG834v4	5.03.16	\N	33	\N	f	f	False	f	\N	\N	\N
2320	DG834v3 DG834Gv3 Firmware Version 4.03.04 (North America).zip	DG834v3	4.03.04	\N	33	\N	f	f	False	f	mipsel	\N	\N
4930	DGN1000NA_V1.1.00.40.zip	DGN1000	1.1.00.40	\N	33	\N	f	f	False	f	\N	\N	\N
4925	DGN1000_V1.1.00.34_NA.zip	DGN1000	1.1.00.34	\N	33	\N	f	f	False	f	\N	\N	\N
4936	DGN1000_V1.1.00.56_NA.zip	DGN1000	1.1.00.56	\N	33	\N	f	f	False	f	\N	\N	\N
4935	DGN1000_V1.1.00.51_NA.zip	DGN1000	1.1.00.51	\N	33	\N	f	f	False	f	\N	\N	\N
4941	DGN1000_V1.1.00.52_NA.zip	DGN1000	1.1.00.52	\N	33	\N	f	f	False	f	\N	\N	\N
4136	DGN1000v3-V1.0.0.14_0.0.14.zip	DGN1000Bv3	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old;53/tcp open  domain;80/tcp open  http;
110099	RE205_V2_190929.zip	RE205		\N	51	\N	f	f	False	f	mipsel	\N	\N
107848	DGN2000_V1.3.16.0.zip	DGN2000	1.3.16.0	\N	33	\N	f	f	False	f	\N	\N	\N
4294	DGN2000NA_V1.3.12.0.zip	DGN2000	1.3.12.0	\N	33	\N	f	f	False	f	\N	\N	\N
4291	DGN2000NA_V1.3.10.0.zip	DGN2000	1.3.10.0	\N	33	\N	f	f	False	f	\N	\N	\N
4292	DGN2000-V1.3.15.0.zip	DGN2000	1.3.15.0	\N	33	\N	f	f	False	f	\N	\N	\N
4299	DGN2000NA_V1.3.7.zip	DGN2000	1.3.7.0	\N	33	\N	f	f	False	f	\N	\N	\N
4298	DGN2000-V1.3.13.0.zip	DGN2000	1.3.13.0	\N	33	\N	f	f	False	f	\N	\N	\N
4300	DGN2000NA_V1.3.11.0.zip	DGN2000	1.3.11.0	\N	33	\N	f	f	False	f	\N	\N	\N
4556	DGN3500-V1.1.00.28_NA.zip	DGN3500	1.1.00.28	\N	33	\N	f	f	False	f	\N	\N	\N
4561	DGN3500-V1.1.00.30_NA.zip	DGN3500	1.1.00.30	\N	33	\N	f	f	False	f	\N	\N	\N
4560	DGN3500-V1.1.00.36_1.00.36NA.zip	DGN3500	1.1.00.36	\N	33	\N	f	f	False	f	\N	\N	\N
4557	DGN3500-V1.1.00.37NA.zip	DGN3500	1.1.00.37	\N	33	\N	f	f	False	f	\N	\N	\N
3797	DGND3300 Firmware Version 1.1.00.32 (North America).zip	DGND3300v1	1.1.00.32	\N	33	\N	f	f	False	f	\N	\N	\N
3795	DGND3300 Firmware Version 1.1.00.22 (North America).zip	DGND3300v1	1.1.00.22	\N	33	\N	f	f	False	f	\N	\N	\N
5011	DGND3300v2 Firmware Version 2.1.00.42 (North America).zip	DGND3300v2	2.1.00.42	\N	33	\N	f	f	False	f	\N	\N	\N
5007	DGND3300v2 Firmware Version 2.1.00.48 (North America).zip	DGND3300v2	2.1.00.48	\N	33	\N	f	f	False	f	\N	\N	\N
4996	DGND3300v2 Initial Release Firmware 2.1.00.33 (North America).zip	DGND3300v2	2.1.00.33	\N	33	\N	f	f	False	f	\N	\N	\N
5004	DGND3300v2 Firmware Version 2.1.00.51 (NA Users Only).zip	DGND3300v2	2.1.00.51	\N	33	\N	f	f	False	f	\N	\N	\N
3794	DGND3300 Firmware Version 1.1.00.41 (North America).zip	DGND3300v1	1.1.00.41	\N	33	\N	f	f	False	f	\N	\N	\N
5010	DGND3300v2 Firmware Version 2.1.00.53 (For NA Users Only).zip	DGND3300v2	2.1.00.53	\N	33	\N	f	f	False	f	\N	\N	\N
2197	DM111PSPv2_v1.1.00.09_NA.zip	DM111PSPv2	1.1.00.09	\N	33	\N	f	f	False	f	\N	\N	\N
2199	DM111PSPv2-V1.1.00.08_NA.zip	DM111PSPv2	1.1.00.08	\N	33	\N	f	f	False	f	\N	\N	\N
107868	XWN5001-V0.4.1.1.zip	XWN5001	0.4.1.1	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
107877	EX2700-V1.0.0.26.zip	EX2700	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	80/tcp   open  http3333/tcp open  dec-notes
4954	WNCE4004_V1.0.0.22.zip	WNCE4004	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.240'), ('br0', '192.168.1.240')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
4976	XWN5001-V0.3.0.9.zip	XWN5001	0.3.0.9	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
4082	WNCE2001 Firmware Version 1.0.0.26 (NA).zip	WNCE2001	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.251')]	f	mipsel	\N	old;80/tcp open  http;
107873	EX2700-V1.0.1.8.zip	EX2700	1.0.1.8	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	80/tcp   open  http;3333/tcp open  dec-notes;
4084	WNCE2001 Firmware Version 1.0.0.25 (North America).zip	WNCE2001	1.0.0.25	\N	33	\N	f	f	[('br0', '192.168.1.251')]	f	mipsel	\N	old timeout
5606	DM111PSPv2-V1.1.00.03_NA.zip	DM111PSPv2	1.1.00.03	\N	33	\N	f	f	False	f	\N	\N	\N
4717	DM111Pv1 Firmware Version 3.29u.zip	DM111Pv1	3.29	\N	33	\N	f	f	False	f	\N	\N	\N
4714	DM111Pv1 Firmware Version 3.63y7.zip	DM111Pv1	3.63	\N	33	\N	f	f	False	f	\N	\N	\N
4711	DM111Pv1 Firmware Version 3.30j (for Customers outside Singapore & UK).zip	DM111Pv1	3.30	\N	33	\N	f	f	False	f	\N	\N	\N
4713	DM111Pv1 Firmware Version 3.64p.zip	DM111Pv1	3.64	\N	33	\N	f	f	False	f	\N	\N	\N
4822	DM111Pv2 Firmware Version 2.00.25.zip	DM111Pv2	2.00.25	\N	33	\N	f	f	False	f	\N	\N	\N
4825	DM111Pv2 Firmware Version 2.00.19.zip	DM111Pv2	2.00.19	\N	33	\N	f	f	False	f	\N	\N	\N
107861	DM200_V1.0.0.36.zip	DM200	1.0.0.36	\N	33	\N	f	f	False	f	mipseb	\N	\N
107862	DM200_V1.0.0.34.zip	DM200	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N	\N
107863	PLW1000-V1.0.1.4.zip	PLW1000	1.0.1.4	\N	33	\N	f	f	False	f	armel	\N	\N
107864	PLW1000-V1.0.0.22.zip	PLW1000	1.0.0.22	\N	33	\N	f	f	False	f	armel	\N	\N
107865	PLW1000-V1.0.0.18.zip	PLW1000	1.0.0.18	\N	33	\N	f	f	False	f	armel	\N	\N
4885	XAU2511_V0.2.1.2.zip	XAU2511	0.2.1.2	\N	33	\N	f	f	False	f	mipseb	\N	\N
107866	XAU2511-v0.2.1.7.zip	XAU2511	0.2.1.7	\N	33	\N	f	f	False	f	mipseb	\N	\N
4890	XAU2511_V0.2.1.5.zip	XAU2511	0.2.1.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
2555	XAVN2001_V0.2.1.7.zip	XAVN2001	0.2.1.7	\N	33	\N	f	f	False	f	mipseb	\N	\N
2564	XAVN2001 Firmware Version 0.2.1.6.zip	XAVN2001	0.2.1.6	\N	33	\N	f	f	False	f	mipseb	\N	\N
4168	WNCE3001 Firmware Version 1.0.0.38.zip	WNCE3001	1.0.0.38	\N	33	\N	f	f	False	f	mipseb	\N	\N
4169	WNCE3001 Firmware Version 1.0.0.44.zip	WNCE3001	1.0.0.44	\N	33	\N	f	f	False	f	mipseb	\N	\N
107869	WNCE3001-V1.0.0.46_1.0.33.zip	WNCE3001	1.0.0.46	\N	33	\N	f	f	False	f	mipseb	\N	\N
4167	WNCE3001 Firmware Version 1.0.0.34.zip	WNCE3001	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N	\N
107870	WNCE3001-V1.0.0.50_1.0.35.zip	WNCE3001	1.0.0.50	\N	33	\N	f	f	False	f	mipseb	\N	\N
107871	DST6501-V1.0.1.4.zip	DST6501	1.0.1.4	\N	33	\N	f	f	False	f	armel	\N	\N
107874	DST6501-V1.0.0.28.zip	DST6501	1.0.0.28	\N	33	\N	f	f	False	f	armel	\N	\N
107875	DST6501-V1.0.0.34.zip	DST6501	1.0.0.34	\N	33	\N	f	f	False	f	armel	\N	\N
107878	DST6501-V1.0.0.36.zip	DST6501	1.0.0.36	\N	33	\N	f	f	False	f	armel	\N	\N
107879	EX3700-V1.0.0.50_1.0.30.zip	EX3700	1.0.0.50	\N	33	\N	f	f	False	f	mipsel	\N	\N
107880	EX3700-V1.0.0.44_1.0.22.zip	EX3700	1.0.0.44	\N	33	\N	f	f	False	f	mipsel	\N	\N
107881	EX3700-V1.0.0.28_1.0.20.zip	EX3700	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
107882	EX3700-V1.0.0.26_1.0.19.zip	EX3700	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
107883	EX3700_V1.0.0.22_1.0.17.zip	EX3700	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
107884	EX3700-V1.0.0.46_1.0.26.zip	EX3700	1.0.0.46	\N	33	\N	f	f	False	f	mipsel	\N	\N
107885	EX3700-V1.0.0.34_1.0.22.zip	EX3700	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
107886	EX3700_EX3800-V1.0.0.58_1.0.38.zip	EX3700	1.0.0.58	\N	33	\N	f	f	False	f	mipsel	\N	\N
107887	EX3700-V1.0.0.48_1.0.28.zip	EX3700	1.0.0.48	\N	33	\N	f	f	False	f	mipsel	\N	\N
107889	EX6000-V1.0.0.10_1.0.6.zip	EX6000	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
107890	EX6000-V1.0.0.20_1.0.11.zip	EX6000	1.0.0.20	\N	33	\N	f	f	False	f	mipsel	\N	\N
107891	EX6100-V1.0.2.6_1.1.120.zip	EX6100	1.0.2.6	\N	33	\N	f	f	False	f	mipsel	\N	\N
3804	EX6100_V1.0.0.28_1.0.66.zip	EX6100	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
107892	EX6100-V1.0.1.36_1.0.114_07311820.zip	EX6100	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N	\N
3805	EX6100_V1.0.0.22_1.0.51.zip	EX6100	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
107894	EX6120-V1.0.0.28_1.0.18.zip	EX6120	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
107895	EX6120-V1.0.0.16_1.0.11.zip	EX6120	1.0.0.16	\N	33	\N	f	f	False	f	mipsel	\N	\N
107896	EX6120-V1.0.0.14_1.0.10.zip	EX6120	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
107897	EX6120-V1.0.0.8_1.0.4.zip	EX6120	1.0.0.8	\N	33	\N	f	f	False	f	mipsel	\N	\N
107898	EX6120-V1.0.0.26_1.0.16.zip	EX6120	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
107899	EX6120-V1.0.0.4_1.0.2.zip	EX6120	1.0.0.4	\N	33	\N	f	f	False	f	mipsel	\N	\N
107900	EX6130-V1.0.0.12_1.0.7.zip	EX6130	1.0.0.12	\N	33	\N	f	f	False	f	mipsel	\N	\N
107901	EX6150-V1.0.0.14_1.0.54.zip	EX6150	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
107902	EX6150-V1.0.0.32_1.0.68.zip	EX6150	1.0.0.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
107903	EX6150-V1.0.0.16_1.0.58.zip	EX6150	1.0.0.16	\N	33	\N	f	f	False	f	mipsel	\N	\N
107904	EX6150-V1.0.0.28_1.0.64.zip	EX6150	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
107906	EX6200-V1.0.3.74_1.1.109.zip	EX6200	1.0.3.74	\N	33	\N	f	f	False	f	armel	\N	\N
3002	EX6200_V1.0.0.46-1.1.70.zip	EX6200	1.0.0.46	\N	33	\N	f	f	False	f	armel	\N	\N
107907	EX6200-V1.0.1.60_1.1.98_FW.zip	EX6200	1.0.1.60	\N	33	\N	f	f	False	f	armel	\N	\N
107908	EX6200-V1.0.3.68_1.1.104.zip	EX6200	1.0.3.68	\N	33	\N	f	f	False	f	armel	\N	\N
107909	EX6200-V1.0.0.52_1.1.90.zip	EX6200	1.0.0.52	\N	33	\N	f	f	False	f	armel	\N	\N
3004	EX6200_V1.0.0.38_1.1.52.zip	EX6200	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N	\N
107913	EX7300-V1.0.0.34.zip	EX6400	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
107923	EX7300-V1.0.0.32.zip	EX7300	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
107931	WN3000RPv3-V1.0.1.24.zip	WN3000RPv3	1.0.1.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes
3529	WN3500RP_V1.0.0.22_1.0.62.zip	WN3500RP	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	old down
3251	WN3000RPv2_V1.0.0.24.zip	WN3000RPv2	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	23/tcp   open  telnet;3333/tcp open  dec-notes;
107928	WN3000RPv3-V1.0.2.24.zip	WN3000RPv3	1.0.2.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
107933	WN3100RPv2-FW_V1.0.0.14.zip	WN3100RPv2	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
2652	WN2000RPTv3-V1.0.0.18.zip	WN2000RPTv3	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	old timeout
107914	EX7300_EX6400-V1.0.0.44.zip	EX6400	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
3533	WN3500RP-V1.0.0.12_1.0.49.zip	WN3500RP	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	old down
3249	WN3000RPv2-V1.0.0.26.zip	WN3000RPv2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	23/tcp   open  telnet;3333/tcp open  dec-notes;
107929	WN3000RPv3-V1.0.1.20.zip	WN3000RPv3	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
107925	WN2000RPTv3-V1.0.0.24.zip	WN2000RPTv3	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	old;80/tcp open  http;
107930	WN3000RPv3-V1.0.2.20.zip	WN3000RPv3	1.0.2.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
107917	EX7000-V1.0.0.30_1.0.72_FW.zip	EX7000	1.0.0.30	\N	33	\N	f	f	False	f	armel	\N	\N
107918	EX7000-V1.0.0.36_1.0.88.zip	EX7000	1.0.0.36	\N	33	\N	f	f	False	f	armel	\N	\N
107919	EX7000-V1.0.0.32_1.0.84.zip	EX7000	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N	\N
107920	EX7000-V1.0.0.38_1.0.91.zip	EX7000	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N	\N
107921	wn1000rp-V1.0.0.52.zip	WN1000RP	1.0.0.52	\N	33	\N	f	f	False	f	mipsel	\N	\N
107922	EX7000-V1.0.0.42_1.0.94.zip	EX7000	1.0.0.42	\N	33	\N	f	f	False	f	armel	\N	\N
107915	EX7300_EX6400-V1.0.0.40.zip	EX6400	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
3532	WN3500RP-V1.0.0.16_1.0.58.zip	WN3500RP	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
3531	WN3500RP_V1.0.0.18_1.0.59.zip	WN3500RP	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
3530	WN3500RP-V1.0.0.14_1.0.54.zip	WN3500RP	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
2483	WN2500RP-V1.0.0.30_1.0.58.zip	WN2500RP	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
2485	WN2500RP-V1.0.0.24_1.0.53.zip	WN2500RP	1.0.0.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
2484	WN2500RP-V1.0.0.26_1.0.54.zip	WN2500RP	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
3933	WN2500RPv2_V1.0.0.30_1.0.41.zip	WN2500RPv2	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
107926	WN2500RPv2-V1.0.1.42_1.0.56.zip	WN2500RPv2	1.0.1.42	\N	33	\N	f	f	False	f	mipsel	\N	\N
4681	WN3000RP-V1.0.1.34_1.1.46.zip	WN3000RP	1.0.1.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
4680	WN3000RP Firmware Version 1.0.0.12_1.0.12.zip	WN3000RP	1.0.0.12	\N	33	\N	f	f	False	f	mipsel	\N	\N
4679	WN3000RP_V1.0.2.64_1.1.86.zip	WN3000RP	1.0.2.64	\N	33	\N	f	f	False	f	mipsel	\N	\N
4682	WN3000RP_V1.0.1.36_1.1.47.zip	WN3000RP	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N	\N
107927	WN3000RP_FirmwareVersion-1.0.1.18.zip	WN3000RP	1.0.1.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
107932	WN3100RP-V1.0.0.14_1.0.19.zip	WN3100RP	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
3682	WN3100RP_V1.0.0.6_1.0.12.zip	WN3100RP	1.0.0.6	\N	33	\N	f	f	False	f	mipsel	\N	\N
4723	WNDR4700-V1.0.0.52.zip	CENTRIA (WNDR4700/4720)	1.0.0.52	\N	33	\N	f	f	False	f	ppceb	\N	\N
4437	AC1450_V1.0.0.22_1.0.10.zip	AC1450	1.0.0.22	\N	33	\N	f	f	False	f	armel	\N	\N
4438	AC1450-V1.0.0.6_1.0.3.zip	AC1450	1.0.0.6	\N	33	\N	f	f	False	f	armel	\N	\N
4436	AC1450-V1.0.0.14_1.0.6.zip	AC1450	1.0.0.14	\N	33	\N	f	f	False	f	armel	\N	\N
107935	AC1450-V1.0.0.34_10.0.16.zip	AC1450	1.0.0.34	\N	33	\N	f	f	False	f	armel	\N	\N
4727	WNDR4700-V1.0.0.28.zip	CENTRIA (WNDR4700/4720)	1.0.0.28	\N	33	\N	f	f	False	f	ppceb	\N	\N
4724	WNDR4700-V1.0.0.34.zip	CENTRIA (WNDR4700/4720)	1.0.0.34	\N	33	\N	f	f	False	f	ppceb	\N	\N
4725	WNDR4700-V1.0.0.32.zip	CENTRIA (WNDR4700/4720)	1.0.0.32	\N	33	\N	f	f	False	f	ppceb	\N	\N
4726	WNDR4700-V1.0.0.50.zip	CENTRIA (WNDR4700/4720)	1.0.0.50	\N	33	\N	f	f	False	f	ppceb	\N	\N
107936	JNR1010-v1.0.0.32.zip	JNR1010	1.0.0.32	\N	33	\N	f	f	False	f	mipseb	\N	\N
107937	N150_N300_FW_V1.1.0.31_1.0.1.zip	JNR1010v2	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N	\N
107938	N300-1.1.0.32_101.zip	JNR1010v2	1.1.0.32	\N	33	\N	f	f	False	f	\N	\N	\N
107939	JNR1010V2-JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618-FW_V1.1.0.24_1.0.1.zip	JNR1010v2	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N	\N
4163	JNR1010v2_WNR614v1_WNR618v1_WNR2020v1_JWNR2000v5_JWNR2010v5_FW_V1.1.0.09_1.0.3.zip	JNR1010v2	1.1.0.09	\N	33	\N	f	f	False	f	\N	\N	\N
4160	JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618_FW_V1.1.0.18_1.0.1.zip	JNR1010v2	1.1.0.18	\N	33	\N	f	f	False	f	\N	\N	\N
4165	JNR1010v2_WNR614v1_WNR618v1_WNR2020v1_JWNR2000v5_JWNR2010v5_FW_v1.1.0.12.zip	JNR1010v2	1.1.0.12	\N	33	\N	f	f	False	f	\N	\N	\N
107940	JNR1010V2-JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618-FW_V1.1.0.28_1.0.1.zip	JNR1010v2	1.1.0.28	\N	33	\N	f	f	False	f	\N	\N	\N
4162	JNR1010v2_WNR614v1_WNR618v1_WNR2020v1_JWNR2000v5_JWNR2010v5_FW_V1.1.0.16_1.0.1.zip	JNR1010v2	1.1.0.16	\N	33	\N	f	f	False	f	\N	\N	\N
2569	JNR3000_V1.1.0.25_1.0.1.zip	JNR3000	1.1.0.25	\N	33	\N	f	f	False	f	\N	\N	\N
4608	JNR3210-V1.1.0.27_1.0.5.zip	JNR3210	1.1.0.27	\N	33	\N	f	f	False	f	\N	\N	\N
2571	JNR3000 Firmware Version 1.1.0.14.zip	JNR3000	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
2568	JNR3000_V1.1.0.26_1.0.8.zip	JNR3000	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N	\N
3312	R6300-V1.0.2.14_1.0.23.zip	R6300v1	1.0.2.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
107968	R6100-V1.0.0.62.zip	R6100	1.0.0.62	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3286	R4500_V1.0.0.4_1.0.3.zip	R4500	1.0.0.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
2871	R6100-V1.0.0.38.zip	R6100	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3310	R6300_V1.0.2.70_1.0.50.zip	R6300v1	1.0.2.70	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
4211	R6200-V1.0.1.48_1.0.37.zip	R6200	1.0.1.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
2872	R6100_V1.0.0.52.zip	R6100	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4210	R6200-V1.0.1.46_1.0.36.zip	R6200	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
2868	R6100-V1.0.0.28.zip	R6100	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
4208	R6200-V1.0.0.18_1.0.18.zip	R6200	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3315	R6300-V1.0.2.10_1.0.21.zip	R6300v1	1.0.2.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
2870	R6100-V1.0.0.48.zip	R6100	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
4207	R6200-V1.0.0.28_1.0.24.zip	R6200	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3318	R6300-V1.0.2.26_1.0.26.zip	R6300v1	1.0.2.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
107949	RBS50-V1.3.0.12.zip	Orbi	1.3.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107941	JNR3210_V1.1.0.30_1.0.2.zip	JNR3210	1.1.0.30	\N	33	\N	f	f	False	f	\N	\N	\N
2574	JNR3000-V1.1.0.27_1.0.5.zip	JNR3000	1.1.0.27	\N	33	\N	f	f	False	f	\N	\N	\N
4609	JNR3210_V1.1.0.29_1.0.1.zip	JNR3210	1.1.0.29	\N	33	\N	f	f	False	f	\N	\N	\N
2572	JNR3000_V1.1.0.29_1.0.1.zip	JNR3000	1.1.0.29	\N	33	\N	f	f	False	f	\N	\N	\N
4604	JNR3210_V1.10.26_1.0.8.zip	JNR3210	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N	\N
4605	JNR3210 Firmware Version 1.1.0.14.zip	JNR3210	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
4606	JNR3210_V1.1.0.22_1.0.1.zip	JNR3210	1.1.0.22	\N	33	\N	f	f	False	f	\N	\N	\N
4607	JNR3210_V1.1.0.25_1.0.1.zip	JNR3210	1.1.0.25	\N	33	\N	f	f	False	f	\N	\N	\N
4603	JNR3210_V1.1.0.24_1.0.4.zip	JNR3210	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N	\N
107942	R6050_JR6150-V1.0.1.4_1.0.1.zip	JR6150	1.0.1.4	\N	33	\N	f	f	False	f	\N	\N	\N
3267	JR6150_FW_V1.0.0.18.zip	JR6150	1.0.0.18	\N	33	\N	f	f	False	f	\N	\N	\N
107944	JR6150_R6050-V1.0.0.36_1.0.1.zip	JR6150	1.0.0.36	\N	33	\N	f	f	False	f	\N	\N	\N
3266	JR6150_R6050_V1.0.0.30_1.0.1.zip	JR6150	1.0.0.30	\N	33	\N	f	f	False	f	\N	\N	\N
107945	JR6150_R6050-V1.0.1.2_1.0.1.zip	JR6150	1.0.1.2	\N	33	\N	f	f	False	f	\N	\N	\N
3264	JR6150-R6050-V1.0.0.22.zip	JR6150	1.0.0.22	\N	33	\N	f	f	False	f	\N	\N	\N
107946	JR6150-R6050-V1.0.0.34_1.0.1.zip	JR6150	1.0.0.34	\N	33	\N	f	f	False	f	\N	\N	\N
3033	KWGR614 Firmware Version 1.0.0_09.25 (North America).zip	KWGR614	1.0.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
107951	RBS50-V1.4.0.16.zip	Orbi	1.4.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107952	RBR50-V1.4.0.18.zip	Orbi	1.4.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107954	RBR50-V1.3.0.12.zip	Orbi	1.3.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107956	RBR50-V1.3.0.26.zip	Orbi	1.3.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107957	RBS50-V1.1.0.16.zip	Orbi	1.1.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107960	RBR50-V1.1.0.16.zip	Orbi	1.1.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107958	PR2000-V1.0.0.15_1.0.1.zip	PR2000	1.0.0.15	\N	33	\N	f	f	False	f	\N	\N	\N
107970	R6100-V1.0.0.60.zip	R6100	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
107961	PR2000_V1.0.0.12_1.0.1.zip	PR2000	1.0.0.12	\N	33	\N	f	f	False	f	\N	\N	\N
107962	PR2000_V1.0.0.10_1.0.1.zip	PR2000	1.0.0.10	\N	33	\N	f	f	False	f	\N	\N	\N
107964	PR2000_FW_V1.0.0.09_1.0.1.zip	PR2000	1.0.0.9	\N	33	\N	f	f	False	f	\N	\N	\N
107965	PR2000-V1.0.0.13_1.0.1.zip	PR2000	1.0.0.13	\N	33	\N	f	f	False	f	\N	\N	\N
107948	RBS50-V1.2.0.6.zip	Orbi	1.2.0.6	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107966	R2000_V1.0.0.34.zip	R2000	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N	\N
2175	R2000_V1.0.0.20.zip	R2000	1.0.0.20	\N	33	\N	f	f	False	f	mipseb	\N	\N
107972	R6220_FW_V1.1.0.34_1.0.1.zip	R6220	1.1.0.34	\N	33	\N	f	f	False	f	\N	\N	\N
2436	R6200V2-V1.0.1.14_1.0.14.zip	R6200v2	1.0.1.14	\N	33	\N	f	f	False	f	armel	\N	\N
2437	R6200v2-V1.0.1.20_1.0.18.zip	R6200v2	1.0.1.20	\N	33	\N	f	f	False	f	armel	\N	\N
2434	R6200v2_V1.0.1.18_1.0.17.zip	R6200v2	1.0.1.18	\N	33	\N	f	f	False	f	armel	\N	\N
2435	R6200v2_V1.0.1.16_1.0.15.zip	R6200v2	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N	\N
107973	R6220_V1.0.0.14_1.0.1_FW.zip	R6220	1.0.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
107974	R6220_V1.0.0.16_1.0.1_FW.zip	R6220	1.0.0.16	\N	33	\N	f	f	False	f	\N	\N	\N
107975	R6220_V1.0.0.17_1.0.1_FW.zip	R6220	1.0.0.17	\N	33	\N	f	f	False	f	\N	\N	\N
107976	R6220_FW_V1.1.0.31_1.0.1.zip	R6220	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N	\N
3284	R6250-V1.0.1.80_1.0.75.zip	R6250	1.0.1.80	\N	33	\N	f	f	False	f	armel	\N	\N
3281	R6250_V1.0.1.84-1.0.78.zip	R6250	1.0.1.84	\N	33	\N	f	f	False	f	armel	\N	\N
3280	R6250-V1.0.1.82_1.0.77.zip	R6250	1.0.1.82	\N	33	\N	f	f	False	f	armel	\N	\N
107978	R6250-V1.0.4.2_10.1.10.zip	R6250	1.0.4.2	\N	33	\N	f	f	False	f	armel	\N	\N
107979	R6250-V1.0.3.12_10.1.8.zip	R6250	1.0.3.12	\N	33	\N	f	f	False	f	armel	\N	\N
3285	R6250-V1.0.0.72_1.0.71.zip	R6250	1.0.0.72	\N	33	\N	f	f	False	f	armel	\N	\N
3283	R6250-V1.0.0.62_1.0.62.zip	R6250	1.0.0.62	\N	33	\N	f	f	False	f	armel	\N	\N
107981	R6250-V1.0.3.6_10.1.3.zip	R6250	1.0.3.6	\N	33	\N	f	f	False	f	armel	\N	\N
3282	R6250-V1.0.0.70_1.0.70.zip	R6250	1.0.0.70	\N	33	\N	f	f	False	f	armel	\N	\N
3319	R6300-V1.0.0.90_1.0.18.zip	R6300v1	1.0.0.90	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3314	R6300-V1.0.0.68_1.0.16.zip	R6300v1	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108006	R7500-FW-V1.0.0.70.zip	R7500	1.0.0.70	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108007	R7500-V1.0.0.82.zip	R7500	1.0.0.82	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
4677	R7500_V1.0.0.52.zip	R7500	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
4676	R7500-V1.0.0.68.zip	R7500	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
4678	R7500-V1.0.0.46.zip	R7500	1.0.0.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108012	R7500v2-V1.0.2.4.zip	R7500v2	1.0.2.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108013	R7500v2-V1.0.2.2.zip	R7500v2	1.0.2.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108014	R7500v2-V1.0.0.28.zip	R7500v2	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
107982	R6300v2-V1.0.4.6_10.0.76.zip	R6300v2	1.0.4.06	\N	33	\N	f	f	False	f	armel	\N	\N
108016	R7800-V1.0.2.12.zip	R7800	1.0.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
107983	R6300v2-V1.0.4.2_10.0.74.zip	R6300v2	1.0.4.2	\N	33	\N	f	f	False	f	armel	\N	\N
107984	R6300v2-V1.0.3.30_10.0.73.zip	R6300v2	1.0.3.30	\N	33	\N	f	f	False	f	armel	\N	\N
3474	R6300v2-V1.0.3.8_1.0.60.zip	R6300v2	1.0.3.8	\N	33	\N	f	f	False	f	armel	\N	\N
107985	R6300v2-V1.0.3.22_10.0.67.zip	R6300v2	1.0.3.22	\N	33	\N	f	f	False	f	armel	\N	\N
107986	R6300v2-V1.0.3.28_10.0.71.zip	R6300v2	1.0.3.28	\N	33	\N	f	f	False	f	armel	\N	\N
108017	R7500v2-V1.0.0.26.zip	R7500v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
3479	R6300v2_V1.0.3.2_1.0.57.zip	R6300v2	1.0.3.2	\N	33	\N	f	f	False	f	armel	\N	\N
3476	R6300v2-V1.0.1.72_1.0.21.zip	R6300v2	1.0.1.72	\N	33	\N	f	f	False	f	armel	\N	\N
3477	R6300v2_V1.0.2.86_1.0.51.zip	R6300v2	1.0.2.86	\N	33	\N	f	f	False	f	armel	\N	\N
107987	R6300v2-V1.0.3.26_10.0.70.zip	R6300v2	1.0.3.26	\N	33	\N	f	f	False	f	armel	\N	\N
107988	R6400-V1.0.1.12_1.0.11.zip	R6400	1.0.1.12	\N	33	\N	f	f	False	f	armel	\N	\N
107989	R6400-V1.0.1.6_1.0.4.zip	R6400	1.0.1.6	\N	33	\N	f	f	False	f	armel	\N	\N
107990	R6700-V1.0.0.26_10.0.26.zip	R6700	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N	\N
107991	R6900-V1.0.0.4_1.0.10.zip	R6900	1.0.0.04	\N	33	\N	f	f	False	f	armel	\N	\N
3149	R6700-V1.0.0.2_1.0.1.zip	R6700	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N	\N
107992	R6400-V1.0.0.24_1.0.13.zip	R6400	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N	\N
107993	R6400-V1.0.0.20_1.0.11.zip	R6400	1.0.0.20	\N	33	\N	f	f	False	f	armel	\N	\N
107994	R6400-V1.0.0.14_1.0.8.zip	R6400	1.0.0.14	\N	33	\N	f	f	False	f	armel	\N	\N
107996	R6400-V1.0.0.26_1.0.14.zip	R6400	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N	\N
107997	R6900-V1.0.0.2_1.0.2.zip	R6900	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N	\N
107998	R7000-V1.0.7.2_1.1.93.zip	R7000	1.0.7.2	\N	33	\N	f	f	False	f	armel	\N	\N
107999	R7000-V1.0.5.70_1.1.91.zip	R7000	1.0.5.70	\N	33	\N	f	f	False	f	armel	\N	\N
4346	R7000-V1.0.3.68_1.1.31.zip	R7000	1.0.3.68	\N	33	\N	f	f	False	f	armel	\N	\N
108000	R7000_V1.0.4.30_1.1.67.zip	R7000	1.0.4.30	\N	33	\N	f	f	False	f	armel	\N	\N
4341	R7000-V1.0.2.194_1.0.15.zip	R7000	1.0.2.194	\N	33	\N	f	f	False	f	armel	\N	\N
108001	R7000-V1.0.4.28_1.1.64.zip	R7000	1.0.4.28	\N	33	\N	f	f	False	f	armel	\N	\N
4339	R7000-V1.0.2.164_1.0.15.zip	R7000	1.0.2.164	\N	33	\N	f	f	False	f	armel	\N	\N
4348	R7000_V1.0.3.24_1.1.20.zip	R7000	1.0.3.24	\N	33	\N	f	f	False	f	armel	\N	\N
4345	R7000-_V1.0.3.80-1.1.38.zip	R7000	1.0.3.80	\N	33	\N	f	f	False	f	armel	\N	\N
4344	R7000-V1.0.3.56_1.1.25.zip	R7000	1.0.3.56	\N	33	\N	f	f	False	f	armel	\N	\N
108002	R7000-V1.0.5.64_1.1.88.zip	R7000	1.0.5.64	\N	33	\N	f	f	False	f	armel	\N	\N
108003	R7000_V1.0.4.18_1.1.52.zip	R7000	1.0.4.18	\N	33	\N	f	f	False	f	armel	\N	\N
4347	R7000_V1.0.1.22-1.0.15.zip	R7000	1.0.1.22	\N	33	\N	f	f	False	f	armel	\N	\N
108018	R7800-V1.0.1.30.zip	R7800	1.0.1.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108019	R7800-V1.0.2.04.zip	R7800	1.0.2.04	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108021	R7800-V1.0.0.30.zip	R7800	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108022	R7800-V1.0.0.40.zip	R7800	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108008	R7300-V1.0.0.32_1.0.6.zip	R7300DST	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N	\N
108023	R7800-V1.0.0.28.zip	R7800	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108010	R7300-V1.0.0.26_1.0.6.zip	R7300DST	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N	\N
108004	R7500_V1.0.0.94.zip	R7500	1.0.0.94	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108024	R7900-V1.0.0.6_10.0.4.zip	R7900	1.0.0.6	\N	33	\N	f	f	False	f	armel	\N	\N
108026	R7900-V1.0.0.10_10.0.7.zip	R7900	1.0.0.10	\N	33	\N	f	f	False	f	armel	\N	\N
108027	R7900-V1.0.0.2_10.0.1.zip	R7900	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N	\N
108028	R7900-V1.0.0.8_10.0.5.zip	R7900	1.0.0.8	\N	33	\N	f	f	False	f	armel	\N	\N
108029	R8000-V1.0.2.46_1.0.97.zip	R8000	1.0.2.46	\N	33	\N	f	f	False	f	armel	\N	\N
108030	R8000-V1.0.3.4_1.1.2.zip	R8000	1.0.3.4	\N	33	\N	f	f	False	f	armel	\N	\N
108031	R8000-V1.0.1.16-1.0.74.zip	R8000	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N	\N
108032	R8000-V1.0.2.44_1.0.96.zip	R8000	1.0.2.44	\N	33	\N	f	f	False	f	armel	\N	\N
2553	R8000-V1.0.0.110_1.0.70.zip	R8000	1.0.0.110	\N	33	\N	f	f	False	f	armel	\N	\N
2547	R8000-V1.0.0.108_1.0.62.zip	R8000	1.0.0.108	\N	33	\N	f	f	False	f	armel	\N	\N
2551	R8000-V1.0.0.102_1.0.45.zip	R8000	1.0.0.102	\N	33	\N	f	f	False	f	armel	\N	\N
2554	R8000-V1.0.0.76_1.0.32.zip	R8000	1.0.0.76	\N	33	\N	f	f	False	f	armel	\N	\N
2552	R8000-V1.0.0.90_1.0.39.zip	R8000	1.0.0.90	\N	33	\N	f	f	False	f	armel	\N	\N
2548	R8000-V1.0.0.68_1.0.27.zip	R8000	1.0.0.68	\N	33	\N	f	f	False	f	armel	\N	\N
2549	R8000-V1.0.0.74_1.0.31.zip	R8000	1.0.0.74	\N	33	\N	f	f	False	f	armel	\N	\N
108033	R8000-V1.0.0.46_1.0.17.zip	R8000	1.0.0.46	\N	33	\N	f	f	False	f	armel	\N	\N
5016	WGR612 Firmware Version 1.0.1.2 (North America).zip	WGR612	1.0.1.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
3244	WNDR3400-V1.0.0.52_20.0.60.zip	WNDR3400v1	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	23/tcp open  telnet;80/tcp open  http;
108058	WNDR3400v3-V1.0.0.48_1.0.48.zip	WNDR3400v3	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
4062	WNDR3700-V1.0.16.98NA.zip	WNDR3700v1	1.0.16.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
3303	WNDR3400v2-V1.0.0.12_1.0.30.zip	WNDR3400v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
2694	WNDR3400v3-V1.0.0.38_1.0.40.zip	WNDR3400v3	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
4058	WNDR3700 Firmware Version 1.0.4.68 (North America).zip	WNDR3700v1	1.0.4.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
108035	R8500-V1.0.2.54_1.0.56.zip	R8500	1.0.2.54	\N	33	\N	f	f	False	f	armel	\N	\N
108036	R8500-V1.0.2.56_1.0.57.zip	R8500	1.0.2.56	\N	33	\N	f	f	False	f	armel	\N	\N
108037	R8500-V1.0.0.56_1.0.28.zip	R8500	1.0.0.56	\N	33	\N	f	f	False	f	armel	\N	\N
108038	R8500-V1.0.0.52_1.0.26.zip	R8500	1.0.0.52	\N	33	\N	f	f	False	f	armel	\N	\N
108039	R8300-V1.0.2.48_1.0.52.zip	R8300	1.0.2.48	\N	33	\N	f	f	False	f	armel	\N	\N
108040	R8500-V1.0.2.64_1.0.62.zip	R8500	1.0.2.64	\N	33	\N	f	f	False	f	armel	\N	\N
108041	R8500-V1.0.2.26_1.0.41.zip	R8500	1.0.2.26	\N	33	\N	f	f	False	f	armel	\N	\N
108043	R8500-V1.0.2.30_1.0.43.zip	R8500	1.0.2.30	\N	33	\N	f	f	False	f	armel	\N	\N
108044	R9000_V1.0.1.20.zip	R9000	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108045	R8500-V1.0.0.42_1.0.23.zip	R8500	1.0.0.42	\N	33	\N	f	f	False	f	armel	\N	\N
4060	WNDR3700 Firmware Version 1.0.4.55 (North America).zip	WNDR3700v1	1.0.4.55	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
108047	R8500-V1.0.0.28_1.0.15.zip	R8500	1.0.0.28	\N	33	\N	f	f	False	f	armel	\N	\N
3759	WGR614V10_V1.0.2.58_60.0.84.zip	WGR614v10	1.0.2.58	\N	33	\N	f	f	False	f	mipsel	\N	\N
3763	WGR614v10-V1.0.2.18_47.0.52NA.zip	WGR614v10	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
3758	WGR614V10_V1.0.2.58_60.0.84NA.zip	WGR614v10	1.0.2.58	\N	33	\N	f	f	False	f	mipsel	\N	\N
3760	WGR614v10-V1.0.2.54_60.0.82NA.zip	WGR614v10	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N	\N
3766	WGR614v10_V1.0.2.60_60.0.85NA.zip	WGR614v10	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N	\N
108057	WNDR3400v2-V1.0.0.52_1.0.81.zip	WNDR3400v2	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16135	WGR614v10-V1.0.2.26_51.0.59NA.zip	WGR614v10	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
2235	WGM124 Pre-N Firmware 1.0.0.7.zip	WGM124	1.0.0.7	\N	33	\N	f	f	False	f	armeb	\N	\N
3761	WGR614v10_V1.0.2.60_60.0.85.zip	WGR614v10	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N	\N
2394	WGR614v9_V1.2.32_43.0.46NA.zip	WGR614v9	1.2.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
2389	WGR614v9 Firmware Version 1.2.6 (North America).zip	WGR614v9	1.2.6	\N	33	\N	f	f	False	f	mipsel	\N	\N
4117	WGR614v8 Firmware Version 1.1.24 (North America).zip	WGR614v8	1.1.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
4125	WGR614v8 Firmware Version 1.1.1 (North America).zip	WGR614v8	1.1.1	\N	33	\N	f	f	False	f	mipsel	\N	\N
4118	WGR614v8 Beta Firmware Version 1.1.20_7.0.37 (North America).zip	WGR614v8	1.1.20	\N	33	\N	f	f	False	f	mipsel	\N	\N
4115	WGR614v8 Firmware Version 1.1.11_6.0.36 (North America).zip	WGR614v8	1.1.11	\N	33	\N	f	f	False	f	mipsel	\N	\N
2397	WGR614v9-V1.2.30_41.0.44(NA).zip	WGR614v9	1.2.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
2406	WGR614v9 Firmware Version 1.2.24 (North America).zip	WGR614v9	1.2.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
2408	WGR614v9 Firmware Version 1.0.18 (North America).zip	WGR614v9	1.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
2399	WGR614v9 Initial Release Firmware - Version 1.0.9 (North America).zip	WGR614v9	1.0.9	\N	33	\N	f	f	False	f	mipsel	\N	\N
2411	WGR614v9 Firmware Version 1.2.2 (North America).zip	WGR614v9	1.2.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
4121	WGR614v8 Firmware Version 1.1.2_1.0.23 (North America).zip	WGR614v8	1.1.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
2390	WGR614v9 Firmware Version 1.0.15 (North America).zip	WGR614v9	1.0.15	\N	33	\N	f	f	False	f	mipsel	\N	\N
3377	WGT624v4 - Firmware Version 2.0.13 (North America).zip	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N	\N
4660	WNDR3300-V1.0.45_1.0.45NA.zip	WNDR3300v1	1.0.45	\N	33	\N	f	f	False	f	mipsel	\N	\N
3378	WGT624v4 - Firmware Version 2.0.13_2.0.15.zip	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N	\N
3376	WGT624v4 - Firmware Version 2.0.12 (North America).zip	WGT624v4	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
4664	WNDR3300 Firmware Version 1.0.29 (North America).zip	WNDR3300v1	1.0.29	\N	33	\N	f	f	False	f	mipsel	\N	\N
3243	WNDR3400 Firmware Version 1.0.0.50.zip	WNDR3400v1	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
3240	WNDR3400 Firmware Version 1.0.0.34.zip	WNDR3400v1	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
3241	WNDR3400 Firmware Version 1.0.0.38.zip	WNDR3400v1	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N	\N
4662	WNDR3300 Firmware Version 1.0.27 (North America).zip	WNDR3300v1	1.0.27	\N	33	\N	f	f	False	f	mipsel	\N	\N
3304	WNDR3400v2-V1.0.0.34_1.0.52.zip	WNDR3400v2	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
4665	WNDR3300 Firmware Version 1.0.23 (North America).zip	WNDR3300v1	1.0.23	\N	33	\N	f	f	False	f	mipsel	\N	\N
110101	RE300_V1_191114.zip	RE300		\N	51	\N	f	f	False	f	mipsel	\N	\N
3307	WNDR3400v2_V1.0.0.38_1.0.61.zip	WNDR3400v2	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4661	WNDR3300_V1.0.26_1.0.26NA.zip	WNDR3300v1	1.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
3837	WNDR3300v2 Initial Firmware Version 1.0.0.26.zip	WNDR3300v2	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
2695	WNDR3400v3-V1.0.0.20_1.0.28.zip	WNDR3400v3	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108046	R9000_V1.0.1.18.zip	R9000	1.0.1.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108069	WNDR4300v2-V1.0.0.32.zip	WNDR4300v2	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
4619	WNDR3800-V1.0.0.32.zip	WNDR3800	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
108074	WNDR4500v3-V1.0.0.26.zip	WNDR4500v3	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
4468	WNDRMAC Firmware Version 1.0.0.22.zip	WNDRMACv1	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
3588	WNDR4000-V1.0.0.94_9.1.81.zip	WNDR4000	1.0.0.94	\N	33	\N	f	f	False	f	mipsel	\N	\N
3591	WNDR4000-V1.0.2.4_9.1.86.zip	WNDR4000	1.0.2.4	\N	33	\N	f	f	False	f	mipsel	\N	\N
2727	WNDR4500-V1.0.1.20_1.0.40.zip	WNDR4500	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3587	WNDR4000-V1.0.0.66_8.0.55.zip	WNDR4000	1.0.0.66	\N	33	\N	f	f	False	f	mipsel	\N	\N
2474	WNDR3700v2 WNDR37AVv2 Firmware Version 1.0.0.8.zip	WNDR3700v2	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
3592	WNDR4000-V1.0.2.2_9.1.84.zip	WNDR4000	1.0.2.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
4554	WNDR4500v2-V1.0.0.36_1.0.21.zip	WNDR4500v2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
3589	WNDR4000-V1.0.0.88_9.1.77.zip	WNDR4000	1.0.0.88	\N	33	\N	f	f	False	f	mipsel	\N	\N
4326	WNDR4300-V1.0.1.56PRRU.zip	WNDR4300	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http443/tcp  open  https3333/tcp open  dec-notes
108070	WNDR4300v2-V1.0.0.26.zip	WNDR4300v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
4325	WNDR4300_V1.0.1.60.zip	WNDR4300	1.0.1.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
4324	WNDR4300-V1.0.1.30.zip	WNDR4300	1.0.1.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
108061	WNDR3700v4-V1.0.2.80.zip	WNDR3700v4	1.0.2.80	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
108062	WNDR3700v4-V1.0.2.78.zip	WNDR3700v4	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
2724	WNDR4500 Firmware Version 1.0.0.50.zip	WNDR4500	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4327	WNDR4300-V1.0.1.52PRRU.zip	WNDR4300	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
2723	WNDR4500_V1.0.1.38_1.0.64.zip	WNDR4500	1.0.1.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
2722	WNDR4500-V1.0.1.18_1.0.36.zip	WNDR4500	1.0.1.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4550	WNDR4500v2_V1.0.0.42_1.0.25.zip	WNDR4500v2	1.0.0.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108064	WNDR3700v5_V1.0.0.17_1.0.1_FW.zip	WNDR3700v5	1.0.0.17	\N	33	\N	f	f	False	f	\N	\N	\N
108065	WNDR3700v5-V1.1.0.30_1.0.1_FW.zip	WNDR3700v5	1.1.0.30	\N	33	\N	f	f	False	f	\N	\N	\N
2904	WNDR3700v2WNDR37AVv2 Firmware Version 1.0.0.10.zip	WNDR37AVv2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
108066	WNDR3700_WNDR37AV Firmware Version 1.0.16.98NA.zip	WNDR37AVv1	1.0.16.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
2720	WNDR4500_Firmware_Version_1.0.1.6.zip	WNDR4500	1.0.1.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
4613	WNDR3800-V1.0.0.16.zip	WNDR3800	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
108071	WNDR4500v2-V1.0.0.60_1.0.38.zip	WNDR4500v2	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4549	WNDR4500v2-V1.0.0.50_1.0.30.zip	WNDR4500v2	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
2295	WNDR3700V4_V1.0.1.42.zip	WNDR3700v4	1.0.1.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
4328	WNDR4300-V1.0.1.42.zip	WNDR4300	1.0.1.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
108072	WNDR4500v2-V1.0.0.56_1.0.36.zip	WNDR4500v2	1.0.0.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16252	WNDR4500-V1.0.0.40_1.0.10.zip	WNDR4500	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4616	WNDR3800-V1.0.0.19.zip	WNDR3800	1.0.0.19	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
4617	WNDR3800-V1.0.0.24.zip	WNDR3800	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
3593	WNDR4000-V1.0.0.82_8.0.71.zip	WNDR4000	1.0.0.82	\N	33	\N	f	f	False	f	mipsel	\N	\N
3590	WNDR4000-V1.0.0.90_9.1.79.zip	WNDR4000	1.0.0.90	\N	33	\N	f	f	False	f	mipsel	\N	\N
4614	WNDR3800-V1.0.0.18.zip	WNDR3800	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
2728	WNDR4500 Firmware Version 1.0.0.58.zip	WNDR4500	1.0.0.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
4153	WNDR3700v3-V1.0.0.38_1.0.31.zip	WNDR3700v3	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N	\N
4151	WNDR3700v3-V1.0.0.30_1.0.27.zip	WNDR3700v3	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
2696	WNDR3400V3_V1.0.0.22_1.0.29.zip	WNDR3400v3	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4551	WNDR4500v2_V1.0.0.54_1.0.33.zip	WNDR4500v2	1.0.0.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4149	WNDR3700v3-V1.0.0.22_1.0.17.zip	WNDR3700v3	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
4150	WNDR3700v3-V1.0.0.18_1.0.14.zip	WNDR3700v3	1.0.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
108063	WNDR3700v5_FW_V1.1.0.32_1.0.1.zip	WNDR3700v5	1.1.0.32	\N	33	\N	f	f	False	f	\N	\N	\N
761	WNR1000-2VCNAS Firmware Version 1.0.0.12.zip	WNR1000-2VCNAS	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4354	WNR2000 Firmware Version 1.1.3.9 (North America).zip	WNR2000v1	1.1.3.9	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
108078	WNDRMACv2 Firmware Version 1.0.0.8.zip	WNDRMACv2	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
108082	WNR2000v4-V1.0.0.58.zip	WNR2000v4	1.0.0.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
4516	WNR2200-V1.0.1.88.zip	WNR2200	1.0.1.88	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
2666	WNR1000v2-V1.1.2.28NA.zip	WNR1000v2	1.1.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3237	WNR1000 Firmware Version 1.0.1.15 (North America).zip	WNR1000v1	1.0.1.15	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
2662	WNR1000v2-V1.1.2.54NA.zip	WNR1000v2	1.1.2.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4356	WNR2000 Firmware Version 1.2.0.8 (North America).zip	WNR2000v1	1.2.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
3496	WNR2000v3_Release_Firmware_Version_1.1.1.72.zip	WNR2000v3	1.1.1.72	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3978	WNR1000v3-V1.0.2.60_60.0.86NA.zip	WNR1000v3	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N	\N
3980	WNR1000V3_V1.0.2.62_60.0.87NA.zip	WNR1000v3	1.0.2.62	\N	33	\N	f	f	False	f	mipsel	\N	\N
3983	WNR1000v3-V1.0.2.68_60.0.93NA.zip	WNR1000v3	1.0.2.68	\N	33	\N	f	f	False	f	mipsel	\N	\N
3469	JWNR2000v2_WNR1500-V1.0.0.10_1.0.4.zip	WNR1500	1.0.0.10	\N	33	\N	f	f	False	f	mipseb	\N	\N
3468	JWNR2000v2_WNR1500-V1.0.0.11_1.0.1.zip	WNR1500	1.0.0.11	\N	33	\N	f	f	False	f	mipseb	\N	\N
3500	WNR2000v3_Firmware_Version_1.1.2.2.zip	WNR2000v3	1.1.2.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
108079	WNR2000v4-V1.0.0.60.zip	WNR2000v4	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3502	wnr2000v3-V1.1.2.6.zip	WNR2000v3	1.1.2.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3994	WNR2000v2 Firmware Version 1.0.0.40_32.0.54 (NA).zip	WNR2000v2	1.0.0.40	\N	33	\N	f	f	False	f	mipsel	\N	\N
3995	WNR2000v2_V1.2.0.6_36.0.58NA.zip	WNR2000v2	1.2.0.6	\N	33	\N	f	f	False	f	mipsel	\N	\N
4000	WNR2000v2 Firmware Version 1.2.0.4_35.0.57 (North America).zip	WNR2000v2	1.2.0.4	\N	33	\N	f	f	False	f	mipsel	\N	\N
3998	WNR2000v2 Initial Release Firmware Version 1.0.0.34_29.0.45 (North America).zip	WNR2000v2	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
2576	WNR2000v4-V1.0.0.40.zip	WNR2000v4	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
108086	WNR2200-V1.0.1.96.zip	WNR2200	1.0.1.96	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
108080	WNR2000v4-V1.0.0.64.zip	WNR2000v4	1.0.0.64	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
108085	WNR2000v5_V1.0.0.26.zip	WNR2000v5	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
2730	WNR2500-V1.0.0.24NA.zip	WNR2500	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
4518	WNR2200-V1.0.1.72.zip	WNR2200	1.0.1.72	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
2580	WNR2000v4-V1.0.0.50.zip	WNR2000v4	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
4519	WNR2200 Firmware Version 1.0.0.32.zip	WNR2200	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
3501	WNR2000v3 Firmware Version 1.1.1.58.zip	WNR2000v3	1.1.1.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108083	WNR2000v5-V1.0.0.34.zip	WNR2000v5	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N	\N
4522	WNR2200-V1.0.1.76.zip	WNR2200	1.0.1.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108084	WNR2000v5-V1.0.0.28.zip	WNR2000v5	1.0.0.28	\N	33	\N	f	f	False	f	mipseb	\N	\N
108087	WNR2500-V1.0.0.32NA.zip	WNR2500	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
108081	WNR2000v3_V1.1.2.12.zip	WNR2000v3	1.1.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
3093	WNR3500L Firmware Version 1.2.2.30 (North America).zip	WNR3500Lv1	1.2.2.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
3096	WNR3500L_V1.2.2.48_35.0.55.zip	WNR3500Lv1	1.2.2.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3101	WNR3500L Firmware Version 1.2.2.40 (NA).zip	WNR3500Lv1	1.2.2.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108077	WNDRMACv2 Firmware Version 1.0.0.10.zip	WNDRMACv2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
2668	WNR1000v2 Firmware Version 1.1.2.50 (North America).zip	WNR1000v2	1.1.2.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
3106	WNR3500L Firmware Version 1.2.2.44 (NA).zip	WNR3500Lv1	1.2.2.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
2660	WNR1000v2-V1.0.1.1NA.zip	WNR1000v2	1.0.1.1	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
2575	wnr2000v4-V1.0.0.30.zip	WNR2000v4	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
3087	WNR3500L Firmware Version 1.0.2.50 (North America).zip	WNR3500Lv1	1.0.2.50	\N	33	\N	f	f	False	f	mipsel	\N	\N
3090	WNR3500L Firmware Version 1.0.0.88 (North America).zip	WNR3500Lv1	1.0.0.88	\N	33	\N	f	f	False	f	mipsel	\N	\N
3100	WNR3500L Initial Release Firmware Version 1.0.0.86 (North America).zip	WNR3500Lv1	1.0.0.86	\N	33	\N	f	f	False	f	mipsel	\N	\N
108109	FVS318N-V4.3.1-31.zip	FVS318N	4.3.1	\N	33	\N	f	f	False	f	\N	\N	\N
3975	WNR1000v3-V1.0.2.26_51.0.59NA.zip	WNR1000v3	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
3966	WNR1000v3 Firmware Version 1.0.2.18 (North America).zip	WNR1000v3	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
3971	WNR1000v3 Firmware Version 1.0.2.28 (North America).zip	WNR1000v3	1.0.2.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
9724	DES-1210-52_REVB_FIRMWARE_3.12.015.ZIP	DES-1210-52	3.12.015	\N	18	\N	f	f	False	f	armel	\N	\N
4288	wnr612v2-V1.0.0.3_1.0.2PR.zip	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4040	WPN824N-V1.0.0.28NA.zip	WPN824N	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4289	WNR612v2 Firmware Version 1.0.0.2.zip	WNR612v2	1.0.0.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4042	WPN824N-V1.0.0.28.zip	WPN824N	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4499	WPN824V3-V1.0.8_1.0.7NA.zip	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
4290	wnr612v2-V1.0.0.3_1.0.2RU.zip	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4041	WPN824N-V1.0.0.14NA.zip	WPN824N	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
2189	WNR3500Lv2_V1.2.0.20_40.0.68.zip	WNR3500Lv2	1.2.0.20	\N	33	\N	f	f	False	f	mipsel	\N	\N
2185	WNR3500Lv2 Firmware Version 1.0.0.10.zip	WNR3500Lv2	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
108090	WNR3500Lv2-V1.2.0.32_40.0.74.zip	WNR3500Lv2	1.2.0.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
2194	WNR3500Lv2_V1.2.0.28_40.0.72.zip	WNR3500Lv2	1.2.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
2192	WNR3500L-V1.2.0.18_40.0.67.zip	WNR3500Lv2	1.2.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
2191	WNR3500Lv2-V1.2.0.26_40.0.71.zip	WNR3500Lv2	1.2.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
2188	WNR3500Lv2-V1.0.0.14_37.0.50.zip	WNR3500Lv2	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
4217	WNR3500 Firmware Version 1.0.36 (North America).zip	WNR3500v1	1.0.36	\N	33	\N	f	f	False	f	armel	\N	\N
4222	WNR3500 Initial Release Firmware Version 1.0.10.zip	WNR3500v1	1.0.10	\N	33	\N	f	f	False	f	armel	\N	\N
4218	WNR3500 Firmware Version 1.0.22 (North America).zip	WNR3500v1	1.0.22	\N	33	\N	f	f	False	f	armel	\N	\N
4224	WNR3500 Firmware Version 1.0.29 (North America).zip	WNR3500v1	1.0.29	\N	33	\N	f	f	False	f	armel	\N	\N
4221	WNR3500 Firmware Version 1.0.15 (North America).zip	WNR3500v1	1.0.15	\N	33	\N	f	f	False	f	armel	\N	\N
4220	WNR3500 Firmware Version 1.0.30 (WW and NA users).zip	WNR3500v1	1.0.30	\N	33	\N	f	f	False	f	armel	\N	\N
4287	wnr612v2-V1.0.0.3_1.0.2.zip	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
2308	WNR3500v2 Firmware Version 1.0.2.14 (North America).zip	WNR3500v2	1.0.2.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
2304	WNR3500v2 Firmware Version 1.0.2.10 (North America).zip	WNR3500v2	1.0.2.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
2309	WNR3500v2 Firmware Version 1.0.0.64 (North America).zip	WNR3500v2	1.0.0.64	\N	33	\N	f	f	False	f	mipsel	\N	\N
108091	WNR612v3_WNR500_V1.0.0.26.zip	WNR500	1.0.0.26	\N	33	\N	f	f	False	f	mipseb	\N	\N
2258	wnr612v3_wnr500-V1.0.0.18.zip	WNR500	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N	\N
2897	WNR834B Firmware Version 1.0.4.2 (North America).zip	WNR834Bv1	1.0.4.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
2899	WNR834B Firmware Version 1.0.4.0 (North America).zip	WNR834Bv1	1.0.4.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
2895	WNR834B Firmware Version 1.0.3.8 (North America).zip	WNR834Bv1	1.0.3.8	\N	33	\N	f	f	False	f	mipsel	\N	\N
2506	wnr834bBv2_2_1_13_2_1_13_ww.zip	WNR834Bv2	2.1.13	\N	33	\N	f	f	False	f	mipsel	\N	\N
2509	wnr834bv2_2_1_13_na_only.zip	WNR834Bv2	2.1.13	\N	33	\N	f	f	False	f	mipsel	\N	\N
2507	wnr834bv2_1_0_32_na.zip	WNR834Bv2	1.0.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
2879	WPNT834 Firmware Version 1.0.51 (North America).zip	WPNT834	1.0.51	\N	33	\N	f	f	False	f	mipseb	\N	\N
2880	WPNT834 Initial Release Firmware Version 1.0.24.zip	WPNT834	1.0.24	\N	33	\N	f	f	False	f	mipseb	\N	\N
2877	WPNT834 Firmware Version 1.0.41 (North America).zip	WPNT834	1.0.41	\N	33	\N	f	f	False	f	mipseb	\N	\N
2616	RP614v4 Firmware Version 1.0.8.zip	RP614v4	1.0.8	\N	33	\N	f	f	False	f	mipseb	\N	\N
2614	RP614v4 Firmware Version 1.0.2_06.29.zip	RP614v4	1.0.2	\N	33	\N	f	f	False	f	mipseb	\N	\N
2617	RP614v4 Firmware Version 1.1.2.zip	RP614v4	1.1.2	\N	33	\N	f	f	False	f	mipseb	\N	\N
2613	RP614v4 Firmware Version 1.0.1_11.29.zip	RP614v4	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N	\N
2615	RP614v4 Firmware Version 1.0.5_04.23.zip	RP614v4	1.0.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
3888	DGFV338 DSL Board Firmware Version 2.00.62 (Outside Germany).zip	DGFV338	2.00.62	\N	33	\N	f	f	False	f	mipsel	\N	\N
3878	DGFV338 DSL Board Firmware Version 2.0.59 (Outside Germany).zip	DGFV338	2.0.59	\N	33	\N	f	f	False	f	mipsel	\N	\N
3889	DGFV338 DSL Board Firmware Version 2.0.55 (Outside Germany).zip	DGFV338	2.0.55	\N	33	\N	f	f	False	f	mipsel	\N	\N
4844	FVS318G_V3.1.1-18.zip	FVS318G	3.1.1	\N	33	\N	f	f	False	f	armel	\N	\N
4846	FVS318G_V3.1.1-14.zip	FVS318G	3.1.1	\N	33	\N	f	f	False	f	armel	\N	\N
4840	fvs318g_v3.1.1-08.zip	FVS318G	3.1.1	\N	33	\N	f	f	False	f	armel	\N	\N
4841	FVS318G Firmware Version 3.0.6-16.zip	FVS318G	3.0.6	\N	33	\N	f	f	False	f	armel	\N	\N
4842	FVS318G Firmware Version 3.0.5-24.zip	FVS318G	3.0.5	\N	33	\N	f	f	False	f	armel	\N	\N
108096	FVS318Gv2_V4.3.4-2.zip	FVS318Gv2	4.3.4	\N	33	\N	f	f	False	f	\N	\N	\N
108097	FVS318Gv2_V4.3.4-1.zip	FVS318Gv2	4.3.4	\N	33	\N	f	f	False	f	\N	\N	\N
108098	FVS318Gv2_V4.3.2-7.zip	FVS318Gv2	4.3.2	\N	33	\N	f	f	False	f	\N	\N	\N
108099	FVS318Gv2_V4.3.3-8.zip	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
108100	FVS318Gv2_v4.3.3-6.zip	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
108101	FVS318Gv2-V4.3.3-3.zip	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
108102	FVS318N_V4.3.4-1.zip	FVS318N	4.3.4	\N	33	\N	f	f	False	f	\N	\N	\N
2186	FVS318Gv2_V4.3.1-11.zip	FVS318Gv2	4.3.1	\N	33	\N	f	f	False	f	\N	\N	\N
108103	FVS318N_V4.3.4-2.zip	FVS318N	4.3.4	\N	33	\N	f	f	False	f	\N	\N	\N
108104	FVS318N_V4.3.3-5.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
108106	FVS318N_v4.3.3-6.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
2184	FVS318Gv2_V4.3.1-9.zip	FVS318Gv2	4.3.1	\N	33	\N	f	f	False	f	\N	\N	\N
108107	FVS318N-V4.3.3-3.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
3629	FVS318N_v4.2.1-2.zip	FVS318N	4.2.1	\N	33	\N	f	f	False	f	\N	\N	\N
3630	fvs318n_v4.2.0-14.zip	FVS318N	4.2.0	\N	33	\N	f	f	False	f	\N	\N	\N
108108	FVS318N-V4.3.1-22.zip	FVS318N	4.3.1	\N	33	\N	f	f	False	f	\N	\N	\N
3409	WNAP210 Firmware Version 2.1.1.zip	WNAP210	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
2541	WNAP320 Firmware Version 2.0.zip	WNAP320	2.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108299	WNDAP350_V2.1.8_firmware.zip	WNDAP350	2.1.8	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108301	WNDAP360_V2.1.12_firmware.zip	WNDAP360	2.1.12	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
4417	WN604 Firmware Version 2.1.zip	WN604	2.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
108295	WNAP320_V2.1.6_firmware.zip	WNAP320	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108298	WND930_V2.0.11.zip	WND930	2.0.11	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
3638	WNDAP360_-Firmware-Version-V2.1.7.zip	WNDAP360	2.1.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
2540	WNAP320 Firmware Version 2.0.3.zip	WNAP320	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
2521	WAC120_V2.0.3.zip	WAC120	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
108296	WNAP320_V2.1.5_firmware.zip	WNAP320	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108302	WNDAP360-V2.1.11_firmware.zip	WNDAP360	2.1.11	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108313	WN604_V3.3.2_firmware.zip	WN604	3.3.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
3634	FVS318N_v4.1.1-8.zip	FVS318N	4.1.1	\N	33	\N	f	f	False	f	\N	\N	\N
2112	FVS318N Firmware Version 4.0.1-66.zip	FVS318N	4.0.1	\N	33	\N	f	f	False	f	\N	\N	\N
2111	FVS318N Firmware Version 4.0.1-67.zip	FVS318N	4.0.1	\N	33	\N	f	f	False	f	\N	\N	\N
108111	FVS318N_V4.3.2-7.zip	FVS318N	4.3.2	\N	33	\N	f	f	False	f	\N	\N	\N
3632	FVS318N_v4.1.0-27.zip	FVS318N	4.1.0	\N	33	\N	f	f	False	f	\N	\N	\N
2345	GSM7328SOGSM7352SO Initial firmware version 0.0.3.1.zip	GSM7328SO	0.0.3.1	\N	33	\N	f	f	False	f	ppceb	\N	\N
5402	GSM7328SO-GSM7352SO Initial firmware version 0.0.3.1.zip	GSM7352SO	0.0.3.1	\N	33	\N	f	f	False	f	ppceb	\N	\N
2807	JGSM7224_V9.2.0.13.zip	JGSM7224	9.2.0.13	\N	33	\N	f	f	False	f	mipseb	\N	\N
2805	JGSM7224-9.2.0.7.zip	JGSM7224	9.2.0.7	\N	33	\N	f	f	False	f	mipseb	\N	\N
2802	JGSM7224_FW_V9.2.0.5.zip	JGSM7224	9.2.0.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
2804	JGSM7224_V9.2.0.15.zip	JGSM7224	9.2.0.15	\N	33	\N	f	f	False	f	mipseb	\N	\N
108211	M7100-XSM7224_V10.1.0.15.zip	M7100-24X (XSM7224)	10.1.0.15	\N	33	\N	f	f	False	f	ppceb	\N	\N
4170	M7100_XSM7224_V10.1.0.10.zip	M7100-24X (XSM7224)	10.1.0.10	\N	33	\N	f	f	False	f	ppceb	\N	\N
4171	M7100_XSM7224_V10.1.0.11.zip	M7100-24X (XSM7224)	10.1.0.11	\N	33	\N	f	f	False	f	ppceb	\N	\N
108266	XS728T_XS748T_FW_V6.5.1.26.zip	XS728T	6.5.1.26	\N	33	\N	f	f	False	f	armel	\N	\N
108267	XS728T_FW_V6.5.0.23.zip	XS728T	6.5.0.23	\N	33	\N	f	f	False	f	armel	\N	\N
108268	XS728T_FW_V6.5.0.25.zip	XS728T	6.5.0.25	\N	33	\N	f	f	False	f	armel	\N	\N
108269	XS748T_V6.5.1.25.zip	XS748T	6.5.1.25	\N	33	\N	f	f	False	f	armel	\N	\N
108270	XS748T_V6.5.1.22.zip	XS748T	6.5.1.22	\N	33	\N	f	f	False	f	armel	\N	\N
108289	WAC104_V1.0.4.1.zip	WAC104	1.0.4.1	\N	33	\N	f	f	False	f	\N	\N	\N
108311	WN604_V3.3.1_firmware.zip	WN604	3.3.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	old;23/tcp   open  telnet;53/tcp   open  domain;5000/tcp open  upnp;
4979	WNDAP350_-Firmware-Version-2.0.27.zip	WNDAP350	2.0.27	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
3637	WNDAP360_-Firmware-Version-V2.1.5.zip	WNDAP360	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
2488	WG103 Firmware version v2.0.37.zip	WG103	2.0.37	\N	33	\N	f	f	False	f	mipseb	\N	\N
2489	WG103_V2.2.5_firmware.zip	WG103	2.2.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
2487	WG103 Firmware version v2.0.0.12.zip	WG103	2.0.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
3408	WNAP210 Firmware Version 2.0.27.zip	WNAP210	2.0.27	\N	33	\N	f	f	False	f	mipseb	\N	\N
3406	WNAP210 Firmware Version 2.0.4.zip	WNAP210	2.0.4	\N	33	\N	f	f	False	f	mipseb	\N	\N
3404	WNAP210 Firmware Version 2.0.6.zip	WNAP210	2.0.6	\N	33	\N	f	f	False	f	mipseb	\N	\N
3405	WNAP210 Firmware Version 2.0.10.zip	WNAP210	2.0.10	\N	33	\N	f	f	False	f	mipseb	\N	\N
3639	WNDAP360_-Firmware-Version-V2.1.6.zip	WNDAP360	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
3407	WNAP210 Firmware Version 2.0.12.zip	WNAP210	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
108305	WNDAP360 Firmware Version 2.0.4.zip	WNDAP360	2.0.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
3948	WNDAP330 Firmware Version 2.1.11.zip	WNDAP330	2.1.11	\N	33	\N	f	f	False	f	mips64eb	\N	\N
3949	WNDAP330 Firmware Version 3.0.3.zip	WNDAP330	3.0.3	\N	33	\N	f	f	False	f	mips64eb	\N	\N
3951	WNDAP330 Firmware Version 2.0.2.zip	WNDAP330	2.0.2	\N	33	\N	f	f	False	f	mips64eb	\N	\N
3950	WNDAP330 Firmware Version 3.0.5.zip	WNDAP330	3.0.5	\N	33	\N	f	f	False	f	mips64eb	\N	\N
4237	WG602v2 Firmware Version 3.2.zip	WG602v2	3.2	\N	33	\N	f	f	False	f	\N	\N	\N
3901	WG602v3 Firmware Version 1.2.2 (North America).zip	WG602v3	1.2.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
3898	WG602v3 Firmware Version 1.1.0 (North America).zip	WG602v3	1.1.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
3897	WG602v3 Firmware Version 1.2.5 (North America).zip	WG602v3	1.2.5	\N	33	\N	f	f	False	f	mipsel	\N	\N
108312	WN604_V3.3.3_firmware.zip	WN604	3.3.3	\N	33	\N	f	f	False	f	mipseb	\N	\N
4422	WN604_V3.0.2_firmware.zip	WN604	3.0.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
5687	DGND3700-V1.0.0.12_1.0.12.chk	DGND3700v1	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	old timeout
7389	JNDR3000-V1.0.0.12_1.0.10.chk	JNDR3000	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
108378	EX7300-V1.0.0.34.img	EX7300	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
7387	JNDR3000-V1.0.0.18_1.0.16.chk	JNDR3000	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
108379	EX7300-V1.0.0.32.img	EX7300	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http3333/tcp open  dec-notes
108362	EX6100v2-V1.0.1.46.img	EX6100v2	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	armel	\N	down
3752	WNHD3004 Firmware Version 1.2.0.2 (North America).zip	WNHD3004	1.2.0.2	\N	33	\N	f	f	False	f	armel	\N	\N
3755	WNHD3004 Firmware Version 1.3.0.3 (North America).zip	WNHD3004	1.3.0.3	\N	33	\N	f	f	False	f	armel	\N	\N
108316	WMS5316_FW_V2.1.5.zip	WMS5316	2.1.5	\N	33	\N	f	f	False	f	\N	\N	\N
2300	WMS5316_2.1.4.15.zip	WMS5316	2.1.4.15	\N	33	\N	f	f	False	f	\N	\N	\N
2302	WMS5316 Firmware Version 2.0.3.zip	WMS5316	2.0.3	\N	33	\N	f	f	False	f	\N	\N	\N
2303	WMS5316 Firmware Version 2.1.2.zip	WMS5316	2.1.2	\N	33	\N	f	f	False	f	\N	\N	\N
2301	WMS5316 Firmware Version 2.0 (Initial Release).zip	WMS5316	2.0	\N	33	\N	f	f	False	f	\N	\N	\N
108337	DG834_V3.01.25.img	DG834v1	3.01.25	\N	33	\N	f	f	False	f	mipsel	\N	\N
108338	DG834_V2.10.22.img	DG834v1	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
1802	dg834_g_v1_05_00.zip	DG834v1	1.05.00	\N	33	\N	f	f	False	f	mipsel	\N	\N
108339	DG834_V3.01.32.img	DG834v2	3.01.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
108340	DG834V3_V4.01.30.img	DG834v3	4.01.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
108341	DG834V3_V4.01.27.img	DG834v3	4.01.27	\N	33	\N	f	f	False	f	mipsel	\N	\N
108342	DG834V3_V4.01.04.img	DG834v3	4.01.04	\N	33	\N	f	f	False	f	mipsel	\N	\N
15956	DG834Gv4_V5.01.14.img	DG834v4	5.01.14	\N	33	\N	f	f	False	f	\N	\N	\N
716	dg834v4_dg834gv4_5_01_01.zip	DG834v4	5.01.01	\N	33	\N	f	f	False	f	\N	\N	\N
108343	DG834Gv5-V6.00.24.chk	DG834Gv5	6.00.24	\N	33	\N	f	f	False	f	armel	\N	\N
6283	DG834Gv5_RTV6.00.21.chk	DG834Gv5	6.00.21	\N	33	\N	f	f	False	f	armel	\N	\N
5724	DG834Gv5-V1.6.01.34.chk	DG834Gv5	1.6.00.34	\N	33	\N	f	f	False	f	armel	\N	\N
7331	DGN1000_v1.1.00.46.img	DGN1000	1.1.00.46	\N	33	\N	f	f	False	f	\N	\N	\N
7333	DGN1000WW_V1.1.00.45.img	DGN1000	1.1.00.45	\N	33	\N	f	f	False	f	\N	\N	\N
1961	DGN1000WW_V1.1.00.41.img	DGN1000	1.1.00.41	\N	33	\N	f	f	False	f	\N	\N	\N
5802	DGN1000_V1.1.00.34_ww.img	DGN1000	1.1.00.34	\N	33	\N	f	f	False	f	\N	\N	\N
108351	EX3700-V1.0.0.58_1.0.38.chk	EX3700	1.0.1.46	\N	33	\N	f	f	False	f	mipsel	\N	\N
108352	EX3700-V1.0.0.50_1.0.30.chk	EX3700	1.0.0.50	\N	33	\N	f	f	False	f	mipsel	\N	\N
108353	EX3700-V1.0.0.48_1.0.28.chk	EX3700	1.0.0.48	\N	33	\N	f	f	False	f	mipsel	\N	\N
108354	EX3700-V1.0.0.46_1.0.26.chk	EX3700	1.0.0.46	\N	33	\N	f	f	False	f	mipsel	\N	\N
108355	EX3700-V1.0.0.34_1.0.22.chk	EX3700	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
108356	EX3700-V1.0.0.28_1.0.20.chk	EX3700	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
108358	EX3700-V1.0.0.24_1.0.18.chk	EX3700	1.0.0.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
108359	EX3700-V1.0.0.22_1.0.17.chk	EX3700	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
108360	EX6100-V1.0.2.6_1.1.120.chk	EX6100v1	1.0.2.6	\N	33	\N	f	f	False	f	mipsel	\N	\N
108361	EX6100-V1.0.1.36_1.0.114_07311820.chk	EX6100v1	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N	\N
16011	EX6100-V1.0.0.28_1.0.66_03281041.chk	EX6100v1	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
16010	EX6100-V1.0.0.22_1.0.51_12121251.chk	EX6100v1	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
108363	EX6150-V1.0.0.32_1.0.68.chk	EX6150v1	1.0.0.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
108364	EX6150-V1.0.0.28_1.0.64.chk	EX6150v1	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
108365	EX6150-V1.0.0.16_1.0.58_01302050.chk	EX6150v1	1.0.0.16	\N	33	\N	f	f	False	f	mipsel	\N	\N
108366	EX6150-V1.0.0.14_1.0.54.chk	EX6150v1	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
108367	EX6200-V1.0.3.74_1.1.109.chk	EX6200	1.0.3.74	\N	33	\N	f	f	False	f	armel	\N	\N
108368	EX6200-V1.0.1.60_1.1.98.chk	EX6200	1.0.1.60	\N	33	\N	f	f	False	f	armel	\N	\N
16015	EX6200-V1.0.0.46_1.1.70.chk	EX6200	1.0.0.46	\N	33	\N	f	f	False	f	armel	\N	\N
108370	EX6200-V1.0.0.38_1.1.52.chk	EX6200	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N	\N
108371	EX7000-V1.0.0.42_1.0.94.chk	EX7000	1.0.0.42	\N	33	\N	f	f	False	f	armel	\N	\N
108372	EX7000-V1.0.0.38_1.0.91.chk	EX7000	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N	\N
108373	EX7000-V1.0.0.32_1.0.84.chk	EX7000	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N	\N
108374	EX7000-V1.0.0.36_1.0.88.chk	EX7000	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N	\N
108375	EX7000-V1.0.0.30_1.0.72.chk	EX7000	1.0.0.30	\N	33	\N	f	f	False	f	armel	\N	\N
108448	fvs318g_v3.1.1-14.img	FVS318Gv1	3.1.1	\N	33	\N	f	f	False	f	armel	\N	\N
16016	fvs318g_v3.1.1-08.img	FVS318Gv1	3.1.1	\N	33	\N	f	f	False	f	armel	\N	\N
5294	fvs318g_v3.0.7-22.img	FVS318Gv1	3.0.7	\N	33	\N	f	f	False	f	armel	\N	\N
937	fvs318g_v3.0.5-24.img	FVS318Gv1	3.0.5	\N	33	\N	f	f	False	f	armel	\N	\N
108452	FVS318Gv2_v4.3.3-6.img	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
108454	FVS318Gv2_v4.3.2-7.img	FVS318Gv2	4.3.2	\N	33	\N	f	f	False	f	\N	\N	\N
108577	JGSM7224 FW_1.8.10.zip	JGSM7224	1.8.10	\N	33	\N	f	f	False	f	mipseb	\N	\N
108579	JNR1010-V1.0.0.24.img	JNR1010	1.0.0.24	\N	33	\N	f	f	False	f	mipseb	\N	\N
4332	jnr1010-v1.0.0.18.zip	JNR1010	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N	\N
16044	jnr1010_V1.0.0.16.img	JNR1010	1.0.0.16	\N	33	\N	f	f	False	f	mipseb	\N	\N
7357	jnr1010-v1.0.0.14.img	JNR1010	1.0.0.14	\N	33	\N	f	f	False	f	mipseb	\N	\N
7185	jnr1010-v1.0.0.11.img	JNR1010	1.0.0.11	\N	33	\N	f	f	False	f	mipseb	\N	\N
16043	jnr1010-v1.0.0.10.img	JNR1010	1.0.0.10	\N	33	\N	f	f	False	f	mipseb	\N	\N
108580	JNR1010v2_1.1.0.32_101.img	JNR1010v2	1.1.0.32	\N	33	\N	f	f	False	f	\N	\N	\N
108581	JNR1010v2_V1.1.0.31.img	JNR1010v2	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N	\N
7546	JNR1010v2-V1.1.0.20.img	JNR1010v2	1.1.0.20	\N	33	\N	f	f	False	f	\N	\N	\N
7547	JNR1010v2_V1.1.0.18_1.0.1.img	JNR1010v2	1.1.0.18	\N	33	\N	f	f	False	f	\N	\N	\N
4166	JNR1010v2_V1.1.0.16_1.0.1.img	JNR1010v2	1.1.0.16	\N	33	\N	f	f	False	f	\N	\N	\N
16062	JNR1010v2-V1.1.0.12_1.0.1.img	JNR1010v2	1.1.0.12	\N	33	\N	f	f	False	f	\N	\N	\N
16064	JWNR1010v2-V1.1.0.09.img	JNR1010v2	1.1.0.09	\N	33	\N	f	f	False	f	\N	\N	\N
7166	JNR3000_V1.1.0.29_1.0.1.img	JNR3000	1.1.0.29	\N	33	\N	f	f	False	f	\N	\N	\N
7140	JNR3000_V1.1.0.26_1.0.8.img	JNR3000	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N	\N
108583	JNR3000_V1.1.0.24_1.0.4.img	JNR3000	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N	\N
16045	JNR3000-V1.1.0.14_1.0.14.img	JNR3000	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
108584	JNR3210-V1.1.0.30_1.0.2.img	JNR3210	1.1.0.30	\N	33	\N	f	f	False	f	\N	\N	\N
16046	JNR3210-V1.1.0.27_1.0.5.img	JNR3210	1.1.0.27	\N	33	\N	f	f	False	f	\N	\N	\N
7167	JNR3210_V1.10.26_1.0.8.img	JNR3210	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N	\N
7164	JNR3210_V1.1.0.25_1.0.1.img	JNR3210	1.1.0.25	\N	33	\N	f	f	False	f	\N	\N	\N
108585	JNR3210_V1.1.0.24_1.0.4.img	JNR3210	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N	\N
108586	JNR3210_V1.1.0.14_1.0.14.img	JNR3210	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
108590	JR6100-V1.0.1.16.img	JR6100	1.0.1.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
7563	JR6100-V1.0.1.14.img	JR6100	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
7561	JR6100-V1.0.1.12.img	JR6100	1.0.1.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
7562	JR6100-V1.0.0.10.img	JR6100	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16075	R6200-V1.0.1.52_1.0.41.chk	R6200v1	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
16074	R6200-V1.0.1.46_1.0.36.chk	R6200v1	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16073	R6200-V1.0.0.28_1.0.24.chk	R6200v1	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108592	JR6150_R6050-V1.0.0.34_1.0.1.img	JR6150	1.0.0.34	\N	33	\N	f	f	False	f	\N	\N	\N
108593	JR6150-V1.0.0.32_1.0.1.img	JR6150	1.0.0.32	\N	33	\N	f	f	False	f	\N	\N	\N
7469	JR6150-V1.0.0.30_1.0.1.img	JR6150	1.0.0.30	\N	33	\N	f	f	False	f	\N	\N	\N
7463	JR6150_V1.0.0.22_1.0.1.img	JR6150	1.0.0.22	\N	33	\N	f	f	False	f	\N	\N	\N
7466	JR6150-V1.0.0.18_1.0.1.img	JR6150	1.0.0.18	\N	33	\N	f	f	False	f	\N	\N	\N
5834	JWNR2000-V1.0.0.7_1.0.6PR.img	JWNR2000v1	1.0.0.7	\N	33	\N	f	f	False	f	mipseb	\N	\N
5820	JWNR2000-V1.0.0.7_1.0.6.img	JWNR2000v1	1.0.0.7	\N	33	\N	f	f	False	f	mipseb	\N	\N
5781	JWNR2000-V1.0.0.5_1.0.3.img	JWNR2000v1	1.0.0.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
108595	JWNR2000-V1.0.0.4_1.0.4.img	JWNR2000v1	1.0.0.4	\N	33	\N	f	f	False	f	mipseb	\N	\N
6702	JWNR2000v2_-V1.0.0.11_1.0.1.img	JWNR2000v2	1.0.0.11	\N	33	\N	f	f	False	f	mipseb	\N	\N
108596	JWNR2000v2-V1.0.0.9_1.0.2.img	JWNR2000v2	1.0.0.09	\N	33	\N	f	f	False	f	mipseb	\N	\N
108597	JWNR2000v2-V1.0.0.8_1.0.10.img	JWNR2000v2	1.0.0.08	\N	33	\N	f	f	False	f	mipseb	\N	\N
2006	JWNR2000v2-V1.0.0.8_1.0.7.img	JWNR2000v2	1.0.0.08	\N	33	\N	f	f	False	f	mipseb	\N	\N
108598	JWNR2000v3-V1.0.0.32.img	JWNR2000v3	1.0.0.32	\N	33	\N	f	f	False	f	mipseb	\N	\N
6940	jwnr2000v3-v1.0.0.20.img	JWNR2000v3	1.0.0.20	\N	33	\N	f	f	False	f	mipseb	\N	\N
6939	jwnr2000v3_V1.0.0.18.img	JWNR2000v3	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N	\N
6938	jwnr2000v3_jwnr2010_jwnr2000tv3-v1.0.0.16.img	JWNR2010	1.0.0.16	\N	33	\N	f	f	False	f	mipseb	\N	\N
108600	KWGR614_V1.1.2_01.10PR.bix	KWGR614	1.1.2	\N	33	\N	f	f	False	f	mipseb	\N	\N
108601	KWGR614_V1.0.1_07.10PR.bix	KWGR614	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N	\N
108602	kwgr614_1_0_1_10_17ww_outside_na.bix	KWGR614	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N	\N
108623	m7100-24xv10.1.0.15.stk	M7100	10.1.0.15	\N	33	\N	f	f	False	f	ppceb	\N	\N
108624	m7100-24x-v10.1.0.11.stk	M7100	10.1.0.11	\N	33	\N	f	f	False	f	ppceb	\N	\N
108677	R2000-V1.0.0.34.img	R2000	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N	\N
108678	R2000-V1.0.0.20.img	R2000	1.0.0.20	\N	33	\N	f	f	False	f	mipseb	\N	\N
108681	R6100-V1.0.1.10.img	R6100	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108682	R6100-V1.0.0.62.img	R6100	1.0.0.62	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16070	R6100-V1.0.0.52.img	R6100	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16068	R6100-V1.0.0.38.img	R6100	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16066	R6100-V1.0.0.24.img	R6100	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108693	R6300-V1.0.2.78_1.0.58.chk	R6300v1	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108589	JNR3300-V1.0.0.26PR.img	JNR3300	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet;53/tcp open  domain;80/tcp open  http;
108685	R6200-V1.0.1.56_1.0.43.chk	R6200v1	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
16072	R6200-V1.0.0.18_1.0.18.chk	R6200v1	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108680	R6100_V1.2.0.2.img	R6100	1.2.0.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16096	R6300-V1.0.2.70_1.0.50.chk	R6300v1	1.0.2.70	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108686	R6200v2-V1.0.3.10_10.1.10.chk	R6200v2	1.0.3.10	\N	33	\N	f	f	False	f	armel	\N	\N
16079	R6200v2-V1.0.1.18_1.0.17.chk	R6200v2	1.0.1.18	\N	33	\N	f	f	False	f	armel	\N	\N
16077	R6200v2-V1.0.1.14_1.0.14.chk	R6200v2	1.0.1.14	\N	33	\N	f	f	False	f	armel	\N	\N
108688	R6220_V1.1.0.34_1.0.1.img	R6220	1.1.0.34	\N	33	\N	f	f	False	f	\N	\N	\N
108689	R6220_1.1.0.31_1.0.1.img	R6220	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N	\N
108690	R6220_V1.0.0.17_1.0.1_FW.img	R6220	1.0.0.17	\N	33	\N	f	f	False	f	\N	\N	\N
108691	R6220_V1.0.0.16_1.0.1_FW.img	R6220	1.0.0.16	\N	33	\N	f	f	False	f	\N	\N	\N
7584	R6220_v1014_101.img	R6220	1.0.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
16095	R6300-V1.0.2.68_1.0.49.chk	R6300v1	1.0.2.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16069	R6100-V1.0.0.48.img	R6100	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16092	R6300-V1.0.2.26_1.0.26.chk	R6300v1	1.0.2.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16091	R6300-V1.0.2.14_1.0.23.chk	R6300v1	1.0.2.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108773	WAC120_V2.0.5_firmware.tar	WAC120	2.0.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
6800	R6300v2-V1.0.0.16_1.0.8PRRU.chk	R6300v2	1.0.0.16	\N	33	\N	f	f	False	f	armel	\N	\N
108701	R6700-V1.0.0.26_10.0.26.chk	R6700	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N	\N
108702	R6700-V1.0.0.24_10.0.18.chk	R6700	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N	\N
108703	R6900-V1.0.1.14_1.0.14.chk	R6900	1.0.1.14	\N	33	\N	f	f	False	f	armel	\N	\N
108704	R6900-V1.0.0.4_1.0.10.chk	R6900	1.0.0.4	\N	33	\N	f	f	False	f	armel	\N	\N
108705	R6900-V1.0.0.2_1.0.2.chk	R6900	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N	\N
7380	R7000_V1.0.3.28_1.1.22PRRU.chk	R7000	1.0.3.28	\N	33	\N	f	f	False	f	armel	\N	\N
108756	rp614v4_1_0_2_06_29.bix	RP614v4	1.0.2	\N	33	\N	f	f	False	f	mipseb	\N	\N
108757	rp614v4_1_0_1_11_29_na.bix	RP614v4	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N	\N
108758	RP614v4_V0.1.8_09.08PR.bix	RP614v4	0.1.8	\N	33	\N	f	f	False	f	mipseb	\N	\N
108771	WAC104_V1.0.4.1.img	WAC104	1.0.4.1	\N	33	\N	f	f	False	f	\N	\N	\N
108708	R7500-V1.0.0.76.img	R7500	1.0.0.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
6718	R7500-V1.0.0.52.img	R7500	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
966	WG103_V2.2.5_firmware.tar	WG103	2.2.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
5321	WG103_V2.0.25_firmware.tar	WG103	2.0.25	\N	33	\N	f	f	False	f	mipseb	\N	\N
5904	WG103_V2.0.0.12.zip	WG103	2.0.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
108798	wg602v3_1_2_5ww.trx	WG602v3	1.2.5	\N	33	\N	f	f	False	f	mipsel	\N	\N
108799	wg602v3_1_2_2ww.trx	WG602v3	1.2.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
108800	wg602v3_1_1_0_non_na.trx	WG602v3	1.1.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
108801	wg602v3_1_0_8.trx	WG602v3	1.0.8	\N	33	\N	f	f	False	f	mipsel	\N	\N
1715	wg602v3_v1_0_5.zip	WG602v3	1.0.5	\N	33	\N	f	f	False	f	mipsel	\N	\N
108802	wg602v3_V1_0_4.trx	WG602v3	1.0.4	\N	33	\N	f	f	False	f	mipsel	\N	\N
108803	wg602v4-V1.1.0.trx	WG602v4	1.1.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
108810	WGR612-V1.0.0.1_1.0.1NA.img	WGR612	1.0.0.1	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
108715	R9000-V1.0.0.68.img	R9000	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108812	WGR614v10-V1.0.2.54_60.0.82BRIC.chk	WGR614v10	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N	\N
6081	WGR614v10-V1.0.2.26_51.0.59BRIC.chk	WGR614v10	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
1652	WGR614v10-V1.0.2.18_47.0.52BRIC.chk	WGR614v10	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
6970	WGR614v10-V1.0.0.10_40.0.44BRIC.chk	WGR614v10	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
581	WGR614v9-V1.2.30_41.0.44.chk	WGR614v9	1.2.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
108817	WGR614v9-V1.2.24_37.0.35PR.chk	WGR614v9	1.2.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
853	WGR614v9-V1.2.24_37.0.35.chk	WGR614v9	1.2.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
7631	WGR614v9-V1.2.8_20.0.18PR.chk	WGR614v9	1.2.08	\N	33	\N	f	f	False	f	mipsel	\N	\N
752	WGR614v9-V1.2.6_18.0.17.chk	WGR614v9	1.2.06	\N	33	\N	f	f	False	f	mipsel	\N	\N
108818	WGR614v9-V1.2.4_15.0.14PR.chk	WGR614v9	1.2.04	\N	33	\N	f	f	False	f	mipsel	\N	\N
108819	WGR614v9-V1.0.18_8.0.10PR.chk	WGR614v9	1.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
5025	WGR614v9-V1.0.18_8.0.9.chk	WGR614v9	1.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
5936	wgr614v9_1_0_15_4_0_3_ww.chk	WGR614v9	1.0.15	\N	33	\N	f	f	False	f	mipsel	\N	\N
108820	WGR614v9-V1.0.10_1.0.2PR.chk	WGR614v9	1.0.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
1968	wgr614v9_1_0_9_1_0_1_ww.chk	WGR614v9	1.0.09	\N	33	\N	f	f	False	f	mipsel	\N	\N
16151	WGT624v4-V2.0.13_2.0.14.chk	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N	\N
1628	wgt624v4_2_0_12_2_0_12_ww.chk	WGT624v4	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
108821	wgt624v4_2_0_9_2_0_9_ww.chk	WGT624v4	2.0.09	\N	33	\N	f	f	False	f	mipseb	\N	\N
5485	WGT624V4-V2.0.6_2.0.6PR.chk	WGT624v4	2.0.06	\N	33	\N	f	f	False	f	mipseb	\N	\N
5484	WGT624v4-V2.0.13_2.0.13PR.chk	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N	\N
108822	WGT624v4-V2.0.12_2.0.13PR.chk	WGT624v4	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
108823	wms5316_2.1.4.15.bin	WMS5316	2.1.4.15	\N	33	\N	f	f	False	f	\N	\N	\N
7379	R7000-V1.0.2.200_1.0.18PRRU.chk	R7000	1.0.2.200	\N	33	\N	f	f	False	f	armel	\N	\N
108707	R7500-V1.0.0.94.img	R7500	1.0.0.94	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108709	R8000-V1.0.3.4_1.1.2.chk	R8000	1.0.3.4	\N	33	\N	f	f	False	f	armel	\N	\N
108710	R8000-V1.0.3.26_1.1.18.chk	R8000	1.0.3.26	\N	33	\N	f	f	False	f	armel	\N	\N
108711	R8000-V1.0.2.44_1.0.96.chk	R8000	1.0.2.44	\N	33	\N	f	f	False	f	armel	\N	\N
108712	R8000-V1.0.1.16_1.0.74.chk	R8000	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N	\N
7605	R8000-V1.0.0.110_1.0.70.chk	R8000	1.0.0.110	\N	33	\N	f	f	False	f	armel	\N	\N
16112	R8000-V1.0.0.102_1.0.45.chk	R8000	1.0.0.102	\N	33	\N	f	f	False	f	armel	\N	\N
108713	R8000-V1.0.0.76_1.0.32.chk	R8000	1.0.0.76	\N	33	\N	f	f	False	f	armel	\N	\N
7602	R8000-V1.0.0.74_1.0.31.chk	R8000	1.0.0.74	\N	33	\N	f	f	False	f	armel	\N	\N
7601	R8000-V1.0.0.68_1.0.27.chk	R8000	1.0.0.68	\N	33	\N	f	f	False	f	armel	\N	\N
108717	ReadyNASReplicate.bin	RN00RPL1		\N	33	\N	f	f	False	f	\N	\N	\N
2676	DG834(v1_v2), DG834G (v1_v2) Firmware Version 2.10.22.zip	DG834v1	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
3816	DG834(v1_v2), DG834G (v1v2) Firmware Version 2.10.22.zip	DG834v2	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
5706	rp614v4_1_8_03_17.bix	RP614v4	1.8	\N	33	\N	f	f	False	f	mipseb	\N	\N
108753	RP614v4_V1.1.2_09.01.bix	RP614v4	1.1.2	\N	33	\N	f	f	False	f	mipseb	\N	\N
108754	RP614v4_V1.0.5_04.23.bix	RP614v4	1.0.5	\N	33	\N	f	f	False	f	mipseb	\N	\N
7180	WGR612-V1.0.1.3_1.0.1PR.img	WGR612	1.0.1.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
16171	WN3050RP-V1.0.0.36.img	WN3050RPv1	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	23/tcp   open  telnet;3333/tcp open  dec-notes;
6747	WN804-V1.0.0.28_1.0.34.chk	WN804	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.0.233'), ('br1', '192.168.0.233')]	f	mipsel	\N	old;80/tcp closed http;
108836	WNAP210_V2.1.5_firmware.tar	WNAP210v1	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108841	WNAP210_V3.0.5.0.tar	WNAP210v2	3.0.5.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108831	WN3050RPv2-V1.0.1.24.img	WN3050RPv2	1.0.1.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
108837	WNAP210_V2.1.4.tar	WNAP210v1	2.1.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108842	WNAP210_V3.0.4.0.tar	WNAP210v2	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108832	WN3050RPv2-V1.0.1.20.img	WN3050RPv2	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
1938	WNAP210_2.1.1_firmware.tar	WNAP210v1	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
16177	WN3500RP-V1.0.0.22_1.0.62.chk	WN3500RP	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
16176	WN3500RP-V1.0.0.20_1.0.60.chk	WN3500RP	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
16174	WN3500RP-V1.0.0.16_1.0.58.chk	WN3500RP	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
16173	WN3500RP-V1.0.0.14_1.0.54.chk	WN3500RP	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
2074	WN604_V3.0.2_firmware.tar	WN604	3.0.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
5948	WN604_V3.0.0_firmware.tar	WN604	3.0.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
808	netgear_wms5316_2.0.3.bin	WMS5316	2.0.3	\N	33	\N	f	f	False	f	\N	\N	\N
2126	netgear_wms5316_2.0.bin	WMS5316	2.0	\N	33	\N	f	f	False	f	\N	\N	\N
108824	wn1000rp-V1.0.0.52.img	WN1000RP	1.0.0.52	\N	33	\N	f	f	False	f	mipsel	\N	\N
108825	WN1000RP-V1.0.0.32_FW_and_Upgrade_Utility.rar	WN1000RP	1.0.0.32	\N	33	\N	f	f	False	f	mipsel	\N	\N
108826	wn1000rp-V1.0.0.22.img	WN1000RP	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
16154	wn1000rp-V1.0.0.20.img	WN1000RP	1.0.0.20	\N	33	\N	f	f	False	f	mipsel	\N	\N
16168	WN3000RP-V1.0.2.64_1.1.86.chk	WN3000RP	1.0.2.64	\N	33	\N	f	f	False	f	mipsel	\N	\N
16167	WN3000RP-V1.0.1.36_1.1.47.chk	WN3000RP	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N	\N
16166	WN3000RP-V1.0.1.34_1.1.46.chk	WN3000RP	1.0.1.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
5128	WN3000RP-V1.0.0.12_1.0.12.chk	WN3000RP	1.0.0.12	\N	33	\N	f	f	False	f	mipsel	\N	\N
1704	WN604_V2.3.2_firmware.tar	WN604	2.3.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
108850	WNAP320_V3.0.0.7.tar	WNAP320	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
2105	WNAP320_V2.1.1_firmware.tar	WNAP320	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
1921	WNAP320_V2.0.3_firmware.tar	WNAP320	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108858	WNDAP350_V3.0.5.0.tar	WNDAP350	3.0.5.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108861	WNDAP350_V3.0.0.7.tar	WNDAP350	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108863	WNDAP350_V2.1.7_firmware.tar	WNDAP350	2.1.07	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
5118	WNDAP350_V2.1.2_firmware.tar	WNDAP350	2.1.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108865	WNDAP350_V2.0.27_firmware.tar	WNDAP350	2.0.27	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108870	WNDAP360_V3.0.4.0.tar	WNDAP360	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108872	WNDAP360_V3.0.0.7.tar	WNDAP360	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108875	WNDAP360_FW_V2.1.7.tar	WNDAP360	2.1.07	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
504	WNDAP360_V2.1.1_firmware.tar	WNDAP360	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
6312	WN604_V2.3.1_firmware.tar	WN604	2.3.1	\N	33	\N	f	f	False	f	mipseb	\N	\N
5087	WNAP210_V2.0.6_firmware.tar	WNAP210v1	2.0.6	\N	33	\N	f	f	False	f	mipseb	\N	\N
5391	WNAP210_2.0.12_firmware.tar	WNAP210v1	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N	\N
6372	WNAP210_2.0.10_firmware.tar	WNAP210v1	2.0.10	\N	33	\N	f	f	False	f	mipseb	\N	\N
108838	wnap210_firmware.tar	WNAP210v2	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
108839	WNAP210v2_V3.5.5.0.zip	WNAP210v2	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
108845	wnap320_firmware.tar	WNAP320	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
108846	WNAP320_V3.5.5.0.zip	WNAP320	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
6301	WNDAP330_V3.0.5.zip	WNDAP330	3.0.5	\N	33	\N	f	f	False	f	mips64eb	\N	\N
2114	WNDAP330_V3.0.3_firmware.tar	WNDAP330	3.0.3	\N	33	\N	f	f	False	f	mips64eb	\N	\N
6303	WNDAP330_2.1.11_firmware.tar	WNDAP330	2.1.11	\N	33	\N	f	f	False	f	mips64eb	\N	\N
5636	wndap330_2_0_2.tar	WNDAP330	2.0.2	\N	33	\N	f	f	False	f	mips64eb	\N	\N
108855	wndap350_firmware.tar	WNDAP350	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
108856	WNDAP350_V3.5.5.0.zip	WNDAP350	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
108866	wndap360_firmware.tar	WNDAP360	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
108867	WNDAP360_V3.5.5.0.zip	WNDAP360	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N	\N
7023	WNDR3700v4-V1.0.1.60PRRU.img	WNDR3700v4	1.0.1.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http443/tcp  open  https3333/tcp open  dec-notes
16275	WNDRMACv2-V1.0.0.10.img	WNDRMAC	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;631/tcp  open  ipp;3333/tcp open  dec-notes;
7088	WNDR3400-V1.0.0.52_20.0.60.chk	WNDR3400v1	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
16258	WNDR4500-V1.0.1.38_1.0.64.chk	WNDR4500v1	1.0.1.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
16249	WNDR4300-V1.0.1.34.img	WNDR4300v1	1.0.1.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
108893	WNDR4300v2-V1.0.0.26.img	WNDR4300v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp  open  domain;80/tcp  open  http;443/tcp open  https;
16256	WNDR4500-V1.0.1.20_1.0.40.chk	WNDR4500v1	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16255	WNDR4500-V1.0.1.18_1.0.36.chk.chk	WNDR4500v1	1.0.1.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
7194	WNDR3400v2-V1.0.0.48.chk	WNDR3400v2	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
1019	WNDR4500-V1.0.1.6_1.0.24.chk	WNDR4500v1	1.0.1.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
7030	WNR1000v2-V1.1.2.54.img	WNR1000v2	1.1.2.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16199	WNDR3400v2-V1.0.0.34_1.0.52.chk	WNDR3400v2	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
5068	WNDR3400v2-V1.0.0.16_1.0.34.chk	WNDR3400v2	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
5701	WNDR3400v2-V1.0.0.12_1.0.30.chk	WNDR3400v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
956	WNDR3300-V1.0.45_1.0.45.chk	WNDR3300	1.0.45	\N	33	\N	f	f	False	f	mipsel	\N	\N
818	WNDR3300_V1.0.29_1.0.29.chk	WNDR3300	1.0.29	\N	33	\N	f	f	False	f	mipsel	\N	\N
5877	WNDR3300_V1.0.26_1.0.26.chk	WNDR3300	1.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
5911	WNDR3700-V1.0.16.98.img	WNDR3700v1	1.0.16.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16221	WNDR3700v2_WNDR37AVv2-V1.0.1.14.img	WNDR3700v2	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
7091	WNDR3400-V1.0.0.38_16.0.48.chk	WNDR3400v1	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N	\N
5188	WNDR3700v2-V1.0.0.10.img	WNDR3700v2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16220	WNDR3700v2-V1.0.0.8.img	WNDR3700v2	1.0.0.08	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16230	WNDR3700v4-V1.0.1.44PRRU.img	WNDR3700v4	1.0.1.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http443/tcp  open  https3333/tcp open  dec-notes
16240	WNDR3800-V1.0.0.44.img	WNDR3800	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16239	WNDR3800-V1.0.0.40.img	WNDR3800	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16237	WNDR3800-V1.0.0.34.img	WNDR3800	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16235	WNDR3800-V1.0.0.24.img	WNDR3800	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16234	WNDR3800-V1.0.0.18.img	WNDR3800	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
696	WNDR4500-V1.0.0.103_1.0.21.chk	WNDR4500v1	1.0.0.103	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108895	WNDR4500v2-V1.0.0.56_1.0.36.chk	WNDR4500v2	1.0.0.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16266	WNDR4500v2-V1.0.0.54_1.0.33.chk	WNDR4500v2	1.0.0.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16226	WNDR3700v3-V1.0.0.38_1.0.31.chk	WNDR3700v3	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N	\N
16225	WNDR3700v3-V1.0.0.36_1.0.30.chk	WNDR3700v3	1.0.0.36	\N	33	\N	f	f	False	f	mipsel	\N	\N
16224	WNDR3700v3-V1.0.0.30_1.0.27.chk	WNDR3700v3	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N	\N
5745	WNDR3700v3-V1.0.0.18_1.0.14.chk	WNDR3700v3	1.0.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
16265	WNDR4500v2-V1.0.0.50_1.0.30.chk	WNDR4500v2	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16263	WNDR4500v2-V1.0.0.36_1.0.21.chk	WNDR4500v2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16262	WNDR4500v2-V1.0.0.26_1.0.16.chk	WNDR4500v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16289	WNR1000v2-V1.1.2.50.img	WNR1000v2	1.1.2.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16287	WNR1000v2-V1.1.2.28.img	WNR1000v2	1.1.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16247	WNDR4000-V1.0.2.4_9.1.86.chk	WNDR4000	1.0.2.4	\N	33	\N	f	f	False	f	mipsel	\N	\N
6021	WNDR4000-V1.0.0.60_8.0.49.chk	WNDR4000	1.0.0.60	\N	33	\N	f	f	False	f	mipsel	\N	\N
16271	WNDR4700-V1.0.0.52.img	WNDR4700	1.0.0.52	\N	33	\N	f	f	False	f	ppceb	\N	\N
16270	WNDR4700-V1.0.0.50.img	WNDR4700	1.0.0.50	\N	33	\N	f	f	False	f	ppceb	\N	\N
16269	WNDR4700-V1.0.0.34.img	WNDR4700	1.0.0.34	\N	33	\N	f	f	False	f	ppceb	\N	\N
16268	WNDR4700-V1.0.0.32.img	WNDR4700	1.0.0.32	\N	33	\N	f	f	False	f	ppceb	\N	\N
16267	WNDR4700-V1.0.0.28.img	WNDR4700	1.0.0.28	\N	33	\N	f	f	False	f	ppceb	\N	\N
7004	WNR1000v3-V1.0.2.68_60.0.93.chk	WNR1000v3	1.0.2.68	\N	33	\N	f	f	False	f	mipsel	\N	\N
16299	WNR1000v3-V1.0.2.60_60.0.86WW.chk	WNR1000v3	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N	\N
108896	WNR1000v3-V1.0.2.54_60.0.82.chk	WNR1000v3	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N	\N
2116	WNR1000v3-V1.0.2.4_39.0.39.chk	WNR1000v3	1.0.2.4	\N	33	\N	f	f	False	f	mipsel	\N	\N
5863	WNR3500v2-V1.2.2.28_25.0.85.chk	WNR3500v2	1.2.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
20679	DSL-2741B_fw_reve_516b46_ALL_multi_20100115.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
1982	WPN824V3-V1.0.8_1.0.7.img	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
16364	WPN824N-V1.0.0.28.img	WPN824N	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
5098	WNR3500L-V1.2.2.44_35.0.53.chk	WNR3500Lv1	1.2.2.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108904	wnr612v2-V1.0.0.3_1.0.3PR.img	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
107912	EX6200v2-V1.0.1.34.zip	EX6200v2	1.0.1.34	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
20014	DSL-2640B_fw_revb2_EU401_310023B00_ALL_multi_20090302.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N	\N
20017	DSL-2640B_HW-E1_EU_2.04_08072012_BETA.zip	dsl-2640b		\N	18	\N	f	f	False	f	mipseb	\N	\N
3973	WNR1000_V1.0.2.62_60.0.87.zip	WNR1000v3	1.0.2.62	\N	33	\N	f	f	False	f	mipsel	\N	\N
108755	RP614v4_V1.0.4_12.21PR.bix	RP614v4	1.0.4	\N	33	\N	f	f	False	f	mipseb	\N	\N
3982	WNR1000v3-V1.0.2.54_60.0.82NA.chk.zip	WNR1000v3	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N	\N
107916	EX7000-V1.0.0.50_1.0.102.zip	EX7000	1.0.0.50	\N	33	\N	f	f	False	f	armel	\N	\N
20681	DSL-2741B_fw_revc_229eu_ALL_multi.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N	\N
5061	wg602_v2_apfirmware_3_2rc6.zip	WG602v2	3.2	\N	33	\N	f	f	False	f	\N	\N	\N
20208	DSL-2750B_1.01_WI_20141007.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N	\N
1836	WNR1000v3-V1.0.2.26_51.0.59.chk	WNR1000v3	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
1890	WNR1000v3-V1.0.2.18_47.0.52.chk	WNR1000v3	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
5301	WNR2000-V1.2.0.8.img	WNR2000v1	1.2.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http3333/tcp open  dec-notes5555/tcp open  freeciv
16319	wnr2000v3-V1.1.2.10.img	WNR2000v3	1.1.2.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16320	wnr2000v3-V1.1.2.6.img	WNR2000v3	1.1.2.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16321	wnr2000v3-V1.1.2.2.img	WNR2000v3	1.1.2.02	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
7220	wnr2000v3-V1.1.1.72.img	WNR2000v3	1.1.1.72	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
601	wnr2000v3-V1.0.1.26.img	WNR2000v3	1.0.1.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108898	wnr2000v4-V1.0.0.44PR.img	WNR2000v4	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
7502	wnr2000v4-V1.0.0.42PR.img	WNR2000v4	1.0.0.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
7511	wnr2000v4-V1.0.0.36PR.img	WNR2000v4	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
7505	wnr2000v4-V1.0.0.34PR.img	WNR2000v4	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16323	WNR2000v4-V1.0.0.30.img	WNR2000v4	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16332	wnr2200-100-V1.0.2.20.img	WNR2200	1.0.2.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108899	wnr2200-100RUS-V1.0.0.36.img	WNR2200	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
6097	WNR3500L-V1.2.2.40_34.0.48.chk	WNR3500Lv1	1.2.2.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
6384	WNR3500-V1.0.30_8.0.30.chk	WNR3500v1	1.0.30	\N	33	\N	f	f	False	f	armel	\N	\N
1883	WNR3500-V1.0.22_6.0.22.chk	WNR3500v1	1.0.22	\N	33	\N	f	f	False	f	armel	\N	\N
615	wnr3500_1_0_15_outside_na.chk	WNR3500v1	1.0.15	\N	33	\N	f	f	False	f	armel	\N	\N
108772	WAC120_V2.0.7.tar	WAC120	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
5161	WNR3500v2-V1.0.2.10_23.0.70.chk	WNR3500v2	1.0.2.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
5300	WNR3500v2-V1.0.0.64_11.0.51.chk	WNR3500v2	1.0.0.64	\N	33	\N	f	f	False	f	mipsel	\N	\N
4360	WNR2000 Firmware Version 1.1.2.6 (North America).zip	WNR2000v1	1.1.2.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http3333/tcp open  dec-notes5555/tcp open  freeciv
476	WNR3500L-V1.2.2.30_34.0.37.chk	WNR3500Lv1	1.2.2.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
7057	wnr612v2-V1.0.0.2_1.0.3PR.img	WNR612v2	1.0.0.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16344	WNR3500Lv2-V1.2.0.26_40.0.71.chk	WNR3500Lv2	1.2.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
16343	WNR3500Lv2-V1.2.0.20_40.0.68.chk	WNR3500Lv2	1.2.0.20	\N	33	\N	f	f	False	f	mipsel	\N	\N
16342	WNR3500Lv2-V1.2.0.18_40.0.67.chk	WNR3500Lv2	1.2.0.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
16341	WNR3500Lv2-V1.2.0.16_40.0.66.chk	WNR3500Lv2	1.2.0.16	\N	33	\N	f	f	False	f	mipsel	\N	\N
16340	WNR3500Lv2-V1.0.0.14_37.0.50.chk	WNR3500Lv2	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
16339	WNR3500Lv2-V1.0.0.10.chk	WNR3500Lv2	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
108901	WNR500-100PRS_1.0.7.1.img	WNR500	1.0.7.1	\N	33	\N	f	f	False	f	mipseb	\N	\N
108902	wnr500-v1.0.0.26.img	WNR500	1.0.0.26	\N	33	\N	f	f	False	f	mipseb	\N	\N
7210	wnr612v3_wnr500-V1.0.0.18.img	WNR500	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N	\N
7205	wnr612v3_wnr500-v1.0.0.16.img	WNR500	1.0.0.16	\N	33	\N	f	f	False	f	mipseb	\N	\N
108903	WNR500v1.0.0.14.rar	WNR500	1.0.0.14	\N	33	\N	f	f	False	f	mipseb	\N	\N
16368	WPN824V3-V1.0.6_1.0.6.img	WPN824v3	1.0.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http5555/tcp open  freeciv
107911	EX6200v2-V1.0.1.40.zip	EX6200v2	1.0.1.40	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
2071	wnr834bv1_1_0_4_0_ww.img	WNR834Bv1	1.0.4.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
5211	wnr834b_1_0_3_8_ww.img	WNR834Bv1	1.0.3.8	\N	33	\N	f	f	False	f	mipsel	\N	\N
7262	WNR834Bv2-V2.1.15_7.1.20PR.chk	WNR834Bv2	2.1.15	\N	33	\N	f	f	False	f	mipsel	\N	\N
5278	wnr834bBv2_2_1_13_2_1_13_ww.chk	WNR834Bv2	2.1.13	\N	33	\N	f	f	False	f	mipsel	\N	\N
109397	DES-1210-28P_REVA_FIRMWARE_v2.03B024_BETA.zip	DES-1210-28P	2.03.024	\N	18	\N	f	f	False	f	armel	\N	\N
9718	DES-1210-52_REVA_FIRMWARE_2.01.002.ZIP	DES-1210-52	2.01.002	\N	18	\N	f	f	False	f	armel	\N	\N
9726	DES-1210-52_REVA_FIRMWARE_2.01.014.ZIP	DES-1210-52	2.01.014	\N	18	\N	f	f	False	f	armel	\N	\N
9720	DES-1210-52_REVA_FIRMWARE_2.02.005.ZIP	DES-1210-52	2.02.005	\N	18	\N	f	f	False	f	armel	\N	\N
9725	DES-1210-52_REVA_FIRMWARE_2.03.001.ZIP	DES-1210-52	2.03.001	\N	18	\N	f	f	False	f	armel	\N	\N
109398	DES-1210-52_REVA_FIRMWARE_v2.03B024_BETA.zip	DES-1210-52	2.03.024	\N	18	\N	f	f	False	f	armel	\N	\N
8727	DES-1210-28_REVC_FIRMWARE_4.00.042.ZIP	DES-1210-28	4.00.042	\N	18	\N	f	f	False	f	mipseb	\N	\N
109399	DES-1210-28_REVC_FIRMWARE_4.00.064_WW.ZIP	DES-1210-28	4.00.064	\N	18	\N	f	f	False	f	mipseb	\N	\N
109400	DES-1210-28_REVC_FIRMWARE_v4.10.004.zip	DES-1210-28	4.10.004	\N	18	\N	f	f	False	f	mipseb	\N	\N
8726	DES-1210-28_REVB_FIRMWARE_3.10.011.ZIP	DES-1210-28	3.10.011	\N	18	\N	f	f	False	f	mipseb	\N	\N
8729	DES-1210-28_REVA_FIRMWARE_1.00.021.ZIP	DES-1210-28	1.00.021	\N	18	\N	f	f	False	f	armel	\N	\N
109401	DES-1210-28_REVC_FIRMWARE_v4.10B045_BETA.zip	DES-1210-28	4.10.045	\N	18	\N	f	f	False	f	mipseb	\N	\N
20982	DEU_DAP_3520_fw_ww103_rc004_20101221.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
18446	DIR-300_fw_reva_105DE_ALL_de_20081212.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
19680	DHP-1565_fw_reva_101b13_ALL_en_20120420.zip	dhp-1565		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.50'), ('br0', '169.254.83.90')]	f	mipseb	\N	down
19164	DIR-636L_fw_revA_104B06_ALL_en_20130520.zip	dir-636l	1.04b06	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
18423	DIR-818LW_fw_revB1_2-00b07_all_multi_20140724.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
10669	DIR-860L_REVB_FIRMWARE_PATCH_2.03.B03.ZIP	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	down
20275	DSL-2770L_fw_revA1_1-02_eu_en_20140415.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	no results
3425	DGND3700 Firmware Version 1.0.0.17(NA).zip	DGND3700v1	1.0.0.17	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
4469	WNDRMAC Firmware Version 1.0.0.18.zip	WNDRMACv1	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
4330	WNDR4300-V1.0.1.64PRRU.zip	WNDR4300	1.0.1.64	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;443/tcp  open  https;3333/tcp open  dec-notes;
2905	WNDR3700v2WNDR37AVv2 Firmware Version 1.0.0.12.zip	WNDR37AVv2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
3349	WNDRMACv2-V1.0.0.16.zip	WNDRMACv2	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
4353	WNR2000 Firmware Version 1.2.3.7 (NA).zip	WNR2000v1	1.2.3.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
2522	WAC120_V2.0.2.zip	WAC120	2.0.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
4978	WNDAP350_-Firmware-Version-V2.1.6.zip	WNDAP350	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108377	EX7300-V1.0.0.40.img	EX7300	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
16170	WN3050RP-V1.0.0.26.img	WN3050RPv1	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	23/tcp   open  telnet;3333/tcp open  dec-notes;
7434	WNDR4300-V1.0.1.52PRRU.img	WNDR4300v1	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
16157	WN2000RPT-V1.0.1.20NA.zip	WN2000RPTv1	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
9461	DAP-2565_FIRMWARE_1.11.ZIP	DAP-2565	1.11	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.130.103')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
9136	DAP-2330_REVA_FIRMWARE_1.02RC017.ZIP	DAP-2330	1.02RC017	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
3812	WN2000RPT-V1.0.1.24NA.zip	WN2000RPTv1	1.0.1.24	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
107924	WN2000RPTv3-V1.0.1.4.zip	WN2000RPTv3	1.0.1.4	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	down
3250	WN3000RPv2-V1.0.0.36.zip	WN3000RPv2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	23/tcp   open  telnet;3333/tcp open  dec-notes;
110110	RE305_V1_181026.zip	RE305		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110111	RE305_V1_171218.zip	RE305		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110107	TL-WA855RE_V2_171218.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110112	RE305(EU_US_UK_CA_JP_KR_BR_AU_AS_DE_TW_ID_ES)_V1_171115.zip	RE305		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110113	TL-WA855RE_V4_200923.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
3320	WN3000RPv3-V1.0.1.14.zip	WN3000RPv3	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes
110105	TL-WA855RE(US)_V1_160324.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110114	TL-WA855RE_V4_200403.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110115	TL-WA855RE(US)_V4_191213.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110103	TL-WA855RE(US)_V1_171206_Beta.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110104	TL-WA855RE(US)_V1_160427.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
569	WGR614v9-V1.2.2_14.0.13.chk	WGR614v9	1.2.02	\N	33	\N	f	f	False	f	mipsel	\N	\N
5728	netgear_wms5316_2.1.2.bin	WMS5316	2.1.2	\N	33	\N	f	f	False	f	\N	\N	\N
8744	DES-1210-28_REVB_FIRMWARE_3.12.015.ZIP	DES-1210-28	3.12.015	\N	18	\N	f	f	False	f	mipseb	\N	\N
8725	DES-1210-28_REVA_FIRMWARE_2.00.011.ZIP	DES-1210-28	2.00.011	\N	18	\N	f	f	False	f	armel	\N	\N
109402	DES-1210-28_REVB_FIRMWARE_v3.12B061_BETA.zip	DES-1210-28	3.12.061	\N	18	\N	f	f	False	f	mipseb	\N	\N
8745	DES-1210-28_REVA_FIRMWARE_2.01.002.ZIP	DES-1210-28	2.01.002	\N	18	\N	f	f	False	f	armel	\N	\N
8747	DES-1210-28_REVA_FIRMWARE_2.01.014.ZIP	DES-1210-28	2.01.014	\N	18	\N	f	f	False	f	armel	\N	\N
8730	DES-1210-28_REVA_FIRMWARE_2.02.005.ZIP	DES-1210-28	2.02.005	\N	18	\N	f	f	False	f	armel	\N	\N
109403	DES-1210-28_REVA_FIRMWARE_v2.03B024_BETA.zip	DES-1210-28	2.03.024	\N	18	\N	f	f	False	f	armel	\N	\N
109404	DCS-7517_REVB_FIRMWARE_v2.00.03.zip	DCS-7517	2.00.03	\N	18	\N	f	f	False	f	armel	\N	\N
109405	DCS-7517_REVB_FIRMWARE_v2.01.00.zip	DCS-7517	2.01.00	\N	18	\N	f	f	False	f	armel	\N	\N
109406	DCS-7517_REVB_FIRMWARE_v2.02.01.zip	DCS-7517	2.02.01	\N	18	\N	f	f	False	f	armel	\N	\N
109407	DCS-7513_REVB_FIRMWARE_2.00.23.zip	DCS-7513	2.00.23	\N	18	\N	f	f	False	f	armel	\N	\N
109408	DCS-7513_REVB_FIRMWARE_v2.01.00.zip	DCS-7513	2.01.00	\N	18	\N	f	f	False	f	armel	\N	\N
109409	DCS-7513_REVB_FIRMWARE_v2.02.03.zip	DCS-7513	2.02.03	\N	18	\N	f	f	False	f	armel	\N	\N
109416	DCS-6517_REVB_FIRMWARE_v2.00.03.zip	DCS-6517	2.00.03	\N	18	\N	f	f	False	f	armel	\N	\N
109417	DCS-6517_REVB_FIRMWARE_v2.00.03_BETA9.zip	DCS-6517	2.00.03	\N	18	\N	f	f	False	f	armel	\N	\N
109418	DCS-6517_REVB_FIRMWARE_v2.01.00.zip	DCS-6517	2.01.00	\N	18	\N	f	f	False	f	armel	\N	\N
109423	DCS-6511_REVB_FIRMWARE_2.00B25.zip	DCS-6511	2.00B25	\N	18	\N	f	f	False	f	armel	\N	\N
109424	DCS-6511_REVB_FIRMWARE_v2.01.zip	DCS-6511	2.01.00	\N	18	\N	f	f	False	f	armel	\N	\N
109488	DAP-3320_FIRMWARE_1.01.RC014.ZIP	DAP-3320	1.01.RC014	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109495	DAP-2690_REVB_FIRMWARE_v3.20RC106.zip	DAP-2690	3.20RC106	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109491	DAP-2695_REVA_FIRMWARE_v1.20RC075.zip	DAP-2695	1.20RC075	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109489	DAP-3662_REVA_FIRMWARE_v2.00RC095.zip	DAP-3662	2.00RC095	\N	18	\N	f	f	False	f	mipseb	\N	\N
109490	DAP-3662_REVA_FIRMWARE_v2.01RC098.zip	DAP-3662	2.01RC098	\N	18	\N	f	f	False	f	mipseb	\N	\N
9460	DAP-2565_FIRMWARE_1.00.ZIP	DAP-2565	1.00	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.130.103')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109493	DAP-2695_REVA_FIRMWARE_v2.00RC131.zip	DAP-2695	2.00RC131	\N	18	\N	f	f	False	f	mipseb	\N	\N
109505	DAP-2553_REVB_FIRMWARE_3.10RC031.zip	DAP-2553	3.10RC031	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
9186	DAP-2360_FIRMWARE_1.00.ZIP	DAP-2360	1.00	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
8814	DAP-2690_FIRMWARE_1.02.ZIP	DAP-2690	1.02	\N	18	\N	f	f	False	f	mips64eb	\N	\N
8815	DAP-2690_FIRMWARE_1.15.ZIP	DAP-2690	1.15	\N	18	\N	f	f	False	f	mips64eb	\N	\N
110118	RE580D(US)_V1_171114.zip	RE580D		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	armel	\N	down
109510	DAP-2660_REVA_FIRMWARE_1.13RC074.zip	DAP-2660	1.13rc074	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
109502	DAP-2610_REVA_FIRMWARE_v2.01RC067.zip	DAP-2610	2.01RC067	\N	18	\N	f	f	False	f	armel	\N	\N
10386	DAP-2660_REVA_FIRMWARE_1.00.ZIP	DAP-2660	1.00	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
10533	DAP-2553_FIRMWARE_1.30_WW.ZIP	DAP-2553	1.30	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
9134	DAP-2330_REVA_FIRMWARE_1.01RC014.ZIP	DAP-2330	1.01RC014	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109486	DAP-3662_REVA_FIRMWARE_1.01RC022.ZIP	DAP-3662	1.01RC022	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109507	DAP-2360_REVB_FIRMWARE_v3.00.064.zip	DAP-2360	3.00RC064	\N	18	\N	f	f	False	f	mipseb	\N	\N
10384	DAP-2660_REVA_FIRMWARE_1.05RC016.ZIP	DAP-2660	1.05RC016	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109509	DAP-2660_REVA_FIRMWARE_1.11.B046.ZIP	DAP-2660	1.11.B046	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
8910	DAP-2310_FIRMWARE_1.15.ZIP	DAP-2310	1.15	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109515	DAP-2330_REVA_FIRMWARE_1.06.RC020.ZIP	DAP-2330	1.06.RC020	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
9190	DAP-2360_FIRMWARE_1.10.ZIP	DAP-2360	1.10	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109511	DAP-2660_REVA_FIRMWARE_1.15RC093.zip	DAP-2660	1.15rc093	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
109512	DAP-2660_REVA_FIRMWARE_v2.00R140.zip	DAP-2660	2.00rc140	\N	18	\N	f	f	False	f	mipseb	\N	\N
9997	DSR-250_FIRMWARE_1.05B20.ZIP	DSR-250	1.05B20	\N	18	\N	f	f	False	f	\N	\N	\N
10005	DSR-250_REVA1_FIRMWARE_1.08B44.ZIP	DSR-250	1.08B44	\N	18	\N	f	f	False	f	armel	\N	\N
10010	DSR-250_REVA1_FIRMWARE_1.09B32.ZIP	DSR-250	1.09B32	\N	18	\N	f	f	False	f	armel	\N	\N
108809	WGR612-V1.0.1.4_1.0.2PR.img	WGR612	1.0.1.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet80/tcp open  http
109516	DAP-2310_REVB_FIRMWARE_3.00R048.zip	DAP-2310	3.00R048	\N	18	\N	f	f	False	f	mipseb	\N	\N
10006	DSR-250_REVA2_FIRMWARE_1.08B44.ZIP	DSR-250	1.08B44	\N	18	\N	f	f	False	f	armel	\N	\N
109388	DES-1210_28P_REVC_FIRMWARE_4.00.064_WW.ZIP	DES-1210-28P	4.00.064	\N	18	\N	f	f	False	f	mipseb	\N	\N
8734	DES-1210-28P_REVB_FIRMWARE_3.11.001.ZIP	DES-1210-28P	3.11.001	\N	18	\N	f	f	False	f	mipseb	\N	\N
109390	DES-1210-28P_REVC_FIRMWARE_v4.12.045_BETA.zip	DES-1210-28P	4.12.045	\N	18	\N	f	f	False	f	mipseb	\N	\N
8733	DES-1210-28P_REVA_FIRMWARE_2.00.011.ZIP	DES-1210-28P	2.00.011	\N	18	\N	f	f	False	f	armel	\N	\N
8739	DES-1210-28P_REVB_FIRMWARE_3.12.015.ZIP	DES-1210-28P	3.12.015	\N	18	\N	f	f	False	f	mipseb	\N	\N
109391	DES-1210-28P_REVC_FIRMWARE_v4.12B053_HOTFIX.zip	DES-1210-28P	4.12.053	\N	18	\N	f	f	False	f	mipseb	\N	\N
109392	DES-1210-28P_REVA_FIRMWARE_2.01.002.HEX	DES-1210-28P	2.01.002	\N	18	\N	f	f	False	f	armel	\N	\N
109393	DES-1210-28P_REVB_FIRMWARE_v3.12B060_BETA.zip	DES-1210-28P	3.12.060	\N	18	\N	f	f	False	f	mipseb	\N	\N
9716	DES-1210-52_REVB_FIRMWARE_3.10.011.ZIP	DES-1210-52	3.10.011	\N	18	\N	f	f	False	f	mipseb	\N	\N
109394	DES-1210-28P_REVA_FIRMWARE_2.01.014.HEX	DES-1210-28P	2.01.014	\N	18	\N	f	f	False	f	armel	\N	\N
109395	DES-1210-28P_REVB_FIRMWARE_v3.12B061_BETA.zip	DES-1210-28P	3.12.061	\N	18	\N	f	f	False	f	mipseb	\N	\N
8732	DES-1210-28P_REVA_FIRMWARE_2.02.005.ZIP	DES-1210-28P	2.02.005	\N	18	\N	f	f	False	f	armel	\N	\N
9729	DES-1210-52_REVA_FIRMWARE_1.00.018.ZIP	DES-1210-52	1.00.018	\N	18	\N	f	f	False	f	armel	\N	\N
109396	DES-1210-52_REVB_FIRMWARE_v3.12B061_BETA.zip	DES-1210-52	3.12.061	\N	18	\N	f	f	False	f	armel	\N	\N
8736	DES-1210-28P_REVA_FIRMWARE_2.03.001.ZIP	DES-1210-28P	2.03.001	\N	18	\N	f	f	False	f	armel	\N	\N
9723	DES-1210-52_REVA_FIRMWARE_2.00.011.ZIP	DES-1210-52	2.00.011	\N	18	\N	f	f	False	f	armel	\N	\N
4972	WNR2000v5-V1.0.0.18.zip	WNR2000v5	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
109492	DAP-2695_REVA_FIRMWARE_v1.20RC119_BETA31.zip	DAP-2695	1.20RC119_BETA31	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
2638	WNAP210-Firmware-version-V2.1.4.zip	WNAP210	2.1.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
2563	XAVN2001-V0.4.0.7.zip	XAVN2001v2	0.4.0.7	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
3569	WNDR3700-WNDR37AV Firmware Version 1.0.7.98 (North America).zip	WNDR37AVv1	1.0.7.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
109487	DAP-3662_REVA_FIRMWARE_1.05RC047.ZIP	DAP-3662	1.05RC047	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
110133	RE650_V1_190521.zip	RE650		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110131	RE650_V1_20201112.zip	RE650		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110132	RE650_v1_200922.zip	RE650		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110129	RE603X(US)_V1_200629.zip	RE603X		\N	51	\N	f	f	False	f	armel	\N	\N
110137	RE400_V1_170111.zip	RE400		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110138	RE400_V1_160727.zip	RE400		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110139	RE400(US)_V1_161202.zip	RE400		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110134	RE505X_V1_201013.zip	RE505X		\N	51	\N	f	f	False	f	armel	\N	\N
110135	RE505X_V1_200730.zip	RE505X		\N	51	\N	f	f	False	f	armel	\N	\N
110136	RE505X_200604.zip	RE505X		\N	51	\N	f	f	False	f	armel	\N	\N
110140	RE450_V1_171215.zip	RE450		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110151	TL-WR741ND_V5_141113.zip	TL-WR741ND	v5	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110147	Archer_C3000(US)_V1_150826.zip	Archer C3000		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110150	TL-WR741ND_V5_150312.zip	TL-WR741ND	v5	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110148	Archer_C5200(US)_V1_160601.zip	Archer C5200		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110149	Archer_C5200(US)_V1_160428.zip	Archer C5200		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
109503	DAP-2610_REVA_FIRMWARE_v2.01B05_R073_HOTFIX.zip	DAP-2610	2.01RC073B05	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N	down
110156	TL-WR841ND_V11_150616.zip	TL-WR841ND	v11	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
14414	TL-WR1042ND_V1_130923.zip	TL-WR1042ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
14415	TL-WR1042ND_V1_120618.zip	TL-WR1042ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http1900/tcp  open  upnp49152/tcp open  unknown
110159	TL-WDR3600_V1_151104_US.zip	TL-WDR3600		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110123	RE500_V1_171129.zip	RE500		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
3497	WNR2000v3 Initial Release Firmware Version 1.0.1.26.zip	WNR2000v3	1.0.1.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
3499	WNR2000v3_V1.1.2.10.zip	WNR2000v3	1.1.2.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
110160	TL-WDR3600_v1_150302.zip	TL-WDR3600		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110146	Archer_C3000(US)_V1_160202.zip	Archer C3000		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110120	RE580D(US)_V1_161221.zip	RE580D		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	armel	\N	down
110122	RE500_V1_171219.zip	RE500		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
4517	wnr2200-V1.0.1.68.zip	WNR2200	1.0.1.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
109504	DAP-2553_REVB_FIRMWARE_3.06RC027.zip	DAP-2553	3.06RC027	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
9183	DAP-2360_REVA_FIRMWARE_1.12.B073.ZIP	DAP-2360	1.12.B073	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
9135	DAP-2330_REVA_FIRMWARE_1.00.ZIP	DAP-2330	1.00	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
109514	DAP-2310_REVB_FIRMWARE_2.10.RC036.ZIP	DAP-2310	2.10.RC036	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
18895	DSL-2751_fw_revD1_1-00_all_20130415.zip	dsl-2751	1.00	\N	18	\N	f	f	False	f	mipseb	\N	\N
20967	DSL-320B_fw_revd_123_ALL_multi_20101228.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N	\N
18260	DSL_321B_fw_revD2_102_ALL_en_20130430_instructions.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N	\N
19870	DSL-3580L_fw_revAx_1.01_04282014.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N	\N
3092	WNR3500L Firmware Version 1.0.2.26 (North America).zip	WNR3500Lv1	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
18805	DSL-380T_fw_revA_300B01T02DE20060718_ALL_de_20060718.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N	\N
16165	WN3000RP-V1.0.1.18_1.1.24.chk	WN3000RP	1.0.1.18	\N	33	\N	f	f	False	f	mipsel	\N	\N
4439	AC1450-V1.0.0.8_1.0.4.zip	AC1450	1.0.0.8	\N	33	\N	f	f	False	f	armel	\N	\N
108089	WNR3500Lv2-V1.2.0.34_40.0.75.zip	WNR3500Lv2	1.2.0.34	\N	33	\N	f	f	False	f	mipsel	\N	\N
4164	JNR1010V2-JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618_FW_V1.1.0.20_1.0.1.zip	JNR1010v2	1.1.0.20	\N	33	\N	f	f	False	f	\N	\N	\N
2573	JNR3000_V1.1.0.24_1.0.4.zip	JNR3000	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N	\N
2570	JNR3000_V1.1.0.22_1.0.1.zip	JNR3000	1.1.0.22	\N	33	\N	f	f	False	f	\N	\N	\N
107943	JR6150_R6050_V1.0.0.32_1.0.1.zip	JR6150	1.0.0.32	\N	33	\N	f	f	False	f	\N	\N	\N
107947	JWNR2000v3_JWNR2010v3_JWNR2000Tv3-v1.0.0.32.zip	JWNR2000Tv3	1.0.0.32	\N	33	\N	f	f	False	f	mipseb	\N	\N
2193	WNR3500Lv2-V1.2.0.16_40.0.66.zip	WNR3500Lv2	1.2.0.16	\N	33	\N	f	f	False	f	mipsel	\N	\N
20505	DSL-G604T_fw_revALL_100B02T02EU20040610_ALL_en_040610.zip	dsl-g604t		\N	18	\N	f	f	False	f	mipsel	\N	\N
107963	PR2000-V1.0.0.14_1.0.1.zip	PR2000	1.0.0.14	\N	33	\N	f	f	False	f	\N	\N	\N
18381	DSP-W215_fw_revB1_2-0-1_all_en_20141003.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N	\N
458	WNAP210_2.0.27_firmware.tar	WNAP210v1	2.0.27	\N	33	\N	f	f	False	f	mipseb	\N	\N
20379	DSR-1000N_fw_revALL_1-04B13_all_en_110919.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N	\N
18444	DSR-250N_fw_revALL_1-05b20_all_en_20120514.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N	\N
2505	WNR834Bv2 Firmware Version 2.0.8 (North America).zip	WNR834Bv2	2.0.8	\N	33	\N	f	f	False	f	mipsel	\N	\N
107971	R6200v2-V1.0.3.10_10.1.10.zip	R6200v2	1.0.3.10	\N	33	\N	f	f	False	f	armel	\N	\N
20779	DVA-G3342SD_fw_revab_204_ALL_de_080226.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20783	DVA-G3342SD_fw_revab_208_ALL_de_081127.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N	\N
20221	DWC-1000_fw_revALL_v4-2-0-3_all_en_20130430.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N	\N
20607	DWL-6600AP_fw_revALL_4-1-0-14_all_en_121217.zip	dwl-6600ap		\N	18	\N	f	f	False	f	\N	\N	\N
18314	DWL-G700ap_fw_revB_200r110408_ALL_en_051128.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N	\N
3890	DGFV338 DSL Board Firmware Version 2.0.61 (Outside Germany).zip	DGFV338	2.0.61	\N	33	\N	f	f	False	f	mipsel	\N	\N
108105	FVS318N_V4.3.3-8.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
3633	FVS318N_v4.1.1-14.zip	FVS318N	4.1.1	\N	33	\N	f	f	False	f	\N	\N	\N
108112	fvs318n-v4.3.0-19.zip	FVS318N	4.3.0	\N	33	\N	f	f	False	f	\N	\N	\N
2806	JGSM7224-V9.2.0.11.zip	JGSM7224	9.2.0.11	\N	33	\N	f	f	False	f	mipseb	\N	\N
107934	WN3100RPv2-V1.0.0.18.zip	WN3100RPv2	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
19323	DWR-512_fw_reva_101b15_ALL_en_20111121.zip	dwr-512		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;;PORT   STATE  SERVICE;80/tcp closed http;
108833	WN804-V1.0.0.24_1.0.30.chk	WN804	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.0.233'), ('br1', '192.168.0.233')]	f	mipsel	\N	old timeout
108844	WNAP210_V3.0.0.7.tar	WNAP210v2	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
7109	WN3050RPv2-V1.0.1.14.img	WN3050RPv2	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes
14407	TL-WDR4300_V1_130617.zip	TL-WDR4300		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
20274	DSL-2770L_fw_revA1_1-02_eu_multi_20140425.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	
3527	WN3500RP-V1.0.0.20_1.0.60.zip	WN3500RP	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
3099	WNR3500L_V1.2.2.48_35.0.55NA.zip	WNR3500Lv1	1.2.2.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
107953	RBS50-V1.3.0.26.zip	Orbi	1.3.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
107955	RBR50-V1.4.0.16.zip	Orbi	1.4.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
16172	WN3500RP-V1.0.0.12_1.0.49.chk	WN3500RP	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	down
107959	RBR50-V1.2.0.6.zip	Orbi	1.2.0.6	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
712	WN604_V2.1_firmware.tar	WN604	2.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
107967	R6100-V1.0.1.10.zip	R6100	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
2869	R6100-V1.0.0.24.zip	R6100	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108851	WNAP320_V2.1.6_firmware.tar	WNAP320	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
107977	R6300-V1.0.2.78_1.0.58.zip	R6300v1	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108859	WNDAP350_V3.0.4.0.tar	WNDAP350	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108864	WNDAP350_V2.1.6_firmware.tar	WNDAP350	2.1.06	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
107980	R6300-V1.0.2.76_1.0.57.zip	R6300v1	1.0.2.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108869	WNDAP360_V3.0.5.0.tar	WNDAP360	3.0.5.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
3317	R6300-V1.0.2.36_1.0.28.zip	R6300v1	1.0.2.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3316	R6300-V1.0.2.68_1.0.49.zip	R6300v1	1.0.2.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
107950	RBS50-V1.4.0.18.zip	Orbi	1.4.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
6264	wndr3300_1_0_14_outside_na_only.chk	WNDR3300	1.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
663	WNDR3700v3-V1.0.0.22_1.0.17.chk	WNDR3700v3	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
105927	FW_TEW-827DRU_v2(2.00B09).zip	TEW-827DRU_v2	2.00B09	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N	old;80/tcp open  http;
106035	FW_TEW-738APBO_v1(1.1.12).zip	TEW-738APBO_v13	1.1.12	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
16116	TEW-632BRPA1_(FW1.10B32).zip	TEW-632BRP_A1.1	FW1.10B32	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
106223	DAP-1353_fw_revB_3-16-rc015_eu_en_20160318.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp    open     telnet;37/tcp    filtered time;80/tcp    open     http;416/tcp   filtered silverplatter;443/tcp   open     https;1077/tcp  filtered imgames;1091/tcp  filtered ff-sm;1130/tcp  filtered casp;3369/tcp  filtered satvid-datalnk;5003/tcp  filtered filemaker;17988/tcp filtered unknown;49155/tcp filtered unknown;52673/tcp filtered unknown;
106282	DAP-2660_fw_revA1_113-074_eu_multi_20160322.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106310	DAP-3662_fw_revA1A2_1-02_eu_multi_20160420.zip	dap-3662	1.02rc032	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
106233	DAP-1620_fw_revA_1-02_eu_multi_20151231.zip	dap-1620		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
106239	DAP-2230_fw_revA1_107-028_eu_multi_20160330.zip	dap-2230		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp    open     telnet;80/tcp    open     http;443/tcp   open     https;631/tcp   filtered ipp;873/tcp   filtered rsync;1166/tcp  filtered qsm-remote;2260/tcp  filtered apc-2260;3013/tcp  filtered gilatskysurfer;9090/tcp  filtered zeus-admin;9878/tcp  filtered kca-service;9944/tcp  filtered unknown;34572/tcp filtered unknown;
20329	DIR-518L_fw_revA_1-02B03_eu_multi_20141009.zip	dir-518l	1.02b03	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
18227	DIR-816L_fw_revB_2-05_eu_multi_20141125.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20597	DIR-850L_fw_revA1_1-12b05_all_en_20141006.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
107876	EX2700-V1.0.0.22.zip	EX2700	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	80/tcp   open  http;3333/tcp open  dec-notes;
4055	WNDR3700-V1.0.7.98NA.zip	WNDR3700v1	1.0.7.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
2473	WNDR3700v2 Firmware Version 1.0.0.10 - BETA.zip	WNDR3700v2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
3348	WNDRMACv2-V1.0.0.20.zip	WNDRMACv2	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
2729	WNR2500_V1.0.0.18NA.zip	WNR2500	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
4977	WNDAP350_-Firmware-Version-V2.1.7.zip	WNDAP350	2.1.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
6440	JNR3300-V1.0.0.24PR.img	JNR3300	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet;53/tcp open  domain;80/tcp open  http;
16169	WN3050RP-V1.0.0.24.img	WN3050RPv1	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	23/tcp   open  telnet;3333/tcp open  dec-notes;
19357	DSL-2740B_fw_reve_516b45_ALL_multi_20100115.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
109508	DAP-2553_REVA_FIRMWARE_v1.31RC071.zip	DAP-2553	1.31RC071	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
8906	DAP-2310_FIRMWARE_1.16RC028.ZIP	DAP-2310	1.16RC028	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
108853	WND930_V2.0.3_firmware.tar	WND930	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
13790	TEW-712BRv1_(FW1.00B12).zip	TEW-712BR	FW1.00B12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old;80/tcp open  http;
106235	DAP-1620_fw_revA_1-01b05_eu_multi_20151110.zip	dap-1620	1.01b05	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	old;80/tcp open  http;
19429	DIR-645_fw_revA1_1-04b11_all_en_20130808.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	old;80/tcp closed http;
107969	R6200-V1.0.1.56_1.0.43.zip	R6200	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp closed http;
109547	Archer C5400(US)_V1_170731.zip	Archer C5400		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
720	WNDAP360_V2.0.7_firmware.tar	WNDAP360	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
16200	WNDR3400v2-V1.0.0.38_1.0.61.chk	WNDR3400v2	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16218	WNDR3700v2-V1.0.0.12.img	WNDR3700v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16241	WNDR3800-V1.0.0.48.img	WNDR3800	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
7436	WNDR4300-V1.0.1.64PRRU.img	WNDR4300v1	1.0.1.64	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http443/tcp  open  https3333/tcp open  dec-notes
16257	WNDR4500-V1.0.1.36_1.0.63.chk	WNDR4500v1	1.0.1.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108894	WNDR4500v2-V1.0.0.60_1.0.38.chk	WNDR4500v2	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16264	WNDR4500v2-V1.0.0.42_1.0.25.chk	WNDR4500v2	1.0.0.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
20057	DWS-3024_fw_revAll_incl-Firmware-fuer-Accesspoints_FW_3.0.0.17.zip	dws-3024	3.0	\N	18	\N	f	f	False	f	mips64eb	\N	\N
2932	EVA8000 Firmware Version 2.1.82 (North America).zip	EVA8000	2.1.82	\N	33	\N	f	f	False	f	\N	\N	\N
4807	EVA9150 Firmware Version 2.4.68 (NA).zip	EVA9150	2.4.68	\N	33	\N	f	f	False	f	mipsel	\N	\N
6246	W801_789876_02-23-01.bin	AirCard 801S (Sprint)	02.23.01	\N	33	\N	f	f	False	f	armel	\N	\N
106005	TEW-812DRUv1_(FW1.01B05).zip	TEW-812DRU	FW1.01B05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
13227	TEW-739APBOv1_(FW1.0.19).zip	TEW-739APBO_v13	FW1.0.19	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
13624	TEW-736REv1.0R_(FW1.1.1.0).zip	TEW-736RE	FW1.1.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http;
12978	FW_TV-IP110WN_V2(1.2.2.68).zip	TV-IP110WN_v2	1.2.2.68	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N	80/tcp open  http;
19811	GO-RT-AC750_fw_revA_1-01-b03_eu_multi_20141212.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
107811	D6100-V1.0.0.38_0.0.38.zip	D6100	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	53/tcp   open  domain;3333/tcp open  dec-notes;
13278	FW_TW100-BRV214_v1.0R(1.00.02).zip	TW100-BRV214	1.00.02	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	old infer failed
105876	FW_TI-G160i_v1(1.0.3.S0).zip	TI-G160i	1.0.3.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
16025	FW_TEW-651BR_v2.0R_v2.1R_v2.2R(2.02b01).zip	TEW-651BR_v2.3R	2.02b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old down
13435	FW_TEW-652BRP_v3.0R_v3.1R_v3.2R(3.00b13).zip	TEW-652BRP_v3.2	3.00b13	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	old;Stats: 0:00:11 elapsed; 0 hosts completed (1 up), 1 undergoing SYN Stealth Scan;SYN Stealth Scan Timing: About 69.06% done; ETC: 19:32 (0:00:05 remaining);Nmap scan report for 192.168.123.254;Host is up (0.00067s latency).;All 1000 scanned ports on 192.168.123.254 are closed (611) or filtered (389);
106045	FW_TEW-734APO_v1(1.1.1).zip	TEW-734APO	1.1.1	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100')]	f	mipseb	\N	old down
109122	DWM-311_FIRMWARE_v4.1.2.2_38639N.zip	DWM-311	4.1.2.2_38639N	\N	18	\N	f	f	[('eth0', '192.168.15.1'), ('eth1', '192.168.16.1')]	f	mipseb	\N	old infer failed
3564	WN2000RPTv2 Firmware Version 1.1.0.12.zip	WN2000RPTv2	1.1.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N	old down
16259	WNDR4500-V1.0.1.40_1.0.68.chk	WNDR4500v1	1.0.1.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
109555	TL-R470T(UN)_v6_6.0.4 Build 20200313.zip	TL-R470T+	v6	\N	51	\N	f	f	[('br-lan', '192.168.0.1')]	f	mipsel	\N	53/tcp open  domain
109598	TD-W8968(UN_V3_140821.zip	TD-W8968		\N	51	\N	f	f	False	f	mipseb	\N	\N
14474	TD-W8968_V1_130217.zip	TD-W8968		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
14367	TD-W8970_V1_130828.zip	TD-W8970		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp
109610	TD-W8980_V1_140919.zip	TD-W8980		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp
109614	Archer_D5_V2_150731.zip	Archer D5	v2	\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109557	TL-ER5120(UN)_v4_4.0.2 Build 20200313.zip	TL-ER5120	v4	\N	51	\N	f	f	False	f	mips64eb	\N	\N
109563	TL-ER5120(UN)_v3_3.0.4 Build 20200313.zip	TL-ER5120		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109564	TL-ER5120(UN)_v3_20180830.zip	TL-ER5120		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109586	TD-W8960N_V6_151019.zip	TD-W8960N	v6	\N	51	\N	f	f	False	f	mipseb	\N	\N
109587	TD-W8960N_V6_150522.zip	TD-W8960N	v6	\N	51	\N	f	f	False	f	mipseb	\N	\N
109588	TD-W8960N_V6_150228.zip	TD-W8960N	v6	\N	51	\N	f	f	False	f	mipseb	\N	\N
109589	TD-W8968_V4_150504.zip	TD-W8968	v4	\N	51	\N	f	f	False	f	mipseb	\N	\N
109590	TD-W8970_V3_150427.zip	TD-W8970	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
14453	TD-W8960N_V1_V3_111108.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14449	20117418513917.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14450	201082714561118.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
107806	D6000_V1.0.0.41_1.0.1_FW.zip	D6000	1.0.0.41	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
14369	TD-W8970_V1_130415.zip	TD-W8970		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp
109556	TL-R470T_v6_20180731.zip	TL-R470T+	v6	\N	51	\N	f	f	[('br-lan', '192.168.0.1')]	f	mipsel	\N	53/tcp   open     domain1723/tcp filtered pptp
14506	TD-W8980_V1_140619_Beta.zip	TD-W8980		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp
109596	TD-W8968_V3_150512.zip	TD-W8968		\N	51	\N	f	f	False	f	mipseb	\N	\N
109597	TD-W8968_V3_150205.zip	TD-W8968		\N	51	\N	f	f	False	f	mipseb	\N	\N
14457	TD-W8960N_V4_140228.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14455	TD-W8960N_V4_120912.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14458	TD-W8960N_V4_120609.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
109599	TD-W8960N_V5_141107.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14459	TD-W8960N_V5_140815.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14451	TD-W8960N_V5_140804.zip	TD-W8960N		\N	51	\N	f	f	False	f	mipseb	\N	\N
109549	Archer_C5400(US)_V1_160601.zip	Archer C5400		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
20573	DWR-921_fw_revB1_2-01-b03_eu_en_20141016.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	down
107800	D3600_FW_V1.0.0.49_1.0.1.zip	D3600	1.0.0.49	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
109616	Archer_D7_V1_150514.zip	Archer D7		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
3473	R6300v2_V1.0.2.72_1.0.46.zip	R6300v2	1.0.2.72	\N	33	\N	f	f	False	f	armel	\N	\N
107995	R6700-V1.0.0.24_10.0.18.zip	R6700	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N	\N
4342	R7000-V1.0.3.60_1.1.27.zip	R7000	1.0.3.60	\N	33	\N	f	f	False	f	armel	\N	\N
4336	R7000-V1.0.0.96_1.0.15.zip	R7000	1.0.0.96	\N	33	\N	f	f	False	f	armel	\N	\N
108009	R7300-V1.0.0.44_1.0.12.zip	R7300DST	1.0.0.44	\N	33	\N	f	f	False	f	armel	\N	\N
108025	R7900-V1.0.1.4_10.0.12.zip	R7900	1.0.1.4	\N	33	\N	f	f	False	f	armel	\N	\N
13179	FW_TEW-733GR_v1(1.01B01).zip	TEW-733GR	1.01B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N	down
105961	OpenWrtFW_TEW-823DRU_v1(bb1_23_2-r45810).zip	TEW-823DRU	bb1_23_2-r45810	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet;53/tcp open  domain;
105797	FW_TPE-1620WS_v2(1.00.010).zip	TPE-1620WS_v2	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105837	FW_TI-RP262i_v1(1.0.2.S0).zip	TI-RP262i	1.0.2.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
13488	TEW-820APv1(FW1.00B16).zip	TEW-820AP	FW1.00B16	\N	52	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N	old down
20571	DWR-921_fw_revB1_2-00b05_all_en_140102.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;23/tcp    open  telnet;53/tcp    open  domain;80/tcp    open  http;49152/tcp open  unknown;
4423	WN604 Firmware Version 2.3.1.zip	WN604	2.3.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	old;23/tcp open  telnet;53/tcp open  domain;
105881	FW_TI-G102i_v1(1.0.5.S0).zip	TI-G102i_v1.0R	1.0.5.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N	old infer failed
20556	dcs5010l_fw_revA1_1-05-8_all_multi_20150212.zip	dcs-5010l	1.05	\N	18	\N	f	f	[('br0', '10.255.255.1'), ('br0', '10.255.255.1')]	f	mipsel	\N	old down
109619	Archer_D9_V1_150514.zip	Archer D9		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109620	Archer_D9_V1_150313.zip	Archer D9		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109623	Archer_C5_V2_160201_US.zip	Archer C5	v2	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
108011	R7500v2-V1.0.3.4.zip	R7500v2	1.0.3.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109625	Archer_C5_V1.20_150428.zip	Archer C5		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
109627	Archer_C5_V1_141126.zip	Archer C5		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
14766	TL-WA7510N_V1_130427.zip	TL-WA7510N		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
109618	Archer_D9_v1_150826.zip	Archer D9		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109624	Archer_C5_V2_150908_US.zip	Archer C5	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109689	AC50(UN)_V1_170706.zip	AC50		\N	51	\N	f	f	[('eth0', '192.168.1.1'), ('eth0', '192.168.0.253')]	f	mipseb	\N	down
109691	AC50(UN)_V1_161027.zip	AC50		\N	51	\N	f	f	[('eth0', '192.168.1.1'), ('eth0', '192.168.0.253')]	f	mipseb	\N	down
108015	R7500v2-V1.0.0.24.zip	R7500v2	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109631	TL-WA7210N_V2_140730.zip	TL-WA7210N		\N	51	\N	f	f	False	f	mipseb	\N	\N
15306	TL-WA7210N_V2_131118.zip	TL-WA7210N		\N	51	\N	f	f	False	f	mipseb	\N	\N
15309	TL-WA7210N_V2_130320.zip	TL-WA7210N		\N	51	\N	f	f	False	f	mipseb	\N	\N
109632	TL-WPA7510(US)_V2_180330.zip	TL-WA7510N	v2	\N	51	\N	f	f	False	f	mipsel	\N	\N
109633	WBS510(UN)_v2.0_20180202.zip	WBS510	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
109635	CPE510(UN)_V3.2_2.2.1 Build 200612.zip	CPE510	v3.20	\N	51	\N	f	f	False	f	mipseb	\N	\N
108020	R7800-V1.0.1.28.zip	R7800	1.0.1.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
14767	TL-WA7510N_V1_121108.zip	TL-WA7510N		\N	51	\N	f	f	False	f	mipseb	\N	\N
109639	Pharos_v2.1.0_170609.zip	WBS510		\N	51	\N	f	f	False	f	mipseb	\N	\N
109640	TP_PharOS_1.3.3_160705.zip	WBS510		\N	51	\N	f	f	False	f	mipseb	\N	\N
109642	TP_PharOS_1.3.3_151215.zip	CPE210		\N	51	\N	f	f	False	f	mipseb	\N	\N
109643	CPE610(UN)_V1.0_2.2.1 Build 200516.zip	CPE610		\N	51	\N	f	f	False	f	mipseb	\N	\N
109644	CPE610(UN)_v1.0_20190228.zip	CPE610		\N	51	\N	f	f	False	f	mipseb	\N	\N
109645	CPE610(UN)_v1.0_20180327.zip	CPE610		\N	51	\N	f	f	False	f	mipseb	\N	\N
109646	CPE510(US)_V2_180117.zip	CPE510		\N	51	\N	f	f	False	f	mipseb	\N	\N
109648	CPE510(UN)_V3.0_2.2.2 Build 200516.zip	CPE510		\N	51	\N	f	f	False	f	mipseb	\N	\N
109649	CPE510_v3.0_20190125.zip	CPE510		\N	51	\N	f	f	False	f	mipseb	\N	\N
109658	CPE210(US)_V2.0_2.2.2 Build 200612.zip	CPE210		\N	51	\N	f	f	False	f	mipseb	\N	\N
109659	CPE210(US)_V2.0_20190620.zip	CPE210		\N	51	\N	f	f	False	f	mipseb	\N	\N
109698	TL-WA801N(US)_V6_200116.zip	TL-WA801N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	
109690	CAP300_V1_170601.zip	CAP300		\N	51	\N	f	f	False	f	mipseb	\N	\N
109701	TL-WA901N(US)_V6_191207.zip	TL-WA901N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109693	CAP1750_V1_170601.zip	CAP1750		\N	51	\N	f	f	False	f	mipseb	\N	\N
109695	AC500(UN)_v1_171212.zip	AC500		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109696	AC500(UN)_V1_170706.zip	AC500		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109697	AC500(UN)_V1_161108_1479953527250u.zip	AC500		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109700	TL-WA901N(US)_200703.zip	TL-WA901N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109626	Archer_C5_v1.2_150317.zip	Archer C5		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
109782	EAP120(US)_V1_171109.zip	EAP120		\N	51	\N	f	f	False	f	mipseb	\N	\N
109784	EAP120(US)_V1_161122.zip	EAP120		\N	51	\N	f	f	False	f	mipseb	\N	\N
109785	EAP220(US)_V1_171109.zip	EAP220		\N	51	\N	f	f	False	f	mipseb	\N	\N
109789	EAP110(US)_V4_3.20.0 Build 20200525.zip	EAP110	v4	\N	51	\N	f	f	False	f	mipseb	\N	\N
109791	EAP245(US)_V3_5.0.0 Build 20200918.zip	EAP245	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
109617	Archer_D7_V1_150324.zip	Archer D7		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp  open  ftp22/tcp  open  ssh23/tcp  open  telnet80/tcp  open  http139/tcp open  netbios-ssn445/tcp open  microsoft-ds
2486	WG103 Firmware version v2.0.25.zip	WG103	2.0.25	\N	33	\N	f	f	False	f	mipseb	\N	\N
2656	DG632 Firmware Version 3.6.0C_38 (from 3.3.x or 3.4.x to this version).zip	DG632	3.6.0	\N	33	\N	f	f	False	f	mipsel	\N	\N
1756	dg834v4_dg834gv4_5_01_09.img	DG834v4	5.01.09	\N	33	\N	f	f	False	f	\N	\N	\N
2550	R8000-V1.0.0.100_1.0.44.zip	R8000	1.0.0.100	\N	33	\N	f	f	False	f	armel	\N	\N
1626	WNR1000v3-V1.0.2.28_52.0.60.chk	WNR1000v3	1.0.2.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
2846	DG834Gv4NA_V5.03.16.zip	DG834Gv4	5.03.16	\N	33	\N	f	f	False	f	\N	\N	\N
108034	R8300-V1.0.2.80_1.0.71.zip	R8300	1.0.2.80	\N	33	\N	f	f	False	f	armel	\N	\N
108357	EX3700-V1.0.0.26_1.0.19.chk	EX3700	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N	\N
3781	DG834GV Firmware Version 1.02.37.zip	DG834GVv1	1.02.37	\N	33	\N	f	f	False	f	mipsel	\N	\N
4229	DG834Nv1 Firmware Version 1.02.15 (For users OUTSIDE Germany and Austria only).zip	DG834Nv1	1.02.15	\N	33	\N	f	f	False	f	\N	\N	\N
108042	R8500-V1.0.2.80_1.0.71.zip	R8500	1.0.2.80	\N	33	\N	f	f	False	f	armel	\N	\N
2671	DG834(v1_v2) and DG834G(v1_v2) Firmware Version 3.01.29.zip	DG834v1	3.01.29	\N	33	\N	f	f	False	f	mipsel	\N	\N
108369	EX6200-V1.0.0.52_1.1.90.chk	EX6200	1.0.0.52	\N	33	\N	f	f	False	f	armel	\N	\N
4932	DGN1000_1.1.00.55_NA.zip	DGN1000	1.1.00.55	\N	33	\N	f	f	False	f	\N	\N	\N
787	WNR3500v2-V1.0.2.14_24.0.74.chk	WNR3500v2	1.0.2.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
4119	WGR614v8 Firmware Version 1.2.10_21.0.52 (North America).zip	WGR614v8	1.2.10	\N	33	\N	f	f	False	f	mipsel	\N	\N
16345	WNR3500Lv2-V1.2.0.28_40.0.72.chk	WNR3500Lv2	1.2.0.28	\N	33	\N	f	f	False	f	mipsel	\N	\N
108453	FVS318Gv2_v4.3.3-3.img	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N	\N
5005	DGND3300v2 Firmware Version 2.1.00.41 (North America).zip	DGND3300v2	2.1.00.41	\N	33	\N	f	f	False	f	\N	\N	\N
2198	DM111PSPv2-V1.1.00.06_NA.zip	DM111PSPv2	1.1.00.06	\N	33	\N	f	f	False	f	\N	\N	\N
4820	DM111Pv2 Firmware Version 2.00.26 (North America).zip	DM111Pv2	2.00.26	\N	33	\N	f	f	False	f	\N	\N	\N
108582	JNR1010v2 V1.1.0.28.img	JNR1010v2	1.1.0.28	\N	33	\N	f	f	False	f	\N	\N	\N
7550	JNR1010v2_V1.1.0.24_1.0.1.img	JNR1010v2	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N	\N
7137	JNR3000_V1.1.0.22_1.0.1.img	JNR3000	1.1.0.22	\N	33	\N	f	f	False	f	\N	\N	\N
3374	WGT624v4 - Firmware Version 2.0.6_2.0.6 (North America).zip	WGT624v4	2.0.6	\N	33	\N	f	f	False	f	mipseb	\N	\N
5932	wnr834bv1_1_0_4_2_ww.img	WNR834Bv1	1.0.4.2	\N	33	\N	f	f	False	f	mipsel	\N	\N
108591	JR6150_R6050-V1.0.0.36_1.0.1.img	JR6150	1.0.0.36	\N	33	\N	f	f	False	f	\N	\N	\N
4663	WNDR3300 Firmware Version 1.0.14 (North America).zip	WNDR3300v1	1.0.14	\N	33	\N	f	f	False	f	mipsel	\N	\N
16052	JWNR2000v2_WNR1500-V1.0.0.10_1.0.4.img	JWNR2000v2	1.0.0.10	\N	33	\N	f	f	False	f	mipseb	\N	\N
16277	WNDRMACv2-V1.0.0.20.img	WNDRMAC	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;631/tcp  open  ipp;3333/tcp open  dec-notes;
4955	wnce4004-V1.0.0.32.zip	WNCE4004	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.240'), ('br0', '192.168.1.240')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
4942	DGN2200 Firmware Version 1.0.0.20 - Initial Release (NA).zip	DGN2200v1	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	no results
7388	JNDR3000V1.0.0.10_1.0.8.chk	JNDR3000	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4973	XWN5001_V0.4.0.7.zip	XWN5001	0.4.0.7	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
848	DGND3700-V1.0.0.17_1.0.17.chk	DGND3700v1	1.0.0.17	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
4857	DGN2200M Firmware Version 1.0.0.24 (North America).zip	DGN2200M	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
107847	DGN1000v3-V1.0.0.20_0.0.20.zip	DGN1000Bv3	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
2542	WNAP320 Firmware Version 2.1.1.zip	WNAP320	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
2224	WND930-Firmware_V2.0.3.zip	WND930	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
4975	WNDAP350_-Firmware-Version-2.1.2.zip	WNDAP350	2.1.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
3640	WNDAP360JP_-Firmware-Version-V2.1.8.zip	WNDAP360	2.1.8	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
2119	WNDAP360 Firmware Version 2.0.0.zip	WNDAP360	2.0.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
4421	WN604 Firmware Version 3.0.0.zip	WN604	3.0.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
4419	WN604 Firmware Version 2.3.2.zip	WN604	2.3.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	down
5841	WNR1000v2-V1.0.1.1.img	WNR1000v2	1.0.1.1	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108897	wnr2000v3-V1.1.2.12.img	WNR2000v3	1.1.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16317	wnr2000v3-V1.1.1.58.img	WNR2000v3	1.1.1.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16325	WNR2000v4-V1.0.0.40.img	WNR2000v4	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
6911	wnr2200-100-V1.0.2.12.img	WNR2200	1.0.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
108376	EX7300-V1.0.0.44.img	EX7300	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http3333/tcp open  dec-notes
108587	JNR3300-V1.0.0.32PR.img	JNR3300	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp open  domain80/tcp open  http
1800	WPN824V3-V1.0.8_1.0.6.img	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http3333/tcp open  dec-notes5555/tcp open  freeciv
3306	WNDR3400v2-V1.0.0.16_1.0.34.zip	WNDR3400v2	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108059	WNDR3400v3-V1.0.1.2_1.0.51.zip	WNDR3400v3	1.0.1.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
2470	WNDR3700v2 WNDR37AVv2 Firmware Version 1.0.0.12.zip	WNDR3700v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
108048	R9000_V1.0.0.68.zip	R9000	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
16076	R6200-V1.0.1.48_1.0.37.chk	R6200v1	1.0.1.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16094	R6300-V1.0.2.38_1.0.33.chk	R6300v1	1.0.2.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16078	R6200v2-V1.0.1.16_1.0.15.chk	R6200v2	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N	\N
109843	TL-ER6020(UN)_v2_2.0.3 Build 20200623.zip	TL-ER6020	v2	\N	51	\N	f	f	[('br-lan', '192.168.0.1')]	f	armel	\N	down
109860	TL-R600VPN_V2_140212.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
6799	R6300v2_V1.0.0.8_1.0.4PRRU.chk	R6300v2	1.0.0.08	\N	33	\N	f	f	False	f	armel	\N	\N
109861	TL-R600VPN(UN)_V3_160803.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
7598	R8000-V1.0.0.90_1.0.39.chk	R8000	1.0.0.90	\N	33	\N	f	f	False	f	armel	\N	\N
108725	DG834(v1 & v2), DG834G (v1 & v2) Firmware Version 2.10.22.zip	DG834Gv1	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N	\N
105773	fw_tpe-5048ws_v1(v2.10.010).zip	TPE-5048WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105781	FW_TPE-3018LS_v1(1.01.28).zip	TPE-3018LS	1.01.28	\N	52	\N	f	f	[('eth0', '192.168.1.254')]	f	mipseb	\N	no results
105782	FW_TPE-3012LS_v1(1.01.28).zip	TPE-3012LS	1.01.28	\N	52	\N	f	f	[('eth0', '192.168.1.254')]	f	mipseb	\N	no results
105785	FW_TPE-2840WS_v2(1.00.010).zip	TPE-2840WS_v2	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
13141	TEW-732BRv1.0R_(FW1.01B10).zip	TEW-732BR	FW1.01B10	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	no results
105795	fw_tpe-204us_v1(v2.10.010).zip	TPE-204US	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105796	TRENDNET-2-10-024-FW.zip	TPE-1620WSF	FW	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
105812	FW_TPE-082WS_v1(1.00.010).zip	TPE-082WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	no results
14716	TL-R600VPN_V2_140530.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
108679	R6100-V1.2.0.4.img	R6100	1.2.0.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
109841	TL-R600VPN(UN)_v4_20190227.zip	TL-R600VPN	v4	\N	51	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.0.1')]	f	mipseb	\N	down
109842	TL-R600VPN(UN)_v4_20180530.zip	TL-R600VPN	v4	\N	51	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.0.1')]	f	mipseb	\N	down
109792	EAP245(US)_V3_2.21.0 Build 20200522.zip	EAP245	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
109793	EAP245(US)_V3_2.20.0 Build 20200423.zip	EAP245	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
109795	EAP110-Outdoor(US)_V3_3.20.0 Build 20200511.zip	EAP110-Outdoor	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
109797	EAP115(US)_V4_5.0.0 Build 20200914.zip	EAP115	v4	\N	51	\N	f	f	False	f	mipseb	\N	\N
109798	EAP115(US)_V4_3.20.0 Build 20200525.zip	EAP115	v4	\N	51	\N	f	f	False	f	mipseb	\N	\N
109799	EAP225-Outdoor(US)_V1_5.0.0 Build 20200918.zip	EAP225-Outdoor		\N	51	\N	f	f	False	f	mipseb	\N	\N
109801	EAP225-Outdoor(US)_V1_1.20.0 Build 20200422.zip	EAP225-Outdoor		\N	51	\N	f	f	False	f	mipseb	\N	\N
109807	EAP225-Wall(US)_V2_5.0.0 Build 20200918.zip	EAP225-Wall		\N	51	\N	f	f	False	f	mipseb	\N	\N
109808	EAP225-Wall(US)_V2_1.20.0 Build 20200422.zip	EAP225-Wall		\N	51	\N	f	f	False	f	mipseb	\N	\N
109810	EAP235-Wall(US)_V1_1.0.2 Build 20200917.zip	EAP235-Wall		\N	51	\N	f	f	False	f	mipsel	\N	\N
109811	EAP235-Wall(US)_V1_1.0.1 Build 20200618.zip	EAP235-Wall		\N	51	\N	f	f	False	f	mipsel	\N	\N
109812	EAP245(US)_V1_1.4.0 Build 180323.zip	EAP245		\N	51	\N	f	f	False	f	mipseb	\N	\N
109814	EAP245(EU&US)_v1_170828.zip	EAP245		\N	51	\N	f	f	False	f	mipseb	\N	\N
109816	EAP110-Outdoor(EU&US)_1_170914.zip	EAP110-Outdoor		\N	51	\N	f	f	False	f	mipseb	\N	\N
109817	EAP110-Outdoor(US)_V1_161109_1479956363708n.zip	EAP110-Outdoor		\N	51	\N	f	f	False	f	mipseb	\N	\N
109819	EAP115(EU&US)_v2_171011.zip	EAP115		\N	51	\N	f	f	False	f	mipseb	\N	\N
109820	EAP115(UN)_V2_161108.zip	EAP115		\N	51	\N	f	f	False	f	mipseb	\N	\N
109821	EAP115(EU&US)_v1_171011.zip	EAP115		\N	51	\N	f	f	False	f	mipseb	\N	\N
109822	EAP115(US)_V1_160518.zip	EAP115		\N	51	\N	f	f	False	f	mipseb	\N	\N
109823	EAP110(US)_(V1&v2)_1.3.0 Build 20180418.zip	EAP110		\N	51	\N	f	f	False	f	mipseb	\N	\N
109824	EAP110(EU)_1.3.0 Build 20180418.zip	EAP110		\N	51	\N	f	f	False	f	mipseb	\N	\N
109825	EAP110(US)_v1_170915.zip	EAP110		\N	51	\N	f	f	False	f	mipseb	\N	\N
109826	EAP110(US)_v2_170915.zip	EAP110		\N	51	\N	f	f	False	f	mipseb	\N	\N
109827	EAP110(US)_V2_161109_1482375095991i.zip	EAP110		\N	51	\N	f	f	False	f	mipseb	\N	\N
109828	EAP225(US)_V3_5.0.0 Build 20200918.zip	EAP225	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
109831	EAP265HD(US)_V1.1.0 Build 20200619.zip	EAP265 HD		\N	51	\N	f	f	False	f	mipseb	\N	\N
109832	EAP265HD(US)_V1_1.0.0 Build 20200424.zip	EAP265 HD		\N	51	\N	f	f	False	f	mipseb	\N	\N
109833	EAP330(EU&US)_(V1&V2)_1.4.0 Build 20180925.zip	EAP330	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109834	EAP330(US)_V2_170930.zip	EAP330	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109835	EAP330(EU)(US)_V2_170711.zip	EAP330	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109837	EAP320(US)_(V1&V2)_1.4.0 Build 20180925.zip	EAP320	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109838	EAP320(US)_v2_170930.zip	EAP320	v2	\N	51	\N	f	f	False	f	armel	\N	\N
109839	EAP320(US)_V1&V2_170725.zip	EAP320	v2	\N	51	\N	f	f	False	f	armel	\N	\N
14715	TL-R600VPN_V1_130831.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
6717	R7500-V1.0.0.68.img	R7500	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
109847	EAP225(US)_(V1&V2)_1.4.0 Build 180323.zip	EAP225		\N	51	\N	f	f	False	f	mipseb	\N	\N
109849	EAP225(EU&US)_V1_170828.zip	EAP225		\N	51	\N	f	f	False	f	mipseb	\N	\N
109850	EAP225(EU&US)_V2_170828.zip	EAP225		\N	51	\N	f	f	False	f	mipseb	\N	\N
109853	TL-ER6120(UN)_V3_20180724.zip	TL-ER6120	v3	\N	51	\N	f	f	False	f	mips64eb	\N	\N
109854	EAP320(US)_v1_170930.zip	EAP320		\N	51	\N	f	f	False	f	armel	\N	\N
14714	TL-R600VPN_V1_120326.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
108683	R6100-V1.0.0.60.img	R6100	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
16067	R6100-V1.0.0.28.img	R6100	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
107888	EX3700-V1.0.0.24_1.0.18.zip	EX3700	1.0.0.24	\N	33	\N	f	f	False	f	mipsel	\N	\N
105964	OpenWrtFW_TEW-823DRU_v1(bb1_23_2-r76177).zip	TEW-823DRU	bb1_23_2-r76177	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.1.1')]	f	mipseb	\N	22/tcp  open  ssh;23/tcp  open  telnet;53/tcp  open  domain;80/tcp  open  http;139/tcp open  netbios-ssn;443/tcp open  https;445/tcp open  microsoft-ds;
13789	TEW-712BRv1_(FW1.00B10).zip	TEW-712BR	FW1.00B10	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	down
13696	FW_TEW-718BRM_BRM5_v1.0R(1.00.09).zip	TEW-718BRM	1.00.09	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N	no results
106069	FW_TEW-638APB_v3(3.1.5.1).zip	TEW-638APB_v31	3.1.5.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp    open     http;500/tcp   filtered isakmp;1030/tcp  filtered iad1;1034/tcp  filtered zincite-a;1086/tcp  filtered cplscrambler-lg;1131/tcp  filtered caspssl;1145/tcp  filtered x9-icue;1217/tcp  filtered hpss-ndapi;2047/tcp  filtered dls;2106/tcp  filtered ekshell;2382/tcp  filtered ms-olap3;2998/tcp  filtered iss-realsec;3261/tcp  filtered winshadow;3945/tcp  filtered emcads;4848/tcp  filtered appserv-http;8081/tcp  filtered blackice-icecap;8290/tcp  filtered unknown;8701/tcp  filtered unknown;8800/tcp  filtered sunwebadmin;9010/tcp  filtered sdr;24444/tcp filtered unknown;52848/tcp filtered unknown;55056/tcp filtered unknown;
106034	FW_TEW-738APBO_v1(1.1.11).zip	TEW-738APBO_v13	1.1.11	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
12912	FW_TEW-632BRP(1.00B51).zip	TEW-632BRP_A1.1	1.00B51	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http;2601/tcp open  zebra;2602/tcp open  ripd;
19499	DAP-1353_fw_Rev-B-firmware-v3.00-r0005.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
18982	DAP-1520_fw_revA1_1-02_all_multi_20140421.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N	down
20019	DAP1650_fw_revA1_1-00_all_en_131211.zip	dap-1650		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.176.2')]	f	mipseb	\N	80/tcp   open  http;443/tcp  open  https;8181/tcp open  intermapper;
19087	DAP-2360_fw_revA1_1_12_rc_073_eu_en_20150413.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109079	DAP-1665_REVB_FIRMWARE_2.00B19.zip	DAP-1665	2.00B19	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.176.3')]	f	mipsel	\N	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
18632	DAP-2690_fw_revB1_3-11-rc078_eu_en_20150121.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
19545	DAP-3410_fw_revA_1-10-EU-rc17_all_en_20140825.zip	dap-3410	1.10rc17	\N	18	\N	f	f	[('bre0', '192.168.0.50')]	f	mipseb	\N	23/tcp open  telnet;80/tcp open  http;
20327	DIR-518L_fw_revA1_1-00_all_multi_20140331.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
18233	DIR-816L_fw_revB1_2-00B01_all_multi_20140303.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
19969	DIR-818L_fw_revA1_1-00_all_multi_20140219.zip	dir-818l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;8181/tcp  open  intermapper;49152/tcp open  unknown;
20879	DIR-825_fw_revb_201EUb15_ALL_multi_20090612.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http;139/tcp  open  netbios-ssn;443/tcp  open  https;445/tcp  open  microsoft-ds;8181/tcp open  intermapper;
106919	DIR-859_fw_revA_1-04_eu_multi_20151209.zip	dir-859	1.04b02	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	53/tcp    open  domain;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
19359	DSL-2740B_fw_reve_517_ALL_multi_20100830.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
20676	DSL-2741B_fw_reve_517_ALL_multi_20100830.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp;22/tcp   open  ssh;23/tcp   open  telnet;80/tcp   open  http;1028/tcp open  unknown;
19806	GO-RT-AC750_fw_revA_1-01_eu_multi_20141212.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
107769	LG2200D-V1.0.0.57_1.0.40.zip	LG2200D	1.0.0.57	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	23/tcp    open  telnet;80/tcp    open  http;443/tcp   open  https;49152/tcp open  unknown;
107797	D3600-V1.0.0.47_1.0.1_FW.zip	D3600	1.0.0.47	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4673	DG834PN Firmware Version 1.03.25.zip	DG834PN	1.03.25	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http;49152/tcp open  unknown;
2561	XAVN2001v2-V0.3.0.9.zip	XAVN2001v2	0.3.0.9	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;
2253	EX2700-V1.0.0.16.zip	EX2700	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	80/tcp   open  http;3333/tcp open  dec-notes;
13382	TEW-647GAv2(1.0.1.22).zip	TEW-647GA_v2	1.0.1.22	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N	old infer failed
106497	DCS-800L_fw_revA1_1-03-09_eu_multi_20150515.zip	dcs-800l	1.03	\N	18	\N	f	f	[('br0', '10.255.255.1'), ('br0', '10.255.255.1')]	f	mipsel	\N	old down
2254	EX2700-V1.0.0.14.zip	EX2700	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	80/tcp   open  http3333/tcp open  dec-notes
19324	DWR-512_fw_reva_104b03_ALL_en_20120607.zip	dwr-512		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old timeout
18679	DIR-508L_fw_revA_1-05_eu_multi_20150308.zip	dir-508l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N	old;80/tcp open  http;
107905	EX6150v2-V1.0.1.42.zip	EX6150v2	1.0.1.42	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	armel	\N	down
2471	WNDR3700v2 Firmware Version 1.0.0.6.zip	WNDR3700v2	1.0.0.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
4615	WNDR3800-V1.0.0.38.zip	WNDR3800	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
107893	EX6150v2_EX6100v2-V1.0.1.46.zip	EX6100v2	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	armel	\N	down
4152	WNDR3700v3-V1.0.0.36_1.0.30.zip	WNDR3700v3	1.0.0.36	\N	33	\N	f	f	False	f	mipsel	\N	\N
4612	WNDR3800-V1.0.0.34.zip	WNDR3800	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
2311	WNR3500v2 Firmware Version 1.2.2.28 (North America).zip	WNR3500v2	1.2.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old timeout
4611	WNDR3800-V1.0.0.40.zip	WNDR3800	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
2721	WNDR4500-V1.0.1.40_1.0.68.zip	WNDR4500	1.0.1.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
3815	WN2000RPT-V1.0.0.2NA.zip	WN2000RPTv1	1.0.0.2	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp   open  http;3333/tcp open  dec-notes;
4594	WPN824EXT Firmware Version 1.1.1_1.1.9 (North America).zip	WPN824EXT	1.1.1	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N	80/tcp open  http;
3313	R6300-V1.0.2.38_1.0.33.zip	R6300v1	1.0.2.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108056	WNDR3400v3-V1.0.1.4_1.0.52.zip	WNDR3400v3	1.0.1.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16222	WNDR3700v2_WNDR37AVv2-V1.0.1.14.zip	WNDR3700v2	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp    open     telnet;53/tcp    open     domain;80/tcp    open     http;119/tcp   filtered nntp;700/tcp   filtered epp;2021/tcp  filtered servexec;3030/tcp  filtered arepa-cas;3301/tcp  filtered unknown;3333/tcp  open     dec-notes;4006/tcp  filtered pxc-spvr;5000/tcp  filtered upnp;6502/tcp  filtered netop-rc;6839/tcp  filtered unknown;8008/tcp  filtered http;8222/tcp  filtered unknown;49154/tcp filtered unknown;
4610	WNDR3800-V1.0.0.44.zip	WNDR3800	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;3333/tcp open  dec-notes;
108073	WNDR4500v3-V1.0.0.32.zip	WNDR4500v3	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	33/tcp    filtered dsp;53/tcp    open     domain;389/tcp   filtered ldap;444/tcp   filtered snpp;888/tcp   filtered accessbuilder;1036/tcp  filtered nsstp;1213/tcp  filtered mpc-lifenet;1580/tcp  filtered tn-tl-r1;2008/tcp  filtered conf;2103/tcp  filtered zephyr-clt;3300/tcp  filtered ceph;3333/tcp  open     dec-notes;5190/tcp  filtered aol;5902/tcp  filtered vnc-2;5998/tcp  filtered ncd-diag;6901/tcp  filtered jetstream;6969/tcp  filtered acmsoda;9002/tcp  filtered dynamid;9207/tcp  filtered wap-vcal-s;16016/tcp filtered unknown;18040/tcp filtered unknown;18101/tcp filtered unknown;35500/tcp filtered unknown;49159/tcp filtered unknown;49161/tcp filtered unknown;65389/tcp filtered unknown;
108068	WNDR4300-V1.0.2.78.zip	WNDR4300	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp    open     domain;808/tcp   filtered ccproxy-http;1041/tcp  filtered danf-ak2;1138/tcp  filtered encrypted_admin;1310/tcp  filtered husky;3005/tcp  filtered deslogin;3333/tcp  open     dec-notes;3826/tcp  filtered wormux;6502/tcp  filtered netop-rc;7741/tcp  filtered scriptview;12174/tcp filtered unknown;
2608	WNR1000-2VCNAS Firmware Version 1.2.2.56.zip	WNR1000-2VCNAS	1.2.2.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4524	WNR2200 Firmware Version 1.0.1.62.zip	WNR2200	1.0.1.62	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4502	WPN824v3 Firmware Version 1.0.7 (North America).zip	WPN824v3	1.0.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;80/tcp   open  http;3333/tcp open  dec-notes;5555/tcp open  freeciv;
108291	WAC120_V2.0.7.zip	WAC120	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
108297	WND930_V2.0.4_firmware.zip	WND930	2.0.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh;80/tcp  open  http;443/tcp open  https;
108588	JNR3300-V1.0.0.30PR.img	JNR3300	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp open  domain;80/tcp open  http;
108830	WN3050RPv2-V1.0.2.20.img	WN3050RPv2	1.0.2.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes;
7435	WNDR4300-V1.0.1.56PRRU.img	WNDR4300v1	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;443/tcp  open  https;3333/tcp open  dec-notes;
8638	DAP-3662_REVA_FIRMWARE_1.00RC015.ZIP	DAP-3662	1.00RC015	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109494	DAP-2690_REVB_FIRMWARE_3.16.RC100_WW.ZIP	DAP-2690	3.16.RC100	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109506	DAP-2360_REVB_FIRMWARE_v2.10RC050.zip	DAP-2360	2.10RC050	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
109513	DAP-2310_REVB_FIRMWARE_2.06.RC029.ZIP	DAP-2310	2.06.RC029	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet;80/tcp  open  http;443/tcp open  https;
4416	WNR612 Initial Release Firmware Version 1.0.0.7 (North America).zip	WNR612	1.0.0.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	no results
4528	WN802Tv2 Firmware Version 3.1.1.zip	WN802Tv2	3.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.233')]	f	mipseb	\N	80/tcp  open  http;443/tcp open  https;
2903	WNDR3700v2WNDR37AVv2 Firmware Version 1.0.0.8.zip	WNDR37AVv2	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet;53/tcp   open  domain;80/tcp   open  http;3333/tcp open  dec-notes;
109862	TL-ER6120(UN)_v2_2.0.4 Build 20200313.zip	TL-ER6120		\N	51	\N	f	f	False	f	mips64eb	\N	\N
6835	WNTR2001-V1.0.0.6_1.0.1.img	WNTR2001	1.0.0.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	old;80/tcp open  http;
109863	TL-ER6120(UN)_v2_20180929.zip	TL-ER6120		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109923	OC300(UN)_v1_1.0.3_Build_20201119.zip	OC300		\N	51	\N	f	f	False	f	armel	\N	\N
109924	OC300(UN)_v1_1.0.1 Build 20201016.zip	OC300		\N	51	\N	f	f	False	f	armel	\N	\N
109925	OC300(UN)_v1_1.0.0 Build 20200806.zip	OC300		\N	51	\N	f	f	False	f	armel	\N	\N
109927	OC200(UN)_v1_1.2.4 Build 20201120.zip	OC200		\N	51	\N	f	f	False	f	armel	\N	\N
109929	OC200(UN)_v1_1.7.3 Build 20201119.zip	OC200		\N	51	\N	f	f	False	f	armel	\N	\N
109930	OC200(UN)_v1_1.7.1 Build 20201016.zip	OC200		\N	51	\N	f	f	False	f	armel	\N	\N
4059	WNDR3700 Initial Release Firmware - Version 1.0.4.31 (North America).zip	WNDR3700v1	1.0.4.31	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
14230	TL-WR941ND_V5_130709.zip	TL-WR941ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110168	TL-WR841ND_V8_140724.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
110169	TL-WR841ND_V9_150310.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
14008	TL-WR841ND_V8_130506.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110171	TL-WR841ND_V9_141013.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110177	TL-WR841N_V9_150104.zip	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110178	TL-WR841N_V11_151021_US.zip	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110180	TL-WR841N(US)_V12_160803_1476672521610f.zip	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
13906	TL-WDR3500_V1_130909.zip	TL-WDR3500		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
13907	TL-WDR3500_V1_130320.zip	TL-WDR3500		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110188	TL-WR802N(US)_V4_190212.zip	TL-WR802N	v4	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	
14109	TL-WR741ND_V4_130524.zip	TL-WR741ND		\N	51	\N	f	f	False	f	mipseb	\N	\N
14106	TL-WR741ND_V4_130325.zip	TL-WR741ND		\N	51	\N	f	f	False	f	mipseb	\N	\N
110184	TL-WR741ND_V4_130205.zip	TL-WR741ND		\N	51	\N	f	f	False	f	mipseb	\N	\N
110185	TL-WR741ND_V4_150119.zip	TL-WR741ND		\N	51	\N	f	f	False	f	mipseb	\N	\N
14110	TL-WR741ND_V4.20_140410.zip	TL-WR741ND		\N	51	\N	f	f	False	f	mipseb	\N	\N
110198	TL-WR710N_V1_151022_US.zip	TL-WR710N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	1900/tcp open  upnp
110199	TL-WR902AC(US)_V3_191209.zip	TL-WR902AC	v3	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	
110200	TL-WR902AC(US)_V3_171229.zip	TL-WR902AC	v3	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	
110196	TL-WR740N_V6_180328.zip	TL-WR740N	v6	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
15020	TL-WR743ND_V1_130109.zip	TL-WR743ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
14586	TL-WR1043ND_v1_130428.zip	TL-WR1043ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	1900/tcp open  upnp
110201	TL-WR902AC(US)_V3_170826.zip	TL-WR902AC	v3	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	
15022	TL-WR743ND_V2_120727.zip	TL-WR743ND	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
14174	TL-WR940N_v1_120201.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
14173	TL-WR940N_v1_111228.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
14172	20112159232014.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
14589	TL-WR1043ND_V1_130325.zip	TL-WR1043ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	1900/tcp open  upnp
14588	TL-WR1043ND_V2_140613.zip	TL-WR1043ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
14590	TL-WR1043ND_V2_130925.zip	TL-WR1043ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110166	TL-WR941ND_V5_150311.zip	TL-WR941ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
15018	TL-WR743ND_v1_110829.zip	TL-WR743ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
14750	201122315113715.zip	TL-WR740N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
110205	TL-WR740N_V5_180328.zip	TL-WR740N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110214	ArcherC900(US)_V1_161130.zip	Archer C900		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	mipseb	\N	down
14175	TL-WR940N_V2_140627.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
110207	TL-WR940N(US)_V4_160617_1476690524248q.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110209	TL-WR940N(US)_V5_200316.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110204	TL-WR740N_V4_150105.zip	TL-WR740N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14748	TL-WR740N_V4_140520.zip	TL-WR740N		\N	51	\N	f	f	False	f	mipseb	\N	\N
14756	TL-WR740N_V4_130529.zip	TL-WR740N		\N	51	\N	f	f	False	f	mipseb	\N	\N
110227	Archer C1200(US)_V3_200401.zip	Archer C1200	v3	\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110231	Archer_C2(US)_v1_160128.zip	Archer C2		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
110236	Archer_C50(US)_V2_160801_1472173209786e.zip	Archer C50		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp open  telnet
110237	Archer_C50(US)_V2_160612.zip	Archer C50		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp open  telnet
110238	Archer_C50(US)_V2_160113.zip	Archer C50		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp open  telnet
110215	Archer C50(US)_V5_200407.zip	Archer C50	v5	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	
110232	Archer A6(US)_V3_201117.zip	Archer A6	v3	\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	mipsel	\N	down
110226	Archer C1200(US)_V3_200831.zip	Archer C1200	v3	\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110254	Archer_C20_V1_150707.zip	Archer C20		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
110258	Archer_C7_V1_141204_US.zip	Archer C7		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110253	Archer A6(US)_V2_190923.zip	Archer A6		\N	51	\N	f	f	False	f	mipseb	\N	\N
110197	TL-WR740N_V6_150616.zip	TL-WR740N	v6	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110194	TL-WR1043ND_V3_151021_US.zip	TL-WR1043ND	v3	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
109935	HS110(US)_V1_151016.zip	HS110		\N	51	\N	f	f	False	f	mipseb	\N	\N
110090	RE305(V3)_200826.zip	RE305	v3	\N	51	\N	f	f	False	f	mipsel	\N	\N
14406	TL-WDR4300_V1_130319.zip	TL-WDR4300		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
109937	NC450_v1.3.3_170906.zip	TL-NC450	v2	\N	51	\N	f	f	False	f	mipsel	\N	\N
110279	Archer A9(US)_V6_200416.zip	Archer A9		\N	51	\N	f	f	False	f	mipseb	\N	\N
110280	Archer A9(US)_V6_200114.zip	Archer A9		\N	51	\N	f	f	False	f	mipseb	\N	\N
110291	Archer_C9(US)_v1_180125.zip	Archer C9		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110293	Archer C9(US)_V3_171215.zip	Archer C9		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
109940	NC450(UN)_V1.1.2_161013_1477645349832v.zip	TL-NC450		\N	51	\N	f	f	False	f	mipsel	\N	\N
110294	Archer_C9(US)_V3_161018_1479887048164h.zip	Archer C9		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110295	Archer_C9(US)_V3_160719_1477981065946p.zip	Archer C9		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110306	Archer C3150(US)_V2_170628.zip	Archer C3150	v2	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110309	AD7200(US)_V1_160902_1473127528410b.zip	AD7200		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110310	AD7200(US)_V1_160602.zip	AD7200		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110316	Archer C3200(US)_V1_170707.zip	Archer C3200		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110317	Archer_C3200(US)_V1_160704.zip	Archer C3200		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110364	Deco E4R_V1_190823.zip	Deco E3		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110318	Archer_C3200(US)_V1_160202.zip	Archer C3200		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110328	Archer_C3150(US)_V1_160329.zip	Archer C3150		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110329	Archer_C3150(US)_V1_160227.zip	Archer C3150		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110260	Archer_C8(US)_V1_160517_1480907047866s.zip	Archer C8		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
15011	TL-WR842ND_V1_130110.zip	TL-WR842ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110366	Deco_M4_V2_1.4.2.zip	Deco M4	v2	\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110370	Deco_W2400_V1_1.4.0.zip	Deco W2400		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110360	M3W 1.0_en_1.0.6 Build 20201013 Rel. 22614.zip	Deco M3W		\N	51	\N	f	f	False	f	mipsel	\N	\N
110361	Deco M3W_V1_191202.zip	Deco M3W		\N	51	\N	f	f	False	f	mipsel	\N	\N
110362	Deco M3W_V1_190714.zip	Deco M3W		\N	51	\N	f	f	False	f	mipsel	\N	\N
110365	Deco M4_V1&V2_200918.zip	Deco M4	v2	\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110368	Deco W2400_V1_200918.zip	Deco W2400		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110369	Deco_W2400_V1_1.4.2.zip	Deco W2400		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110372	Deco P9_V1_V2_200918.zip	Deco P9		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110373	Deco_P9_V1_200513.zip	Deco P9		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110261	Archer_C8_V1_150518_US.zip	Archer C8		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110377	Deco S4_V2_200918.zip	Deco S4		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110379	Deco_S4_V2_200628.zip	Deco S4		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110374	Deco P7_V1_200918.zip	Deco P7		\N	51	\N	f	f	False	f	armel	\N	\N
110375	Deco P7_V1_200408.zip	Deco P7		\N	51	\N	f	f	False	f	armel	\N	\N
110376	Deco P7_V1_190704.zip	Deco P7		\N	51	\N	f	f	False	f	armel	\N	\N
110268	Archer_C7_V3_150508_US.zip	Archer C7		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
18355	DHP-W306AV_fw_revALL_1-03B01_all_en_20120202.zip	dhp-w306av	1.03B01	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.111.175')]	f	mipsel	\N	down
110383	Deco_M5_V1_V2_V3_20201022.zip	Deco M5	v3	\N	51	\N	f	f	False	f	armel	\N	\N
110384	Deco M5_V1_V2_V3_200924.zip	Deco M5	v3	\N	51	\N	f	f	False	f	armel	\N	\N
110385	Deco_M5_V1_V2_V3_200725.zip	Deco M5	v3	\N	51	\N	f	f	False	f	armel	\N	\N
110394	Deco M9 Plus_V1_200918.zip	Deco M9 Plus		\N	51	\N	f	f	False	f	armel	\N	\N
110395	Deco_M9_Plus_V1_1.4.2_200821.zip	Deco M9 Plus		\N	51	\N	f	f	False	f	armel	\N	\N
110396	Deco M9 Plus_V1_200324.zip	Deco M9 Plus		\N	51	\N	f	f	False	f	armel	\N	\N
15014	TL-WR842ND_V1_130322.zip	TL-WR842ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
109615	Archer_D7(US)V1_150924.zip	Archer D7		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
19149	DHP-W310AV_fw_revA1_1-04_all_multi_20140331.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
19147	DHP-W310AV_fw_revA1_1_05_eu_multi_20141231.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
19148	DHP-W310AV_fw_revB1_2-00_eu_multi_20141118.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
110405	DHP-W310AV_fw_revB1_2-10_eu_en_20151111.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
110406	DHP-W310AV_fw_revC1_3-00_eu_multi_20151028.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N	\N
110264	Archer_C8(US)_V3_161104_1480403037578i.zip	Archer C8		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110265	Archer C7(US)_v2_180114.zip	Archer C7		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110266	Archer C7(US)_V2_170525.zip	Archer C7		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110287	ArcherC2600(US)_V1_170306.zip	Archer C2600		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110094	RE355(US)_V1_151105.zip	RE355		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110096	RE205_V1_170711.zip	RE205		\N	51	\N	f	f	[('br-lan', '192.168.0.254')]	f	mipsel	\N	down
110312	TL-WR842ND_V2_150514.zip	TL-WR842ND	v2	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
14710	TL-R600VPN_V1_130216.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
14711	TL-R600VPN_V2_140801.zip	TL-R600VPN		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110098	RE205_V2_201030.zip	RE205		\N	51	\N	f	f	False	f	mipsel	\N	\N
110100	RE300_V1_201116.zip	RE300		\N	51	\N	f	f	False	f	mipsel	\N	\N
109531	Archer C2700(US)_V1_191225.zip	Archer C2700		\N	51	\N	f	f	False	f	mipseb	\N	\N
110116	RE450(V2)_200914.zip	RE450	v2	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
16119	TL-WR841N(D_v7_111228.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
110117	RE450_V2_171220.zip	RE450	v2	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110152	TL-WR741ND_V5_141217.zip	TL-WR741ND	v5	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
14412	TL-WR1042ND_V1_130117.zip	TL-WR1042ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open     http427/tcp   filtered svrloc880/tcp   filtered unknown1783/tcp  filtered unknown1900/tcp  open     upnp2191/tcp  filtered tvbus4445/tcp  filtered upnotifyp5051/tcp  filtered ida-agent5061/tcp  filtered sip-tls5998/tcp  filtered ncd-diag7001/tcp  filtered afs3-callback10003/tcp filtered documentum_s17877/tcp filtered unknown49152/tcp open     unknown63331/tcp filtered unknown
14408	TL-WDR3600_V1_130909.zip	TL-WDR3600		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110162	TL-WDR4300_V1_151104_US.zip	TL-WDR4300		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
109548	Archer_C5400(US)_V1_161128_1482311058037l.zip	Archer C5400		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
110005	TL-WPA7510KIT_V1_181226.zip	TL-WPA7510 KIT		\N	51	\N	f	f	False	f	mipsel	\N	\N
109950	TL-WA701ND(US)_V2_170818.zip	TL-WA701ND	v2	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
109952	TL-WA801ND(US)_V5_170905.zip	TL-WA801ND	v5	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	23/tcp open  telnet
15013	TL-WR842ND_V2_130628.zip	TL-WR842ND	v2	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
15015	TL-WR842ND_V1_120424.zip	TL-WR842ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110367	Deco_M4_V1_V2_200628.zip	Deco M4	v2	\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110371	Deco_P9_V1_V2_1.1.3_201228.zip	Deco P9		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110378	Deco_S4_V2_1.4.2.zip	Deco S4		\N	51	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
110016	TL-WPA8630_US_V1_160512_1482218041528i.zip	TL-WPA8630 KIT		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp open  http
18352	DHP-W306AV_fw_revA2_1-03B1_all_en_20140211.zip	dhp-w306av		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.111.175')]	f	mipsel	\N	down
18353	DHP-W306AV_fw_revA2_1-02B09_all_en_20111125.zip	dhp-w306av	1.02B09	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.111.175')]	f	mipsel	\N	down
110292	Archer_C9(US)_V1_161008_1478653422432k.zip	Archer C9		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110308	Archer C3150_V2_170411.zip	Archer C3150	v2	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
110327	Archer_C3150(US)_V1_160707.zip	Archer C3150		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
15019	TL-WR743ND_V2_131129.zip	TL-WR743ND	v2	\N	51	\N	f	f	False	f	mipseb	\N	\N
14224	201121516435819.zip	TL-WR941ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	
14223	TL-WR941ND_V5_140627.zip	TL-WR941ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
110170	TL-WR841ND_V9_150104.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110175	TL-WR841N_V8_131107_CA.zip	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1069/tcp  filtered cognex-insight1900/tcp  open     upnp3283/tcp  filtered netassistant61900/tcp filtered unknown
110186	TL-WDR3500_V1_151104_US.zip	TL-WDR3500		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110191	TL-WR940N(US)_V6_200316.zip	TL-WR940N	v6	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110202	TL-WR802N(US)_V1_151022_US.zip	TL-WR802N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
14585	TL-WR1043ND_V1_140319.zip	TL-WR1043ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	1900/tcp open  upnp
14759	TL-WR740N_v1v2_100910.zip	TL-WR740N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
109692	CAP300(UN)_V1_161108.zip	CAP300		\N	51	\N	f	f	False	f	mipseb	\N	\N
109788	EAP110(US)_V4_5.0.0 Build 20200914.zip	EAP110	v4	\N	51	\N	f	f	False	f	mipseb	\N	\N
109794	EAP110-Outdoor(US)_V3_5.0.0 Build 20200914.zip	EAP110-Outdoor	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
109815	EAP110-Outdoor(US)_V1_1.2.0 Build 20180418.zip	EAP110-Outdoor		\N	51	\N	f	f	False	f	mipseb	\N	\N
109565	TL-ER5120(UN)_V3_20180125.zip	TL-ER5120		\N	51	\N	f	f	False	f	mips64eb	\N	\N
109829	EAP225(US)_V3_2.20.1 Build 20200630.zip	EAP225	v3	\N	51	\N	f	f	False	f	mipseb	\N	\N
110072	RE205_V3_201128.zip	RE205	v3	\N	51	\N	f	f	False	f	mipsel	\N	\N
109852	TL-ER6120(UN)_v3_3.0.2 Build 20200313.zip	TL-ER6120	v3	\N	51	\N	f	f	False	f	mips64eb	\N	\N
110086	RE230(US)_V1_201202.zip	RE230		\N	51	\N	f	f	False	f	mipsel	\N	\N
110088	RE230(US)_V1_200309.zip	RE230		\N	51	\N	f	f	False	f	mipsel	\N	\N
16120	TL-WR841N_WR841ND_v7_120201.zip	TL-WR841ND		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
110060	TL-WA850RE_V1.20_141224_USA.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
110084	RE360_V1_170907.zip	RE360		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
4137	DGN1000v3-V1.0.0.4_0.0.4.zip	DGN1000Bv3	1.0.0.4	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	down
4618	WNDR3800-V1.0.0.48.zip	WNDR3800	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
110158	TL-WR941ND_V6_150206.zip	TL-WR941ND	v6	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
108829	WN3050RPv2-V1.0.2.24.img	WN3050RPv2	1.0.2.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	3333/tcp open  dec-notes
2495	MBRN3000 Firmware Version 1.0.0.43_2.0.11 (NA).zip	MBRN3000	1.0.0.43	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
109554	TL-R480T_V9_20180926.zip	TL-R480T+	v9	\N	51	\N	f	f	[('br-lan', '192.168.0.1')]	f	mipsel	\N	53/tcp open  domain
14479	TD-W8968_V1_131226.zip	TD-W8968		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
109611	Archer_D2_V1_150921.zip	Archer D2		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp2000/tcp open  cisco-sccp2001/tcp open  dc9000/tcp open  cslistener
109621	Archer_D5_V1_150526.zip	Archer D5		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
110229	Archer C2(US)_V1_170228.zip	Archer C2		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
18354	DHP-W306AV_fw_revALL_1-01_all_en_100824.zip	dhp-w306av	1.01	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.111.175')]	f	mipsel	\N	down
110243	Archer_C59(US)_V1_160722_1473406184657e.zip	Archer C59		\N	51	\N	f	f	[('br-lan', '192.168.0.1')]	f	mipseb	\N	
110075	RE350_V1_190516.zip	RE350		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
105901	FW_TEW-WLC100_v1(V2.05b04).zip	TEW-WLC100	V2.05b04	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N	down
13152	FW_TEW-455APBOv2(2.1.4)_CE.zip	TEW-455APBO_v2	2.1.4	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N	23/tcp open  telnet
108060	WNDR3400v3-V1.0.0.46_1.0.45.zip	WNDR3400v3	1.0.0.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
110233	Archer A6(US)_V3_200807.zip	Archer A6	v3	\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	mipsel	\N	down
110235	Archer_C50_v1_150325.zip	Archer C50		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
109699	TL-WA801N(US)_V6_191122.zip	TL-WA801N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	
109553	TL-R480T(UN)_v9_9.0.3 Build 20200313.zip	TL-R480T+	v9	\N	51	\N	f	f	[('br-lan', '192.168.0.1')]	f	mipsel	\N	53/tcp open  domain
110076	RE350_V1_171214.zip	RE350		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
4980	WNDAP350_-Firmware-Version_-2.0.9.zip	WNDAP350	2.0.9	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
109688	AC50(UN)_v1_171129.zip	AC50		\N	51	\N	f	f	[('eth0', '192.168.1.1'), ('eth0', '192.168.0.253')]	f	mipseb	\N	down
15178	TL-WA830RE_V2_121008.zip	TL-WA830RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	
14169	TL-WR940N_V2_130709.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	1900/tcp open  upnp
110208	TL-WR940N_V3_151102_US.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110049	RE200(EU_UK_US_AU_JP_AR_ES_BR_KR_EG)_V2_181026.zip	RE200		\N	51	\N	f	f	[('br-lan', '192.168.0.254')]	f	mipsel	\N	down
110216	Archer C50A5(US)_V5_181019.zip	Archer C50	v5	\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	
110057	TL-WA860RE_V4_171219.zip	TL-WA860RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
110230	Archer_C2(US)_V1_160606.zip	Archer C2		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
110063	TL-WA850RE(US)_V2_160517_1474185680919t.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	down
110234	Archer A6(US)_V3_200703.zip	Archer A6	v3	\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	mipsel	\N	down
109840	TL-R600VPN(UN)_v4_4.0.4 Build 20200313.zip	TL-R600VPN	v4	\N	51	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.0.1')]	f	mipseb	\N	down
110070	TL-WA850RE_V6_200403.zip	TL-WA850RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
109612	Archer_D2v1_0.8.0_1.1_up_boot(150730_2015-07-30_17.20.32.zip	Archer D2		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp2000/tcp open  cisco-sccp2001/tcp open  dc9000/tcp open  cslistener
110259	Archer C20(US)_V4_170222.zip	Archer C20		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	23/tcp open  telnet
110267	Archer_C7(US)_V2_160719_1472519162399s.zip	Archer C7		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	
110263	Archer C8_V3_170606.zip	Archer C8		\N	51	\N	f	f	[('br-lan', '192.168.1.1')]	f	armel	\N	down
105970	FW_TEW-821DAP_v1(1.06B10).zip	TEW-821DAP2KAC	1.06B10	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N	22/tcp    open     ssh80/tcp    open     http416/tcp   filtered silverplatter1138/tcp  filtered encrypted_admin4445/tcp  filtered upnotifyp5633/tcp  filtered beorl38292/tcp filtered landesk-cba60443/tcp filtered unknown
13677	TEW-637APv3_(FW3.0.0.0).zip	TEW-637AP_v3	FW3.0.0.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp    open     http898/tcp   filtered sun-manageconsole2500/tcp  filtered rtsserv10004/tcp filtered emcrmirccd50500/tcp filtered unknown
18739	DAP-2310_fw_revB1_2-02-rc019_eu_en_20150211.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
18746	DAP-2310_fw_revB1_2_03_rc_023_eu_en_20150413.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19085	DAP-2360_fw_revB1_2-0-2-rc021_eu_en_20150123.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19083	DAP-2360_fw_revB1_2_03_rc_026_eu_en_20150408.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106257	DAP-2360_fw_revB_2_06_rc036_eu_en_20150709.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
20559	DAP-2553_fw_revA1_1-3-1-rc-071_eu_en_20150123.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
20567	DAP-2553_fw_revALL_1-26-rc028_all_en_20121106.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106267	DAP-2553_fw_revB1_3-06-027_eu_multi_20160414.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
20428	DAP-2660_fw_revA1_1_00_all_en_20140410.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106248	DAP-2310_fw_revB_2_06_rc029_eu_en_20150708.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
12916	FW_TEW-632BRPA1(1.10b30).zip	TEW-632BRP_A1.1	1.10b30	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N	80/tcp   open  http2601/tcp open  zebra2602/tcp open  ripd
106296	DAP-2695_fw_revA_1_17_rc063_eu_en_20160316.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
106286	DAP-2690_fw_revB_3-15-rc091_eu_en_20150911.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
19764	DIR-615_fw_revQ_17-01_eu_multi_20141203.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http49152/tcp open  unknown
19752	DIR_615_fw_revd_414WWb02_ALL_en_20130430_instructions.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	down
106910	DIR-816L_fw_revB_2-06_eu_multi_20150625.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
18424	DIR-818LW_fw_revB_2-02B03_eu_multi_20140930.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open     http443/tcp   open     https1085/tcp  filtered webobjects2557/tcp  filtered nicetec-mgmt3493/tcp  filtered nut5903/tcp  filtered vnc-35915/tcp  filtered unknown8090/tcp  filtered opsmessaging8181/tcp  open     intermapper8292/tcp  filtered blp38994/tcp  filtered unknown14238/tcp filtered unknown49152/tcp open     unknown49153/tcp filtered unknown55056/tcp filtered unknown
10565	DIR-850L_REVA_FIRMWARE_PATCH_1.13.B01_WW.ZIP	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20192	DIR-865L_fw_revA_105b07_all_en_20130718.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
10132	DIR-865L_REVA_FIRMWARE_PATCH_1.08.B01.ZIP	dir-865l	1.08b01	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N	53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20326	DIR-518L_fw_revA_1-00b22_all_en_20140327.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
106872	DIR-615_fw_revQ_17-03_eu_multi_20151210.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http49152/tcp open  unknown
18232	DIR-816L_fw_revB1_2-01_all_en_131220.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet53/tcp    open  domain80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
8459	DIR-816L_REVA_FIRMWARE_PATCH_1.01.B01.ZIP	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	23/tcp    open  telnet80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
18427	DIR-818LW_fw_revB1_2-00b07_eu_multi_20140724.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
20599	DIR-850L_fw_revA_1-12_eu_multi_20141212.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.1')]	f	mipseb	\N	80/tcp    open  http443/tcp   open  https8181/tcp  open  intermapper49152/tcp open  unknown
4470	WNDRMAC Firmware Version 1.0.0.20 - BETA.zip	WNDRMACv1	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
4329	WNDR4300-V1.0.1.34.zip	WNDR4300	1.0.1.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
2725	WNDR4500-V1.0.1.36_1.0.63.zip	WNDR4500	1.0.1.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4620	WNDR3800-V1.0.0.25-Beta.zip	WNDR3800	1.0.0.25	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
3347	WNDRMACv2-V1.0.0.12.zip	WNDRMACv2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
108005	R7500-V1.0.0.76.zip	R7500	1.0.0.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N	down
108303	WNDAP360 Firmware Version 2.1.1.zip	WNDAP360	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	1/tcp    filtered tcpmux22/tcp   open     ssh80/tcp   open     http443/tcp  open     https1138/tcp filtered encrypted_admin1151/tcp filtered unizensus1862/tcp filtered mysql-cm-agent3005/tcp filtered deslogin5120/tcp filtered barracuda-bbs6112/tcp filtered dtspc7106/tcp filtered unknown8084/tcp filtered unknown
16093	R6300-V1.0.2.36_1.0.28.chk	R6300v1	1.0.2.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
108774	WAC120_V2.0.3_firmware.tar	WAC120	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
108848	WNAP320_V3.0.4.0.tar	WNAP320	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108852	WNAP320_V2.1.5_firmware.tar	WNAP320	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp    open     ssh49/tcp    filtered tacacs80/tcp    open     http443/tcp   open     https515/tcp   filtered printer1069/tcp  filtered cognex-insight1500/tcp  filtered vlsi-lm1761/tcp  filtered landesk-rc3370/tcp  filtered satvid-datalnk6007/tcp  filtered X11:78300/tcp  filtered tmi8402/tcp  filtered abarsd24444/tcp filtered unknown
108862	WNDAP350_V2.1.8_firmware.tar	WNDAP350	2.1.08	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
1752	WNDAP350_V2.0.9_firmware.tar	WNDAP350	2.0.9	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108874	WNDAP360_V2.1.11_firmware.tar	WNDAP360	2.1.11	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp    open     ssh80/tcp    open     http443/tcp   open     https1054/tcp  filtered brvread1085/tcp  filtered webobjects1087/tcp  filtered cplscrambler-in1247/tcp  filtered visionpyramid1914/tcp  filtered elm-momentum2048/tcp  filtered dls-monitor2160/tcp  filtered apc-21603000/tcp  filtered ppp3871/tcp  filtered avocent-adsap4125/tcp  filtered rww6547/tcp  filtered powerchuteplus10009/tcp filtered swdtp-sv10617/tcp filtered unknown55055/tcp filtered unknown
108876	WNDAP360_V2.1.6_firmware.tar	WNDAP360	2.1.06	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp    open     ssh43/tcp    filtered whois80/tcp    open     http407/tcp   filtered timbuktu443/tcp   open     https636/tcp   filtered ldapssl1093/tcp  filtered proofd1259/tcp  filtered opennl-voice1583/tcp  filtered simbaexpress1721/tcp  filtered caicci2920/tcp  filtered roboeda3071/tcp  filtered csd-mgmt-port4242/tcp  filtered vrml-multi-use4343/tcp  filtered unicall5718/tcp  filtered dpm7106/tcp  filtered unknown7627/tcp  filtered soap-http7676/tcp  filtered imqbrokerd7741/tcp  filtered scriptview8194/tcp  filtered sophos13782/tcp filtered netbackup19283/tcp filtered keysrvr32781/tcp filtered unknown56737/tcp filtered unknown
1824	WNDR3400-V1.0.0.50_20.0.59.chk	WNDR3400v1	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
16211	WNDR3700-V1.0.4.68.img	WNDR3700v1	1.0.04.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16219	WNDR3700v2_WNDR37AVv2-V1.0.0.36.img	WNDR3700v2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
1903	WNDR3700v2-V1.0.0.6.img	WNDR3700v2	1.0.0.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16228	WNDR3700v4-V1.0.1.32.img	WNDR3700v4	1.0.1.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16238	WNDR3800-V1.0.0.38.img	WNDR3800	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
903	WNDR3800-V1.0.0.25-Beta.img	WNDR3800	1.0.0.25	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16248	WNDR4300-V1.0.1.30.img	WNDR4300v1	1.0.1.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
16310	WNR2000-V1.2.3.7.img	WNR2000v1	1.2.3.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http3333/tcp open  dec-notes5555/tcp open  freeciv
16366	WPN824V3-V1.0.7_1.0.8.img	WPN824v3	1.0.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http3333/tcp open  dec-notes5555/tcp open  freeciv
110106	TL-WA855RE(EU_UK_FR_US_AU_BR_ES)_V2_180509.zip	TL-WA855RE		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipsel	\N	down
108088	WNR2500-V1.0.0.30NA.zip	WNR2500	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
10385	DAP-2660_REVA_FIRMWARE_1.06.RC025.ZIP	DAP-2660	1.06.RC25	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
110161	TL-WR810N(US)_V2_160509_1474506175401q.zip	TL-WR810N	v2	\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
4209	R6200_Firmware_-V1.0.1.52_1.0.zip	R6200	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
4500	WPN824v3 Firmware Version 1.0.8_1.0.6 (North America).zip	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http3333/tcp open  dec-notes5555/tcp open  freeciv
108873	WNDAP360_V2.1.12_firmware.tar	WNDAP360	2.1.12	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp    open     ssh80/tcp    open     http443/tcp   open     https1494/tcp  filtered citrix-ica15002/tcp filtered onep-tls60443/tcp filtered unknown
108877	WNDAP360_V2.1.5_firmware.tar	WNDAP360	2.1.05	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp    open     ssh80/tcp    open     http443/tcp   open     https1044/tcp  filtered dcutility1083/tcp  filtered ansoft-lm-11095/tcp  filtered nicelink2003/tcp  filtered finger3971/tcp  filtered lanrevserver42510/tcp filtered caerpc51493/tcp filtered unknown
16216	WNDR3700-V1.0.7.98.img	WNDR3700v1	1.0.07.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
16236	WNDR3800-V1.0.0.32.img	WNDR3800	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
108892	WNDR4300v2-V1.0.0.32.img	WNDR4300v2	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	53/tcp   open  domain80/tcp   open  http443/tcp  open  https3333/tcp open  dec-notes
109500	DAP-2610_REVA_FIRMWARE_v1.01RC017.zip	DAP-2610	1.01RC017	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N	down
109613	Archer_D2_V1_150427.zip	Archer D2		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp2000/tcp open  cisco-sccp2001/tcp open  dc9000/tcp open  cslistener
109622	Archer_D5_V1_141222.zip	Archer D5		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
13924	Archer_D5_V1_140804.zip	Archer D5		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
108290	WAC120_V2.0.5_firmware.zip	WAC120	2.0.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	23/tcp  open  telnet80/tcp  open  http443/tcp open  https
108300	WNDAP350_V2.1.9_firmware.zip	WNDAP350	2.1.9	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
108304	WNDAP360 Firmware Version 2.0.7.zip	WNDAP360	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N	22/tcp  open  ssh80/tcp  open  http443/tcp open  https
6439	JNR3300-V1.0.0.20PR.img	JNR3300	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp open  telnet53/tcp open  domain80/tcp open  http
107872	EX2700-V1.0.1.10.zip	EX2700	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N	80/tcp   open  http3333/tcp open  dec-notes
108694	R6300-V1.0.2.76_1.0.57.chk	R6300v1	1.0.2.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N	down
2298	WNDR3700v4-V1.0.1.32.zip	WNDR3700v4	1.0.1.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain3333/tcp open  dec-notes
4061	WNDR3700 Firmware Version 1.0.4.49 (North America).zip	WNDR3700v1	1.0.4.49	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet53/tcp   open  domain80/tcp   open  http3333/tcp open  dec-notes
2299	WNDR3700v4_V1.0.1.52.zip	WNDR3700v4	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	7/tcp     filtered echo17/tcp    filtered qotd23/tcp    open     telnet53/tcp    open     domain100/tcp   filtered newacct458/tcp   filtered appleqtc1088/tcp  filtered cplscrambler-al1110/tcp  filtered nfsd-status1132/tcp  filtered kvm-via-ip1145/tcp  filtered x9-icue1169/tcp  filtered tripwire2968/tcp  filtered enpp3333/tcp  open     dec-notes3998/tcp  filtered dnx6547/tcp  filtered powerchuteplus8022/tcp  filtered oa-system9666/tcp  filtered zoomcp10621/tcp filtered unknown24800/tcp filtered unknown27353/tcp filtered unknown32777/tcp filtered sometimes-rpc1750636/tcp filtered unknown
110173	TL-WR841N(UN)_V8_170210.zip	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110174	TL-WR841N_V8_140724.zip	TL-WR841N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	24/tcp    filtered priv-mail80/tcp    open     http146/tcp   filtered iso-tp0808/tcp   filtered ccproxy-http1055/tcp  filtered ansyslmd1102/tcp  filtered adobeserver-11900/tcp  open     upnp2710/tcp  filtered sso-service3013/tcp  filtered gilatskysurfer3300/tcp  filtered ceph3367/tcp  filtered satvid-datalnk5102/tcp  filtered admeng7103/tcp  filtered unknown9418/tcp  filtered git9900/tcp  filtered iua10616/tcp filtered unknown12265/tcp filtered unknown16113/tcp filtered unknown18988/tcp filtered unknown23502/tcp filtered unknown27356/tcp filtered unknown38292/tcp filtered landesk-cba60020/tcp filtered unknown
15016	TL-WR743ND_V1_111212.zip	TL-WR743ND		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	80/tcp   open  http1900/tcp open  upnp
110206	TL-WR940N(US)_V3_161107_1479957675241p.zip	TL-WR940N		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
110212	TL-WR802N(USA)_V2_151221_1482136249144c.zip	TL-WR802N		\N	51	\N	f	f	[('br0', '192.168.0.254')]	f	mipseb	\N	80/tcp    open     http500/tcp   filtered isakmp555/tcp   filtered dsf648/tcp   filtered rrp801/tcp   filtered device1079/tcp  filtered asprovatalk1095/tcp  filtered nicelink1113/tcp  filtered ltp-deepspace1900/tcp  open     upnp1935/tcp  filtered rtmp3013/tcp  filtered gilatskysurfer5730/tcp  filtered unieng5810/tcp  filtered unknown5906/tcp  filtered unknown6156/tcp  filtered unknown6699/tcp  filtered napster8333/tcp  filtered bitcoin9102/tcp  filtered jetdirect12174/tcp filtered unknown18040/tcp filtered unknown55600/tcp filtered unknown61900/tcp filtered unknown
110255	Archer_C20_V1_141217.zip	Archer C20		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N	21/tcp   open  ftp22/tcp   open  ssh23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
14765	TL-WA7510N_v1_111130.zip	TL-WA7510N		\N	51	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N	80/tcp open  http
110203	TL-WR902AC(US)_V1_160905.zip	TL-WR902AC		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N	22/tcp   open  ssh80/tcp   open  http1900/tcp open  upnp
14370	TD-W8970_V1_140613.zip	TD-W8970		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp   open  telnet80/tcp   open  http1900/tcp open  upnp
109595	TD-W8968_V2_131108_RU.zip	TD-W8968		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	21/tcp   open  ftp23/tcp   open  telnet80/tcp   open  http139/tcp  open  netbios-ssn445/tcp  open  microsoft-ds1900/tcp open  upnp
109609	TD-W8980_V1_150514.zip	TD-W8980		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N	23/tcp    open     telnet43/tcp    filtered whois80/tcp    open     http700/tcp   filtered epp1038/tcp  filtered mtqp1717/tcp  filtered fj-hdnet1900/tcp  open     upnp2607/tcp  filtered connection2968/tcp  filtered enpp3221/tcp  filtered xnm-clear-text4321/tcp  filtered rwhois8800/tcp  filtered sunwebadmin44443/tcp filtered coldfusion-auth60020/tcp filtered unknown
109501	DAP-2610_REVA_FIRMWARE_v1.02B028RV048_HOTFIX.zip	DAP-2610	1.02RC048	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N	down
107910	EX6200v2-V1.0.1.38.zip	EX6200v2	1.0.1.38	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N	down
110285	Archer_C1900(US)_V1_151009_US.zip	Archer C1900		\N	51	\N	f	f	[('br0', '192.168.0.1')]	f	armel	\N	down
\.


--
-- TOC entry 2825 (class 2606 OID 16580)
-- Name: image_new image_new_pkey; Type: CONSTRAINT; Schema: public; Owner: firmadyne
--

ALTER TABLE ONLY public.image_new
    ADD CONSTRAINT image_new_pkey PRIMARY KEY (image_id);


-- Completed on 2021-07-14 17:42:05 +08

--
-- PostgreSQL database dump complete
--

