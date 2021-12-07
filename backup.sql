--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

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
    kernel_version character varying
);


ALTER TABLE public.image_new OWNER TO firmadyne;

--
-- Data for Name: image_new; Type: TABLE DATA; Schema: public; Owner: firmadyne
--

COPY public.image_new (image_id, firmname, product, version, description, brand_id, hash, rootfs_extracted, kernel_extracted, network_inferred, network_connection, arch, kernel_version) FROM stdin;
13279	FW_TW100-BRV214_v1(1.00.08).zip	TW100-BRV214	1.00.08	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
13278	FW_TW100-BRV214_v1.0R(1.00.02).zip	TW100-BRV214	1.00.02	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
13277	FW_TW100-BRV214_v1.0R(1.00.05).zip	TW100-BRV214	1.00.05	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
105926	FW_TEW-828DRU_v1(1.0.9.0).zip	TEW-828DRU	1.0.9.0	\N	52	\N	f	f	False	f	armel	\N
105927	FW_TEW-827DRU_v2(2.00B09).zip	TEW-827DRU_v2	2.00B09	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
13398	TEW-812DRUv1.0R_(FW1.0.10.0).zip	TEW-812DRU	FW1.0.10.0	\N	52	\N	f	f	False	f	mipsel	\N
13112	FW_TV-IP121WN_V2(1.2.1.17).zip	TV-IP121WN_v2	1.2.1.17	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
13111	FW_TV-IP121WN_V2(1.2.2.23).zip	TV-IP121WN_v2	1.2.2.23	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
13108	FW_TV-IP121WN_V2(1.2.2.24).zip	TV-IP121WN_v2	1.2.2.24	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
13227	TEW-739APBOv1_(FW1.0.19).zip	TEW-739APBO_v13	FW1.0.19	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13400	TEW-812DRUv1.0_(FW1.0.8.0).zip	TEW-812DRU	FW1.0.8.0	\N	52	\N	f	f	False	f	mipsel	\N
106035	FW_TEW-738APBO_v1(1.1.12).zip	TEW-738APBO_v13	1.1.12	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13397	TEW-812DRUv1.0R_(FW1.0.11.0).zip	TEW-812DRU	FW1.0.11.0	\N	52	\N	f	f	False	f	mipsel	\N
106036	TEW-739APBOv1_(FW1.1.9).zip	TEW-739APBO_v13	FW1.1.9	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13396	TEW-812DRUv1.0R_(FW1.0.13.0).zip	TEW-812DRU	FW1.0.13.0	\N	52	\N	f	f	False	f	mipsel	\N
13399	TEW-812DRUv1.0R_(FW1.0.9.0).zip	TEW-812DRU	FW1.0.9.0	\N	52	\N	f	f	False	f	mipsel	\N
106037	TEW-738APBOv1_(FW1.1.9).zip	TEW-738APBO_v13	FW1.1.9	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13395	TEW-812DRUv1_(1.0.7.0).zip	TEW-812DRU	1.0.7.0	\N	52	\N	f	f	False	f	mipsel	\N
16030	FW_TEW-737HRE(1.00.15).zip	TEW-737HRE_v1_1	1.00.15	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.2.132')]	f	mipseb	\N
106003	TEW-812DRUv1_(FW1.0.14.0).zip	TEW-812DRU	FW1.0.14.0	\N	52	\N	f	f	False	f	mipsel	\N
106004	TEW-812DRUv1_(FW1.0.15.0).zip	TEW-812DRU	FW1.0.15.0	\N	52	\N	f	f	False	f	mipsel	\N
16032	FW_TEW-737HRE(v1.1R)-1.02B02.zip	TEW-737HRE_v1_1	v1.1R	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.2.132')]	f	mipseb	\N
106005	TEW-812DRUv1_(FW1.01B05).zip	TEW-812DRU	FW1.01B05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106006	FW_TEW-811DRU_v1(1.0.10.0).zip	TEW-811DRU	1.0.10.0	\N	52	\N	f	f	False	f	armel	\N
13624	TEW-736REv1.0R_(FW1.1.1.0).zip	TEW-736RE	FW1.1.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13056	FW_TEW-811DRU_v1(1.0.2.0).zip	TEW-811DRU	1.0.2.0	\N	52	\N	f	f	False	f	armel	\N
13625	TEW-736REv1_(FW1.1.2.0).zip	TEW-736RE	FW1.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13057	FW_TEW-811DRU_v1(1.0.6.1).zip	TEW-811DRU	1.0.6.1	\N	52	\N	f	f	False	f	armel	\N
106038	TEW-736REv1_(FW1.1.3.0).zip	TEW-736RE	FW1.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
106039	FW_TEW-740APBO2K_v2(2.00.00K).zip	TEW-740APBO2K_v2	2.00.00K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106008	FW_TEW-810DR_v1(1.13b04).zip	TEW-810DR_v11	1.13b04	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
13058	FW_TEW-811DRU_v1(1.0.4.0).zip	TEW-811DRU	1.0.4.0	\N	52	\N	f	f	False	f	armel	\N
106009	FW_TEW-810DR_v1(1.14B02).zip	TEW-810DR_v11	1.14B02	\N	52	\N	f	f	False	f	mipsel	\N
12934	TEW-810DRv1_(FW1.01B02).zip	TEW-810DR_v11	FW1.01B02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
106010	TEW-810DRv1_(FW1.12B01).zip	TEW-810DR	FW1.12B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
106011	TEW-810DRv1_(FW1.12B02).zip	TEW-810DR_v11	FW1.12B02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
12967	FW_TEW800MB(v1.0.1.0)_08012013.zip	TEW-800MB	v1.0.1.0	\N	52	\N	f	f	False	f	armel	\N
106012	FW_TEW-755AP_v1(1.03B08).zip	TEW-755AP2KAC	1.03B08	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106014	FW_TEW-755AP_v1(1.04B06).zip	TEW-755AP2KAC	1.04B06	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106015	FW_TEW-755AP_v1(1.08B04).zip	TEW-755AP2KAC	1.08B04	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106017	FW_TEW-755AP_v1(1.02B06).zip	TEW-755AP	1.02B06	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106018	FW_TEW-755AP_v1(1.11B03).zip	TEW-755AP2KAC	1.11B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106019	FW_TEW-755AP_v1(107B07).zip	TEW-755AP	107B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
13386	FW_TEW-753DAP(v1_0R)-2-0-0.zip	TEW-753DAP	v1_0R	\N	52	\N	f	f	[('eth0', '192.168.10.100')]	f	mipseb	\N
13212	FW_TEW-752DRU_v1(1.01B01).zip	TEW-752DRU	1.01B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13211	TEW-752DRUv1.0R_(FW1.00B08).zip	TEW-752DRU	FW1.00B08	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13492	FW_TEW-751DR_v1(1.01B01).zip	TEW-751DR	1.01B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13301	FW_TEW-750DAP_v1(1.00B14).zip	TEW-750DAP	1.00B14	\N	52	\N	f	f	False	f	mipsel	\N
106022	FW_TEW-751DR_v1(1.03B03).zip	TEW-751DR	1.03B03	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
106023	FW_TEW-750DAP_v1(1.01B03).zip	TEW-750DAP	1.01B03	\N	52	\N	f	f	[('br0', '169.254.1.0'), ('br0', '192.168.10.100')]	f	mipsel	\N
106025	FW_TEW-740APBO_v1(2.02).zip	TEW-740APBO_v2	2.02	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106026	FW_TEW-740APBO_v2(2.00.00).zip	TEW-740APBO_v2	2.00.00	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106027	FW_TEW-740APBO_v2(2.01).zip	TEW-740APBO_v2	2.01	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106028	FW_TEW-740APBO2K_v3(3.02K).zip	TEW-740APBO2K_v3	3.02K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106030	FW_TEW-740APBO_v1(1.1.11).zip	TEW-740APBO	1.1.11	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106031	FW_TEW-740APBO_v1(1.1.12).zip	TEW-740APBO	1.1.12	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106032	FW_TEW-739APBO_v1(1.1.11).zip	TEW-739APBO_v13	1.1.11	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13110	FW_TV-IP121WN_V2(1.2.1.20).zip	TV-IP121WN_v2	1.2.1.20	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
13107	FW_TV-IP121WN_V2(1.2.2.26).zip	TV-IP121WN_v2	1.2.2.26	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
13109	FW_TV-IP121WN_V2(1.2.2.28).zip	TV-IP121WN_v2	1.2.2.28	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
12979	FW_TV-IP110WN_V2(1.2.2.64).zip	TV-IP110WN_v2	1.2.2.64	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
12980	FW_TV-IP110WN_V2(1.2.2.65).zip	TV-IP110WN_v2	1.2.2.65	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
12981	FW_TV-IP110WN_V2(1.2.2.66).zip	TV-IP110WN_v2	1.2.2.66	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
12978	FW_TV-IP110WN_V2(1.2.2.68).zip	TV-IP110WN_v2	1.2.2.68	\N	52	\N	f	f	[('br0', '192.168.10.30')]	f	mipseb	\N
108067	WNDR4300-V1.0.2.80.zip	WNDR4300	1.0.2.80	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
105769	FW_WS-2-10-024-ALL.zip	TPE-5240WS	ALL	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105770	fw_tpe-5240ws_v1(v2.10.010).zip	TPE-5240WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105772	FW_TPE-5028WS_v1(1.00.010).zip	TPE-5028WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105773	fw_tpe-5048ws_v1(v2.10.010).zip	TPE-5048WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105774	fw_tpe-5028ws_v1(v2.10.010).zip	TPE-5028WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105781	FW_TPE-3018LS_v1(1.01.28).zip	TPE-3018LS	1.01.28	\N	52	\N	f	f	[('eth0', '192.168.1.254')]	f	mipseb	\N
105782	FW_TPE-3012LS_v1(1.01.28).zip	TPE-3012LS	1.01.28	\N	52	\N	f	f	[('eth0', '192.168.1.254')]	f	mipseb	\N
105785	FW_TPE-2840WS_v2(1.00.010).zip	TPE-2840WS_v2	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105786	fw_tpe-2840ws_v2(v2.10.010).zip	TPE-2840WS_v2	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105795	fw_tpe-204us_v1(v2.10.010).zip	TPE-204US	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105796	TRENDNET-2-10-024-FW.zip	TPE-1620WSF	FW	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105797	FW_TPE-1620WS_v2(1.00.010).zip	TPE-1620WS_v2	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105798	fw_tpe-1620ws_v2(v2.10.010).zip	TPE-1620WS_v2	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106063	TEW-658BRMv1_(FW1.03.B15).zip	TEW-658BRM	FW1.03.B15	\N	52	\N	f	f	False	f	mipseb	\N
13653	FW_TEW-654TR(1.10B25).zip	TEW-654TR	1.10B25	\N	52	\N	f	f	False	f	mipsel	\N
12881	TEW-658BRMv1_(FW1.03B04).zip	TEW-658BRM	FW1.03B04	\N	52	\N	f	f	False	f	mipseb	\N
106064	FW_TEW-654TR(1.10B26).zip	TEW-654TR	1.10B26	\N	52	\N	f	f	False	f	mipsel	\N
12882	TEW-658BRMv1_(FW1.03B06).zip	TEW-658BRM	FW1.03B06	\N	52	\N	f	f	False	f	mipseb	\N
13658	FW_TEW-654TR(110B23).zip	TEW-654TR	110B23	\N	52	\N	f	f	False	f	mipsel	\N
12878	TEW-658BRMv1_(FW1.03B12).zip	TEW-658BRM	FW1.03B12	\N	52	\N	f	f	False	f	mipseb	\N
106040	FW_TEW-740APBO2K_v2(2.02K).zip	TEW-740APBO2K_v2	2.02K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106041	FW_TEW-740APBO2K_v2(2.10K).zip	TEW-740APBO2K_v2	2.10K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
106042	FW_TEW-740APBO_v2(2.01K).zip	TEW-740APBO2K_v2	2.01K	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13141	TEW-732BRv1.0R_(FW1.01B10).zip	TEW-732BR	FW1.01B10	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13142	TEW-732BRv1_(FW1.02B03).zip	TEW-732BR	FW1.02B03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
16029	FW_TEW-731BR_v1(2.01b01).zip	TEW-731BR_v2_RU	2.01b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13381	FW_TEW-731BR_v2(2.00b08).zip	TEW-731BR_v2	2.00b08	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106049	FW_TEW-731BR_v2(2.02b01).zip	TEW-731BR_v2	2.02b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13032	FW_TEW-731BR_v1(1.02b03).zip	TEW-731BR	1.02b03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13034	FW_TEW-731BR_v1(1.02b05).zip	TEW-731BR	1.02b05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106050	FW_TEW-731BR_v1(1.03b01).zip	TEW-731BR	1.03b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13031	FW_TEW-731BR_v1.0R(1.00b29).zip	TEW-731BR	1.00b29	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13035	FW_TEW-731BR_v1.0R_v1.1R(1.01b09).zip	TEW-731BR	1.01b09	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13179	FW_TEW-733GR_v1(1.01B01).zip	TEW-733GR	1.01B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13178	TEW-733GRv1.0R_(FW1.00B15).zip	TEW-733GR	FW1.00B15	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
106051	TEW-733GRv1_(FW1.03B01).zip	TEW-733GR	FW1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13080	FW_TEW-639GR_672GR(v1.0.9.161).zip	TEW-672GR_v1	v1.0.9.161	\N	52	\N	f	f	False	f	mipsel	\N
13585	FW_TEW-672GR_V1(1.0.6.33).zip	TEW-672GR_v1	1.0.6.33	\N	52	\N	f	f	False	f	mipsel	\N
13583	FW_TEW-672GR_V1(v1.0.8.16).zip	TEW-672GR_v1	v1.0.8.16	\N	52	\N	f	f	False	f	mipsel	\N
13582	FW_TEW-672GR_V1.0(1.0.7.10).zip	TEW-672GR_v1	1.0.7.10	\N	52	\N	f	f	False	f	mipsel	\N
13077	FW_TEW-659BRV_v1.0R(1.00.02).zip	TEW-659BRV	1.00.02	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
13210	TEW-657BRMv1.0R(1.00.1).zip	TEW-657BRM	1.00.1	\N	52	\N	f	f	False	f	mipseb	\N
12848	TEW-656BRGv1.0R(FW1.01c1).zip	TEW-656BRG	FW1.01c1	\N	52	\N	f	f	False	f	mipsel	\N
12883	TEW-658BRMv1.0R(1.02.B08).zip	TEW-658BRM	1.02.B08	\N	52	\N	f	f	False	f	mipseb	\N
12875	TEW-658BRMv1.0R(1.02.B12).zip	TEW-658BRM	1.02.B12	\N	52	\N	f	f	False	f	mipseb	\N
12879	TEW-658BRMv1.0R(1.02.B14).zip	TEW-658BRM	1.02.B14	\N	52	\N	f	f	False	f	mipseb	\N
13352	FW_TEW-655BR3G_v1(1.09b10).zip	TEW-655BR3G	1.09b10	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
12876	TEW-658BRMv1.0R(1.02.B18).zip	TEW-658BRM	1.02.B18	\N	52	\N	f	f	False	f	mipseb	\N
13353	FW_TEW-655BR3G_v1(1.09b3).zip	TEW-655BR3G	1.09b3	\N	52	\N	f	f	False	f	mipsel	\N
12877	TEW-658BRMv1.0R(1.02B10).zip	TEW-658BRM	1.02B10	\N	52	\N	f	f	False	f	mipseb	\N
13657	FW_TEW-654TR(1.00B19).zip	TEW-654TR	1.00B19	\N	52	\N	f	f	False	f	mipsel	\N
12880	TEW-658BRMv1.0R_(FW1.03.B09).zip	TEW-658BRM	FW1.03.B09	\N	52	\N	f	f	False	f	mipseb	\N
13650	FW_TEW-654TR(1.10B20).zip	TEW-654TR	1.10B20	\N	52	\N	f	f	False	f	mipsel	\N
105811	FW_TPE-082WS_v1(2.10.024).zip	TPE-082WS_v11	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105812	FW_TPE-082WS_v1(1.00.010).zip	TPE-082WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105813	fw_tpe-082ws_v1(v2.10.010).zip	TPE-082WS_v11	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105814	FW_TPE-082WS_v1(1.00.011).zip	TPE-082WS	1.00.011	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105837	FW_TI-RP262i_v1(1.0.2.S0).zip	TI-RP262i	1.0.2.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105846	FW_TI-PG541i_v1(1.1.7.S0).zip	TI-PG541i	1.1.7.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105847	FW_TI-PG541i_v1(1.1.8.S0).zip	TI-PG541i	1.1.8.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105857	FW_TI-PG102i_v1(1.0.10.S0).zip	TI-PG102i	1.0.10.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105858	FW_TI-PG102i_v1(1.0.11.S0).zip	TI-PG102i	1.0.11.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105866	FW_TI-G642i_v1(1.0.4.S0).zip	TI-G642i_v1.0R	1.0.4.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105867	FW_TI-G642i_v1(1.0.5.S0).zip	TI-G642i_v1.0R	1.0.5.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105874	FW_TI-G160WS_v1(1.0.9.S0).zip	TI-G160WS	1.0.9.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105876	FW_TI-G160i_v1(1.0.3.S0).zip	TI-G160i	1.0.3.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
13667	TEW-818DRUv1.0R_(FW1.0.5.0).zip	TEW-818DRU	FW1.0.5.0	\N	52	\N	f	f	False	f	armel	\N
105981	TEW-818DRUv1_(FW1.0.11.0).zip	TEW-818DRU	FW1.0.11.0	\N	52	\N	f	f	False	f	armel	\N
105982	TEW-821DAPv1_(FW1.00B12).zip	TEW-821DAP	FW1.00B12	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105983	TEW-818DRUv1_(FW1.0.13.0).zip	TEW-818DRU	FW1.0.13.0	\N	52	\N	f	f	False	f	armel	\N
105984	TEW-818DRUv1_(FW1.0.14.0).zip	TEW-818DRU	FW1.0.14.0	\N	52	\N	f	f	False	f	armel	\N
105985	FW_TEW-816DRM_v1(1.0.0.2).zip	TEW-816DRM	1.0.0.2	\N	52	\N	f	f	False	f	mipseb	\N
105928	FW_TEW-827DRU_v2(2.01B03).zip	TEW-827DRU_v2	2.01B03	\N	52	\N	f	f	False	f	mipsel	\N
13669	TEW-818DRUv1_(FW1.0.6.0).zip	TEW-818DRU	FW1.0.6.0	\N	52	\N	f	f	False	f	armel	\N
105929	FW_TEW-827DRU_v2(2.03B02).zip	TEW-827DRU_v2	2.03B02	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
13670	TEW-818DRUv1_(FW1.0.7.0).zip	TEW-818DRU	FW1.0.7.0	\N	52	\N	f	f	False	f	armel	\N
13666	TEW-818DRUv1_(FW1.0.8.0).zip	TEW-818DRU	FW1.0.8.0	\N	52	\N	f	f	False	f	armel	\N
105931	FW_TEW-827DRU_v2(2.05B11).zip	TEW-827DRU_v2	2.05B11	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
105986	FW_TEW-816DRM_v1(1.0.0.3).zip	TEW-816DRM	1.0.0.3	\N	52	\N	f	f	False	f	mipseb	\N
105932	FW_TEW-827DRU_v2(2.04B03).zip	TEW-827DRU_v2	2.04B03	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
105934	FW_TEW-827DRU_v2(2.07B02).zip	TEW-827DRU_v2	2.07B02	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
105943	FW_TEW-825DAP_v1(1.01B07).zip	TEW-825DAP	1.01B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105945	FW_TEW-825DAP_v1(1.02B05).zip	TEW-825DAP	1.02B05	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105948	1.00b18.zip	TEW-824DRU	1.00b18	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipseb	\N
105949	FW_TEW-825DAP_v1(1.08B04).zip	TEW-825DAP	1.08B04	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105950	FW_TEW-825DAP_v1(1.09B03).zip	TEW-825DAP	1.09B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105952	FW_TEW-824DRU_v1(1.01b01).zip	TEW-824DRU	1.01b01	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipseb	\N
105954	FW_TEW-824DRU_v1(1.04b01).zip	TEW-824DRU	1.04b01	\N	52	\N	f	f	[('br-lan', '192.168.10.1'), ('br-lan', '192.168.10.1')]	f	mipseb	\N
105955	FW_TEW-823DRU_v1(1.00b36).zip	TEW-823DRU	1.00b36	\N	52	\N	f	f	False	f	mipseb	\N
13297	FW_TEW-823DRU_v1(1.00b30).zip	TEW-823DRU	1.00b30	\N	52	\N	f	f	False	f	mipseb	\N
105957	FW_TEW-822DRE_v1&2(1.01B06).zip	TEW-822DRE_v2	1.01B06	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N
105958	FW_TEW-823DRU_v1(1.01b02).zip	TEW-823DRU	1.01b02	\N	52	\N	f	f	False	f	mipseb	\N
105960	FW_TEW-823DRU_v1(1.02b01).zip	TEW-823DRU	1.02b01	\N	52	\N	f	f	False	f	mipseb	\N
105961	OpenWrtFW_TEW-823DRU_v1(bb1_23_2-r45810).zip	TEW-823DRU	bb1_23_2-r45810	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.1.1')]	f	mipseb	\N
105962	FW_TEW-822DRE_v1_v2(1.03B02).zip	TEW-822DRE_v2	1.03B02	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N
105964	OpenWrtFW_TEW-823DRU_v1(bb1_23_2-r76177).zip	TEW-823DRU	bb1_23_2-r76177	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.1.1')]	f	mipseb	\N
105965	FW_TEW-821DAP_v2(2.00b10).zip	TEW-821DAP_v2	2.00b10	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105967	FW_TEW-821DAP_v2(2.01b05).zip	TEW-821DAP_v2	2.01b05	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105968	FW_TEW-821DAP_v1(1.05B13).zip	TEW-821DAP2KAC	1.05B13	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105969	FW_TEW-821DAP_v2(2.02b01).zip	TEW-821DAP_v2	2.02b01	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105971	FW_TEW-821DAP_v1(1.07B07).zip	TEW-821DAP2KAC	1.07B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105972	FW_TEW-821DAP_v1(1.05B16).zip	TEW-821DAP2KAC	1.05B16	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105973	FW_TEW-821DAP_v1(1.09B03).zip	TEW-821DAP2KAC	1.09B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105974	FW_TEW-821DAP_v1(1.08B04).zip	TEW-821DAP2KAC	1.08B04	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105976	FW_TEW-821DAP_v1(1.03b02).zip	TEW-821DAP	1.03b02	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105977	FW_TEW-821DAP_v1(1.04b08).zip	TEW-821DAP	1.04b08	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105978	TEW-821DAPv1_(FW1.02B02).zip	TEW-821DAP	FW1.02B02	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105979	TEW-820APv1_(FW1.01B01).zip	TEW-820AP	FW1.01B01	\N	52	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
105881	FW_TI-G102i_v1(1.0.5.S0).zip	TI-G102i_v1.0R	1.0.5.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105882	FW_TI-G102i_v1(1.0.6.S0).zip	TI-G102i_v1.0R	1.0.6.S0	\N	52	\N	f	f	[('eth0', '192.168.0.254'), ('eth0', '192.168.10.200')]	f	mipseb	\N
105887	FW_TFC-1600MM_C1(2.03).zip	TFC-1600MM_c1	2.03	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105888	FW_TEW-WLC100P_v1(2.06b05).zip	TEW-WLC100P	2.06b05	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105889	FW_TEW-WLC100P_v1(2.07b01).zip	TEW-WLC100P	2.07b01	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105890	FW_TEW-WLC100P_v1(2.08b01).zip	TEW-WLC100P	2.08b01	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105891	FW_TEW-WLC100P_v1(V2.03b03).zip	TEW-WLC100P	V2.03b03	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N
105892	FW_TEW-WLC100P_v1(V2.04b10).zip	TEW-WLC100P	V2.04b10	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105893	FW_TEW-WLC100P_v1(V2.05b02).zip	TEW-WLC100P	V2.05b02	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105894	FW_TEW-WLC100P_v1(V2.05b04).zip	TEW-WLC100P	V2.05b04	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105895	FW_TEW-WLC100_v1(2.00b20).zip	TEW-WLC100	2.00b20	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N
105896	FW_TEW-WLC100_v1(2.08b01).zip	TEW-WLC100	2.08b01	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105897	FW_TEW-WLC100_v1(V2.02b07).zip	TEW-WLC100	V2.02b07	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N
105898	FW_TEW-WLC100_v1(2.06b05).zip	TEW-WLC100	2.06b05	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105899	FW_TEW-WLC100_v1(V2.03b03).zip	TEW-WLC100	V2.03b03	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N
105900	FW_TEW-WLC100_v1(V2.04b10).zip	TEW-WLC100	V2.04b10	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105901	FW_TEW-WLC100_v1(V2.05b04).zip	TEW-WLC100	V2.05b04	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105902	FW_TEW-WLC100_v1(V2.05b02).zip	TEW-WLC100	V2.05b02	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
105903	FW_TEW-WLC100_v1(V2.07b01).zip	TEW-WLC100	V2.07b01	\N	52	\N	f	f	[('eth0', '192.168.1.1'), ('br-lan', '192.168.10.200')]	f	mipseb	\N
105987	FW_TEW-816DRM_v1(1.0.0.4).zip	TEW-816DRM	1.0.0.4	\N	52	\N	f	f	False	f	mipseb	\N
105635	FW_TWG-431BR_v1(v1.0.11).zip	TWG-431BR	v1.0.11	\N	52	\N	f	f	False	f	mipsel	\N
13323	Firmware_TW100-BRM504_C1.0R.zip	TW100-BRM504_c1	C1.0R	\N	52	\N	f	f	False	f	mipsel	\N
13460	Firmware_TW100-BRM504_B1_20006.zip	TW100-BRM504_b1	20006	\N	52	\N	f	f	False	f	mipsel	\N
13458	Firmware_TW100-BRM504b1_FW2005.zip	TW100-BRM504_b1	FW2005	\N	52	\N	f	f	False	f	mipsel	\N
13578	Firmware_TW100-BRM504_0121.zip	TW100-BRM504	0121	\N	52	\N	f	f	False	f	mipsel	\N
13579	Firmware_TW100-BRM504_20004.zip	TW100-BRM504	20004	\N	52	\N	f	f	False	f	mipsel	\N
13372	FW_TV-M7(2.01.1).zip	TV-M7	2.01.1	\N	52	\N	f	f	False	f	el	\N
13373	FW_TV-M7(v1.1.0build1).zip	TV-M7	v1.1.0build1	\N	52	\N	f	f	False	f	el	\N
13406	FW_TV-IP851WC(1.00.01).zip	TV-IP851WC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N
13405	FW_TV-IP851WC(1.02).zip	TV-IP851WC	1.02	\N	52	\N	f	f	False	f	mipsel	\N
105652	FW_TV-IP851WC(1.03.03).zip	TV-IP851WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
13421	FW_TV-IP751WIC(1.00.01).zip	TV-IP751WIC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N
13404	FW_TV-IP851WC(v1.01.01).zip	TV-IP851WC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
105653	FW_TV-IP751WIC(1.03.03).zip	TV-IP751WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
105655	FW_TV-IP851WC_V1(1.03.03).zip	TV-IP851WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
13123	FW_TV-IP751WC(1.00.01).zip	TV-IP751WC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N
13423	FW_TV-IP751WIC(v1.00.01).zip	TV-IP751WIC	v1.00.01	\N	52	\N	f	f	False	f	mipsel	\N
13120	FW_TV-IP751WC(1.02).zip	TV-IP751WC	1.02	\N	52	\N	f	f	False	f	mipsel	\N
13422	FW_TV-IP751WIC(v1.01.01)_032813.zip	TV-IP751WIC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
105658	FW_TV-IP751WC(1.03.03).zip	TV-IP751WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
13424	FW_TV-IP751WIC(v1.0R)-1.02.10.zip	TV-IP751WIC	v1.0R	\N	52	\N	f	f	False	f	mipsel	\N
13124	FW_TV-IP751WC(v1.00.01).zip	TV-IP751WC	v1.00.01	\N	52	\N	f	f	False	f	mipsel	\N
105659	FW_TV-IP751WIC_V1(1.03.03).zip	TV-IP751WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
13119	FW_TV-IP751WC(v1.01.01)_032813.zip	TV-IP751WC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
13425	TV-IP751WIC(1.02).zip	TV-IP751WIC	1.02	\N	52	\N	f	f	False	f	mipsel	\N
13122	FW_TV-IP751WC(v1.0R)-1.02.10.zip	TV-IP751WC	v1.0R	\N	52	\N	f	f	False	f	mipsel	\N
105661	FW_TV-IP751WC_V1(1.03.03).zip	TV-IP751WC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
13639	FW_TV-IP851WIC(1.00.01).zip	TV-IP851WIC	1.00.01	\N	52	\N	f	f	False	f	mipsel	\N
13640	FW_TV-IP851WIC(1.02).zip	TV-IP851WIC	1.02	\N	52	\N	f	f	False	f	mipsel	\N
105664	FW_TV-IP851WIC(1.03.03).zip	TV-IP851WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
105988	FW_TEW-816DRM_v1(1.0.0.5).zip	TEW-816DRM	1.0.0.5	\N	52	\N	f	f	False	f	mipseb	\N
13263	TEW-815DAPv1_(FW1.0.2.0).zip	TEW-815DAP	FW1.0.2.0	\N	52	\N	f	f	False	f	armel	\N
105989	TEW-816DRMv1_(FW1.0.0.0).zip	TEW-816DRM	FW1.0.0.0	\N	52	\N	f	f	False	f	mipseb	\N
105990	TEW-816DRMv1_(FW1.0.0.1).zip	TEW-816DRM	FW1.0.0.1	\N	52	\N	f	f	False	f	mipseb	\N
105992	FW_TEW-817DTR_v1(1.01B06).zip	TEW-817DTR	1.01B06	\N	52	\N	f	f	False	f	mipsel	\N
13476	FW_TEW-813DRU_v1(1.00B23).zip	TEW-813DRU	1.00B23	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
105993	FW_TEW-817DTR_v1(1.02B01).zip	TEW-817DTR	1.02B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
105994	TEW-817DTRv1_(FW1.00B06).zip	TEW-817DTR	FW1.00B06	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
105995	FW_TEW-813DRU_v1(1.01B03).zip	TEW-813DRU	1.01B03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
105997	TEW-813DRUv1_(FW1.01B05).zip	TEW-813DRU	FW1.01B05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
105998	FW_TEW-812DRU_v2(2.1.2.2).zip	TEW-812DRU_v2	2.1.2.2	\N	52	\N	f	f	False	f	armel	\N
13766	TEW-812DRUv2.0R_(FW2.0.2.0).zip	TEW-812DRU_v2	FW2.0.2.0	\N	52	\N	f	f	False	f	armel	\N
13764	TEW-812DRUv2.0R_(FW2.0.4.0).zip	TEW-812DRU_v2	FW2.0.4.0	\N	52	\N	f	f	False	f	armel	\N
13767	TEW-812DRUv2_(FW2.0.6.0).zip	TEW-812DRU_v2	FW2.0.6.0	\N	52	\N	f	f	False	f	armel	\N
13638	FW_TV-IP851WIC(v1.01.01).zip	TV-IP851WIC	v1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
105666	FW_TV-IP851WIC_V1(1.03.03).zip	TV-IP851WIC	1.03.03	\N	52	\N	f	f	False	f	mipsel	\N
12857	FW_TV-IP651WI(1.01.01).zip	TV-IP651WI	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
12856	FW_TV-IP651WI(1.02.01).zip	TV-IP651WI	1.02.01	\N	52	\N	f	f	False	f	mipsel	\N
12854	FW_TV-IP651WI(1.02.02).zip	TV-IP651WI	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N
12855	FW_TV-IP651WI(1.04.01).zip	TV-IP651WI	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N
12853	FW_TV-IP651WI(1.06.08).zip	TV-IP651WI	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N
105672	FW_TV-IP651WI(1.07.01).zip	TV-IP651WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
12858	FW_TV-IP651WI(v.1.05.04).zip	TV-IP651WI	v.1.05.04	\N	52	\N	f	f	False	f	mipsel	\N
105673	FW_TV-IP651WI_V1(1.07.01).zip	TV-IP651WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
12859	tvip651wi_v103_01.zip	TV-IP651WI	01	\N	52	\N	f	f	False	f	mipsel	\N
13524	FW_TV-IP-551WI-1.06.08.zip	TV-IP551WI	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N
13525	FW_TV-IP551WI(1.01.01).zip	TV-IP551WI	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
13619	FW_TV-IP-551W-1.06.08.zip	TV-IP551W	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N
13527	FW_TV-IP551WI(1.02.02).zip	TV-IP551WI	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N
13621	FW_TV-IP551W(1.01.01).zip	TV-IP551W	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
13526	FW_TV-IP551WI(1.04.01).zip	TV-IP551WI	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N
13618	FW_TV-IP551W(1.02.02).zip	TV-IP551W	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N
105679	FW_TV-IP551WI(1.07.01).zip	TV-IP551WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
13620	FW_TV-IP551W(1.04.01).zip	TV-IP551W	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N
13523	FW_TV-IP551WI(v105_04).zip	TV-IP551WI	v105_04	\N	52	\N	f	f	False	f	mipsel	\N
105680	FW_TV-IP551W(1.07.01).zip	TV-IP551W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
105681	FW_TV-IP551WI_V1(1.07.01).zip	TV-IP551WI	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
13617	FW_TV-IP551W(v1.05.04).zip	TV-IP551W	v1.05.04	\N	52	\N	f	f	False	f	mipsel	\N
13522	tvip551wi_v103_01.zip	TV-IP551WI	01	\N	52	\N	f	f	False	f	mipsel	\N
105682	FW_TV-IP551W_V1(1.07.01).zip	TV-IP551W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
13616	tvip551w_v103_01.zip	TV-IP551W	01	\N	52	\N	f	f	False	f	mipsel	\N
13074	FW_TV-IP651W(1.01.01).zip	TV-IP651W	1.01.01	\N	52	\N	f	f	False	f	mipsel	\N
13073	FW_TV-IP651W(1.02.01).zip	TV-IP651W	1.02.01	\N	52	\N	f	f	False	f	mipsel	\N
13071	FW_TV-IP651W(1.02.02).zip	TV-IP651W	1.02.02	\N	52	\N	f	f	False	f	mipsel	\N
13069	FW_TV-IP651W(1.04.01).zip	TV-IP651W	1.04.01	\N	52	\N	f	f	False	f	mipsel	\N
13068	FW_TV-IP651W(1.06.08).zip	TV-IP651W	1.06.08	\N	52	\N	f	f	False	f	mipsel	\N
105725	FW_TV-IP651W(1.07.01).zip	TV-IP651W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
13070	FW_TV-IP651W(v1.05.04).zip	TV-IP651W	v1.05.04	\N	52	\N	f	f	False	f	mipsel	\N
105726	FW_TV-IP651W_V1(1.07.01).zip	TV-IP651W	1.07.01	\N	52	\N	f	f	False	f	mipsel	\N
13072	tvip651w_v103_01.zip	TV-IP651W	01	\N	52	\N	f	f	False	f	mipsel	\N
13807	FW_TV-IP302PI_V1(1.02.32).zip	TV-IP302PI	1.02.32	\N	52	\N	f	f	False	f	armel	\N
13806	FW_TV-IP302PI_V1(1.02.34).zip	TV-IP302PI	1.02.34	\N	52	\N	f	f	False	f	armel	\N
105746	FW_TV-IP302PI_V1(1.02.38).zip	TV-IP302PI	1.02.38	\N	52	\N	f	f	False	f	armel	\N
13496	Firmware_TS-U200_1.97.zip	TS-U200	1.97	\N	52	\N	f	f	False	f	mipsel	\N
13498	Firmware_TS-U200_1.98.zip	TS-U200	1.98	\N	52	\N	f	f	False	f	mipsel	\N
13497	TSU200.1.86.0325.2005.zip	TS-U200	TSU200.1.86.0325.2005	\N	52	\N	f	f	False	f	mipsel	\N
12888	Firmware_TS-U100_1.98.zip	TS-U100	1.98	\N	52	\N	f	f	False	f	mipsel	\N
12887	TSU100.1.86.0325.2005.zip	TS-U100	TSU100.1.86.0325.2005	\N	52	\N	f	f	False	f	mipsel	\N
12908	FW_TS-S402(1.00.17).zip	TS-S402	1.00.17	\N	52	\N	f	f	False	f	armeb	\N
12909	FW_TS-S402(2.00.09).zip	TS-S402	2.00.09	\N	52	\N	f	f	False	f	armeb	\N
12910	FW_TS-S402(2.00.10).zip	TS-S402	2.00.10	\N	52	\N	f	f	False	f	armeb	\N
12907	FW_TS-S402(2.00.11).zip	TS-S402	2.00.11	\N	52	\N	f	f	False	f	armeb	\N
105748	FW_TS-S402(2.00.13).zip	TS-S402	2.00.13	\N	52	\N	f	f	False	f	armeb	\N
105750	TPL-430AP_FW1.0.zip	TPL-430APK	FW1.0	\N	52	\N	f	f	False	f	mipseb	\N
105751	FW_TPL-410AP(1.00.14).zip	TPL-410APK(v2.0R)	1.00.14	\N	52	\N	f	f	False	f	mipseb	\N
12936	FW_TPL-310AP_v1.0R(1.61).zip	TPL-310AP(v2.0R)	1.61	\N	52	\N	f	f	False	f	mipseb	\N
105775	FW_TPE-4840WS_v1(1.00.06).zip	TPE-4840WS	1.00.06	\N	52	\N	f	f	False	f	armel	\N
105776	FW_TPE-4840WS_v1(1.00.09).zip	TPE-4840WS	1.00.09	\N	52	\N	f	f	False	f	armel	\N
105777	FW_TPE-4840WS_v1(1.00.10).zip	TPE-4840WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N
105778	FW_TPE-4840WS_v1(1.00.08).zip	TPE-4840WS	1.00.08	\N	52	\N	f	f	False	f	armel	\N
105779	FW_TPE4840WS-1.00.05.zip	TPE-4840WS	1.00.05	\N	52	\N	f	f	False	f	armel	\N
105780	FW_TPE4840WS-1.00.07.zip	TPE-4840WS	1.00.07	\N	52	\N	f	f	False	f	armel	\N
105783	FW_TPE-30102WS_v1(1.00.16).zip	TPE-30102WS	1.00.16	\N	52	\N	f	f	False	f	\N	\N
105784	FW_TPE-30102WS_v1(1.00.17).zip	TPE-30102WS	1.00.17	\N	52	\N	f	f	False	f	\N	\N
105787	FW_TPE-2840WS_v1(1.00.04).zip	TPE-2840WS	1.00.04	\N	52	\N	f	f	False	f	armel	\N
105788	FW_TPE-2840WS_v1(1.00.07).zip	TPE-2840WS	1.00.07	\N	52	\N	f	f	False	f	armel	\N
105789	FW_TPE-2840WS_v1(1.00.09).zip	TPE-2840WS	1.00.09	\N	52	\N	f	f	False	f	armel	\N
105790	FW_TPE-2840WS_v1(1.00.10).zip	TPE-2840WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N
105791	FW_TPE-224WS_C1(4.00.019).zip	TPE-224WS_c1_1	4.00.019	\N	52	\N	f	f	False	f	mipseb	\N
105792	FW_TPE-224WS_C1(4.00.020).zip	TPE-224WS_c1_1	4.00.020	\N	52	\N	f	f	False	f	mipseb	\N
105793	FW_TPE-2840WS_v1(1.00.11).zip	TPE-2840WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N
13275	FW_TPE-224WS_C1(4.00.010).zip	TPE-224WS_c1	4.00.010	\N	52	\N	f	f	False	f	mipseb	\N
13276	FW_TPE-224WS_C1(4.00.011).zip	TPE-224WS_c1	4.00.011	\N	52	\N	f	f	False	f	mipseb	\N
105794	FW_TPE-224WS_C1(4.00.015).zip	TPE-224WS_c1	4.00.015	\N	52	\N	f	f	False	f	mipseb	\N
16034	FW_TPE-1620WS_v1(1.00.16).zip	TPE-1620WS_v11	1.00.16	\N	52	\N	f	f	False	f	armel	\N
12899	FW_TPE-1620WS_v1(1.00.13).zip	TPE-1620WS_v11	1.00.13	\N	52	\N	f	f	False	f	armel	\N
105799	FW_TPE-1620WS_v1(1.00.18).zip	TPE-1620WS_v11	1.00.18	\N	52	\N	f	f	False	f	armel	\N
105800	FW_TPE-1620WS_v1(1.00.17).zip	TPE-1620WS_v11	1.00.17	\N	52	\N	f	f	False	f	armel	\N
105801	FW_TPE-1620WS_v1(1.00.19).zip	TPE-1620WS_v11	1.00.19	\N	52	\N	f	f	False	f	armel	\N
105802	FW_TPE-1620WS_v1(1.00.20).zip	TPE-1620WS_v11	1.00.20	\N	52	\N	f	f	False	f	armel	\N
105803	FW_TPE-1620WS_v1(1.00.21).zip	TPE-1620WS_v11	1.00.21	\N	52	\N	f	f	False	f	armel	\N
12901	FW_TPE-1620WS_v1(1.00.10).zip	TPE-1620WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N
12902	FW_TPE-1620WS_v1(1.00.11).zip	TPE-1620WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N
105804	FW_TPE-1020WS_v1(1.0.0.28).zip	TPE-1020WS_v11	1.0.0.28	\N	52	\N	f	f	False	f	armel	\N
105805	FW_TPE-1020WS_v1(1.0.0.29).zip	TPE-1020WS_v11	1.0.0.29	\N	52	\N	f	f	False	f	armel	\N
12918	FW_TPE-1020WS_v1(1.00.13).zip	TPE-1020WS_v11	1.00.13	\N	52	\N	f	f	False	f	armel	\N
105806	FW_TPE-1020WS_v1(1.0.0.26).zip	TPE-1020WS_v11	1.0.0.26	\N	52	\N	f	f	False	f	armel	\N
12920	FW_TPE-1020WS_v1(1.00.10).zip	TPE-1020WS	1.00.10	\N	52	\N	f	f	False	f	armel	\N
16033	FW_TPE-1020WS_v1(1.00.19).zip	TPE-1020WS_v11	1.00.19	\N	52	\N	f	f	False	f	armel	\N
105807	FW_TPE-1020WS_v1(1.00.21).zip	TPE-1020WS_v11	1.00.21	\N	52	\N	f	f	False	f	armel	\N
105808	FW_TPE-1020WS_v1(1.00.23).zip	TPE-1020WS_v11	1.00.23	\N	52	\N	f	f	False	f	armel	\N
12919	FW_TPE-1020WS_v1(1.00.11).zip	TPE-1020WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N
105809	FW_TPE-1020WS_v1(1.00.24).zip	TPE-1020WS	1.00.24	\N	52	\N	f	f	False	f	armel	\N
105810	FW_TPE-1020WS_v1(1.00.25).zip	TPE-1020WS_v11	1.00.25	\N	52	\N	f	f	False	f	armel	\N
105818	FW_TL2-PG484_v1(1.01.08).zip	TL2-PG484	1.01.08	\N	52	\N	f	f	False	f	armel	\N
105819	FW_TL2-PG484_v1(1.01.11).zip	TL2-PG484	1.01.11	\N	52	\N	f	f	False	f	armel	\N
105820	FW_TL2-PG284_v1(1.01.08).zip	TL2-PG284	1.01.08	\N	52	\N	f	f	False	f	armel	\N
105821	FW_TL2-PG284_v1(1.00.03).zip	TL2-PG284	1.00.03	\N	52	\N	f	f	False	f	armel	\N
105822	FW_TL2-PG284_v1(1.01.11).zip	TL2-PG284	1.01.11	\N	52	\N	f	f	False	f	armel	\N
105823	FW_TL2-G448_v1(1.01.04).zip	TL2-G448	1.01.04	\N	52	\N	f	f	False	f	armel	\N
105824	FW_TL2-G448_v1(1.01.07).zip	TL2-G448	1.01.07	\N	52	\N	f	f	False	f	armel	\N
105825	FW_TL2-G244_v2(2.00.04).zip	TL2-G244_v2	2.00.04	\N	52	\N	f	f	False	f	armel	\N
105826	FW_TL2-G448_v1(1.00.05).zip	TL2-G448	1.00.05	\N	52	\N	f	f	False	f	armel	\N
105827	FW_TL2-G244_v2(2.01.05).zip	TL2-G244_v2	2.01.05	\N	52	\N	f	f	False	f	armel	\N
105828	FW_TL2-G244_v2(2.01.04).zip	TL2-G244_v2	2.01.04	\N	52	\N	f	f	False	f	armel	\N
105829	FW_TL2-G244_v2(2.02.08).zip	TL2-G244_v2	2.02.08	\N	52	\N	f	f	False	f	armel	\N
12860	FW_TL2-G244_v1.0R(1.00.06).zip	TL2-G244	1.00.06	\N	52	\N	f	f	False	f	armel	\N
105830	FW_TL2-G244_v2(2.02.04).zip	TL2-G244_v2	2.02.04	\N	52	\N	f	f	False	f	armel	\N
13627	FW_TL2-E284_v1.0R(1.00.010).zip	TL2-E284	1.00.010	\N	52	\N	f	f	False	f	armel	\N
13626	FW_TL2-E284_v1.0R(1.00.011).zip	TL2-E284	1.00.011	\N	52	\N	f	f	False	f	armel	\N
12861	FW_TL2-G244_v1.0R(1.00.07).zip	TL2-G244	1.00.07	\N	52	\N	f	f	False	f	armel	\N
105838	FW_TI-PG541i_v1(1.1.3.S0).zip	TI-PG541i_v1.0R	1.1.3.S0	\N	52	\N	f	f	False	f	mipseb	\N
105839	FW_TI-PG541i_v1(1.1.1.D0).zip	TI-PG541i	1.1.1.D0	\N	52	\N	f	f	False	f	mipseb	\N
105840	FW_TI-PG541i_v1(1.0.9.S0).zip	TI-PG541i	1.0.9.S0	\N	52	\N	f	f	False	f	mipseb	\N
105841	FW_TI-PG541i_v1(1.1.1.S0).zip	TI-PG541i	1.1.1.S0	\N	52	\N	f	f	False	f	mipseb	\N
105842	FW_TI-PG541i_v1(1.1.4.S0).zip	TI-PG541i	1.1.4.S0	\N	52	\N	f	f	False	f	mipseb	\N
105843	FW_TI-PG541i_v1(1.1.2.S0).zip	TI-PG541i	1.1.2.S0	\N	52	\N	f	f	False	f	mipseb	\N
105844	FW_TI-PG541i_v1(1.1.5.S0).zip	TI-PG541i	1.1.5.S0	\N	52	\N	f	f	False	f	mipseb	\N
105845	FW_TI-PG541i_v1(1.1.6.S0).zip	TI-PG541i	1.1.6.S0	\N	52	\N	f	f	False	f	mipseb	\N
105848	FW_TI-PG1284i_v1(1.1.3.S0).zip	TI-PG1284i	1.1.3.S0	\N	52	\N	f	f	False	f	armel	\N
105849	TI-PG1284i-086-1.0.0.S0.zip	TI-PG1284i_v2.0R	1.0.0.S0	\N	52	\N	f	f	False	f	armel	\N
105850	FW_TI-PG1284i_v1(1.1.4.S0).zip	TI-PG1284i	1.1.4.S0	\N	52	\N	f	f	False	f	armel	\N
105851	FW_TI-PG102i_v1(1.0.5.S0).zip	TI-PG102i_v1.0R	1.0.5.S0	\N	52	\N	f	f	False	f	mipseb	\N
105852	FW_TI-PG1284i_v1(1.1.7.S0).zip	TI-PG1284i	1.1.7.S0	\N	52	\N	f	f	False	f	armel	\N
105853	FW_TI-PG102i_v1(1.0.6.S0).zip	TI-PG102i_v1.0R	1.0.6.S0	\N	52	\N	f	f	False	f	mipseb	\N
105854	FW_TI-PG1284i_v1(1.1.8.S0).zip	TI-PG1284i	1.1.8.S0	\N	52	\N	f	f	False	f	armel	\N
105855	FW_TI-PG102i_v1(1.0.7.S0).zip	TI-PG102i_v1.0R	1.0.7.S0	\N	52	\N	f	f	False	f	mipseb	\N
105856	FW_TI-PG1284i_v1(1.1.9.S0).zip	TI-PG1284i	1.1.9.S0	\N	52	\N	f	f	False	f	armel	\N
105859	FW_TI-PG102i_v1(1.0.4.S0).zip	TI-PG102i	1.0.4.S0	\N	52	\N	f	f	False	f	mipseb	\N
105860	FW_TI-PG102i_v1(1.0.8.S0).zip	TI-PG102i	1.0.8.S0	\N	52	\N	f	f	False	f	mipseb	\N
105861	FW_TI-PG102i_v1(1.0.9.S0).zip	TI-PG102i	1.0.9.S0	\N	52	\N	f	f	False	f	mipseb	\N
105862	FW_TI-G642i_v1(1.0.0.S0).zip	TI-G642i_v1.0R	1.0.0.S0	\N	52	\N	f	f	False	f	mipseb	\N
105863	FW_TI-G642i_v1(1.0.1.S0).zip	TI-G642i_v1.0R	1.0.1.S0	\N	52	\N	f	f	False	f	mipseb	\N
105864	FW_TI-G642i_v1(1.0.2.S0).zip	TI-G642i_v1.0R	1.0.2.S0	\N	52	\N	f	f	False	f	mipseb	\N
105865	FW_TI-G642i_v1(1.0.3.S0).zip	TI-G642i_v1.0R	1.0.3.S0	\N	52	\N	f	f	False	f	mipseb	\N
105868	FW_TI-G160WS_v1(1.0.2.S0).zip	TI-G160WS	1.0.2.S0	\N	52	\N	f	f	False	f	mipseb	\N
105869	FW_TI-G160WS_v1(1.0.3.S0).zip	TI-G160WS	1.0.3.S0	\N	52	\N	f	f	False	f	mipseb	\N
105870	FW_TI-G160WS_v1(1.0.4.S0).zip	TI-G160WS	1.0.4.S0	\N	52	\N	f	f	False	f	mipseb	\N
105871	FW_TI-G160WS_v1(1.0.5.S0).zip	TI-G160WS	1.0.5.S0	\N	52	\N	f	f	False	f	mipseb	\N
105872	FW_TI-G160WS_v1(1.0.6.S0).zip	TI-G160WS	1.0.6.S0	\N	52	\N	f	f	False	f	mipseb	\N
105873	FW_TI-G160WS_v1(1.0.8.D0).zip	TI-G160WS	1.0.8.D0	\N	52	\N	f	f	False	f	mipseb	\N
105875	FW_TI-G160WS_v1(1.07.D1).zip	TI-G160WS	1.07.D1	\N	52	\N	f	f	False	f	mipseb	\N
105877	FW_TI-G102i_v1(1.0.0.S0).zip	TI-G102i_v1.0R	1.0.0.S0	\N	52	\N	f	f	False	f	mipseb	\N
105878	FW_TI-G102i_v1(1.0.1.S0).zip	TI-G102i_v1.0R	1.0.1.S0	\N	52	\N	f	f	False	f	mipseb	\N
105879	FW_TI-G102i_v1(1.0.2.S0).zip	TI-G102i_v1.0R	1.0.2.S0	\N	52	\N	f	f	False	f	mipseb	\N
105880	FW_TI-G102i_v1(1.0.3.S0).zip	TI-G102i_v1.0R	1.0.3.S0	\N	52	\N	f	f	False	f	mipseb	\N
105883	FW_THA-103AC(1.00).zip	THA-103AC	1.00	\N	52	\N	f	f	False	f	mipsel	\N
13036	FW_THA-101(1.01).zip	THA-101	1.01	\N	52	\N	f	f	False	f	mipsel	\N
105884	FW_THA-101(1.02).zip	THA-101	1.02	\N	52	\N	f	f	False	f	mipsel	\N
13637	FW_TEW-713RE(1.02).zip	TEW-713RE	1.02	\N	52	\N	f	f	False	f	mipsel	\N
105885	FW_THA-103AC_v1(1.00_F-20170120).zip	THA-103AC	1.00_F-20170120	\N	52	\N	f	f	False	f	mipsel	\N
105886	FW_THA-101(1.03).zip	THA-101	1.03	\N	52	\N	f	f	False	f	mipsel	\N
13792	FW_TFC-1600MM_A(1.17).zip	TFC-1600MM_a1	1.17	\N	52	\N	f	f	False	f	\N	\N
13096	Firmware_TFC-1600MM_1.15.zip	TFC-1600MM	1.15	\N	52	\N	f	f	False	f	\N	\N
13097	FW_TFM-1600MM(v1.21).zip	TFC-1600MM	v1.21	\N	52	\N	f	f	False	f	\N	\N
13292	TEW-MFP1v1_(FW1.045).zip	TEW-MFP1	FW1.045	\N	52	\N	f	f	False	f	mipsel	\N
105905	TEW-MFP1v1_(FW1.070.1).zip	TEW-MFP1	FW1.070.1	\N	52	\N	f	f	False	f	mipsel	\N
105917	FW_TEW-828DRU_v1(1.0.2.0).zip	TEW-828DRU	1.0.2.0	\N	52	\N	f	f	False	f	armel	\N
105918	dd-wrtFW_TEW-828DRU_v1(v3-r27490).zip	TEW-828DRU_v11	v3-r27490	\N	52	\N	f	f	False	f	armel	\N
105919	FW_TEW-828DRU_v1(1.0.4.0).zip	TEW-828DRU	1.0.4.0	\N	52	\N	f	f	False	f	armel	\N
105920	FW_TEW-828DRU_v1(1.0.5.0).zip	TEW-828DRU_v11	1.0.5.0	\N	52	\N	f	f	False	f	armel	\N
105921	FW_TEW-828DRU_v1(1.0.6.0).zip	TEW-828DRU_v11	1.0.6.0	\N	52	\N	f	f	False	f	armel	\N
105922	FW_TEW-828DRU_v1(1.0.7.2).zip	TEW-828DRU	1.0.7.2	\N	52	\N	f	f	False	f	armel	\N
105923	FW_TEW-828DRU_v1(1.0.8.1).zip	TEW-828DRU	1.0.8.1	\N	52	\N	f	f	False	f	armel	\N
105924	FW_TEW-828DRU_v1(1.0.7.0).zip	TEW-828DRU_v11	1.0.7.0	\N	52	\N	f	f	False	f	armel	\N
13184	FW_TEW-714TRU_EU_1.01.zip	TEW-714TRU	1.01	\N	52	\N	f	f	False	f	mipsel	\N
13185	FW_TEW-714TRU_EU_1.02.zip	TEW-714TRU	1.02	\N	52	\N	f	f	False	f	mipsel	\N
13789	TEW-712BRv1_(FW1.00B10).zip	TEW-712BR	FW1.00B10	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13790	TEW-712BRv1_(FW1.00B12).zip	TEW-712BR	FW1.00B12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106060	FW_TEW-714TRU_EU_1.04.zip	TEW-714TRU	1.04	\N	52	\N	f	f	False	f	mipsel	\N
13788	TEW-712BRv1_(FW1.01B02).zip	TEW-712BR	FW1.01B02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13075	FW_TEW-711BR_v2(2.00b10).zip	TEW-711BR_v2	2.00b10	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106061	TEW-711BRv2_(FW2.01b01).zip	TEW-711BR_v2	FW2.01b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12960	FW_TEW-711BR_v1(1.02b03).zip	TEW-711BR	1.02b03	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12959	FW_TEW-711BR_v1(1.02b05).zip	TEW-711BR	1.02b05	\N	52	\N	f	f	False	f	mipseb	\N
106062	FW_TEW-711BR_v1(1.03b01).zip	TEW-711BR	1.03b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12962	FW_TEW-711BR_v1.0R_v1.1R(1.01b09).zip	TEW-711BR	1.01b09	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13101	TEW-692GRv1(FW1.0.0.11).zip	TEW-692GR	FW1.0.0.11	\N	52	\N	f	f	False	f	mipsel	\N
13099	TEW-692GRv1.0R(FW1.0.0.0).zip	TEW-692GR	FW1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N
13098	TEW-692GRv1_(FW1.0.2.0).zip	TEW-692GR	FW1.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N
13100	TEW-692GRv1_(FW1.0.8.0).zip	TEW-692GR	FW1.0.8.0	\N	52	\N	f	f	False	f	mipsel	\N
13004	FW_TEW-691GRv1(1.0.0.25).zip	TEW-691GR	1.0.0.25	\N	52	\N	f	f	False	f	mipsel	\N
13007	TEW-691GR_(1.0.0.0).zip	TEW-691GR	1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N
13370	TEW-690APv1_(FW0.0.0.50).zip	TEW-690AP	FW0.0.0.50	\N	52	\N	f	f	False	f	mipsel	\N
13006	TEW-691GRv1.0R(1.0.0.25).zip	TEW-691GR	1.0.0.25	\N	52	\N	f	f	False	f	mipsel	\N
13369	TEW-690APv1_(FW1.0.0.8).zip	TEW-690AP	FW1.0.0.8	\N	52	\N	f	f	False	f	mipsel	\N
13005	TEW-691GRv1_(FW1.0.1.0).zip	TEW-691GR	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N
13455	FW_TEW-687GAv1.0R(1.0.0.0).zip	TEW-687GA	1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N
13371	TEW-690APv1_(FW1.0.1.0).zip	TEW-690AP	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N
13003	TEW-691GRv1_(FW1.1.2.0).zip	TEW-691GR	FW1.1.2.0	\N	52	\N	f	f	False	f	mipsel	\N
105999	TEW-812DRUv2_(FW2.0.10.0).zip	TEW-812DRU_v2	FW2.0.10.0	\N	52	\N	f	f	False	f	armel	\N
13368	TEW-690APv1_(FW1.0.2.0).zip	TEW-690AP	FW1.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N
106000	TEW-812DRUv2_(FW2.1.0.0).zip	TEW-812DRU_v2	FW2.1.0.0	\N	52	\N	f	f	False	f	armel	\N
13001	TEW-691GRv1_(FW1.1.3.0).zip	TEW-691GR	FW1.1.3.0	\N	52	\N	f	f	False	f	mipsel	\N
13768	TEW-812DRUv2_(FW2.0.8.0).zip	TEW-812DRU_v2	FW2.0.8.0	\N	52	\N	f	f	False	f	armel	\N
13308	TEW-676APBOv1(FW1.02).zip	TEW-676APBO	FW1.02	\N	52	\N	f	f	[('bre0', '192.168.10.100')]	f	mipsel	\N
106001	TEW-812DRUv2_(FW2.1.1.0).zip	TEW-812DRU_v2	FW2.1.1.0	\N	52	\N	f	f	False	f	armel	\N
13349	TEW-673GRU_FW100B36.zip	TEW-673GRU	FW100B36	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106002	TEW-812DRUv2_(FW2.1.2.0).zip	TEW-812DRU_v2	FW2.1.2.0	\N	52	\N	f	f	False	f	armel	\N
13350	TEW-673GRU_FW100B40.zip	TEW-673GRU	FW100B40	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13351	TEW-673GRUv1.0R(1.00b24).zip	TEW-673GRU	1.00b24	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106054	TEW-722BRMv1_(FW1.02B02).zip	TEW-722BRM	FW1.02B02	\N	52	\N	f	f	False	f	mipseb	\N
13348	TEW-673GRUv1.0R(100b21).zip	TEW-673GRU	100b21	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106055	TEW-722BRMv1_(FW1.02B08).zip	TEW-722BRM	FW1.02B08	\N	52	\N	f	f	False	f	mipseb	\N
13475	TEW-680MBv1.0R(FW1.0.0.7).zip	TEW-680MB	FW1.0.0.7	\N	52	\N	f	f	False	f	mipsel	\N
13474	TEW-680MBv1_(FW1.0.1.0).zip	TEW-680MB	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N
106056	TEW-721BRMv1_(FW1.01B01).zip	TEW-721BRM	FW1.01B01	\N	52	\N	f	f	False	f	mipseb	\N
106057	TEW-721BRMv1_(FW1.02B02).zip	TEW-721BRM	FW1.02B02	\N	52	\N	f	f	False	f	mipseb	\N
13696	FW_TEW-718BRM_BRM5_v1.0R(1.00.09).zip	TEW-718BRM	1.00.09	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
106058	TEW-721BRMv1_(FW1.02B07).zip	TEW-721BRM	FW1.02B07	\N	52	\N	f	f	False	f	mipseb	\N
13114	FW_TEW-716BRG_v1(1.03).zip	TEW-716BRG	1.03	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
13115	TEW-716BRG_(FW1.02).zip	TEW-716BRG	FW1.02	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
13182	FW_TEW-714TRU_A_1.01.zip	TEW-714TRU	1.01	\N	52	\N	f	f	False	f	mipsel	\N
13187	FW_TEW-714TRU_A_1.02.zip	TEW-714TRU	1.02	\N	52	\N	f	f	False	f	mipsel	\N
13183	FW_TEW-714TRU_A_1.03.zip	TEW-714TRU	1.03	\N	52	\N	f	f	False	f	mipsel	\N
13636	FW_TEW-713RE(1.01).zip	TEW-713RE	1.01	\N	52	\N	f	f	False	f	mipsel	\N
106059	FW_TEW-714TRU_A_1.04.zip	TEW-714TRU	1.04	\N	52	\N	f	f	False	f	mipsel	\N
13530	FW_TEW-652BRP_V1(1.10b08).zip	TEW-652BRP	1.10b08	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13528	FW_TEW652BRP_V1(1.10B14).zip	TEW-652BRP	1.10B14	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13529	TEW-652BRPV1(FW1.10B29).zip	TEW-652BRP	FW1.10B29	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
16025	FW_TEW-651BR_v2.0R_v2.1R_v2.2R(2.02b01).zip	TEW-651BR_v2.3R	2.02b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
16117	TEW-651BRv2.x_(FW2.04B1).zip	TEW-651BR_v2.3R	FW2.04B1	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106067	FW_TEW-651BR_v2(2.05B01).zip	TEW-651BR_v2.2R	2.05B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106068	FW_TEW-651BR_v2.0R(2.00b12).zip	TEW-651BR_v2.1	2.00b12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13267	FW_TEW-651BR(1.00B13).zip	TEW-651BR	1.00B13	\N	52	\N	f	f	False	f	mipseb	\N
13272	FW_TEW-651BR(1.01B11).zip	TEW-651BR	1.01B11	\N	52	\N	f	f	False	f	mipseb	\N
13270	FW_TEW-651BR(1.01B12).zip	TEW-651BR	1.01B12	\N	52	\N	f	f	False	f	mipseb	\N
13269	TEW651BR_FW101B0022.zip	TEW-651BR	FW101B0022	\N	52	\N	f	f	False	f	mipseb	\N
13447	FW_TEW-652BRP_v2.0R_v2.1R_v2.2R(2.00b44).zip	TEW-652BRP_v2	2.00b44	\N	52	\N	f	f	False	f	mipseb	\N
13271	TEW651BR_FW101B18.zip	TEW-651BR	FW101B18	\N	52	\N	f	f	False	f	mipseb	\N
13450	TEW-652BRP_v2.0R(2.00).zip	TEW-652BRP_v2	2.00	\N	52	\N	f	f	False	f	mipseb	\N
13805	FW_TEW-650APv1_(0.0.0.185).zip	TEW-650AP	0.0.0.185	\N	52	\N	f	f	False	f	mipsel	\N
13448	TEW-652BRPv2(FW2.00B45).zip	TEW-652BRP_v2	FW2.00B45	\N	52	\N	f	f	False	f	mipseb	\N
13804	TEW-650APv1_(FW1.0.1.0).zip	TEW-650AP	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N
13803	TEW-650APv1_(FW1.0.2.0).zip	TEW-650AP	FW1.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N
13451	TEW-652BRPV2.0R(2.00B32).zip	TEW-652BRP_v2	2.00B32	\N	52	\N	f	f	False	f	mipseb	\N
13449	TEW-652BRPV2.0R(2.00B36).zip	TEW-652BRP_v2	2.00B36	\N	52	\N	f	f	False	f	mipseb	\N
13453	TEW-652BRPv2.0R(200B16).zip	TEW-652BRP_v2	200B16	\N	52	\N	f	f	False	f	mipseb	\N
13452	TEW-652BRPv2.0R(200B22).zip	TEW-652BRP_v2	200B22	\N	52	\N	f	f	False	f	mipseb	\N
13383	TEW-647GAv2(1.0.1.29).zip	TEW-647GA_v2	1.0.1.29	\N	52	\N	f	f	False	f	mipsel	\N
13384	TEW-647GAv2(1.01.75).zip	TEW-647GA_v2	1.01.75	\N	52	\N	f	f	False	f	mipsel	\N
13020	FW_TEW-647GA(v0.0.7.47).zip	TEW-647GA	v0.0.7.47	\N	52	\N	f	f	False	f	mipsel	\N
13262	TEW-640MBv1.0R(1.0.0.0).zip	TEW-640MB	1.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N
13513	FW_TEW-639GRv2(2.0.0.50).zip	TEW-639GR_v2	2.0.0.50	\N	52	\N	f	f	False	f	mipsel	\N
13517	TEW-639GRv2(2.0.0.82).zip	TEW-639GR_v2	2.0.0.82	\N	52	\N	f	f	False	f	mipsel	\N
13514	TEW-639GRv2(FW2.0.0.0).zip	TEW-639GR_v2	FW2.0.0.0	\N	52	\N	f	f	False	f	mipsel	\N
13082	FW_TEW-639GR_V1(1.0.8.16).zip	TEW-639GR	1.0.8.16	\N	52	\N	f	f	False	f	mipsel	\N
13515	TEW-639GRv2_(FW2.0.0.58).zip	TEW-639GR_v2	FW2.0.0.58	\N	52	\N	f	f	False	f	mipsel	\N
13079	FW_TEW-639GR_V1.0(1.0.6.33).zip	TEW-639GR	1.0.6.33	\N	52	\N	f	f	False	f	mipsel	\N
13632	FW_TEW-638PAP_V1(1.2.7).zip	TEW-638PAP	1.2.7	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N
13081	FW_TEW-639GR_V1.0(1.0.7.10).zip	TEW-639GR	1.0.7.10	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N
13402	FW_TEW-652BRU_v1.0R(1.00b12).zip	TEW-652BRU	1.00b12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13631	TEW-638PAP_V1(1.2.5).zip	TEW-638PAP	1.2.5	\N	52	\N	f	f	False	f	mipsel	\N
13652	FW_TEW-654TR_v1.0R(1.02.01).zip	TEW-654TR	1.02.01	\N	52	\N	f	f	False	f	mipsel	\N
13078	TEW-639GRv1.0(1.0.9.178).zip	TEW-639GR	1.0.9.178	\N	52	\N	f	f	False	f	mipsel	\N
13634	TEW-638PAPv1_(FW1.2.1.5).zip	TEW-638PAP	FW1.2.1.5	\N	52	\N	f	f	False	f	mipsel	\N
13656	FW_TEW-654TR_v1.0R(1.10.10).zip	TEW-654TR	1.10.10	\N	52	\N	f	f	False	f	mipsel	\N
106069	FW_TEW-638APB_v3(3.1.5.1).zip	TEW-638APB_v31	3.1.5.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13435	FW_TEW-652BRP_v3.0R_v3.1R_v3.2R(3.00b13).zip	TEW-652BRP_v3.2	3.00b13	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13635	TEW-638PAPv1_(FW1.2.13).zip	TEW-638PAP	FW1.2.13	\N	52	\N	f	f	False	f	mipsel	\N
13655	FW_TEW-654TR_v1.0R(1.10.12).zip	TEW-654TR	1.10.12	\N	52	\N	f	f	False	f	mipsel	\N
13379	TEW-638APBv3(3.0.0.1).zip	TEW-638APB_v31	3.0.0.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13633	TEW-638PAPv1_(FW1.2.16).zip	TEW-638PAP	FW1.2.16	\N	52	\N	f	f	False	f	mipsel	\N
13654	FW_TEW-654TRv1(1.10B21).zip	TEW-654TR	1.10B21	\N	52	\N	f	f	False	f	mipsel	\N
13378	TEW-638APBv3(FW3.0.1.0).zip	TEW-638APB_v3	FW3.0.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
16028	FW_TEW-652BRP_v3.0R_v3.1R_v3.2R(3.02b05).zip	TEW-652BRP_v3.2	3.02b05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13377	TEW-638APBv3_(FW3.1.2.0).zip	TEW-638APB_v31	FW3.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13651	TEW-654TRv1_(FW1.10B24).zip	TEW-654TR	FW1.10B24	\N	52	\N	f	f	False	f	mipsel	\N
16118	TEW-652BRPv3.x_(FW3.03B01).zip	TEW-652BRP_v3.2	FW3.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106070	TEW-638APBv3_(FW3.1.4.0).zip	TEW-638APB_v31	FW3.1.4.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12943	TEW-639GRv3(FW3.0.0.0).zip	TEW-639GR_v3	FW3.0.0.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12946	TEW-639GRv3(FW3.0.0.4).zip	TEW-639GR_v3	FW3.0.0.4	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12944	TEW-639GRv3_(3.1.2.0).zip	TEW-639GR_v3	3.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12945	TEW-639GRv3_(FW3.0.2.0).zip	TEW-639GR_v3	FW3.0.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12947	TEW-639GRv3_(FW3.0.3.0).zip	TEW-639GR_v3	FW3.0.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12941	TEW-639GRv3_(FW3.1.5.0).zip	TEW-639GR_v3	FW3.1.5.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13239	FW_TEW-638APB_V1.0.8.zip	TEW-638APB	V1.0.8	\N	52	\N	f	f	False	f	mipsel	\N
12948	TEW-639GRv3_(FW3.1.6.0).zip	TEW-639GR_v3	FW3.1.6.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13674	FW_TEW-IP637AP(V3_3.0.4.0).zip	TEW-637AP_v3	V3_3.0.4.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
105925	FW_TEW-828DRU_v1(1.0.8.2).zip	TEW-828DRU_v11	1.0.8.2	\N	52	\N	f	f	False	f	armel	\N
106034	FW_TEW-738APBO_v1(1.1.11).zip	TEW-738APBO_v13	1.1.11	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13356	TEW-655BR3Gv1_(FW1.09b8).zip	TEW-655BR3G	FW1.09b8	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
13145	FW_TEW-455APBOv2(2.1.5)_FCC.zip	TEW-455APBO_v3	2.1.5	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13154	FW_TEW-455APBOv2(2.0.6)_FCC.zip	TEW-455APBO_v2	2.0.6	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13148	FW_TEW-455APBOv2(2.05_CE).zip	TEW-455APBO_v2	2.05_CE	\N	52	\N	f	f	[('eth0', '192.168.2.254')]	f	mipseb	\N
13144	FW_TEW-455APBOv2(2.05_FCC).zip	TEW-455APBO_v2	2.05_FCC	\N	52	\N	f	f	[('eth0', '192.168.2.254')]	f	mipseb	\N
13150	FW_TEW-455APBOv2(2.1.1)_CE.zip	TEW-455APBO_v2	2.1.1	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13155	FW_TEW-455APBOv2(2.1.3)_FCC.zip	TEW-455APBO_v2	2.1.3	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13152	FW_TEW-455APBOv2(2.1.4)_CE.zip	TEW-455APBO_v2	2.1.4	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13146	FW_TEW-455APBOv2(2.1.4)_FCC.zip	TEW-455APBO_v2	2.1.4	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13147	FW_TEW-455APBOv3(2.1.3)_CE.zip	TEW-455APBO_v2	2.1.3	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13484	TEW-436BRM(v1.00.14).zip	TEW-436BRM	v1.00.14	\N	52	\N	f	f	False	f	mipseb	\N
13780	fw_tew-435brm_d1.0(v1011).zip	TEW-435BRM_d1_1	v1011	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N
16022	FW_TEW-435BRM_D1.0(v1012).zip	TEW-435BRM_d1_1	v1012	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	armel	\N
13697	Firmware_TEW-435BRM(B1)_20007.zip	TEW-435BRM_b1	B1	\N	52	\N	f	f	False	f	mipsel	\N
12973	Firmware_TEW-435BRM_0121e.zip	TEW-435BRM	0121e	\N	52	\N	f	f	False	f	mipsel	\N
12977	Firmware_TEW-435BRM_40007.zip	TEW-435BRM	40007	\N	52	\N	f	f	False	f	mipsel	\N
13126	FW_TEW-434APB(v1.01.b02).zip	TEW-434APB	v1.01.b02	\N	52	\N	f	f	False	f	mipseb	\N
16020	FW_TEW-432BRP_D1(3.10B0013).zip	TEW-432BRP_d1_2	3.10B0013	\N	52	\N	f	f	False	f	mipseb	\N
13676	TEW-637APv3_(FW3.0.1.0).zip	TEW-637AP_v3	FW3.0.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
16021	FW_TEW-432BRP_D1(3.10B0015).zip	TEW-432BRP_d1_2	3.10B0015	\N	52	\N	f	f	False	f	mipseb	\N
13678	TEW-637APv3_(FW3.1.1.0).zip	TEW-637AP_v3	FW3.1.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13159	TEW-432BRPvD1.2(FW3.10B19).zip	TEW-432BRP_d1_2	FW3.10B19	\N	52	\N	f	f	False	f	mipseb	\N
13679	TEW-637APv3_(FW3.1.2.0).zip	TEW-637AP_v3	FW3.1.2.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
16115	TEW432BRP_D1.2R_FW3.10B20.zip	TEW-432BRP_d1_2	FW3.10B20	\N	52	\N	f	f	False	f	mipseb	\N
13134	FW_TEW-430APB_C1.x_D1.x(2.11).zip	TEW-430APB_d1	2.11	\N	52	\N	f	f	False	f	mipseb	\N
12895	FW_TEW-638APB_V2(1.1.10).zip	TEW-638APB_v2	1.1.10	\N	52	\N	f	f	False	f	mipsel	\N
13132	FW_TEW-430APB_C1.x_D1.x(2.12).zip	TEW-430APB_d1	2.12	\N	52	\N	f	f	False	f	mipseb	\N
13675	TEW-637v3_(FW3.0.0.1).zip	TEW-637AP_v3	FW3.0.0.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13649	Firmware_TEW-411BRPplus_2.07_EU.zip	TEW-411BRPplus	EU	\N	52	\N	f	f	False	f	mipsel	\N
12896	FW_TEW-638APB_V2(1.1.8).zip	TEW-638APB_v2	1.1.8	\N	52	\N	f	f	False	f	mipsel	\N
13770	Firmware_TEW-410APBplus_1.3.06b.zip	TEW-410APBplus	1.3.06b	\N	52	\N	f	f	False	f	mipsel	\N
13291	Firmware_TEW-230APB_3.1.zip	TEW-230APB	3.1	\N	52	\N	f	f	False	f	mipseb	\N
12905	FW_TEW-637AP_V2(1.3.0.82).zip	TEW-637AP_v2	1.3.0.82	\N	52	\N	f	f	False	f	mipsel	\N
13592	fimage_WHTa_201.zip	TEW-212APBO	201	\N	52	\N	f	f	False	f	\N	\N
13591	fimage_WHTs_200.zip	TEW-212APBO	200	\N	52	\N	f	f	False	f	\N	\N
12903	FW_TEW-637AP_V2(1.3.0.84).zip	TEW-637AP_v2	1.3.0.84	\N	52	\N	f	f	False	f	mipsel	\N
106082	FW_TEG-524WS_v1(2.10.024).zip	TEG-524WS	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106083	fw_teg-524ws_v1(v2.10.010).zip	TEG-524WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
16019	FW_TEG-448WS_C1(1.00.14).zip	TEG-448WS_c11	1.00.14	\N	52	\N	f	f	False	f	armel	\N
13801	FW_TEW-637APB_V1.0(1.2.0.26).zip	TEW-637AP	1.2.0.26	\N	52	\N	f	f	False	f	mipsel	\N
13332	FW_TEW-636APB_v1.x(1.0.0.5).zip	TEW-636APB	1.0.0.5	\N	52	\N	f	f	False	f	mipseb	\N
106084	FW_TEG-448WS_C1(1.00.15).zip	TEG-448WS_c11	1.00.15	\N	52	\N	f	f	False	f	armel	\N
106085	FW_TEG-448WS_C1(1.00.16).zip	TEG-448WS_c11	1.00.16	\N	52	\N	f	f	False	f	armel	\N
12963	TEW-635BRMv2.0R(1.00.01).zip	TEW-635BRM_v2	1.00.01	\N	52	\N	f	f	False	f	mipseb	\N
13570	FW_TEG-448WS_C1(1.00.09).zip	TEG-448WS_c1	1.00.09	\N	52	\N	f	f	False	f	armel	\N
12964	TEW-635BRMv2.0R(1.00.03).zip	TEW-635BRM_v2	1.00.03	\N	52	\N	f	f	False	f	mipseb	\N
13500	FW_TEW-635BRM_V1.0(1.00.06).zip	TEW-635BRM	1.00.06	\N	52	\N	f	f	False	f	\N	\N
13502	FW_TEW-635BRM_V1.0(1.00.09).zip	TEW-635BRM	1.00.09	\N	52	\N	f	f	False	f	\N	\N
106086	FW_TEG-448WS_C1(1.00.17).zip	TEG-448WS_c11	1.00.17	\N	52	\N	f	f	False	f	armel	\N
13042	FW_TEW-636APB_v1.x(1005).zip	TEW-636APB_v11	1005	\N	52	\N	f	f	False	f	mipseb	\N
13499	FW_TEW-635BRM_V1.0(1.00.1C).zip	TEW-635BRM	1.00.1C	\N	52	\N	f	f	False	f	\N	\N
13501	FW_TEW-635BRMv1.0(1004).zip	TEW-635BRM	1004	\N	52	\N	f	f	False	f	\N	\N
13503	FW_TEW-635BRMV1.0R(1005).zip	TEW-635BRM	1005	\N	52	\N	f	f	False	f	\N	\N
106087	FW_TEG-448WS_C1(1.00.18).zip	TEG-448WS_c1	1.00.18	\N	52	\N	f	f	False	f	armel	\N
13029	TEW-634GRU_FW101B06.zip	TEW-634GRU	FW101B06	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13028	TEW-634GRUv1_(FW1.01B14).zip	TEW-634GRU	FW1.01B14	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12912	FW_TEW-632BRP(1.00B51).zip	TEW-632BRP_A1.1	1.00B51	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12915	FW_TEW632BRR_A1.x(110B13).zip	TEW-632BRP_A1.1	110B13	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12911	TEW-632BRPA1(FW1.10B31).zip	TEW-632BRP_A1.1	FW1.10B31	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
16116	TEW-632BRPA1_(FW1.10B32).zip	TEW-632BRP_A1.1	FW1.10B32	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12914	TEW-632BRPv1_1R_(110b19).zip	TEW-632BRP_A1.1	110b19	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
105980	FW_TEW-818DRU_v1(1.0.14.6).zip	TEW-818DRU	1.0.14.6	\N	52	\N	f	f	False	f	armel	\N
16026	FW_TEW-652BRP_v3.0R(3.00b13).zip	TEW-652BRP_v3.1	3.00b13	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13668	TEW-818DRUv1.0R_OpenSource.zip	TEW-818DRU	OpenSource	\N	52	\N	f	f	[('br0', '169.254.255.1'), ('br0', '113.152.222.182')]	f	armel	\N
4552	WNDR4500v2-V1.0.0.26_1.0.16.zip	WNDR4500v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
13551	FW_TEW-651BR_v2.0R_v2.1R_v2.2R(2.00b12).zip	TEW-651BR_v2.3R	2.00b12	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
16024	FW_TEW-651BR_v2.0R(2.01b05)-TRMEX.zip	TEW-651BR_v2.1	2.01b05	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106097	FW_TEG-30284_v1(1.00.014).zip	TEG-30284	1.00.014	\N	52	\N	f	f	False	f	armel	\N
106098	FW_TEG-30284_v1(1.00.015).zip	TEG-30284	1.00.015	\N	52	\N	f	f	False	f	armel	\N
106099	FW_TEG-30284_v1(1.00.016).zip	TEG-30284	1.00.016	\N	52	\N	f	f	False	f	armel	\N
106100	FW_TEG-30284_v1(1.00.022).zip	TEG-30284	1.00.022	\N	52	\N	f	f	False	f	armel	\N
106101	FW_TEG-30284_v1(1.00.024).zip	TEG-30284	1.00.024	\N	52	\N	f	f	False	f	armel	\N
106102	FW_TEG-284WS_v1(1.00.010).zip	TEG-284WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106103	FW_TEG-30284_v1(1.00.10).zip	TEG-30284	1.00.10	\N	52	\N	f	f	False	f	armel	\N
106104	FW_TEG-284WS_v1(2.10.024).zip	TEG-284WS	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
13555	FW_TEG-424WS_v2(4.00.011).zip	TEG-424WS_v2	4.00.011	\N	52	\N	f	f	False	f	mipseb	\N
13554	FW_TEG-424WS_v2(4.00.012).zip	TEG-424WS_v2	4.00.012	\N	52	\N	f	f	False	f	mipseb	\N
106088	FW_TEG-424WS_v2(4.00.015).zip	TEG-424WS_v2	4.00.015	\N	52	\N	f	f	False	f	mipseb	\N
106089	FW_TEG-424WS_v2(4.00.020).zip	TEG-424WS_v2	4.00.020	\N	52	\N	f	f	False	f	mipseb	\N
106090	FW_TEG-40128_v1(1.00.014).zip	TEG-40128	1.00.014	\N	52	\N	f	f	False	f	armel	\N
106091	FW_TEG-40128_v1(1.00.015).zip	TEG-40128	1.00.015	\N	52	\N	f	f	False	f	armel	\N
106092	FW_TEG-40128_v1(1.00.021).zip	TEG-40128	1.00.021	\N	52	\N	f	f	False	f	armel	\N
106093	FW_TEG-40128_v1(1.00.023).zip	TEG-40128	1.00.023	\N	52	\N	f	f	False	f	armel	\N
106094	FW_TEG-40128_v1(1.00.10).zip	TEG-40128	1.00.10	\N	52	\N	f	f	False	f	armel	\N
106095	TEG-40128_v1(1.00.013).zip	TEG-40128	1.00.013	\N	52	\N	f	f	False	f	armel	\N
106096	FW_TEG-30284_v1(1.00.013).zip	TEG-30284	1.00.013	\N	52	\N	f	f	False	f	armel	\N
13761	TEW-738APBOv1_(FW1.0.19).zip	TEW-738APBO_v13	FW1.0.19	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
16031	FW_TEW-737HRE(v1.1R)-1.02B01.zip	TEW-737HRE_v1_1	v1.1R	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.2.132')]	f	mipseb	\N
13623	TEW-736REv1.0R(FW1.0.1.0).zip	TEW-736RE	FW1.0.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
4471	WNDRMAC Firmware Version 1.0.0.20.zip	WNDRMACv1	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108076	WNDRMACv2 Firmware Version 1.0.0.4.zip	WNDRMACv2	1.0.0.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3236	WNR1000 - Initial Release Firmware Version 1.0.1.5 (North America).zip	WNR1000v1	1.0.1.5	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
13186	FW_TEW-714TRU_EU_1.03.zip	TEW-714TRU	1.03	\N	52	\N	f	f	False	f	mipsel	\N
13076	FW_TEW-711BR_v2(2.00b11).zip	TEW-711BR_v2	2.00b11	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
105930	FW_TEW-827DRU_v2(2.02B02).zip	TEW-827DRU_v2	2.02B02	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
106007	FW_TEW-811DRU_v1(1.0.8.0).zip	TEW-811DRU	1.0.8.0	\N	52	\N	f	f	False	f	armel	\N
13671	TEW-818DRUv1_(FW1.0.9.0).zip	TEW-818DRU	FW1.0.9.0	\N	52	\N	f	f	False	f	armel	\N
105933	FW_TEW-827DRU_v2(2.06B04).zip	TEW-827DRU_v2	2.06B04	\N	52	\N	f	f	[('br-lan', '192.168.10.1')]	f	mipsel	\N
12961	FW_TEW-711BR_v1.0R(1.00b31).zip	TEW-711BR	1.00b31	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12933	TEW-810DRv1.0R_(FW1.00B18).zip	TEW-810DR	FW1.00B18	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipsel	\N
106045	FW_TEW-734APO_v1(1.1.1).zip	TEW-734APO	1.1.1	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100')]	f	mipseb	\N
106046	TEW-730APOv1_(FW1.1.1).zip	TEW-734APO	FW1.1.1	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100'), ('br0', '192.168.10.100')]	f	mipseb	\N
105946	FW_TEW-825DAP_v1(1.07B07).zip	TEW-825DAP	1.07B07	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105991	TEW-814DAPv1_(FW1.01B01).zip	TEW-814DAP	FW1.01B01	\N	52	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
105951	FW_TEW-825DAP_v1(1.11B03).zip	TEW-825DAP	1.11B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106013	FW_TEW-755AP_v1(1.03B10).zip	TEW-755AP2KAC	1.03B10	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106016	FW_TEW-755AP_v1(1.09B03).zip	TEW-755AP2KAC	1.09B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
105996	FW_TEW-813DRU_v1(1.02B01).zip	TEW-813DRU	1.02B01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106053	TEW-722BRMv1_(FW1.01B02).zip	TEW-722BRM	FW1.01B02	\N	52	\N	f	f	False	f	mipseb	\N
13062	TEW-721BRMv1(FW1.00B13).zip	TEW-721BRM	FW1.00B13	\N	52	\N	f	f	False	f	mipseb	\N
13699	FW_TEW-718BRM_v1(1.00.11).zip	TEW-718BRM	1.00.11	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
106105	fw_teg-284ws_v1(v2.10.010).zip	TEG-284WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
13170	FW_TEG-240WS_D1(1.00.08).zip	TEG-240WS_d11	1.00.08	\N	52	\N	f	f	False	f	armel	\N
16018	FW_TEG-240WS_D1(1.00.13).zip	TEG-240WS_d11	1.00.13	\N	52	\N	f	f	False	f	armel	\N
106106	FW_TEG-240WS_D1(1.00.16).zip	TEG-240WS_d1	1.00.16	\N	52	\N	f	f	False	f	armel	\N
106107	FW_TEG-240WS_D1(1.00.17).zip	TEG-240WS_d11	1.00.17	\N	52	\N	f	f	False	f	armel	\N
106108	FW_TEG-240WS_D1(1.00.19).zip	TEG-240WS_d1	1.00.19	\N	52	\N	f	f	False	f	armel	\N
106109	FW_TEG-240WS_v1(1.00.18).zip	TEG-240WS_d11	1.00.18	\N	52	\N	f	f	False	f	armel	\N
13235	FW_TEG-2248WS_C1(4.00.007).zip	TEG-2248WS_c1	4.00.007	\N	52	\N	f	f	False	f	mipseb	\N
13236	FW_TEG-2248WS_C1(4.00.011).zip	TEG-2248WS_c1	4.00.011	\N	52	\N	f	f	False	f	mipseb	\N
106110	FW_TEG-2248WS_C1(4.00.020).zip	TEG-2248WS_c1	4.00.020	\N	52	\N	f	f	False	f	mipseb	\N
106111	FW_TEG-204WS_v1(1.00.010).zip	TEG-204WS	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106112	FW_TEG-204WS_v1(2.10.024).zip	TEG-204WS	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106113	fw_teg-204ws_v1(v2.10.010).zip	TEG-204WS	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
13559	FW_TEG-160WS_D1(1.00.08).zip	TEG-160WS_d11	1.00.08	\N	52	\N	f	f	False	f	armel	\N
16017	FW_TEG-160WS_D1(1.00.13).zip	TEG-160WS_d11	1.00.13	\N	52	\N	f	f	False	f	armel	\N
106114	FW_TEG-160WS_D1(1.00.14).zip	TEG-160WS_d11	1.00.14	\N	52	\N	f	f	False	f	armel	\N
106115	FW_TEG-160WS_D1(1.00.15).zip	TEG-160WS_d11	1.00.15	\N	52	\N	f	f	False	f	armel	\N
106116	FW_TEG-160WS_D1(1.00.16).zip	TEG-160WS_d11	1.00.16	\N	52	\N	f	f	False	f	armel	\N
106117	FW_TEG-160WS_D1(1.00.17).zip	TEG-160WS_d1	1.00.17	\N	52	\N	f	f	False	f	armel	\N
106118	FW_TEG-082WS_v2(1.00.010).zip	TEG-082WS_v2	1.00.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106119	FW_TEG-082WS_v2(2.10.024).zip	TEG-082WS_v2	2.10.024	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
106120	fw_teg-082ws_v2(v2.10.010).zip	TEG-082WS_v2	v2.10.010	\N	52	\N	f	f	[('eth0', '192.168.1.1')]	f	mipseb	\N
12995	FW_TEG-082WS-1.00.09.zip	TEG-082WS	1.00.09	\N	52	\N	f	f	False	f	armel	\N
106121	FW_TEG-082WS_v1(1.00.11).zip	TEG-082WS	1.00.11	\N	52	\N	f	f	False	f	armel	\N
106122	FW_TEG-082WS_v1(1.00.12).zip	TEG-082WS	1.00.12	\N	52	\N	f	f	False	f	armel	\N
106123	FW_TEG-082WS_v1(1.00.13).zip	TEG-082WS	1.00.13	\N	52	\N	f	f	False	f	armel	\N
106124	FW_TEG-082WS_v1(1.00.14).zip	TEG-082WS	1.00.14	\N	52	\N	f	f	False	f	armel	\N
13266	TE100-MFP1v1_(FW1.045).zip	TE100-MFP1	FW1.045	\N	52	\N	f	f	False	f	mipsel	\N
106127	TE100-MFP1v1_(FW1.070.1).zip	TE100-MFP1	FW1.070.1	\N	52	\N	f	f	False	f	mipsel	\N
13420	FW_TDM-C504(1.04).zip	TDM-C504	1.04	\N	52	\N	f	f	False	f	mipseb	\N
13419	TDM-C504v1.0R(1.00).zip	TDM-C504	1.00	\N	52	\N	f	f	False	f	mipseb	\N
13117	FW_TDM-C500(1.03).zip	TDM-C500	1.03	\N	52	\N	f	f	False	f	mipseb	\N
13116	TDM-C500v1_(FW1.00).zip	TDM-C500	FW1.00	\N	52	\N	f	f	False	f	mipseb	\N
13033	FW_TEW-731BR_v1.0R(1.00b27).zip	TEW-731BR	1.00b27	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
13382	TEW-647GAv2(1.0.1.22).zip	TEW-647GA_v2	1.0.1.22	\N	52	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N
105956	FW_TEW-823DRU_v1(1.00b37).zip	TEW-823DRU	1.00b37	\N	52	\N	f	f	False	f	mipseb	\N
105959	FW_TEW-822DRE_v1_2(1.03B01).zip	TEW-822DRE_v2	1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N
106020	FW_TEW-753DAP_v1(2.0.3).zip	TEW-753DAP	2.0.3	\N	52	\N	f	f	[('eth0', '192.168.10.100')]	f	mipseb	\N
13456	TEW-687GAv1_(FW1.0.1.0).zip	TEW-687GA	FW1.0.1.0	\N	52	\N	f	f	False	f	mipsel	\N
13180	TEW-733GR_v1(FW1.02B01).zip	TEW-733GR	FW1.02B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13493	FW_TEW-751DR_v1(1.00B11).zip	TEW-751DR	1.00B11	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
13067	TEW-722BRMv1(FW1.00B14).zip	TEW-722BRM	FW1.00B14	\N	52	\N	f	f	False	f	mipseb	\N
105963	TEW-822DRE_FW102B02.zip	TEW-822DRE_v2	FW102B02	\N	52	\N	f	f	[('br0', '192.168.10.100'), ('br0', '169.254.110.137')]	f	mipseb	\N
106021	TEW-752DRUv1_(FW1.03B01).zip	TEW-752DRU	FW1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
105966	FW_TEW-824DRU_v1(1.03b02).zip	TEW-824DRU_v11	1.03b02	\N	52	\N	f	f	[('br-lan', '192.168.10.1'), ('br-lan', '192.168.10.1')]	f	mipseb	\N
13512	TEW-639GRv2_(FW2.0.2.0).zip	TEW-639GR_v2	FW2.0.2.0	\N	52	\N	f	f	False	f	mipsel	\N
106024	TEW-751DRv1_(FW1.03B01).zip	TEW-751DR	FW1.03B01	\N	52	\N	f	f	[('br0', '192.168.10.1'), ('br1', '192.168.20.1')]	f	mipsel	\N
12849	FW_TEW-656BRG_v1.0R(1.01c4).zip	TEW-656BRG	1.01c4	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
105970	FW_TEW-821DAP_v1(1.06B10).zip	TEW-821DAP2KAC	1.06B10	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
106066	FW_TEW-652BRP_v3(3.04b01).zip	TEW-652BRP_v3.2	3.04b01	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106029	FW_TEW-740APBO_v2(2.10).zip	TEW-740APBO_v2	2.10	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
105975	FW_TEW-821DAP_v1(1.11B03).zip	TEW-821DAP2KAC	1.11B03	\N	52	\N	f	f	[('br-lan', '192.168.10.100')]	f	mipseb	\N
16027	FW_TEW-652BRP_v3.0R_v3.1R_v3.2R(3.02b02).zip	TEW-652BRP_v3.2	3.02b02	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
106033	FW_TEW-739APBO_v1(1.1.12).zip	TEW-739APBO_v13	1.1.12	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13376	TEW-638APBv3_(FW3.1.3.0).zip	TEW-638APB_v3	FW3.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13488	TEW-820APv1(FW1.00B16).zip	TEW-820AP	FW1.00B16	\N	52	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
13153	FW_TEW-455APBOv2(2.1.5)_CE.zip	TEW-455APBO_v3	2.1.5	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13355	FW_TEW-655BR3G_v1.0R(1.09b7).zip	TEW-655BR3G	1.09b7	\N	52	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
13149	FW_TEW-455APBOv2(2.0.7)_CE.zip	TEW-455APBO_v2	2.0.7	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
13151	FW_TEW-455APBOv2(2.1.1)_FCC.zip	TEW-455APBO_v2	2.1.1	\N	52	\N	f	f	[('bre0', '192.168.2.254')]	f	mipseb	\N
12949	TEW-639GRv3_(3.1.1.0).zip	TEW-639GR_v3	3.1.1.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12942	TEW-639GRv3_(FW3.1.3.0).zip	TEW-639GR_v3	FW3.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13485	TEW-436BRM(v1.01.04).zip	TEW-436BRM	v1.01.04	\N	52	\N	f	f	False	f	mipseb	\N
105609	TL-WR802N2.0_GPL.tar.gz	TL-WR802N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
105632	7510GPL.tar.gz	TL-WA7510N	v2	\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
106136	eap_gpl_code.tar.bz2	EAP220		\N	51	\N	f	f	False	f	\N	\N
19136	DAP-1160_fw_RevAll_v1.30b09.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19142	DAP-1160_fw_RevAll_v1.32B04.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19138	DAP-1160_RevAll_fw_v112b02_2007-10-25.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19137	DAP-1160_RevAll_fw_v112b04-2007-12-19.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19143	DAP-1160_revAll_fw_version-1.10b15.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19144	DAP1160_fw_RevAll_FW120b06.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19141	DAP-1160_fw_RevAll_v1.41B01.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
19140	DAP-1160_fw_revB1_2-00_all_multi_20140117.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
105599	DAP-1160_revall_sw_fwupdate-tool-zum-updaten-von-fw-version-1.00_v1.10.b15.zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
18498	DAP-1320_fw_revA1_1-00b24_all_en_20130722.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18503	DAP-1320 _fw_revB_2-03b02_eu_multi_20141231.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N
18505	DAP-1320_fw_revA2_1-20_all_multi_20140408.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18506	DAP-1320_fw_revA2_1-20b07_all_en_20140318.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18499	DAP-1320_fw_revB1_2-00_all_multi_20140605.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18509	DAP-1320_fw_revB1_2-01b03_eu_multi_20140826.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18508	DAP-1320_fw_revB1_2-02b01_eu_multi_20140828.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18500	DAP-1320_fw_revB1_2-03b02_eu_multi_20141125.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N
18504	DAP-1320_fw_revB_2-02B01_eu_multi_20140929.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18502	DAP-1320_fw_revB_2-03_eu_multi_20141231.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N
105600	DAP-1320_fw_revC_3-00_eu_multi_20150609.zip	dap-1320		\N	18	\N	f	f	False	f	mipseb	\N
105601	DAP-1330_fw_revA_1-00_eu_multi_20151202.zip	dap-1330		\N	18	\N	f	f	False	f	mipseb	\N
20448	DAP-1350_fw_revA1_1.12EUB07.zip	dap-1350	1.12EUB07	\N	18	\N	f	f	False	f	mipsel	\N
19513	DAP-1353_fw_for-all-hardware-Rev_v210-r0030(0214181803)-080201.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19499	DAP-1353_fw_Rev-B-firmware-v3.00-r0005.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19500	DAP-1353_fw_RevA_v2.10_93ph.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19506	DAP-1353_fw_RevA_v2.10_a29a_160a_dbg02.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
106071	TEW-639GRv3_(FW3.1.7.0).zip	TEW-639GR_v3	FW3.1.7.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13673	TEW-637APv3_(3.0.0.1).zip	TEW-637AP_v3	3.0.0.1	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
13677	TEW-637APv3_(FW3.0.0.0).zip	TEW-637AP_v3	FW3.0.0.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
106227	DAP-1360_fw_revC_3-07_eu_multi_20150804.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
106228	DAP-1365_fw_revA_1-00b04_eu_multi_20160419.zip	dap-1365	1.00b04	\N	18	\N	f	f	False	f	mipseb	\N
18982	DAP-1520_fw_revA1_1-02_all_multi_20140421.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
18981	DAP-1520_fw_revA1_1-02b04_all_en_20140421.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
106229	DAP-1520_fw_revA_1-08_eu_multi_20160620.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
18977	DAP1520_fw_revA1_1-00_all_en_140102.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
106230	DAP-1520_fw_revA_1-06_eu_multi_20150323.zip	dap-1520	1.06b04	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
106231	DAP-1520_fw_revA_1-07_eu_multi_20160126.zip	dap-1520	1.07b03	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
20160	DAP-1522_fw_revAll_v1.20-rc016.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
20162	DAP-1522_fw_revA_1-40b03_all_de_20120726.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
20157	DAP-1522_fw_revA_1-41b02_all_en_20120229.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
20158	DAP-1522_fw_revB_2-01b02_all_en_20110511.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N
20156	DAP-1522_fw_revB_2-04b07_all_en_20120726.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N
10088	DAP-1522_REVB_FIRMWARE_PATCH_2.03.B01.ZIP	dap-1522		\N	18	\N	f	f	False	f	\N	\N
106232	DAP-1620_fw_revA_1-01_eu_multi_20151209.zip	dap-1620		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
106234	DAP-1620_fw_revA_1-04_eu_multi_20160622.zip	dap-1620		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
106235	DAP-1620_fw_revA_1-01b05_eu_multi_20151110.zip	dap-1620	1.01b05	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
20019	DAP1650_fw_revA1_1-00_all_en_131211.zip	dap-1650		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.176.2')]	f	mipseb	\N
19511	DAP-1353_fw_revAll_v.210-r0023(1129174051).zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19505	DAP-1353_fw_RevAll_v2.01_r0021.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19503	DAP-1353_fw_revAll_v2.10-r0016(0910094904).zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19509	DAP-1353_fw_revAll_v200-r009.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19512	DAP-1353_fw_revAll_v210-r0029(0205172447)-08-11-01.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19510	DAP-1353_fw_RevB_v3.10-rc006-2010-08-06.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19507	DAP-1353_fw_v2.10_83rb(0328174915).zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
19504	DAP-1353_fw_v2.10p02-rc010.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
106237	DAP-1665_fw_revA_1-16_eu_multi_20160712.zip	dap-1665		\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
19508	DAP-1353_RevB_fw_v3.01-rc002_2010-03-19.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19501	DAP-1353_fw_RevA_v2.11-rc013.zip	dap-1353		\N	18	\N	f	f	False	f	armeb	\N
106223	DAP-1353_fw_revB_3-16-rc015_eu_en_20160318.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19502	DAP-1353_fw_RevB_v3.15-rc012.zip	dap-1353		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18431	DAP-1665_fw_revA_1-13b05_eu_multi_20150128.zip	dap-1665	1.13b05	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
18321	DAP-1360_fw_RevAll_v1.03-B02-2010-01-04.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
106238	DAP-1665_fw_revA_1-14b06_eu_multi_20151216.zip	dap-1665	1.14b06	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
18326	DAP-1360_fw_Rev-A1_v1.10B08.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
18319	DAP-1360_fw_revb_2-14b05_ALL_en_20120922.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
106240	DAP-2230_fw_revA_1-01-rc010_all_en_20151118.zip	dap-2230		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18318	DAP-1360_fw_revb_211b29_ALL_en_20111103.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
106241	DAP-2230_fw_revA_1-03-rc018_all_en_20160329.zip	dap-2230		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18316	DAP-1360_fw_revC1_3-04b01_all_en_20130606.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
106244	DAP-2230_fw_revA1_1-02_eu_multi_20151231.zip	dap-2230	1.02rc014	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18325	DAP-1360_fw_revC1_3-05_eu_multi_20150212.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
18322	DAP-1360_fw_revC1_3-06_eu_multi_20150212.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
18736	DAP-2310 _fw_revA1_1-16_all_multi_20140108.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18317	DAP-1360_fw_revC1_v3-02B04_all_en_20120306.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
18738	DAP-2310_fw_revALL_1-10rc009_all_en_20120726.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18744	DAP-2310_fw_revALL_1-15-rc014_all_en_20121106.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18740	DAP-2310_fw_revB1_2-01-rc013_eu_en_20141016.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18739	DAP-2310_fw_revB1_2-02-rc019_eu_en_20150211.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106246	DAP-2310_fw_revB1_207-031_eu_multi_20160331.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18743	DAP-2310_fw_revB1_2_00_rc006_all_en_20140418.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18746	DAP-2310_fw_revB1_2_03_rc_023_eu_en_20150413.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106252	DAP-2330_fw_revA_1-06-rc020_eu_en_20150714.zip	dap-2330		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106253	DAP-2330_fw_revA_1-07-rc028_eu_en_20160324.zip	dap-2330		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19087	DAP-2360_fw_revA1_1_12_rc_073_eu_en_20150413.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19084	DAP-2360_fw_revALL_1-00rc016_all_en_20120726.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19081	DAP-2360_fw_revALL_1-10-rc041_all_en_20121106.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19091	DAP-2360_fw_revALL_1-11-rc062_all_en_20140107.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19085	DAP-2360_fw_revB1_2-0-2-rc021_eu_en_20150123.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106254	DAP-2360_fw_revB1_2-06-018_eu_multi_20160418.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106255	DAP-2360_fw_revB1_207-043_eu_multi_20160322.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19090	DAP-2360_fw_revB1_2_00rc006_all_en_20140417.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19083	DAP-2360_fw_revB1_2_03_rc_026_eu_en_20150408.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19082	DAP-2360_fw_revB_2-0-1-rc012_all_en_20140909.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106256	DAP-2360_fw_revB_2_05_rc031_eu_en_20150612.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106257	DAP-2360_fw_revB_2_06_rc036_eu_en_20150709.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106258	DAP-2360_fw_revB_2_07_rc043_eu_en_20160316.zip	dap-2360		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20564	DAP-2553_fw_revALL_1-20-rc011_all_en_20120726.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20568	DAP-2553_fw_v1.07_a3c0_2010-03-12.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20569	DAP-2553_fw_v101-r0031.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20562	DAP-2553_fw_v106-r0046.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20566	DAP-2553_fw_v112-rc007-2010-03-24.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20559	DAP-2553_fw_revA1_1-3-1-rc-071_eu_en_20150123.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106266	DAP-2553_fw_revA_1-32-rc074_eu_en_20160325.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20565	DAP-2553_fw_revALL_1-25-rc016_all_en_20120726.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20567	DAP-2553_fw_revALL_1-26-rc028_all_en_20121106.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20560	DAP-2553_fw_revALL_1-30-rc055_all_en_20131108.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20561	DAP-2553_fw_revB1_3-01-rc010_eu_en_20150303.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106267	DAP-2553_fw_revB1_3-06-027_eu_multi_20160414.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106268	DAP-2553_fw_revB_3-05-rc020_all_en_20151005.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106269	DAP-2553_fw_revB_3-06-rc027_eu_en_20160328.zip	dap-2553		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18794	DAP-2590_fw_revALL_1-13rc024_all_en_20100428.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N
18790	DAP-2590_fw_RevAll_v1.10rc007.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N
18792	DAP-2590_RevAll_fw_v100-r0019.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N
18791	DAP-2590_fw_revA2_1-25rc056_all_en_20120907.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N
18793	DAP-2590_fw_revALL_1-15rc012_all_en_20101130.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N
18795	DAP-2590_fw_revALL_1-20rc039_all_en_20120726.zip	dap-2590		\N	18	\N	f	f	False	f	mips64eb	\N
106281	DAP-2660_fw_1_10_rc043_eu_en_20150612.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20430	DAP-2660_fw_revA1_1-0-6-rc025_eu_en_20150123.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20427	DAP-2660_fw_revA1_1-05-rc016_eu_en_20140910.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106282	DAP-2660_fw_revA1_113-074_eu_multi_20160322.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20428	DAP-2660_fw_revA1_1_00_all_en_20140410.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106283	DAP-2660_fw_revA_1_11_rc046_eu_en_20150709.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106247	DAP-2310_fw_revB_2-07-rc031_eu_en_20160318.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106248	DAP-2310_fw_revB_2_06_rc029_eu_en_20150708.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19061	DAP-2330_fw_revA_1-01-rc014_all_en_20140922.zip	dap-2330		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106072	TEW-637APv3_(FW3.1.3.0).zip	TEW-637AP_v3	FW3.1.3.0	\N	52	\N	f	f	[('br0', '192.168.1.254')]	f	mipseb	\N
12897	FW_TEW-638APB_V2(1.2.7).zip	TEW-638APB_v2	1.2.7	\N	52	\N	f	f	False	f	mipsel	\N
12904	TEW-637AP_V2(FW1.3.0.106).zip	TEW-637AP_v2	FW1.3.0.106	\N	52	\N	f	f	False	f	mipsel	\N
13030	FW_TEW-634GRU(1.00).zip	TEW-634GRU	1.00	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
12916	FW_TEW-632BRPA1(1.10b30).zip	TEW-632BRP_A1.1	1.10b30	\N	52	\N	f	f	[('br0', '192.168.10.1')]	f	mipseb	\N
105608	gpl_902acv1_eu.tar.gz	TL-WR902AC		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
105610	TL-WR802NV3_eu.tar.gz	TL-WR802N		\N	51	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
18327	DAP-1360_fw_revC_3-06_eu_multi_20150212.zip	dap-1360		\N	18	\N	f	f	False	f	mipseb	\N
19139	DAP-1160_RevAll_fw_v112b01(1001114242).zip	dap-1160		\N	18	\N	f	f	False	f	mipseb	\N
18979	DAP-1520_fw_revA1_1-01_all_multi_20140210.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
18637	DAP-2690_fw_Rev-All_v101-rc019.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N
18635	DAP-2690_fw_Rev-All_v1.10_b88j.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N
18636	DAP-2690_fw_revALLl_1-11rc040_all_en_20120726.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N
18632	DAP-2690_fw_revB1_3-11-rc078_eu_en_20150121.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18641	DAP-2690_Firmware v1.15rc049.zip	dap-2690		\N	18	\N	f	f	False	f	mips64eb	\N
18639	DAP-2690_B1_firmware_v3.00rc013.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20558	DCS-5010L_fw_revA1_1-03b8_all_en_20140313.zip	dcs-5010l		\N	18	\N	f	f	False	f	mipsel	\N
18640	DAP-2690_fw_revB1_v3-01rc053_all_en_20140126.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18638	DAP-2690_fw_revB_1_v3-00rc013_all_en_20121220.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106291	DAP-2690_fw_revB_3-16-rc0100_all_en_20160325.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106293	DAP-2695_fw_1_15_rc050_eu_en_20150612.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19996	DAP-2695_fw_revA1_1-11-rc044_eu_en_20150123.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106294	DAP-2695_fw_revA1_117-063_eu_multi_20160322.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19992	DAP-2695_fw_revA_1-01rc021_all_en_20131119.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106295	DAP-2695_fw_revA_1_16_rc053_eu_en_20150708.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106296	DAP-2695_fw_revA_1_17_rc063_eu_en_20160316.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19993	DAP2695-firmware-v100-rc015.bin	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20023	DAP-3310_Firmware-v101-rc01.zip	dap-3310		\N	18	\N	f	f	[('bre0', '192.168.0.50')]	f	mipseb	\N
106299	DAP-3320_fw_revA1_1-00-rc011_all_en_20150818.zip	dap-3320	1.00rc011	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106300	DAP-3320_fw_revA1_1-01-014_eu_multi_20160419.zip	dap-3320	1.01rc014	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19545	DAP-3410_fw_revA_1-10-EU-rc17_all_en_20140825.zip	dap-3410	1.10rc17	\N	18	\N	f	f	[('bre0', '192.168.0.50')]	f	mipseb	\N
106302	DAP-3520_fw_revA_1-17-rc047_all_en_20160330.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20984	DAP-3520_FWv1.16rc040.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20982	DEU_DAP_3520_fw_ww103_rc004_20101221.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106306	DAP-3662_fw_revA1A2_1-02-031_eu_multi_20160414.zip	dap-3662		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18464	DAP-3662_fw_revA1_1-00EU-rc016_eu_en_20150319.zip	dap-3662	1.00eu	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106308	DAP-3662_fw_revA_1-01EUrc023_eu_en_20150804.zip	dap-3662	1.01eu	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106310	DAP-3662_fw_revA1A2_1-02_eu_multi_20160420.zip	dap-3662	1.02rc032	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19951	DAP-3690_fw_revALL_1-00rc011_all_en_20120802.zip	dap-3690	1.00	\N	18	\N	f	f	False	f	mips64eb	\N
19950	DAP-3690_fw_revA1_1_10EU_rc061_eu_en_20141229.zip	dap-3690	1.10	\N	18	\N	f	f	False	f	mips64eb	\N
19953	DAP-3690_fw_revA1_eu_en_20141229.zip	dap-3690	1.10	\N	18	\N	f	f	False	f	mips64eb	\N
106324	DCH-G020_fw_revA2_1-22_all_multi_20151222.zip	dch-g020	1.22b04	\N	18	\N	f	f	[('br0', '192.168.0.60')]	f	mipseb	\N
19077	DCHM225_fw_revA1_1-0-2_all_multi_20140826.zip	dch-m225		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N
19076	DCH-M225_fw_revA_1_02b01_all_en_20140806.zip	dch-m225	1.02b01	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N
19075	DCH-M225_fw_revA1_1-03_all_en_20150126.zip	dch-m225	1.03	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipsel	\N
18702	DCH-S150_fw_revA1_1-0-3_eu_multi_20141007.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
18703	DCH-S150_fw_revA1_1-0-4_all_en_20141201.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
18706	DCH-S150_fw_revA1_1-0-7_all_en_20150327.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
106325	DCH-S150_fw_revA1_1-0-9_all_multi_20150701.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
106326	DCH-S150_fw_revA2_1-2-1_all_multi_20151028.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
106327	DCH-S150_fw_revA2_1-20_all_multi_20150908.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
18704	DCH-S150_fw_revA_1-0-3_all_en_20140910.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
18700	DCH-S150_fw_revA_1-0-4_all_en_20141022.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
106328	DCH-S150_fw_revB_2-02b04_eu_multi_20160422.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
106329	DCH-S160_fw_revA2_1-20_all_en_20150821.zip	dch-s160	1.20	\N	18	\N	f	f	False	f	mipseb	\N
106330	DCH-S160_fw_revA2_1-22_all_en_20160222.zip	dch-s160	1.22b03	\N	18	\N	f	f	False	f	mipseb	\N
106331	DCH-S220_fw_revA2_1-20_all_en_20150819.zip	dch-s220	1.20	\N	18	\N	f	f	False	f	mipseb	\N
106332	DCH-S220_fw_revA2_1-22_eu_en_20160222.zip	dch-s220	1.22b03	\N	18	\N	f	f	False	f	mipseb	\N
19700	dcs5009l_fw_revA1_1-02-b3_all_multi_20150212.zip	dcs-5009l		\N	18	\N	f	f	False	f	mipsel	\N
18980	DAP-1520_fw_revA1_1-04b02_eu_multi_20140801.zip	dap-1520		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
18978	DAP-1520_fw_revA_1-05B02_eu_multi_20141007.zip	dap-1520	1.05b02	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
18497	DAP-1320_fw_revA1_1-11b10_all_en_20130918.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20155	DAP-1522_fw_RevAll_v1.22_rc029-2010-09-08.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
18507	DAP-1320_fw_revB1_2-01b03_all_multi_20140728.zip	dap-1320		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20161	DAP-1522_fw_revB1_2-07_all_multi_20140206.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N
20159	DAP-1522_fw_revB_2-07b01_all_en_20121203.zip	dap-1522		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '169.254.1.0')]	f	mipsel	\N
106233	DAP-1620_fw_revA_1-02_eu_multi_20151231.zip	dap-1620		\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
106236	DAP-1620_fw_revA_1-03_eu_multi_20160317.zip	dap-1620	1.02b02	\N	18	\N	f	f	[('br0', '192.168.0.50'), ('br0', '192.168.0.50'), ('br0', '192.168.0.50')]	f	mipsel	\N
20447	DAP-1350_fw_revALL_1-14euB01_all_eu_20120726.zip	dap-1350	1.14eub01	\N	18	\N	f	f	False	f	mipsel	\N
18430	DAP-1665_fw_revA_1-13_eu_multi_20150128.zip	dap-1665		\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
18428	DAP-1665_fw_revA1_1-00_all_en_131202.zip	dap-1665	1.00	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
18429	DAP-1665_fw_revA1_1-11_all_multi_20140605.zip	dap-1665	1.11	\N	18	\N	f	f	[('br0', '98.114.48.0'), ('br0', '98.114.48.32'), ('br0', '169.254.230.135')]	f	mipseb	\N
106239	DAP-2230_fw_revA1_107-028_eu_multi_20160330.zip	dap-2230		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106284	DAP-2660_fw_revA_1_13_rc074_eu_en_20160316.zip	dap-2660		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106245	DAP-2230_fw_revA1_1-03-018_eu_multi_20160406.zip	dap-2230	1.03rc018	\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106286	DAP-2690_fw_revB_3-15-rc091_eu_en_20150911.zip	dap-2690		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
18745	DAP-2310_fw_revB1_2-02-rc019_all_en_20150211.zip	dap-2310		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
19279	DCS-5020L_fw_ revA1_1-00b07_all_en_20131017.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
9299	DCS-5020L_fw_revA1_1-01b2_all_en_20130625.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
19281	DCS-5020L_fw_revA1_1-02b5_all_en_131225.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
19282	DCS-5020L_fw_revA1_1-04b5_all_en_141003.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
19277	DCS-5020L_fw_revA1_1-06-01_eu_multi_20150313.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
19274	DCS-5020L_fw_revA_1-01b2_all_en_20130531.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
19278	dcs5020l_fw_revA1_1-05-b8_all_multi_20150212.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
20731	DCS-5220_fw_verB1_2.01_100714.zip	dcs-5220		\N	18	\N	f	f	False	f	armel	\N
20932	DCS-5615_fw_revA1_1-00-10_eu_multi_20140702.zip	dcs-5615		\N	18	\N	f	f	False	f	armel	\N
20933	DCS-5615_fw_revA1_1-01-00_eu_multi_20140507.zip	dcs-5615	1.01	\N	18	\N	f	f	False	f	armel	\N
106449	DCS-5615_FW_revA1_1-03-03_eu_multi_20150803.zip	dcs-5615	1.03	\N	18	\N	f	f	False	f	armel	\N
106450	DCS-5615_fw_revA1_1-05-02_eu_multi_20160201.zip	dcs-5615	1.05	\N	18	\N	f	f	False	f	armel	\N
18474	DCS-6045LKT_fw_revA1_1-01-02_eu_multi_20150303.zip	dcs-6045lkt	1.01	\N	18	\N	f	f	False	f	mipsel	\N
106499	DCS-8200LH_fw_revA1_1-01-01_eu_multi_20160704.zip	dcs-8200lh		\N	18	\N	f	f	False	f	mipseb	\N
106500	DCS-8200LH_fw_revA1_1-00-08_eu_multi_20160426.zip	dcs-8200lh	1.00	\N	18	\N	f	f	False	f	mipseb	\N
18731	DCS_930_fw_verALL_1-00b9_all_en_110419.zip	dcs-930		\N	18	\N	f	f	False	f	mipsel	\N
18730	DCS_930_fw_revALL_1-03b4_all_en_120509.zip	dcs-930	1.03	\N	18	\N	f	f	False	f	mipsel	\N
20859	DCS-930L_fw_revALL_1-03_b4_all_eu_20111125.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20854	DCS-930L_fw_revALL_1-04b3_all_eu_20120110.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20846	DCS-930L_fw_verALL_1-03b3_all_en_110708.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20849	DCS-930L_fw_revA1_1-07B5_all_en_20121119.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20851	DCS-930L_fw_revA1_1-08B4_all_en_20130514.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20856	DCS-930L_fw_revA1_1-09B2_all_en_20131226.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20847	DCS-930L_fw_revA1_1-11B1_all_en_20140422.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20850	DCS-930L_fw_revA1_1-12-03_eu_multi_20150303.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20855	DCS-930L_fw_revALL_1-05b8_all_eu_20120704.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
20853	DCS-930L_fw_revB1_2-01-03_eu_multi_20150303.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
106522	dcs930lb1_v2.12.01.zip	dcs-930l		\N	18	\N	f	f	False	f	mipsel	\N
18612	DCS-932_fw_verALL_1-01b3_all_eu_20120110.zip	dcs-932	1.01b3	\N	18	\N	f	f	False	f	mipsel	\N
18840	DCS-932L_fw_revALL_1-01b3_all_en_110708.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
18832	DCS-932L_fw_revALL_1-02b3_all_eu_20120110.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
18834	DCS-932L_fw_revA1_1-07b2_all_en_20131226.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
18836	DCS-932L_fw_revA1_1-08b2_all_en_20140306.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
18842	DCS-932L_fw_revA1_1-09b1_all_en_20140422.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
18839	DCS-932L_fw_revALL_1-03b8_all_eu_20120704.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
18712	DCS-933L_fw_revA1_1-02b5_all_en_20130930.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N
18714	DCS-933L_fw_revA1_1-04b1_all_en_20140502.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N
18717	DCS-933L_fw_revA1_1-07-01_eu_multi_20150303.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N
18715	DCS-933L_fw_revA_1-01b7_all_en_20130531.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N
18713	dcs933l_fw_revA1_1-05_all_multi_20141027.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N
18711	dcs933l_fw_revA1_1-06-b6_all_multi_20150206.zip	dcs-933l		\N	18	\N	f	f	False	f	mipsel	\N
19714	DES-1210-52_fw_verA1_2-03-001_all_en_121002.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N
20553	DCS-935L_fw_revA1_1-03-01_eu_multi_20150330.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N
19712	DES-1210-52_fw_verALL_2-01-002_all_en_110620.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N
106546	DCS-935L_fw_revA1_1-04-06_eu_multi_20150521.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N
19711	DES-1210-52_fw_verB1_3-10-011_all_en_121127.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N
106547	DCS-935L_fw_revA1_1-05-01_eu_multi_20150622.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N
106723	DGS-1210_fw_revC_4-10-004_eu_multi_20160114.zip	dgs-1210		\N	18	\N	f	f	False	f	armel	\N
20457	DGS-1210-10_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-10		\N	18	\N	f	f	False	f	armel	\N
106549	DCS-935L_fw_revA1_1-07-03_eu_multi_20151221.zip	dcs-935l	1.07	\N	18	\N	f	f	False	f	mipseb	\N
18517	DGS-1210-10P_fw_revALL_2-02-002_all_en_20120621.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
106550	DCS-935L_fw_revA1_1-08-06_eu_multi_20160201.zip	dcs-935l	1.08	\N	18	\N	f	f	False	f	mipseb	\N
18515	DGS-1210-10P_fw_revALL_2-03-001_all_en_20121115.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
19817	DCS-950G_fw_revALL_107_ALL_en_070104.zip	dcs-950g		\N	18	\N	f	f	False	f	mipsel	\N
18511	DGS-1210-10P_fw_revB1_3-12-015_all_multi_20140522.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
106561	DCS-960L_fw_revA1_1-03-05_eu_multi_20160411.zip	dcs-960l	1.03	\N	18	\N	f	f	False	f	mipseb	\N
106728	DGS-1210-10P_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
106574	DES-1210_fw_revC_4-10-004_eu_multi_20160119.zip	des-1210		\N	18	\N	f	f	False	f	mipseb	\N
18513	DGS-1210-10P_fw_revB_3-10-013_all_en_20121113.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
19490	DES-1210-08P_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
18516	DGS-1210-10P_fw_revC_4-00-057_eu_multi_20141124.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
18514	DGS-1210-10P_fw_revC_4-00-064_eu_multi_20150303.zip	dgs-1210-10p		\N	18	\N	f	f	False	f	armel	\N
106575	DES-1210-08P_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
19422	DGS-1210-16_fw_revALL_2-02-002_all_en_20120621.zip	dgs-1210-16		\N	18	\N	f	f	False	f	armel	\N
19492	DES-1210-08P_fw_revC1_4-00-050_eu_multi_20141023.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
106576	DES-1210-08P_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
106577	DES-1210-08P_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
106578	DES-1210-08P_fw_revC_4-10-004_eu_multi_20160119.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
106579	DES-1210-08P_fw_revC_4-11-011_eu_multi_20160301.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
19496	DES-1210-08P_fw_verA1_2-03-001_all_en_121002.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
19494	DES-1210-08P_fw_verALL_2-01-002_all_en_110620.zip	des-1210-08p		\N	18	\N	f	f	False	f	armel	\N
19493	DES-1210-08P_fw_verALL_2-02-002_all_en_20120417.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
19497	DES-1210-08P_fw_verB1_3-10-011_all_en_121127.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
18571	DES-1210-28_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
106585	DES-1210-28_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
18573	DES-1210-28_fw_revC_4-00-042_eu_multi_20141119.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
106586	DES-1210-28_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
106587	DES-1210-28_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
18576	DES-1210-28_fw_verA1_2-02-002_all_en_120213.zip	des-1210-28		\N	18	\N	f	f	False	f	armel	\N
18575	DES-1210-28_fw_verALL_2-01-002_all_en_110620.zip	des-1210-28		\N	18	\N	f	f	False	f	armel	\N
18572	DES-1210-28_fw_verB1_3-10-011_all_en_121127.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
19696	DES-1210-28P_fw_revB1_3-10-011_all_en_20121127.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
19691	DES-1210-28P_fw_revB1_3-11-001_all_multi_20140206.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
19694	DES-1210-28P_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
19689	DES-1210-28P_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
106592	DES-1210-28P_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
19690	DES-1210-28P_fw_revC_4-00-050_eu_multi_20141027.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
106594	DES-1210-28P_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
106595	DES-1210-28P_fw_revC_4-10-004_eu_multi_20160119.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
106596	DES-1210-28P_fw_revC_4-12-016_eu_multi_20160519.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
19693	DES-1210-28P_fw_verA1_2-03-001_all_en_121002.zip	des-1210-28p		\N	18	\N	f	f	False	f	armel	\N
19692	DES-1210-28P_fw_verALL_2-01-002_all_en_110620.zip	des-1210-28p		\N	18	\N	f	f	False	f	armel	\N
19695	DES-1210-28P_fw_verALL_2-02-002_all_en_20120417.zip	des-1210-28p		\N	18	\N	f	f	False	f	armel	\N
19710	DES-1210-52_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N
19715	DES-1210-52_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N
106604	DES-1210-52_fw_revB1_3-12-047_eu_multi_20151125.zip	des-1210-52		\N	18	\N	f	f	False	f	armel	\N
106545	DCS-933L_fw_revAx_1-13-05_eu_multi_20160129.zip	dcs-933l	1.13	\N	18	\N	f	f	False	f	mipsel	\N
20552	DCS-935L_fw_revA1_1-00_all_multi_20141015.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N
20550	DCS-935L_fw_revA1_1-00b27_all_en_20141014.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N
19713	DES-1210-52_fw_revC_4-00-042_eu_multi_20140926.zip	des-1210-52		\N	18	\N	f	f	False	f	mipseb	\N
106605	DES-1210-52_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-52		\N	18	\N	f	f	False	f	mipseb	\N
106606	DES-1210-52_fw_revC_4-00-087_eu_multi_20151123.zip	des-1210-52		\N	18	\N	f	f	False	f	mipseb	\N
20551	DCS-935L_fw_revA1_1-02-b02_all_multi_20150116.zip	dcs-935l		\N	18	\N	f	f	False	f	mipseb	\N
20556	dcs5010l_fw_revA1_1-05-8_all_multi_20150212.zip	dcs-5010l	1.05	\N	18	\N	f	f	[('br0', '10.255.255.1'), ('br0', '10.255.255.1')]	f	mipsel	\N
20557	DCS-5010L_fw_revA1_1-06-01_eu_multi_20150313.zip	dcs-5010l	1.06	\N	18	\N	f	f	[('br0', '10.255.255.1'), ('br0', '10.255.255.1')]	f	mipsel	\N
106548	DCS-935L_fw_revA1_1-06-02_eu_multi_20150818.zip	dcs-935l	1.06	\N	18	\N	f	f	False	f	mipseb	\N
19276	DCS-5020L_fw_revA1_1-03b8_all_en_140122.zip	dcs-5020L		\N	18	\N	f	f	False	f	mipsel	\N
19995	DAP-2695_fw_revA_1-10-rc035_all_en_20140909.zip	dap-2695		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
20937	DGS-1210-20_fw_revB1_3-01-003_all_en_20120912.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N
20934	DGS-1210-20_fw_revB1_3-10-013_all_en_20121024.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N
106740	DGS-1210-20_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N
19108	DGS-1210-24_fw_revA_2-03-001_all_en_20121102.zip	dgs-1210-24		\N	18	\N	f	f	False	f	armel	\N
19112	DGS-1210-24_fw_revALL_2-02-002_all_en_20120621.zip	dgs-1210-24		\N	18	\N	f	f	False	f	armel	\N
20930	DGS-1210-28-fw_revC1_4-00-012_all_en_20130823.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N
20929	DGS-1210-28_fw_revB1_3-01-003_all_en_20120912.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N
20927	DGS-1210-28_fw_revB1_3-10-013_all_en_20121106.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N
106748	DGS-1210-28_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N
20928	DGS-1210-28_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-28		\N	18	\N	f	f	False	f	armel	\N
106751	DGS-1210-28MP_fw_revE_5-00-017_eu_multi_20160708.zip	dgs-1210-28mp		\N	18	\N	f	f	False	f	armel	\N
18801	DGS-1210-28P_fw_revB1_3-00-012_all_en_20120912.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
18798	DGS-1210-28P_fw_revB1_3-10-013_all_en_20121024.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
106754	DGS-1210-28P_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
18799	DGS-1210-28P_fw_revC1_4-00-043_all_multi_20140421.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
18800	DGS-1210-28P_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
106755	DGS-1210-28P_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
19977	DGS_1210_48_fw_revALL_v2_02_002_all_en_20120621.zip	dgs-1210-48		\N	18	\N	f	f	False	f	armel	\N
19974	DGS_1210_48_fw_revALL_v2_03_001_all_en_20121024.zip	dgs-1210-48		\N	18	\N	f	f	False	f	armel	\N
106762	DGS-1210-52_fw_revB1_3-12-047_eu_multi_20151125.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N
19936	DGS-1210-52_fw_revC1_4-00-025_all_multi_20131218.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N
106763	DGS-1210-52_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N
19938	DGS_1210_52_fw_revB1_v3_01_003_all_en_20120912.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N
19937	DGS_1210_52_fw_revB1_v3_10_013_all_en_20121024.zip	dgs-1210-52		\N	18	\N	f	f	False	f	armel	\N
18237	DGS-1210-52MP_fw_revC1_4-00-057_eu_multi_20141211.zip	dgs-1210-52mp		\N	18	\N	f	f	False	f	armel	\N
106765	DGS-1210-52MP_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-52mp		\N	18	\N	f	f	False	f	armel	\N
19572	DGS-1210-52P_fw_revC1_4-00-055_eu_multi_20141211.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N
19573	DGS-1210-52P_fw_revC_4-00-064_eu_multi_20150305.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N
106769	DGS-1210-52P_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N
18825	DGS-1500-20_fw_revA1_2-50-008_all_multi_20140220.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N
18827	DGS-1500-20_fw_revA_2-10-002_all_en_20121105.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N
18824	DGS-1500-20_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N
18828	DGS-1500-20_fw_revALL_1-00-015_all_en_20111014.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N
18826	DGS-1500-20_fw_revALL_2-00-015_all_en_20120810.zip	dgs-1500-20		\N	18	\N	f	f	False	f	armel	\N
20654	DGS-1500-28_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N
20657	DGS_1500_28_fw_revA_2_10_002_all_en_20121105.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N
20653	DGS_1500_28_fw_revALL_1_10_005_all_en_20120508.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N
20656	DGS_1500_28_fw_revALL_2_00_015_all_en_20120810.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N
106785	DGS-1500-28_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-28	2.51	\N	18	\N	f	f	False	f	armel	\N
18601	DGS-1500-28P_fw_revA1_2-50-008_all_en_20140220.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N
18602	DGS-1500-28P_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N
18603	DGS_1500_28P_fw_revA_2_10_002_all_en_20121105.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N
18604	DGS_1500_28P_fw_revALL_2_00_015_all_en_20120810.zip	dgs-1500-28p		\N	18	\N	f	f	False	f	armel	\N
106788	DGS-1500-28P_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-28p	2.51	\N	18	\N	f	f	False	f	armel	\N
20407	DGS-1500-52_fw_revA1_2_50_008_all_en_20140220.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N
20404	DGS-1500-52_fw_revA_2-51-005_all_en_20140925.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N
20406	DGS_1500_52_fw_revALL_1_10_005_all_en_20120508.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N
20409	DGS_1500_52_fw_revALL_2_00_015_all_en_20120810.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N
106789	DGS-1500-52_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-52	2.51	\N	18	\N	f	f	False	f	armel	\N
19681	DHP-1565_fw_reva_100b28_ALL_en_20111111.zip	dhp-1565		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.50'), ('br0', '169.254.83.90')]	f	mipseb	\N
19679	DHP-1565_fw_revA_1_1-00b35_en_20121024.zip	dhp-1565	1.00b35	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.50'), ('br0', '169.254.83.90')]	f	mipseb	\N
106783	DGS-1500-20_fw_revA_2-51-019_all_en_20160126.zip	dgs-1500-20	2.51	\N	18	\N	f	f	False	f	armel	\N
20658	DGS-1500-28_fw_revA_2-50-008_all_en_20140220.zip	dgs-1500-28		\N	18	\N	f	f	False	f	armel	\N
19495	DES-1210-08P_fw_revB1_3-12-015_all_multi_20140709.zip	des-1210-08p		\N	18	\N	f	f	False	f	mipseb	\N
18577	DES-1210-28_fw_revB1_3-12-007_all_multi_20140709.zip	des-1210-28		\N	18	\N	f	f	False	f	mipseb	\N
20022	DAP-3310_fw_revA2_1_10_rc_19_eu_en_20141111.zip	dap-3310	1.10rc19	\N	18	\N	f	f	[('bre0', '192.168.0.50')]	f	mipseb	\N
19421	DGS-1210-16_fw_revALL_2-03-001_all_en_20121024.zip	dgs-1210-16		\N	18	\N	f	f	False	f	armel	\N
20983	DAP-3520_fw_revA1_1.15rc039_all_en_20130308.zip	dap-3520		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106741	DGS-1210-20_fw_revC_4-00-087_eu_multi_20151123.zip	dgs-1210-20		\N	18	\N	f	f	False	f	armel	\N
106307	DAP-3662_fw_revA_1-02-rc031_eu_en_20160330.zip	dap-3662		\N	18	\N	f	f	[('br0', '192.168.0.50')]	f	mipseb	\N
106323	DCH-G020_fw_revA2_v1-24b02_all_multi.zip	dch-g020		\N	18	\N	f	f	[('br0', '192.168.0.60')]	f	mipseb	\N
106756	DGS-1210-28P_fw_revC_4-10-004_eu_multi_20160114.zip	dgs-1210-28p		\N	18	\N	f	f	False	f	armel	\N
18701	DCH-S150_fw_revA1_1-0-6_all_multi_20141231.zip	dch-s150		\N	18	\N	f	f	False	f	mipseb	\N
106497	DCS-800L_fw_revA1_1-03-09_eu_multi_20150515.zip	dcs-800l	1.03	\N	18	\N	f	f	[('br0', '10.255.255.1'), ('br0', '10.255.255.1')]	f	mipsel	\N
106593	DES-1210-28P_fw_revC_4-00-064_eu_multi_20150623.zip	des-1210-28p		\N	18	\N	f	f	False	f	mipseb	\N
18831	DCS-932L_fw_revB1_2-01-03_eu_multi_20150303.zip	dcs-932l		\N	18	\N	f	f	False	f	mipsel	\N
106770	DGS-1210-52P_fw_revC_4-10-004_eu_multi_20160119.zip	dgs-1210-52p		\N	18	\N	f	f	False	f	armel	\N
19699	DCS-5009L_fw_revA1_1-03-01_eu_multi_20150313.zip	dcs-5009l	1.03	\N	18	\N	f	f	False	f	mipsel	\N
19146	dhp-310av_fw_revA_1-04b09_all_en_20140305.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N
19150	dhp310av_fw_revA_1.01b09_all_en_20130219.zip	dhp-w310av		\N	18	\N	f	f	False	f	mipseb	\N
19014	DI-524_fw_revEx_513b01_all_en_20131112.zip	di-524		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
19533	DI-524UP_fw_reva_100_ALL_en_051019.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
19535	DI-524UP_fw_revab_102_ALL_en_060626.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
19539	DI-524UP_fw_revab_103_ALL_multi_061017.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
19538	DI-524UP_fw_revab_103b17_ALL_multi_070323.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
19534	DI-524UP_fw_revab_104b23_ALL_multi_070621.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
19536	DI-524UP_fw_revab_106b02_ALL_multi_20080514.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
19537	DI-524UP_fw_revAx_108b02_all_en_20131112.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
20007	DI-634M_fw_reva_11b0027_ALL_en_050711.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N
20006	di-634m_fw_reva_121b39_ALL_en_051102.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N
20009	di-634m_fw_reva_12b35_ALL_en_050822.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N
20008	di-634m_fw_reva_122b49_ALL_en_060302.zip	di-634m		\N	18	\N	f	f	False	f	mipseb	\N
20903	DIR-100_fw_reva_100DE_ALL_de_061120.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20896	DIR-100_fw_reva_102_ALL_en_070618.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20908	DIR-100_fw_reva_102DE_ALL_de_070618.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20907	DIR-100_fw_reva_111DEb04_ALL_de_080115.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20899	DIR-100_fw_reva_112DEb01_ALL_de_080527.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20894	DIR-100_fw_reva_113DE_ALL_de_20100811.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20901	DIR-100_fw_revA1_1-14_eu_en_20140124.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20895	DIR-100_fw_reva_113_ALL_en_20110915.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20897	DIR-100_fw_reva_113DE_ALL_de_20110916.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20900	DIR-100_fw_reva_113FR_ALL_fr_20110915.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
20279	DIR-120_fw_revA1_105wwb02_all_en_20131112.zip	dir-120		\N	18	\N	f	f	False	f	mipseb	\N
18449	DIR-300_fw_reva_103b01DE_ALL_de_071211.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18455	DIR-300_fw_reva_104b03DE_ALL_de_080305.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18446	DIR-300_fw_reva_105DE_ALL_de_20081212.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18461	DIR-300_fw_revb_201DE_ALL_de_20090708.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18459	DIR-300_fw_revb_204b01_ALL_de_20100302.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18447	DIR-300_fw_revA1_1-06b05_all_en_20131011.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18456	DIR-300_fw_reva_105DE_ALL_de_20090213.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18448	DIR-300_fw_reva_105DE_ALL_en_20090213.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18452	DIR-300_fw_revb1_212wwb02_ALL_de_20120118.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18458	DIR-300_fw_revB5_2-15b01_all_en_20130716.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18457	DIR-300_fw_revb_205b03_ALL_de_20101123.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18451	DIR-300_fw_revb_214b01_ALL_20130206.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
8636	DIR-300_REVB_FIRMWARE_PATCH_2.06.ZIP	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18460	DIR_300_fw_revb1_214b01_ALL_en_20130430_instructions.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19641	DIR-320_fw_reva_110b07_ALL_de_20081121.zip	dir-320		\N	18	\N	f	f	False	f	mipsel	\N
20411	DIR-457_fw_reva_101b01_ALL_de_20091231.zip	dir-457		\N	18	\N	f	f	False	f	mipsel	\N
20412	DIR-457_fw_reva_103B03_ALL_de_20101021.zip	dir-457	1.03B03	\N	18	\N	f	f	False	f	mipsel	\N
19553	DIR-501_fw_reva_103b03_ALL_de_20110318.zip	dir-501		\N	18	\N	f	f	False	f	mipseb	\N
20535	DIR-505_fw_reva_104b03_ALL_en_20120720.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20532	DIR-505_fw_revA1A2_1-06b05_all_en_20121218.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20534	DIR-505_fw_revA1A2_1-08_eu_en_20140428.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20538	DIR-505_fw_revA1A2_1-08b07_all_en_20140414.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20531	DIR-505_fw_revA_1-09b02_all_multi_20140725.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20537	DIR-505_fw_revA_1-09b06_eu_multi_20140815.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20539	DIR-505_fw_revA_1-10b02_eu_multi_20141230.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20533	DIR-505_fw_reva_104b17_ALL_en_20120921.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20025	DIR-505L_fw_revA1_1-02_eu_en_20140219.zip	dir-505l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
106857	DIR-505L_fw_revA_1-03_eu_multi_20141117.zip	dir-505l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20416	DIR-510L_fw_revA1_1-01b02_all_en_131218.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20415	DIR-510L_fw_revA1_1-02_eu_multi_20140305.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20414	DIR-510L_fw_revA1_1-02b04_all_en_20140107.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
19680	DHP-1565_fw_reva_101b13_ALL_en_20120420.zip	dhp-1565		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.50'), ('br0', '169.254.83.90')]	f	mipseb	\N
20408	DGS_1500_52_fw_revA_2_10_002_all_en_20121105.zip.zip	dgs-1500-52		\N	18	\N	f	f	False	f	armel	\N
20413	DIR-510L_fw_revA1_1-04b01_eu_multi_20140731.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
106858	DIR-510L_fw_revA_1-05_eu_multi_20150327.zip	dir-510l	1.05b10	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
106860	DIR-510L_fw_revA_1-07_eu_multi_20160407.zip	dir-510l	1.07b02	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20327	DIR-518L_fw_revA1_1-00_all_multi_20140331.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
20325	DIR-518L_fw_revA1_1-01b08_all_multi_20140616.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
20324	DIR-518L_fw_revA_1-01_all_multi_20140616.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
20329	DIR-518L_fw_revA_1-02B03_eu_multi_20141009.zip	dir-518l	1.02b03	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
106861	DIR-518L_fw_revA_1-04_eu_multi_20160107.zip	dir-518l	1.04b01	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
19903	DIR-600_fw_revb_201b01_ALL_de_20090708.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19912	DIR-600_fw_revb_203b02_ALL_de_20100316.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19919	DIR-600_fw_revb12_211deb06_all_de_20111222.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19907	DIR-600_fw_revb12_212b02_ALL_de_20120117.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.1')]	f	mipsel	\N
19900	DIR-600_fw_revb12_215b01_ALL_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19924	DIR-600_fw_revB5_2-11B11_all_en_20111013.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19905	DIR-600_fw_revB5_2-12B02_all_en_20120511.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19898	DIR-600_fw_revB5_2-13B01_all_en_20121123.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19911	DIR-600_fw_revB5_2-14B01_all_en_20130225.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19915	DIR-600_fw_revB5_2-15B02_all_en_20130319.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19920	DIR-600_fw_revB5_2-16B02_all_en_20130422.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19923	DIR-600_fw_revb5_2-16b05_all_en_20130527.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19917	DIR-600_fw_revb5_211b11_ALL_de_20110816.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19908	DIR-600_fw_revb5_215b01_ALL_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19906	DIR-600_fw_revB_2-16b05_all_en_20130610.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19918	DIR-600_fw_revB_2-17_eu_multi_20141124.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106862	DIR-600_fw_revB_2-18_eu_multi_20150717.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
9841	DIR-600_REVB_FIRMWARE_PATCH_2.06.ZIP	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19909	DIR_600_fw_revb1_215b01_ALL_en_20130430_instructions.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19899	DIR_600_fw_revb5_215b01_ALL_en_20130430_instructions.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18886	DIR-605L-fw_revA1_112WWb07.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18882	DIR-605L_fw_revA1_1-16b01_all_en_20150515.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18878	DIR-605L_fw_revA_1-14b01_all_en_20121119.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18889	DIR-605L_fw_revB1_2-04_all_multi_20140312.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18874	DIR-605L_fw_revB2_2-05b04_all_multi_20140811.zip.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18873	DIR-605L_fw_revB_2-00b05_all_en_20130402.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18870	DIR-605L_fw_revB_2-06_all_en_20140925.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18868	DIR-605L_fw_revB_2-06_eu_multi_20141120.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
106864	DIR-605L_fw_revB_2-07_eu_multi_20150615.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
106866	DIR-605L_fw_revB_2-09_eu_multi_20160330.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
18883	DIR-605L_fw_revBx_2-08b02_all_en_20150508.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
19758	DIR-615_fw_revd_410DEb02_ALL_de_20081212.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19753	DIR-615_fw_revd_410DEb04_ALL_de_20090122.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19760	DIR-615_fw_revd_411DEb02_ALL_de_20090302.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19747	DIR-615_fw_rev_Dx_414b02_all_en_29042013.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106869	DIR-615_fw_revC1_3-14B01_eu_20150625_beta.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
19746	DIR-615_fw_revD3_4.13b02_eu_en_20130306.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19766	DIR-615_fw_revd_413b02_ALL_en_20101206.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19756	DIR-615_fw_revD_414b04_all_en_20131029.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19764	DIR-615_fw_revQ_17-01_eu_multi_20141203.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
19765	DIR-615_fw_revQ_17-01b03_all_en_20140904.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
19770	DIR-615_fw_revQ_17-02_eu_multi_20141121.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
19752	DIR_615_fw_revd_414WWb02_ALL_en_20130430_instructions.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19293	DIR-626L_fw_revA1_101B02_all_en_20121102.zip	dir-626l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19295	DIR-626L_fw_revA_103B01_ALL_en_20130327.zip	dir-626l	1.03b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19294	DIR-626L_fw_revA_105B01_beta_ALL_en_20150310.zip	dir-626l	1.05b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106875	DIR-626L_fw_revA_1-06_eu_multi_20160325.zip	dir-626l	1.06b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19166	DIR-636L_fw_revA_1-04b06_all_en_20130305.zip	dir-636l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19165	DIR-636L_fw_reva_101B03_ALL_de_20120418.zip	dir-636l		\N	18	\N	f	f	False	f	mipsel	\N
19162	DIR-636L_fw_reva_101B03_ALL_en_20120418.zip	dir-636l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19164	DIR-636L_fw_revA_104B06_ALL_en_20130520.zip	dir-636l	1.04b06	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19163	DIR-636L_fw_revA_105B09_beta_All_en_20150309.zip	dir-636l	1.05b09	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19429	DIR-645_fw_revA1_1-04b11_all_en_20130808.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
19432	DIR-645_fw_reva_102b07_ALL_de_20111104.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
19433	DIR-645_fw_reva_102b07_ALL_en_20111104.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
19435	DIR-645_fw_reva_102b11_ALL_de_20120117.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
19430	DIR-645_fw_reva_102b11_ALL_en_20120117.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
19428	DIR-645_fw_revA_103B11_ALL_en_20121012.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
9405	DIR-645_REVA_FIRMWARE_PATCH_1.05.B01.ZIP	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
19434	DIR_645_fw_reva_104B05_ALL_en_20130430_instructions.zip	dir-645		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
106885	DIR-645_fw_revA_1-05_eu_multi_20150721.zip	dir-645	1.05b01	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20971	DIR-652_fw_reva_100b33DE_ALL_de_20100528.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N
20973	DIR-652_fw_reva_102b11DE_ALL_de_20110727.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N
20972	DIR-652_fw_reva_102b11DE_ALL_en_20110727.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N
20970	DIR-652_fw_revA_106B05_ALL_en_20120327.zip	dir-652		\N	18	\N	f	f	False	f	eb	\N
10981	DIR-652_fw_revB_1_200B40_eu_en_20121018.zip	dir-652		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20805	DIR-655_fw_revb_200b01.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20790	DIR-655_fw_revb_200b03.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20789	DIR-655_fw_revb_200b07.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20793	DIR-655_fw_revB1_2-09B13_all_en_20131022.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20811	DIR-655_fw_revb_201b05_ALL_de_20101115.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20810	DIR-655_fw_revb_205b06_ALL_de_20120118.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20795	DIR-655_fw_revb_206b02_ALL_en_20120215.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20803	DIR-655_fw_revC1_3-01B07_eu_en_20140312.zip	dir-655		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20796	DIR-655_fw_revC_3-02_eu_multi_20141226.zip	dir-655		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
106886	DIR_655_fw_revB1_2-10B01_eu_20150615.zip	dir-655		\N	18	\N	f	f	False	f	eb	\N
20472	DIR-657_fw_reva_101b15_ALL_de_20120118.zip	dir-657		\N	18	\N	f	f	False	f	eb	\N
20471	DIR-657_fw_reva_101b15_ALL_en_20120118.zip	dir-657	1.01b15	\N	18	\N	f	f	False	f	eb	\N
18734	DIR-685_fw_reva_100DEb05_ALL_de_20090526.zip	dir-685		\N	18	\N	f	f	False	f	\N	\N
18733	DIR-685_fw_reva_200patch04_ALL_de_20101117.zip	dir-685		\N	18	\N	f	f	False	f	\N	\N
18735	DIR-685_fw_reva_201b03_ALL_de_20110309.zip	dir-685	2.01B03	\N	18	\N	f	f	False	f	\N	\N
18548	DIR-810L_fw_revA1_1-00b17_all_en_20130314.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18539	DIR-810L_fw_revA1_1-01b04_all_en_20130327.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18556	DIR-810L_fw_revA1_1-02b22_all_en_20140710.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18547	DIR-810L_fw_revA1_1-02b22_eu_multi_20140904.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18542	DIR-810L_fw_revB_2-02_eu_multi_20140922.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18557	DIR-810L_fw_revB_2-03-b02_eu_multi_20141219.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18552	DIR-810L_fw_revB_2-03_eu_multi_20141219.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106906	DIR-810L_fw_revB_2-04b01beta2_eu_multi_20160615.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106907	DIR-810L_fw_revC_3-00_eu_multi_20150325.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106908	DIR-810L_fw_revC_3-01b01beta06_eu_multi_20160627.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18545	DIR-810L_revA_1-03b01_beta_all_en_20150305.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18551	DIR-810L_revB_2-04b01_beta_all_en_20150305.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18543	DIR810L_fw_revB1_2-01b03_all_multi_20140710.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18549	DIR810L_fw_revB1_2-02b01_all_multi_20140909.zip	dir-810l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18930	DIR-815_fw_reva_100b02_ALL_de_20100806.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18929	DIR-815_fw_reva_101b08_ALL_de_20110328.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18928	DIR-815_fw_reva_102patch01b06_ALL_de_20120214.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18925	DIR-815_fw_reva_103b01_ALL_de_20120423.zip	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
9049	DIR-815_REVB_FIRMWARE_PATCH_2.04.B01.ZIP	dir-815		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
18926	DIR_815_fw_reva_104B02_ALL_en_20130430_instructions.zip	dir-815	1.04B02	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19368	DIR-816_fw_revA_1-01b02_eu_multi_20141231.zip	dir-816		\N	18	\N	f	f	False	f	mipsel	\N
18228	DIR-816L_fw_revA_1-00_eu_multi_20141231.zip	dir-816l		\N	18	\N	f	f	False	f	mipsel	\N
19532	DI-524UP_fw_revab_107b01_ALL_multi_20100128.zip	di-524up		\N	18	\N	f	f	False	f	mipseb	\N
20905	DIR-100_fw_revA1_114wwb02_all_en_20131112.zip	dir-100		\N	18	\N	f	f	False	f	mipseb	\N
18233	DIR-816L_fw_revB1_2-00B01_all_multi_20140303.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18224	DIR-816L_fw_revB1_2-02_all_multi_20140219.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18235	DIR-816L_fw_revB1_2-03_all_multi_20140325.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18227	DIR-816L_fw_revB_2-05_eu_multi_20141125.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
106910	DIR-816L_fw_revB_2-06_eu_multi_20150625.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
19969	DIR-818L_fw_revA1_1-00_all_multi_20140219.zip	dir-818l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18421	DIR-818LW_fw_revA1_1-00_all_multi_20140219.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
106911	DIR-818LW_fw_revA_1-05_eu_multi_20160314.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18423	DIR-818LW_fw_revB1_2-00b07_all_multi_20140724.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18425	DIR-818LW_fw_revB1_2-01_eu_multi_20140915.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18424	DIR-818LW_fw_revB_2-02B03_eu_multi_20140930.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18422	DIR-818LW_fw_revB_2-03_eu_multi_20141127.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
19465	DIR-820L_fw_revA_1-06b02_eu_multi_20150427.zip	dir-820l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20879	DIR-825_fw_revb_201EUb15_ALL_multi_20090612.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20880	DIR-825_fw_revb_201EUb17_ALL_multi_20091019.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20878	DIR-825_fw_revb_202EUb04_ALL_multi_20100212.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20881	DIR-825_fw_revb_204EUb02_ALL_multi_20100826.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20883	DIR-825_fw_revb_205EUb09_07_all_multi_20120106.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20877	DIR-825_fw_revB_206EUb04_ALL_multi_20120319.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20882	DIR-825_fw_revC_1_301B12_en_20121204.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20108	DIR-826L_fw_reva_101b03_ALL_de_20120418.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
20106	DIR-826L_fw_revA_104B06_ALL_en_20130520.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
20111	DIR-826L_fw_revA_1_102B26_all_en_20121121.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
20110	DIR_826L_revA_106B01_beta_ALL_en_20150309.zip	dir-826l	1.06b01	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106913	DIR-842_fw_revA_1-02_eu_multi_20151008.zip	dir-842		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
106914	DIR-842_fw_revB_2-01b4_eu_multi_20160506.zip	dir-842		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
106915	DIR-842_fw_revB_2-02_eu_multi_20160718.zip	dir-842		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20530	DIR_845L_fw_reva_101B02_ALL_en_20130430_instructions.zip	dir-845l	1.01b02	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20528	DIR-845L_fw_revA1_1-02b05_all_en_20130909.zip	dir-845l	1.02b05	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20591	DIR-850L FW1.09b03.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20601	DIR-850L_fw_revA1_1-07b01_all_en_20130621.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20590	DIR-850L_fw_revA1_1-10_all_en_140109.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20597	DIR-850L_fw_revA1_1-12b05_all_en_20141006.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20594	DIR-850L_fw_revA_1-06b05_all_en_20130613.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20598	DIR-850L_fw_revA_1-12b05_eu_multi_20141212.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
10565	DIR-850L_REVA_FIRMWARE_PATCH_1.13.B01_WW.ZIP	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
19483	DIR-857_fw_reva_101b09_ALL_en_20120504.zip	dir-857		\N	18	\N	f	f	False	f	eb	\N
19484	DIR-857_fw_revA_103b01_ALL_en_20121009.zip	dir-857	1.03B01	\N	18	\N	f	f	False	f	eb	\N
106919	DIR-859_fw_revA_1-04_eu_multi_20151209.zip	dir-859	1.04b02	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
20727	DIR-860L_fw_revA1_1-04b02_all_en_20130917.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
20729	DIR-860L_fw_revA1_1-07_all_multi_20140213.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
20717	DIR-860L_fw_revA1_1-07b01_all_en_20140124.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
20728	DIR-860L_fw_revA_1-02b01_all_en_20130520.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
106920	DIR-860L_fw_revA_1-09_eu_multi_20150629.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
106921	DIR-860L_fw_revA_1-10_eu_multi_20150720.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
20719	DIR-860L_fw_revB_2-00_eu_multi_20141121.zip	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
106922	DIR-860L_fw_revB_2-03_eu_multi_20150602.zip	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
10666	DIR-860L_REVA_FIRMWARE_PATCH_1.10..B04.ZIP	dir-860l		\N	18	\N	f	f	False	f	armel	\N
10669	DIR-860L_REVB_FIRMWARE_PATCH_2.03.B03.ZIP	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20193	DIR-865L_fw_rev_A_105b01_all_en_26042013.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20195	DIR-865L_fw_revA1_1-06_all_multi_20140121.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20190	DIR-865L_fw_reva_100b24_ALL_en_20121807.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20189	DIR-865L_fw_reva_101b06_ALL_en_20120719.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20192	DIR-865L_fw_revA_105b07_all_en_20130718.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20191	DIR_865L_fw_reva_105b01_ALL_en_20130430_instructions.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
10132	DIR-865L_REVA_FIRMWARE_PATCH_1.08.B01.ZIP	dir-865l	1.08b01	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20132	DIR-868_fw_revA1_1-00_all_multi_20140506.zip	dir-868		\N	18	\N	f	f	False	f	armel	\N
18754	DIR-868L_fw_revA1_1-07b02_all_en_20140122.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
18751	DIR-868L_fw_revA1_1-08b07_eu_multi_20140729.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
18750	DIR-868L_fw_revA_1-01b05_all_en_20130603.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
18749	DIR-868L_fw_revA_1-06b01_all_en_20131115.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
18752	DIR-868L_fw_revA_1-09_eu_multi_20150212.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
106923	DIR-868L_fw_revA_1-09_eu_multi_20150702.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
106924	DIR-868L_fw_revA_1-10_eu_multi_20150723.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
18748	DIR-868L_fw_revB1_2-00b07_eu_multi_20140729.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
18753	DIR-868L_fw_revB_2-01b05_eu_multi_20150323.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
106925	DIR-868L_fw_revB_2-03_eu_multi_20150527.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
106926	DIR-868L_fw_revC_3-00_eu_multi_20151022.zip	dir-868l		\N	18	\N	f	f	False	f	armel	\N
8921	DIR-868L_REVA_FIRMWARE_PATCH_1.10.B04_WW.ZIP	dir-868l		\N	18	\N	f	f	False	f	armel	\N
106928	DIR-869_fw_revA_1-02_eu_multi_20160801.zip	dir-869		\N	18	\N	f	f	[('br0', '169.254.201.7')]	f	mipseb	\N
106930	DIR-880_REVA_FIRMWARE_PATCH_1.04.B01_WW.ZIP	dir-880l		\N	18	\N	f	f	False	f	armel	\N
18329	DIR-880L_fw_revA1_1-01b09_eu_multi_20140627.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N
18330	DIR-880L_fw_revA1_1-02b13_eu_multi_20141103.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N
18332	DIR-880L_fw_revA_1-02_eu_multi_20141210.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N
106931	DIR-880L_fw_revA_1-03_eu_multi_20150527.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N
106932	DIR880L_fw_revA1_1.00SG.zip	dir-880l		\N	18	\N	f	f	False	f	armel	\N
106933	DIR-880L_fw_revA_1-05b2-f7hb_eu_multi_20151109.zip	dir-880l	1.05b02	\N	18	\N	f	f	False	f	armel	\N
106934	DIR-880L_fw_revA_1-06_eu_multi_20151228.zip	dir-880l	1.06b01	\N	18	\N	f	f	False	f	armel	\N
106935	DIR-880L_fw_revA_1-07b08_eu_multi_20160516.zip	dir-880l	1.07b08	\N	18	\N	f	f	False	f	armel	\N
19048	DIR-890L_fw_revA_1-01_eu_multi_20141219.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N
19051	DIR-890L_fw_revA_1-02_eu_multi_20150212.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N
9114	DIR-890L_fw_revA_1-06b04_en_multi_20150416.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N
106936	DIR-890L_fw_revA_1-10_eu_multi_20160729.zip	dir-890l		\N	18	\N	f	f	False	f	armel	\N
106937	DIR-890L_fw_revA_1-07_eu_multi_20150720.zip	dir-890l	1.07b09	\N	18	\N	f	f	False	f	armel	\N
106938	DIR-890L_fw_revA_1-08_eu_multi_20150901.zip	dir-890l	1.08	\N	18	\N	f	f	False	f	armel	\N
106939	DIR-890L_fw_revA_1-09_eu_multi_20160512.zip	dir-890l	1.09b14	\N	18	\N	f	f	False	f	armel	\N
20909	DMC-1002_fw_revA_1-17_all_en_20071203.zip	DMC-1002	1.17	\N	18	\N	f	f	False	f	\N	\N
19247	DNS-313_fw_all_eng_1.01b14V1_080422.zip	dns-313		\N	18	\N	f	f	False	f	\N	\N
107074	DNS-320L_sw_revA3_Elephantdrive_Package_2-9-25_all_en_20160104.zip	dns-320l		\N	18	\N	f	f	False	f	\N	\N
107100	DNS-320LW_sw_revA2_D-Link-Vault-Addon-2-7_all_multi_20150202.zip	dns-320lw		\N	18	\N	f	f	False	f	\N	\N
20750	DNS-323_Firefly_v100.zip	dns-323		\N	18	\N	f	f	False	f	\N	\N
107111	DNS-323_sw_Skript_fun_plug_squeezebox7.4.1_installieren.zip	dns-323		\N	18	\N	f	f	False	f	armel	\N
107114	DNS-323_C1_FW_v1.10_Firefly_Package_v1.01_03022011.zip	dns-323		\N	18	\N	f	f	False	f	\N	\N
18454	DIR-300_fw_reva_104DEb16_ALL_de_080705.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18450	DIR-300_fw_reva_104DEb16_ALL_en_080705.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
2	DIR-300_fw_revb1_212wwb02_ALL_en_20120118.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
18453	DIR_300_fw_reva_106WWb02_ALL_en_20130430_instructions.zip	dir-300		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20540	DIR-505_fw_revA1A2_1-07b18_all_en_20131031.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20536	DIR-505_fw_revA_1-10_eu_multi_20141230.zip	dir-505		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
18679	DIR-508L_fw_revA_1-05_eu_multi_20150308.zip	dir-508l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20417	DIR-510L_fw_revA1_1-03B03_eu_multi_20140526.zip	dir-510l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
106859	DIR-510L_fw_revA_1-06_eu_multi_20150917.zip	dir-510l	1.06b02	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20326	DIR-518L_fw_revA_1-00b22_all_en_20140327.zip	dir-518l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
20328	DIR-518L_fw_revA_1-03_eu_multi_20150305.zip	dir-518l	1.03	\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
19901	DIR-600_fw_revb12_205b01_ALL_de_20101123.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19910	DIR-600_fw_revB1B2_2-15B01_all_en_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19921	DIR-600_fw_revB5_2-15B01_all_en_20130206.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19913	DIR-600_fw_revb5_212b02_ALL_de_20120117.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19914	DIR-600_fw_revBx_2-17b02_all_en_20140317.zip	dir-600		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106865	DIR-605L_fw_revB_2-08_eu_multi_20151209.zip	dir-605l		\N	18	\N	f	f	False	f	mipseb	\N
19755	DIR-615_fw_revd_411DEb15_ALL_de_20100303.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
19767	DIR-615_fw_revd_413DEb02_ALL_de_20101206.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
106872	DIR-615_fw_revQ_17-03_eu_multi_20151210.zip	dir-615		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
106909	DIR-816L_fw_revA_1-01_eu_multi_20150720.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18232	DIR-816L_fw_revB1_2-01_all_en_131220.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18230	DIR-816L_fw_revB_2-04B02_eu_multi_20141006.zip	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
8459	DIR-816L_REVA_FIRMWARE_PATCH_1.01.B01.ZIP	dir-816l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18426	DIR-818LW_fw_revA1_1-04_all_multi_20140901.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
18427	DIR-818LW_fw_revB1_2-00b07_eu_multi_20140724.zip	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
9898	DIR-818LW_REVB_FIRMWARE_PATCH_2.05.B01.ZIP	dir-818lw		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
106912	DIR-825_fw_revB1_2-10B01_eu_20150615_beta.zip	dir-825		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20107	DIR-826L_fw_revA_1-05_eu_multi_20141204.zip	dir-826l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
20109	DIR-826L_fw_revA_105B13_ALL_en_20140731.zip	dir-826l	1.05b13	\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
20529	DIR-845L_fw_revA_1_FW100b20_en_20130103.zip	dir-845l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20592	DIR-850L_fw_revA1_ 1-09b04_all_en_20130912.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
20599	DIR-850L_fw_revA_1-12_eu_multi_20141212.zip	dir-850l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br0', '192.168.0.1')]	f	mipseb	\N
20723	DIR-860L_fw_revA1_1-08b02_all_en_20140306.zip	dir-860l		\N	18	\N	f	f	False	f	armel	\N
20722	DIR-860L_fw_revB_2-01_eu_multi_20150310.zip	dir-860l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
20194	DIR-865L_fw_revA1_1-05b07_all_en_20130718.zip	dir-865l		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipsel	\N
107122	DNS-323_sw_Skript_fun_plug_squeezebox7.5.3_installieren.zip	dns-323		\N	18	\N	f	f	False	f	armel	\N
107166	DNS-327L_sw_revA1_D-Link_Vault_Addon_2-9-20_all_en_20160104.zip	dns-327l		\N	18	\N	f	f	False	f	\N	\N
107182	DNS-340L _sw_D-Link_Vault_Add-on_revA1_2-7_all_multi_20141104.zip	dns-340l		\N	18	\N	f	f	False	f	\N	\N
107199	DNS-340L_sw_revA1_Elephantdrive_Package_2-9-20_all_multi_20160104.zip	dns-340l		\N	18	\N	f	f	False	f	\N	\N
18395	DSL-2542B_fw_revd_EU100_ALL_multi_20070907.zip	dsl-2542b		\N	18	\N	f	f	False	f	\N	\N
18393	DSL-2542B_fw_revd_EU121_ALL_multi_20091019.zip	dsl-2542b		\N	18	\N	f	f	False	f	\N	\N
18396	DSL-2542B_fw_revd_EU123_ALL_multi_20101229.zip	dsl-2542b		\N	18	\N	f	f	False	f	\N	\N
18394	DSL-2542B_fw_revd_EU123_ALL_multi_20110211.zip	DSL-2542B	1.23	\N	18	\N	f	f	False	f	\N	\N
19940	DSL-2543B_fw_revd_EU100_ALL_multi_20070612.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19943	DSL-2543B_fw_revd_EU110_ALL_multi_20080711.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19941	DSL-2543B_fw_revd_EU120_ALL_multi_20081020.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19945	DSL-2543B_fw_revd_EU120_ALL_multi_20090205.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19939	DSL-2543B_fw_revd_EU120_ALL_multi_20090715.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19947	DSL-2543B_fw_revd_EU120_ALL_multi_20090730.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19942	DSL-2543B_fw_revd_EU121_ALL_multi_20091020.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19946	DSL-2543B_fw_revd_EU123_ALL_multi_20101229.zip	dsl-2543b		\N	18	\N	f	f	False	f	\N	\N
19944	DSL-2543B_fw_revd_EU123_ALL_multi_20110211.zip	DSL-2543B	1.23	\N	18	\N	f	f	False	f	\N	\N
20015	DSL-2640B_fw_revb_EU400_310022800_ALL_multi_080610.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N
20011	DSL-2640B_fw_refb3_5-00_eu_en_20100304.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N
20013	DSL-2640B_fw_revA_400_en_20090616.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N
20012	DSL-2640B_fw_revb3_EU500_ALL_multi_20100403.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N
20016	DSL-2640B_HW-B2_WT_1.1.0b5_20100409.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N
20018	DSL-2640B_HW-E1_WI_1.00_20110414.zip	dsl-2640b		\N	18	\N	f	f	False	f	mipseb	\N
19003	DSL-2641B_fw_revb3_EU500_ALL_multi_20100126.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N
19007	DSL-2641B_fw_revb3_EU500_ALL_multi_20100308.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N
19004	DSL-2641B_fw_revb2_EU400_310022800_ALL_multi_080610.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N
19005	DSL-2641B_fw_revb3_EU501_ALL_multi_20100831.zip	dsl-2641b		\N	18	\N	f	f	False	f	\N	\N
19006	DSL-2641B_fw_reve1_100b04_04142011_ALL_multi_20110414.zip	dsl-2641b		\N	18	\N	f	f	False	f	mipseb	\N
19002	DSL-2641B_fw_reve1_201_03092012_ALL_multi_20120309.zip	dsl-2641b		\N	18	\N	f	f	False	f	mipseb	\N
19349	DSL-2740B_fw_revc_228eu_ALL_en.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N
19358	DSL-2740B_fw_revc_261b243_ALL_multi_080609.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N
19353	DSL-2740B_fw_revc_289b401_ALL_multi_20090202.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N
19359	DSL-2740B_fw_reve_517_ALL_multi_20100830.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
19352	DSL-2740B_fw_reve_517b49_ALL_multi_20100308.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
19354	DSL-2740B_fw_revA_v2-51b181_en_20080430.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N
19350	DSL-2740B_fw_revc_295b484_ALL_multi_20090420.zip	dsl-2740b		\N	18	\N	f	f	False	f	\N	\N
19356	DSL-2740B_fw_reve_517_ALL_multi_20101007.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
19351	DSL-2740B_fw_revF1_1-00__eu_en_20100906.zip	dsl-2740b		\N	18	\N	f	f	False	f	mipseb	\N
19355	DSL-2740B_HW-F1_EU_2.04_08072012_BETA.zip	dsl-2740b		\N	18	\N	f	f	False	f	mipseb	\N
18627	UK_101b02.bin	dsl-2740r		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
20672	DSL-2741B_fw_revc_261b244_ALL_multi_080609.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N
20678	DSL-2741B_fw_revc_273b248_ALL_multi_20080818.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N
20674	DSL-2741B_fw_revc_289b402_ALL_multi_20090202.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N
20675	DSL-2741B_fw_revc_295b481_ALL_multi_20090330.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N
20676	DSL-2741B_fw_reve_517_ALL_multi_20100830.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
20671	DSL-2741B_fw_reve_517b50_ALL_multi_20100308.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
20673	DSL-2741B_fw_revc_303b489_ALL_multi_20100120.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N
20677	DSL-2741B_fw_reve_517_ALL_multi_20101007.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
20680	DSL-2741B_fw_revf1_100b09_04142011_ALL_multi_20110414.zip	dsl-2741b		\N	18	\N	f	f	False	f	mipseb	\N
20682	DSL-2741B_fw_revf1_201_03092012_ALL_multi_20120309.zip	dsl-2741b		\N	18	\N	f	f	False	f	mipseb	\N
20205	DSL-2750B_1.00_WI_20130723.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20199	DSL-2750B_1.00_WI_20131121.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
107273	DSL-2750B_1.00_WI_20150713.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20209	DSL-2750B_1.02_WI_20141113.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20201	DSL-2750B_2.03_WI_20121113.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20204	DSL-2750B_fw_revD1_1_01_eu_multi_20130311.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
107274	DSL-2750B_fw_revE1_1-00_eu_multi_20151124.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20206	DSL-2750B_HW-B1_EU_2.04_08062012_BETA.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20207	DSL-2750B_HW_D1_EU_1.02_05292014_ITA.bin	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20202	DSL-2750B_HW_D1_EU_1.02_06102013.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20203	DSL-2750B_HW_D1_EU_1.03_11052014.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20200	DSL-2750B_revB1_2-02_eu_en_20120424.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
20276	DSL-2770L_fw_A1_1-00_eu_en_130904.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
20277	DSL-2770L_fw_revA1_1-00_eu_en_20130320.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
20275	DSL-2770L_fw_revA1_1-02_eu_en_20140415.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
107279	DSL-2770L_fw_revA1_1-06_eu_06162015_beta.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
20273	DSL-2770L_fw_revA1_1.03_05202014_ITA.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
107280	DSL-2770L_fw_revA1_1-03_eu_multi_20150720.zip	dsl-2770l	1.03	\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
19462	DSL-300t_fw_revALL_100b02t02eu20040618_ALL_en_040618.zip	dsl-300t		\N	18	\N	f	f	False	f	mipsel	\N
20963	DSL-320B_fw_revd_120_ALL_multi_20090326.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N
20966	DSL-320B_fw_revd_121_ALL_multi_20090416.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N
20964	DSL-320B_fw_revA_v121_en_20090622.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N
20965	DSL_320B_fw_revd2_125_ALL_en_20130430_instructions.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N
20099	DSL-320T_fw_revA_300B01T01EU20061124_ALL_eng_20061124.zip	dsl-320t		\N	18	\N	f	f	False	f	mipsel	\N
20097	DSL-320T_fw_revA_300B01T02EU_ALL_eng_20060126.zip	dsl-320t		\N	18	\N	f	f	False	f	mipsel	\N
20098	DSL-320T_fw_revA_310B01T01EU20070628_ALL_en_20070628.zip	DSL-320T	3.10	\N	18	\N	f	f	False	f	mipsel	\N
18259	DSL-321B_fw_revd_100DE_ALL_deu_20080131.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N
18255	DSL-321B_fw_revd_101DE_ALL_multi_20090421.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N
18257	DSL-321B_fw_revd_103DE_ALL_multi_20101228.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N
18258	DSL-321b_fw_revD_1_1-00_eu_en_20100324.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N
107284	DSL-3580L_fw_revA2_1-01_eu_multi_20150515.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N
19875	DSL-3580L_fw_revA2_2-00_eu_multi_20141016.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N
107285	DSL-3580L_fw_revA2_2-01_eu_multi_20150515.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N
19874	DSL-3580L_fw_revA1_1-01_all_en_20140307.zip	dsl-3580l	1.01	\N	18	\N	f	f	False	f	mipseb	\N
19872	DSL-3580L_fw_revA2_2-00_eu_multi_20140921.zip	dsl-3580l	2.00	\N	18	\N	f	f	False	f	mipseb	\N
19674	DSL-360t_fw_revALL_100b02t02de20050429pb_ALL_en_20050429.zip	dsl-360t		\N	18	\N	f	f	False	f	mipsel	\N
20626	DSL-362t_fw_revALL_20050607zb_CZ_cz_200500607.zip	dsl-362t		\N	18	\N	f	f	False	f	mipsel	\N
18804	DSL-380T_fw_revA_300B01T02DE20070211_ALL_de_20070211.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N
18807	DSL-380T_fw_revA_300B01T02EU_ALL_eng_20060126.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N
18806	DSL-380T_fw_reva_300B01T02DE20070430_ALL_de_20070430.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N
20968	DSL-504T_fw_revALL_100B02T02_EEU_PL_040610.zip	dsl-504t	1.00	\N	18	\N	f	f	False	f	mipsel	\N
19558	DSL-524T_fw_revA_300B01T01EUA20061124_ALL_eng_20061124.zip	dsl-524t		\N	18	\N	f	f	False	f	mipsel	\N
19560	DSL-524T_fw_revA_300B01T02EU-A_ALL_eng_20060209.zip	dsl-524t		\N	18	\N	f	f	False	f	mipsel	\N
19561	DSL-524T_fw_reva_300B01T02EUA20070510_ALL_en_20070510.zip	dsl-524t		\N	18	\N	f	f	False	f	mipsel	\N
19559	DSL-524T_fw_revA_310B01T02EUA20070613_ALL_en_20070613.zip	dsl-524t	3.10	\N	18	\N	f	f	False	f	mipsel	\N
19575	DSL-562t_fw_revALL_20040813_ALL_multi_040813.zip	dsl-562t		\N	18	\N	f	f	False	f	mipsel	\N
18905	DSL-564t_fw_revALL_20040813_ALL_en_040813.zip	dsl-564t		\N	18	\N	f	f	False	f	mipsel	\N
19826	DSL-584T_fw_revA_300B01T02EU-A_ALL_eng_20060209.zip	dsl-584t		\N	18	\N	f	f	False	f	mipsel	\N
19827	DSL-584T_fw_reva_300B01T02EUA20060717_ALL_en_060717.zip	dsl-584t		\N	18	\N	f	f	False	f	mipsel	\N
19825	DSL-584T_fw_reva_300B01T02EUA20061127_ALL_en_061127.zip	dsl-584t		\N	18	\N	f	f	False	f	mipsel	\N
19608	DSL-G624T_fw_revA_300B01T02EU-A_ALL_eng_20060208.zip	dsl-g624t		\N	18	\N	f	f	False	f	mipsel	\N
19607	DSL-G624T_fw_reva_302B01T02EUA20061124_ALL_en_061127.zip	dsl-g624t		\N	18	\N	f	f	False	f	mipsel	\N
19606	DSL-G624T_fw_reva_302B01T02EUA20070413_ALL_en_20070413.zip	dsl-g624t	3.02	\N	18	\N	f	f	False	f	mipsel	\N
19609	DSL-G624T_fw_revA_310B01T02EUA20070613_ALL_en_20070613.zip	dsl-g624t	3.10	\N	18	\N	f	f	False	f	mipsel	\N
20342	dsl-g664t_fw_deu_eng_100b02t02_eu_20040707.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N
20345	dsl-g664t_fw_deu_eng_100b02t02_eu_20040721.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N
20341	DSL-g664t_fw_revALL_20040804_ALL_multi_20040804.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N
20344	DSL-g664t_fw_revALL_20050817_CZ_cz_20050817.zip	dsl-g664t		\N	18	\N	f	f	False	f	mipsel	\N
20435	DSL-G684T_fw_revA_300B01T02EU-A_ALL_eng_20060208.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N
20437	DSL-G684T_fw_reva_300B01T02EUA20060717_ALL_en_060717.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N
20438	DSL-G684T_fw_reva_302B01T02EUA20061124_ALL_en_061124.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N
20439	DSL-G684T_fw_reva_302B01T02EUA20071221_ALL_en_20071221.zip	dsl-g684t		\N	18	\N	f	f	False	f	mipsel	\N
20365	DSM-320_fw_revA_5_1.07_all_en_20080811.zip	dsm-320	1.07	\N	18	\N	f	f	False	f	armel	\N
16385	DSP-W215_fw_revA1_1-10_all_en_20140715.zip	dsp-w215		\N	18	\N	f	f	[('br0', '192.168.0.60')]	f	mipseb	\N
18382	DSP-W215_fw_revB1_2-0-2_eu_en_20141204.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N
18384	DSP-W215_fw_revB1_2-0-3_all_en_20150430.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N
107307	DSP-W215_fw_revB1_2-0-4_all_multi_20150706.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N
107308	DSP-W215_fw_revB2_2-20_all_en_20150813.zip	dsp-w215	2.20b10	\N	18	\N	f	f	False	f	mipseb	\N
107309	DSP-W215_FW_revB2_2-21_eu_en_20151012.zip	dsp-w215	2.21b01	\N	18	\N	f	f	False	f	mipseb	\N
107310	DSP-W215_fw_revB2_2-22_all_multi_20160301.zip	dsp-w215	2.22b05	\N	18	\N	f	f	False	f	mipseb	\N
18383	DSP-W215B1_fw_revB1_2-01_eu_multi_20141006.zip	dsp-w215b1		\N	18	\N	f	f	False	f	mipseb	\N
20383	DSR-1000N_fw_revALL_1-03B12_all_en_110131.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N
20374	DSR-1000N_fw_revALL_1-03B23_all_en_110330.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N
20384	DSR-1000N_fw_revALL_1-03B27_all_en_110408.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N
20380	DSR-1000N_fw_revALL_1-03B36_all_en_110610.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N
20382	DSR-1000N_fw_revALL_1-03B43_all_en_110620.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N
20369	DSR-1000N_fw_revALL_1-04B58_all_en_20120210.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N
20372	DSR-1000N_fw_revALL_1-06B43_all_en_20120720.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N
20376	DSR-1000N_fw_revALL_1-06B53_all_en_20120821.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N
20370	DSR-1000N_fw_revALL_1-06B79_all_en_20121112.zip	dsr-1000n		\N	18	\N	f	f	False	f	mips64eb	\N
19647	DSR-150N_fw_revALL_1-05b29_all_en_20120726.zip	dsr-150n		\N	18	\N	f	f	False	f	\N	\N
18436	DSR-250N_fw_revALL_1-01B46_all_en_20111005.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N
18441	DSR-250N_fw_revALL_1-01B56_all_en_20111031.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N
18442	DSR-250N_fw_revALL_1-05b06_all_en_20120119.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N
18439	DSR-250N_fw_revALL_1-05B73_all_en_20121112.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N
20831	DSR-500N_fw_revALL_1-03B27_all_en_110408.zip	dsr-500n		\N	18	\N	f	f	False	f	\N	\N
20823	DSR-500N_fw_revALL_1-03B43_all_en_110620.zip	dsr-500n		\N	18	\N	f	f	False	f	\N	\N
20824	DSR-500N_fw_revALL_1-04B13_all_en_110919.zip	dsr-500n		\N	18	\N	f	f	False	f	\N	\N
20838	DSR-500N_fw_revALL_1-06B43_all_en_20120720.zip	dsr-500n		\N	18	\N	f	f	False	f	mips64eb	\N
20835	DSR-500N_fw_revALL_1-06B53_all_en_20120821.zip	dsr-500n		\N	18	\N	f	f	False	f	mips64eb	\N
20832	DSR-500N_fw_revALL_1-06B79_all_en_20121112.zip	dsr-500n		\N	18	\N	f	f	False	f	mips64eb	\N
20781	DVA-G3342SD_fw_revab_18_ALL_de_070817.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
20785	DVA-G3342SD_fw_revab_191beta_ALL_de_071004.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
20780	DVA-G3342SD_fw_revab_203_ALL_de_071030.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
20782	DVA-G3342SD_fw_revab_207_ALL_de_080903.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
20784	DVA-G3342SD_fw_revab_2091_ALL_de_090324.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
20223	DWC-1000_A1_FW_4.2.0.6_WW.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
20218	DWC-1000_A1_FW_4.3.0.2.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
20215	DWC-1000_fw_revALL_4-1-0-2_10244_all_en_20120906.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
20217	DWC-1000_fw_revALL_4-1-0-2_all_en_20120618.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
20216	DWC-1000_fw_revB_4-3-0-2_all_en_20140826.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
107550	DWC-1000_fw_revB_4-4-1-2_all_en_20150804.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
20219	DWC-1000_fw_revA1_4-2-0-6_all_multi_20140115.zip	dwc-1000	4.2	\N	18	\N	f	f	False	f	\N	\N
20214	DWC-1000_fw_revALL_4-2-0-3_all_en_20130430.zip	dwc-1000	4.2	\N	18	\N	f	f	False	f	\N	\N
107552	DWC-1000_fw_revA_4-4-1-2_all_en_20150804.zip	dwc-1000	4.4	\N	18	\N	f	f	False	f	\N	\N
18579	DWL-2600_FW_v4_2_0_1_c9_oa_20121120.zip	dwl-2600ap		\N	18	\N	f	f	False	f	mipsel	\N
20467	DWL-3600AP_fw_revA1_rev4-1-0-11_all_en_20120928.zip	dwl-3600ap	4.1	\N	18	\N	f	f	False	f	\N	\N
20609	DWL-6600AP_fw_revALL_4-1-0-11_all_en_20120925.zip	dwl-6600ap		\N	18	\N	f	f	False	f	\N	\N
107625	DWL-6700_fw_4_4_0_6_eu_en_20150612.zip	dwl-6700		\N	18	\N	f	f	False	f	mipseb	\N
107626	DWL-6700AP_fw_revA_4-4-0-7_eu_en_20150724.zip	dwl-6700ap	4.4	\N	18	\N	f	f	False	f	mipseb	\N
19622	DWL-8600AP_fw_revALL_3-0-0-14_all_en_20110711.zip	dwl-8600ap		\N	18	\N	f	f	False	f	mips64eb	\N
19618	DWL-8600AP_fw_revALL_4-1-0-8_for_DWC-1000.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N
19623	DWL-8600AP_fw_v1.0.0.6.zip	dwl-8600ap		\N	18	\N	f	f	False	f	mips64eb	\N
19624	DWL-8600AP_fw_revA1_4.1.0.14_all_en_121217.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N
19620	DWL-8600AP_fw_revALL_3-0-0-16_all_en_20120726.zip	dwl-8600ap		\N	18	\N	f	f	False	f	mips64eb	\N
19619	DWL-8600AP_fw_revALL_4-1-0-11_all_en_20120928.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N
19621	DWL-8600AP_fw_revALL_4_1_0_14_1024.zip	dwl-8600ap		\N	18	\N	f	f	False	f	\N	\N
18313	dwl-g700ap_fw_revB_v213b06.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N
18308	DWL-G700AP_fw_v201r13_0716(0916131744).zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N
18311	DWL-G700AP_fw_v210r14_0330.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N
18310	DWL-g700ap_fw_v212b03(0330120936).zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N
18312	DWL-G700AP_fw_RevB_v2.31b02.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N
107721	20150916_D-link_DWR-116_V1-00_TM_b01.bin	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N
20642	DWR-116_fw_revA1_1-02b03_all_en_20131030.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N
20645	DWR-116_fw_revA1_1-04b03_all_en_20140808.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N
107722	DWR-116_fw_revA1_1-05b01_all_en_20150824.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N
107723	DWR-116_fw_revA_1-06-EUB02_eu_en_20160218.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N
20641	DWR-116_fw_revAX_1_01b05_eu_en_20140312.zip	dwr-116		\N	18	\N	f	f	False	f	mipsel	\N
20644	DWR-116_fw_revA1_1-03b03_all_en_201410219.zip	dwr-116	1.03b03	\N	18	\N	f	f	False	f	mipsel	\N
20643	DWR-116_fw_revA1_1-04_eu_en_20141016.zip	dwr-116	1.04	\N	18	\N	f	f	False	f	mipsel	\N
107724	DWR-116_fw_revA1_1-06b02_all_en_20151106.zip	dwr-116	1.06b02	\N	18	\N	f	f	False	f	mipsel	\N
107725	DWR-118 _fw_revA_1-00-b02_eu_en_20150812.zip	dwr-118		\N	18	\N	f	f	False	f	mipsel	\N
107726	DWR-118_fw_revA1_1-01b01_all_en_20160715.zip	dwr-118		\N	18	\N	f	f	False	f	mipsel	\N
19324	DWR-512_fw_reva_104b03_ALL_en_20120607.zip	dwr-512		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20572	DWR-921_fw_revA1_1-01b04_all_en_20130522.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20571	DWR-921_fw_revB1_2-00b05_all_en_140102.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20570	DWR-921_fw_revB1_2-01b03_all_en_140918.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
107728	DWR-921_fw_revB1_2-02-b08_eu_en_20150701.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
107729	DWR-921_fw_revC_3-00-b07_eu_en_20150903.zip	dwr-921		\N	18	\N	f	f	False	f	mipsel	\N
107730	DWR-921_fw_revC_3-01-b01_eu_en_20150920.zip	dwr-921		\N	18	\N	f	f	False	f	mipsel	\N
107733	DWR-953_fw_revAx_1-00-b06_eu_multi_20160506.zip	dwr-953		\N	18	\N	f	f	False	f	mipsel	\N
20058	DWS-3024_fw_revAll_incl-Firmware-fuer-Accesspoints_3.0.0.12.zip	dws-3024		\N	18	\N	f	f	False	f	mips64eb	\N
20055	DLink UWS_UAP 3.0.0.23 Patch Release(0515121237).zip	dws-3024		\N	18	\N	f	f	False	f	mips64eb	\N
20519	DWS-4026-DWL-8600ap_fw_v1.0.0.6.zip	dws-4026		\N	18	\N	f	f	False	f	\N	\N
20524	DWS-4026-DWL-8600AP_fw_v1008.zip	dws-4026		\N	18	\N	f	f	False	f	\N	\N
20520	DWS-4026_DWL-8600AP-A1_FW_v30014_20110508.zip	dws-4026		\N	18	\N	f	f	False	f	\N	\N
107739	DXS-1100_fw_revA_1-00-005_eu_multi_20160629.zip	dxs-1100		\N	18	\N	f	f	False	f	armel	\N
19289	DXS-1210-10TS_fw_revA_1-00-021_eu_multi_20150303.zip	dxs-1210-10ts		\N	18	\N	f	f	False	f	armel	\N
107744	DXS-1210-10TS_fw_revA_1-10-013_eu_multi_20151215.zip	dxs-1210-10ts		\N	18	\N	f	f	False	f	armel	\N
107746	DXS-1210-10TS_fw_revA_1-10-015_eu_multi_20160118.zip	dxs-1210-10ts	1.10	\N	18	\N	f	f	False	f	armel	\N
18896	DXS-1210-12TC_fw_revA_1-00_eu_en_20150211.zip	dxs-1210-12tc		\N	18	\N	f	f	False	f	armel	\N
107748	DXS-1210-12TC_fw_revA_1-10-015_eu_multi_20160118.zip	dxs-1210-12tc	1.10	\N	18	\N	f	f	False	f	armel	\N
107757	GO-DSL-AC750_fw_revT1_1-04_eu_multi_20160105.zip	go-dsl-ac750		\N	18	\N	f	f	False	f	mipseb	\N
20238	GO-DSL-AC750_other software_revT1_1-02_eu_multi_20141029.zip	go-dsl-ac750		\N	18	\N	f	f	False	f	mipseb	\N
20239	GO_DSL_AC750_fw_revT1_1-02_eu_en_20140506.zip	go-dsl-ac750	1.02	\N	18	\N	f	f	False	f	mipseb	\N
19806	GO-RT-AC750_fw_revA_1-01_eu_multi_20141212.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
19807	GO-RT-AC750_fw_revA_1-01b03_eu_multi_20141017.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
19813	GO-RT-AC750_fw_revB_2-00_eu_multi_20141117.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
2937	EVA8000 Firmware Version 2.1.83 (North America).zip	EVA8000	2.1.83	\N	33	\N	f	f	False	f	\N	\N
4818	EVA9150 Firmware Version 2.3.16 (NA).zip	EVA9150	2.3.16	\N	33	\N	f	f	False	f	mipsel	\N
4814	EVA9150 Firmware Version 2.2.127 (NA).zip	EVA9150	2.2.127	\N	33	\N	f	f	False	f	mipsel	\N
4808	EVA9150 Firmware Version 2.3.14 (NA).zip	EVA9150	2.3.14	\N	33	\N	f	f	False	f	mipsel	\N
4812	EVA9000 Firmware Recovery Tool (NA).zip	EVA9150		\N	33	\N	f	f	False	f	mipsel	\N
107769	LG2200D-V1.0.0.57_1.0.40.zip	LG2200D	1.0.0.57	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
3836	MBM621 Firmware Version 1.1.3.zip	MBM621	1.1.3	\N	33	\N	f	f	False	f	mipseb	\N
1989	MBR1200 Firmware Version 1.2.2.53WW.zip	MBR1200	1.2.2.53	\N	33	\N	f	f	False	f	mipsel	\N
4445	MBR1515-V1.2.2.68Retail.zip	MBR1515	1.2.2.68	\N	33	\N	f	f	False	f	mipsel	\N
4983	MBR1516-V1.2.2.84-BM.zip	MBR1516	1.2.2.84	\N	33	\N	f	f	False	f	mipsel	\N
4016	MBR624GU Firmware Version 6.01.30.59 (North America).zip	MBR624GU	6.01.30.59	\N	33	\N	f	f	False	f	armel	\N
4011	MBR624GU Firmware Version 6.01.30.61.zip	MBR624GU	6.01.30.61	\N	33	\N	f	f	False	f	armel	\N
4017	MBR624GU Firmware Version 6.00.22.14 (North America).zip	MBR624GU	6.00.22.14	\N	33	\N	f	f	False	f	armel	\N
4014	MBR624GU Firmware Version 6.00.22.12 (North America).zip	MBR624GU	6.00.22.12	\N	33	\N	f	f	False	f	armel	\N
4008	MBR624GU Firmware Version 6.00.28.43 (North America).zip	MBR624GU	6.00.28.43	\N	33	\N	f	f	False	f	armel	\N
2490	MBRN3000-V1.0.0.72_2.0.12NA.zip	MBRN3000	1.0.0.72	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
2491	MBRN3000-V1.0.0.74_2.0.12WW.zip	MBRN3000	1.0.0.74	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
2492	MBRN3000 Firmware Version 1.0.0.65_2.0.12 (NA).zip	MBRN3000	1.0.0.65	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
2494	MBRN3000 Firmware Version 1.0.0.69 (NA).zip	MBRN3000	1.0.0.69	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
3636	MVBR1210C_V1.2.0.35BM.zip	MVBR1210C	1.2.0.35	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipsel	\N
6119	swi_nhd1w_1.0.95.1.zip	AirCard Hub	1.0.95.1	\N	33	\N	f	f	False	f	mipsel	\N
6233	Hub_swi_nhd1w_1.0.95.0.zip	AirCard Hub	1.0.95.0	\N	33	\N	f	f	False	f	mipsel	\N
6162	AC803S_1780690_01.13.00_032.field.zip	AirCard 803S (Sprint)	01.13.00	\N	33	\N	f	f	False	f	armel	\N
6224	AC802S_1453010_01.07.09_041.field.zip	AirCard 802S (Sprint)	01.07.09	\N	33	\N	f	f	False	f	armel	\N
107788	DC112A-V1.0.0.24_1.0.60.zip	DC112A	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N
107789	DC112A-V1.0.0.30_1.0.60.zip	DC112A	1.0.0.30	\N	33	\N	f	f	False	f	armel	\N
107790	DC112A-V1.0.0.4_1.0.60ZAIN.zip	DC112A (Zain)	1.0.0.4	\N	33	\N	f	f	False	f	armel	\N
107797	D3600-V1.0.0.47_1.0.1_FW.zip	D3600	1.0.0.47	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107798	D3600_V1.0.0.41_1.0.1_FW.zip	D3600	1.0.0.41	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107799	D3600_V1.0.0.59_1.0.1.zip	D3600	1.0.0.59	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107801	D3600_V1.0.0.61_1.0.1.zip	D3600	1.0.0.61	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107804	D6000_V1.0.0.61_1.0.1.zip	D6000	1.0.0.61	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107805	D6000-V1.0.0.47_1.0.1_FW.zip	D6000	1.0.0.47	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107807	D6000_FW_V1.0.0.49_1.0.1.zip	D6000	1.0.0.49	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107808	D6000_V1.0.0.59_1.0.1.zip	D6000	1.0.0.59	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107809	D6100-V1.0.0.46_0.0.46.zip	D6100	1.0.0.46	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
107810	D6100-V1.0.0.50_0.0.50.zip	D6100	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
107831	D7800_FW_V1.0.0.46.zip	D7800	1.0.0.46	\N	33	\N	f	f	False	f	\N	\N
2653	DG632 Firmware Version 3.6.0C_38 (from 3.6.x to this version).zip	DG632	3.6.0	\N	33	\N	f	f	False	f	mipsel	\N
107833	D7800_FW_V1.0.1.16.zip	D7800	1.0.1.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
107834	D7800_FW_V1.0.1.10.zip	D7800	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
107835	D7800_V1.0.0.48.zip	D7800	1.0.0.48	\N	33	\N	f	f	False	f	\N	\N
2658	DG632 Firmware Version 3.6.0.zip	DG632	3.6.0	\N	33	\N	f	f	False	f	mipsel	\N
2655	DG632 Firmware Version 3.40.zip	DG632	3.40	\N	33	\N	f	f	False	f	mipsel	\N
2654	DG632 Firmware Version 3.3.0.a.cx.zip	DG632	3.3.0	\N	33	\N	f	f	False	f	mipsel	\N
107837	D7800_V1.0.0.40_FW.zip	D7800	1.0.0.40	\N	33	\N	f	f	False	f	\N	\N
107838	D7800_V1.0.0.44_FW.zip	D7800	1.0.0.44	\N	33	\N	f	f	False	f	\N	\N
107839	D7800_V1.0.0.38_FW.zip	D7800	1.0.0.38	\N	33	\N	f	f	False	f	\N	\N
4982	DG834B Firmware Version 3.01.25.zip	DG834B	3.01.25	\N	33	\N	f	f	False	f	mipsel	\N
4216	DG834Bv2 Firmware Version V3.01.37.zip	DG834Bv2	3.01.37	\N	33	\N	f	f	False	f	mipsel	\N
4369	DG834GT_V1.03.23.zip	DG834GT	1.03.23	\N	33	\N	f	f	False	f	\N	\N
107842	DG834 and DG834G Firmware Version 3.01.25.zip	DG834Gv1	3.01.25	\N	33	\N	f	f	False	f	mipsel	\N
107843	DG834(v1 & v2) and DG834G(v1 & v2) Firmware Version 3.01.29.zip	DG834Gv1	3.01.29	\N	33	\N	f	f	False	f	mipsel	\N
107844	DG834Gv2_V3.01.26.zip	DG834Gv2	3.01.26	\N	33	\N	f	f	False	f	mipsel	\N
3466	DG834GBv3_V4.01.41.zip	DG834Gv3	4.01.41	\N	33	\N	f	f	False	f	mipsel	\N
3934	DG834Gv3_V4.01.42.zip	DG834Gv3	4.01.42	\N	33	\N	f	f	False	f	mipsel	\N
107845	dg834v3_dg834gv3_na_4_03_04.zip	DG834Gv3	4.03.04	\N	33	\N	f	f	False	f	mipsel	\N
3248	DG834Bv4_V5.01.16.zip	DG834Gv4	5.01.16	\N	33	\N	f	f	False	f	\N	\N
2844	DG834Gv4_V5.01.17.zip	DG834Gv4	5.01.17	\N	33	\N	f	f	False	f	\N	\N
15966	DG834V3_V4.01.40.zip	DG834Gv3	4.01.40	\N	33	\N	f	f	False	f	mipsel	\N
4992	DG834Gv5-V1.6.01.34.zip	DG834Gv5	1.6.01.34	\N	33	\N	f	f	False	f	armel	\N
3778	DG834GV Firmware Version 1.02.39.zip	DG834GVv1	1.02.39	\N	33	\N	f	f	False	f	mipsel	\N
3779	DG834GV Firmware Version 1.02.42.zip	DG834GVv1	1.02.42	\N	33	\N	f	f	False	f	mipsel	\N
3782	DG834GV Firmware Version 1.02.41.zip	DG834GVv1	1.02.41	\N	33	\N	f	f	False	f	mipsel	\N
3780	DG834GV Firmware Version 1.02.26.zip	DG834GVv1	1.02.26	\N	33	\N	f	f	False	f	mipsel	\N
2939	DG834GV v2 Firmware Version 2.02.42.zip	DG834GVv2	2.02.42	\N	33	\N	f	f	False	f	mipsel	\N
2938	DG834GV v2 Firmware Version 2.02.40.zip	DG834GVv2	2.02.40	\N	33	\N	f	f	False	f	mipsel	\N
4231	DG834N Firmware Version 1.02.08.zip	DG834Nv1	1.02.08	\N	33	\N	f	f	False	f	\N	\N
4226	DG834N Firmware Version 1.01.06.zip	DG834Nv1	1.01.06	\N	33	\N	f	f	False	f	\N	\N
4228	DG834N firmware version 1.01.02.zip	DG834Nv1	1.01.02	\N	33	\N	f	f	False	f	\N	\N
4227	DG834N Firmware Version 1.01.03.zip	DG834Nv1	1.01.03	\N	33	\N	f	f	False	f	\N	\N
4225	DG834N Firmware version 0.00.18.zip	DG834Nv1	0.00.18	\N	33	\N	f	f	False	f	\N	\N
16524	DG834 and DG834G Firmware Version 3.01.32 (for use outside UK and North America).zip	DG834Nv1	3.01.32	\N	33	\N	f	f	False	f	mipsel	\N
4674	DG834PN Firmware Version 1.03.18.zip	DG834PN	1.03.18	\N	33	\N	f	f	False	f	mipseb	\N
4672	DG834PN Firmware Version 1.03.39.zip	DG834PN	1.03.39	\N	33	\N	f	f	False	f	\N	\N
4675	DG834PN Firmware Version 1.03.35.zip	DG834PN	1.03.35	\N	33	\N	f	f	False	f	\N	\N
4673	DG834PN Firmware Version 1.03.25.zip	DG834PN	1.03.25	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4671	DG834PN Firmware Version 1.03.30.zip	DG834PN	1.03.30	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
16527	DG834 and DG834G Firmware Version 3.01.37 (for use in Germany and Austria only).zip	DG834v1	3.01.37	\N	33	\N	f	f	False	f	mipsel	\N
16526	DG834 and DG834G Firmware Version 3.01.31 (for use in UK only).zip	DG834v1	3.01.31	\N	33	\N	f	f	False	f	mipsel	\N
16523	DG834 and DG834G Firmware Version 3.01.38 (for use in UK only).zip	DG834v1	3.01.38	\N	33	\N	f	f	False	f	mipsel	\N
2678	DG834 (v1_v2) and DG834G (v1_v2) Firmware version 1.05.00.zip	DG834v1	1.05.00	\N	33	\N	f	f	False	f	mipsel	\N
3444	DG834v4 DG834Gv4 Firmware Version 5.01.09.zip	DG834v4	5.01.09	\N	33	\N	f	f	False	f	\N	\N
2317	DG834v3 DG834Gv3 Firmware Version 4.01.04 (initial release).zip	DG834v3	4.01.04	\N	33	\N	f	f	False	f	mipsel	\N
2318	DG834v3 DG834Gv3 Firmware Version 4.01.30.zip	DG834v3	4.01.30	\N	33	\N	f	f	False	f	mipsel	\N
2316	DG834v3DG834Gv3 Firmware 4.01.37.zip	DG834v3	4.01.37	\N	33	\N	f	f	False	f	mipsel	\N
3441	DG834v4 DG834Gv4 Firmware Version 5.01.01.zip	DG834v4	5.01.01	\N	33	\N	f	f	False	f	\N	\N
2321	DG834v3 and DG834Gv3 Firmware Version 4.01.40.zip	DG834v3	4.01.40	\N	33	\N	f	f	False	f	mipsel	\N
3438	DG834v4 DG834Gv4 Firmware Version 5.03.16 (North America).zip	DG834v4	5.03.16	\N	33	\N	f	f	False	f	\N	\N
2320	DG834v3 DG834Gv3 Firmware Version 4.03.04 (North America).zip	DG834v3	4.03.04	\N	33	\N	f	f	False	f	mipsel	\N
4930	DGN1000NA_V1.1.00.40.zip	DGN1000	1.1.00.40	\N	33	\N	f	f	False	f	\N	\N
4925	DGN1000_V1.1.00.34_NA.zip	DGN1000	1.1.00.34	\N	33	\N	f	f	False	f	\N	\N
4936	DGN1000_V1.1.00.56_NA.zip	DGN1000	1.1.00.56	\N	33	\N	f	f	False	f	\N	\N
4935	DGN1000_V1.1.00.51_NA.zip	DGN1000	1.1.00.51	\N	33	\N	f	f	False	f	\N	\N
4941	DGN1000_V1.1.00.52_NA.zip	DGN1000	1.1.00.52	\N	33	\N	f	f	False	f	\N	\N
4136	DGN1000v3-V1.0.0.14_0.0.14.zip	DGN1000Bv3	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
107846	DGN1000v3-V1.0.0.22_0.0.22.zip	DGN1000Bv3	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4138	DGN1000(B)v3_V1.0.0.8_0.0.8.zip	DGN1000Bv3	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4137	DGN1000v3-V1.0.0.4_0.0.4.zip	DGN1000Bv3	1.0.0.4	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
107848	DGN2000_V1.3.16.0.zip	DGN2000	1.3.16.0	\N	33	\N	f	f	False	f	\N	\N
4294	DGN2000NA_V1.3.12.0.zip	DGN2000	1.3.12.0	\N	33	\N	f	f	False	f	\N	\N
4291	DGN2000NA_V1.3.10.0.zip	DGN2000	1.3.10.0	\N	33	\N	f	f	False	f	\N	\N
4292	DGN2000-V1.3.15.0.zip	DGN2000	1.3.15.0	\N	33	\N	f	f	False	f	\N	\N
4299	DGN2000NA_V1.3.7.zip	DGN2000	1.3.7.0	\N	33	\N	f	f	False	f	\N	\N
4298	DGN2000-V1.3.13.0.zip	DGN2000	1.3.13.0	\N	33	\N	f	f	False	f	\N	\N
4300	DGN2000NA_V1.3.11.0.zip	DGN2000	1.3.11.0	\N	33	\N	f	f	False	f	\N	\N
4854	DGN2200M Firmware Version 1.0.0.35 (North America).zip	DGN2200M	1.0.0.35	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4860	DGN2200M-V1.0.0.37_1.0.21WW_A.zip	DGN2200M	1.0.0.37	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4865	DGN2200M Firmware Version 1.0.0.33 (North America).zip	DGN2200M	1.0.0.33	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4945	DGN2200 DGN2200B Firmware Version 1.0.0.36 (NA).zip	DGN2200v1	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
107849	DGN2200-V1.0.0.50_7.0.50NA.zip	DGN2200v1	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4556	DGN3500-V1.1.00.28_NA.zip	DGN3500	1.1.00.28	\N	33	\N	f	f	False	f	\N	\N
4561	DGN3500-V1.1.00.30_NA.zip	DGN3500	1.1.00.30	\N	33	\N	f	f	False	f	\N	\N
4560	DGN3500-V1.1.00.36_1.00.36NA.zip	DGN3500	1.1.00.36	\N	33	\N	f	f	False	f	\N	\N
4557	DGN3500-V1.1.00.37NA.zip	DGN3500	1.1.00.37	\N	33	\N	f	f	False	f	\N	\N
3797	DGND3300 Firmware Version 1.1.00.32 (North America).zip	DGND3300v1	1.1.00.32	\N	33	\N	f	f	False	f	\N	\N
3795	DGND3300 Firmware Version 1.1.00.22 (North America).zip	DGND3300v1	1.1.00.22	\N	33	\N	f	f	False	f	\N	\N
5011	DGND3300v2 Firmware Version 2.1.00.42 (North America).zip	DGND3300v2	2.1.00.42	\N	33	\N	f	f	False	f	\N	\N
5007	DGND3300v2 Firmware Version 2.1.00.48 (North America).zip	DGND3300v2	2.1.00.48	\N	33	\N	f	f	False	f	\N	\N
4996	DGND3300v2 Initial Release Firmware 2.1.00.33 (North America).zip	DGND3300v2	2.1.00.33	\N	33	\N	f	f	False	f	\N	\N
5004	DGND3300v2 Firmware Version 2.1.00.51 (NA Users Only).zip	DGND3300v2	2.1.00.51	\N	33	\N	f	f	False	f	\N	\N
3794	DGND3300 Firmware Version 1.1.00.41 (North America).zip	DGND3300v1	1.1.00.41	\N	33	\N	f	f	False	f	\N	\N
16513	DGND3700 Firmware Version 1.0.0.12 (NA).zip	DGND3700v1	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
3425	DGND3700 Firmware Version 1.0.0.17(NA).zip	DGND3700v1	1.0.0.17	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
5010	DGND3300v2 Firmware Version 2.1.00.53 (For NA Users Only).zip	DGND3300v2	2.1.00.53	\N	33	\N	f	f	False	f	\N	\N
2197	DM111PSPv2_v1.1.00.09_NA.zip	DM111PSPv2	1.1.00.09	\N	33	\N	f	f	False	f	\N	\N
2199	DM111PSPv2-V1.1.00.08_NA.zip	DM111PSPv2	1.1.00.08	\N	33	\N	f	f	False	f	\N	\N
5606	DM111PSPv2-V1.1.00.03_NA.zip	DM111PSPv2	1.1.00.03	\N	33	\N	f	f	False	f	\N	\N
4717	DM111Pv1 Firmware Version 3.29u.zip	DM111Pv1	3.29	\N	33	\N	f	f	False	f	\N	\N
4714	DM111Pv1 Firmware Version 3.63y7.zip	DM111Pv1	3.63	\N	33	\N	f	f	False	f	\N	\N
4711	DM111Pv1 Firmware Version 3.30j (for Customers outside Singapore & UK).zip	DM111Pv1	3.30	\N	33	\N	f	f	False	f	\N	\N
4713	DM111Pv1 Firmware Version 3.64p.zip	DM111Pv1	3.64	\N	33	\N	f	f	False	f	\N	\N
4822	DM111Pv2 Firmware Version 2.00.25.zip	DM111Pv2	2.00.25	\N	33	\N	f	f	False	f	\N	\N
4825	DM111Pv2 Firmware Version 2.00.19.zip	DM111Pv2	2.00.19	\N	33	\N	f	f	False	f	\N	\N
107861	DM200_V1.0.0.36.zip	DM200	1.0.0.36	\N	33	\N	f	f	False	f	mipseb	\N
107862	DM200_V1.0.0.34.zip	DM200	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N
107863	PLW1000-V1.0.1.4.zip	PLW1000	1.0.1.4	\N	33	\N	f	f	False	f	armel	\N
107864	PLW1000-V1.0.0.22.zip	PLW1000	1.0.0.22	\N	33	\N	f	f	False	f	armel	\N
107865	PLW1000-V1.0.0.18.zip	PLW1000	1.0.0.18	\N	33	\N	f	f	False	f	armel	\N
4885	XAU2511_V0.2.1.2.zip	XAU2511	0.2.1.2	\N	33	\N	f	f	False	f	mipseb	\N
107866	XAU2511-v0.2.1.7.zip	XAU2511	0.2.1.7	\N	33	\N	f	f	False	f	mipseb	\N
4890	XAU2511_V0.2.1.5.zip	XAU2511	0.2.1.5	\N	33	\N	f	f	False	f	mipseb	\N
2555	XAVN2001_V0.2.1.7.zip	XAVN2001	0.2.1.7	\N	33	\N	f	f	False	f	mipseb	\N
2564	XAVN2001 Firmware Version 0.2.1.6.zip	XAVN2001	0.2.1.6	\N	33	\N	f	f	False	f	mipseb	\N
2561	XAVN2001v2-V0.3.0.9.zip	XAVN2001v2	0.3.0.9	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N
107868	XWN5001-V0.4.1.1.zip	XWN5001	0.4.1.1	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N
4976	XWN5001-V0.3.0.9.zip	XWN5001	0.3.0.9	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N
4084	WNCE2001 Firmware Version 1.0.0.25 (North America).zip	WNCE2001	1.0.0.25	\N	33	\N	f	f	[('br0', '192.168.1.251')]	f	mipsel	\N
4082	WNCE2001 Firmware Version 1.0.0.26 (NA).zip	WNCE2001	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.251')]	f	mipsel	\N
4168	WNCE3001 Firmware Version 1.0.0.38.zip	WNCE3001	1.0.0.38	\N	33	\N	f	f	False	f	mipseb	\N
4169	WNCE3001 Firmware Version 1.0.0.44.zip	WNCE3001	1.0.0.44	\N	33	\N	f	f	False	f	mipseb	\N
107869	WNCE3001-V1.0.0.46_1.0.33.zip	WNCE3001	1.0.0.46	\N	33	\N	f	f	False	f	mipseb	\N
4167	WNCE3001 Firmware Version 1.0.0.34.zip	WNCE3001	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N
107870	WNCE3001-V1.0.0.50_1.0.35.zip	WNCE3001	1.0.0.50	\N	33	\N	f	f	False	f	mipseb	\N
4954	WNCE4004_V1.0.0.22.zip	WNCE4004	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.240'), ('br0', '192.168.1.240')]	f	mipseb	\N
107871	DST6501-V1.0.1.4.zip	DST6501	1.0.1.4	\N	33	\N	f	f	False	f	armel	\N
2253	EX2700-V1.0.0.16.zip	EX2700	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107873	EX2700-V1.0.1.8.zip	EX2700	1.0.1.8	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107874	DST6501-V1.0.0.28.zip	DST6501	1.0.0.28	\N	33	\N	f	f	False	f	armel	\N
107875	DST6501-V1.0.0.34.zip	DST6501	1.0.0.34	\N	33	\N	f	f	False	f	armel	\N
107876	EX2700-V1.0.0.22.zip	EX2700	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107877	EX2700-V1.0.0.26.zip	EX2700	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107878	DST6501-V1.0.0.36.zip	DST6501	1.0.0.36	\N	33	\N	f	f	False	f	armel	\N
107879	EX3700-V1.0.0.50_1.0.30.zip	EX3700	1.0.0.50	\N	33	\N	f	f	False	f	mipsel	\N
107880	EX3700-V1.0.0.44_1.0.22.zip	EX3700	1.0.0.44	\N	33	\N	f	f	False	f	mipsel	\N
107881	EX3700-V1.0.0.28_1.0.20.zip	EX3700	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
107882	EX3700-V1.0.0.26_1.0.19.zip	EX3700	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N
107883	EX3700_V1.0.0.22_1.0.17.zip	EX3700	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
107884	EX3700-V1.0.0.46_1.0.26.zip	EX3700	1.0.0.46	\N	33	\N	f	f	False	f	mipsel	\N
107885	EX3700-V1.0.0.34_1.0.22.zip	EX3700	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N
107886	EX3700_EX3800-V1.0.0.58_1.0.38.zip	EX3700	1.0.0.58	\N	33	\N	f	f	False	f	mipsel	\N
107887	EX3700-V1.0.0.48_1.0.28.zip	EX3700	1.0.0.48	\N	33	\N	f	f	False	f	mipsel	\N
107889	EX6000-V1.0.0.10_1.0.6.zip	EX6000	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N
107890	EX6000-V1.0.0.20_1.0.11.zip	EX6000	1.0.0.20	\N	33	\N	f	f	False	f	mipsel	\N
107891	EX6100-V1.0.2.6_1.1.120.zip	EX6100	1.0.2.6	\N	33	\N	f	f	False	f	mipsel	\N
3804	EX6100_V1.0.0.28_1.0.66.zip	EX6100	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
107892	EX6100-V1.0.1.36_1.0.114_07311820.zip	EX6100	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N
3805	EX6100_V1.0.0.22_1.0.51.zip	EX6100	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
107894	EX6120-V1.0.0.28_1.0.18.zip	EX6120	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
107895	EX6120-V1.0.0.16_1.0.11.zip	EX6120	1.0.0.16	\N	33	\N	f	f	False	f	mipsel	\N
107896	EX6120-V1.0.0.14_1.0.10.zip	EX6120	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N
107897	EX6120-V1.0.0.8_1.0.4.zip	EX6120	1.0.0.8	\N	33	\N	f	f	False	f	mipsel	\N
107898	EX6120-V1.0.0.26_1.0.16.zip	EX6120	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N
107899	EX6120-V1.0.0.4_1.0.2.zip	EX6120	1.0.0.4	\N	33	\N	f	f	False	f	mipsel	\N
107900	EX6130-V1.0.0.12_1.0.7.zip	EX6130	1.0.0.12	\N	33	\N	f	f	False	f	mipsel	\N
107901	EX6150-V1.0.0.14_1.0.54.zip	EX6150	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N
107902	EX6150-V1.0.0.32_1.0.68.zip	EX6150	1.0.0.32	\N	33	\N	f	f	False	f	mipsel	\N
107903	EX6150-V1.0.0.16_1.0.58.zip	EX6150	1.0.0.16	\N	33	\N	f	f	False	f	mipsel	\N
107904	EX6150-V1.0.0.28_1.0.64.zip	EX6150	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
107906	EX6200-V1.0.3.74_1.1.109.zip	EX6200	1.0.3.74	\N	33	\N	f	f	False	f	armel	\N
3002	EX6200_V1.0.0.46-1.1.70.zip	EX6200	1.0.0.46	\N	33	\N	f	f	False	f	armel	\N
107907	EX6200-V1.0.1.60_1.1.98_FW.zip	EX6200	1.0.1.60	\N	33	\N	f	f	False	f	armel	\N
107908	EX6200-V1.0.3.68_1.1.104.zip	EX6200	1.0.3.68	\N	33	\N	f	f	False	f	armel	\N
107909	EX6200-V1.0.0.52_1.1.90.zip	EX6200	1.0.0.52	\N	33	\N	f	f	False	f	armel	\N
3004	EX6200_V1.0.0.38_1.1.52.zip	EX6200	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N
107913	EX7300-V1.0.0.34.zip	EX6400	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
107914	EX7300_EX6400-V1.0.0.44.zip	EX6400	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
107915	EX7300_EX6400-V1.0.0.40.zip	EX6400	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
107917	EX7000-V1.0.0.30_1.0.72_FW.zip	EX7000	1.0.0.30	\N	33	\N	f	f	False	f	armel	\N
107918	EX7000-V1.0.0.36_1.0.88.zip	EX7000	1.0.0.36	\N	33	\N	f	f	False	f	armel	\N
107919	EX7000-V1.0.0.32_1.0.84.zip	EX7000	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N
107920	EX7000-V1.0.0.38_1.0.91.zip	EX7000	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N
107921	wn1000rp-V1.0.0.52.zip	WN1000RP	1.0.0.52	\N	33	\N	f	f	False	f	mipsel	\N
107922	EX7000-V1.0.0.42_1.0.94.zip	EX7000	1.0.0.42	\N	33	\N	f	f	False	f	armel	\N
3815	WN2000RPT-V1.0.0.2NA.zip	WN2000RPTv1	1.0.0.2	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N
107923	EX7300-V1.0.0.32.zip	EX7300	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
3564	WN2000RPTv2 Firmware Version 1.1.0.12.zip	WN2000RPTv2	1.1.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N
107925	WN2000RPTv3-V1.0.0.24.zip	WN2000RPTv3	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
2652	WN2000RPTv3-V1.0.0.18.zip	WN2000RPTv3	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
2483	WN2500RP-V1.0.0.30_1.0.58.zip	WN2500RP	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N
2485	WN2500RP-V1.0.0.24_1.0.53.zip	WN2500RP	1.0.0.24	\N	33	\N	f	f	False	f	mipsel	\N
2484	WN2500RP-V1.0.0.26_1.0.54.zip	WN2500RP	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N
3933	WN2500RPv2_V1.0.0.30_1.0.41.zip	WN2500RPv2	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N
107926	WN2500RPv2-V1.0.1.42_1.0.56.zip	WN2500RPv2	1.0.1.42	\N	33	\N	f	f	False	f	mipsel	\N
4681	WN3000RP-V1.0.1.34_1.1.46.zip	WN3000RP	1.0.1.34	\N	33	\N	f	f	False	f	mipsel	\N
4680	WN3000RP Firmware Version 1.0.0.12_1.0.12.zip	WN3000RP	1.0.0.12	\N	33	\N	f	f	False	f	mipsel	\N
4679	WN3000RP_V1.0.2.64_1.1.86.zip	WN3000RP	1.0.2.64	\N	33	\N	f	f	False	f	mipsel	\N
4682	WN3000RP_V1.0.1.36_1.1.47.zip	WN3000RP	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N
107927	WN3000RP_FirmwareVersion-1.0.1.18.zip	WN3000RP	1.0.1.18	\N	33	\N	f	f	False	f	mipsel	\N
3251	WN3000RPv2_V1.0.0.24.zip	WN3000RPv2	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3249	WN3000RPv2-V1.0.0.26.zip	WN3000RPv2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107928	WN3000RPv3-V1.0.2.24.zip	WN3000RPv3	1.0.2.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107929	WN3000RPv3-V1.0.1.20.zip	WN3000RPv3	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107930	WN3000RPv3-V1.0.2.20.zip	WN3000RPv3	1.0.2.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107931	WN3000RPv3-V1.0.1.24.zip	WN3000RPv3	1.0.1.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107932	WN3100RP-V1.0.0.14_1.0.19.zip	WN3100RP	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N
3682	WN3100RP_V1.0.0.6_1.0.12.zip	WN3100RP	1.0.0.6	\N	33	\N	f	f	False	f	mipsel	\N
107933	WN3100RPv2-FW_V1.0.0.14.zip	WN3100RPv2	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3529	WN3500RP_V1.0.0.22_1.0.62.zip	WN3500RP	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3533	WN3500RP-V1.0.0.12_1.0.49.zip	WN3500RP	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3532	WN3500RP-V1.0.0.16_1.0.58.zip	WN3500RP	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3531	WN3500RP_V1.0.0.18_1.0.59.zip	WN3500RP	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3530	WN3500RP-V1.0.0.14_1.0.54.zip	WN3500RP	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
4594	WPN824EXT Firmware Version 1.1.1_1.1.9 (North America).zip	WPN824EXT	1.1.1	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N
4723	WNDR4700-V1.0.0.52.zip	CENTRIA (WNDR4700/4720)	1.0.0.52	\N	33	\N	f	f	False	f	ppceb	\N
4437	AC1450_V1.0.0.22_1.0.10.zip	AC1450	1.0.0.22	\N	33	\N	f	f	False	f	armel	\N
4438	AC1450-V1.0.0.6_1.0.3.zip	AC1450	1.0.0.6	\N	33	\N	f	f	False	f	armel	\N
4436	AC1450-V1.0.0.14_1.0.6.zip	AC1450	1.0.0.14	\N	33	\N	f	f	False	f	armel	\N
107935	AC1450-V1.0.0.34_10.0.16.zip	AC1450	1.0.0.34	\N	33	\N	f	f	False	f	armel	\N
4727	WNDR4700-V1.0.0.28.zip	CENTRIA (WNDR4700/4720)	1.0.0.28	\N	33	\N	f	f	False	f	ppceb	\N
4724	WNDR4700-V1.0.0.34.zip	CENTRIA (WNDR4700/4720)	1.0.0.34	\N	33	\N	f	f	False	f	ppceb	\N
4725	WNDR4700-V1.0.0.32.zip	CENTRIA (WNDR4700/4720)	1.0.0.32	\N	33	\N	f	f	False	f	ppceb	\N
4726	WNDR4700-V1.0.0.50.zip	CENTRIA (WNDR4700/4720)	1.0.0.50	\N	33	\N	f	f	False	f	ppceb	\N
107936	JNR1010-v1.0.0.32.zip	JNR1010	1.0.0.32	\N	33	\N	f	f	False	f	mipseb	\N
107937	N150_N300_FW_V1.1.0.31_1.0.1.zip	JNR1010v2	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N
107938	N300-1.1.0.32_101.zip	JNR1010v2	1.1.0.32	\N	33	\N	f	f	False	f	\N	\N
107939	JNR1010V2-JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618-FW_V1.1.0.24_1.0.1.zip	JNR1010v2	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N
4163	JNR1010v2_WNR614v1_WNR618v1_WNR2020v1_JWNR2000v5_JWNR2010v5_FW_V1.1.0.09_1.0.3.zip	JNR1010v2	1.1.0.09	\N	33	\N	f	f	False	f	\N	\N
4160	JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618_FW_V1.1.0.18_1.0.1.zip	JNR1010v2	1.1.0.18	\N	33	\N	f	f	False	f	\N	\N
4165	JNR1010v2_WNR614v1_WNR618v1_WNR2020v1_JWNR2000v5_JWNR2010v5_FW_v1.1.0.12.zip	JNR1010v2	1.1.0.12	\N	33	\N	f	f	False	f	\N	\N
107940	JNR1010V2-JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618-FW_V1.1.0.28_1.0.1.zip	JNR1010v2	1.1.0.28	\N	33	\N	f	f	False	f	\N	\N
4162	JNR1010v2_WNR614v1_WNR618v1_WNR2020v1_JWNR2000v5_JWNR2010v5_FW_V1.1.0.16_1.0.1.zip	JNR1010v2	1.1.0.16	\N	33	\N	f	f	False	f	\N	\N
2569	JNR3000_V1.1.0.25_1.0.1.zip	JNR3000	1.1.0.25	\N	33	\N	f	f	False	f	\N	\N
4608	JNR3210-V1.1.0.27_1.0.5.zip	JNR3210	1.1.0.27	\N	33	\N	f	f	False	f	\N	\N
2571	JNR3000 Firmware Version 1.1.0.14.zip	JNR3000	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N
2568	JNR3000_V1.1.0.26_1.0.8.zip	JNR3000	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N
107941	JNR3210_V1.1.0.30_1.0.2.zip	JNR3210	1.1.0.30	\N	33	\N	f	f	False	f	\N	\N
2574	JNR3000-V1.1.0.27_1.0.5.zip	JNR3000	1.1.0.27	\N	33	\N	f	f	False	f	\N	\N
4609	JNR3210_V1.1.0.29_1.0.1.zip	JNR3210	1.1.0.29	\N	33	\N	f	f	False	f	\N	\N
2572	JNR3000_V1.1.0.29_1.0.1.zip	JNR3000	1.1.0.29	\N	33	\N	f	f	False	f	\N	\N
4604	JNR3210_V1.10.26_1.0.8.zip	JNR3210	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N
4605	JNR3210 Firmware Version 1.1.0.14.zip	JNR3210	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N
4606	JNR3210_V1.1.0.22_1.0.1.zip	JNR3210	1.1.0.22	\N	33	\N	f	f	False	f	\N	\N
4607	JNR3210_V1.1.0.25_1.0.1.zip	JNR3210	1.1.0.25	\N	33	\N	f	f	False	f	\N	\N
4603	JNR3210_V1.1.0.24_1.0.4.zip	JNR3210	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N
107942	R6050_JR6150-V1.0.1.4_1.0.1.zip	JR6150	1.0.1.4	\N	33	\N	f	f	False	f	\N	\N
3267	JR6150_FW_V1.0.0.18.zip	JR6150	1.0.0.18	\N	33	\N	f	f	False	f	\N	\N
107944	JR6150_R6050-V1.0.0.36_1.0.1.zip	JR6150	1.0.0.36	\N	33	\N	f	f	False	f	\N	\N
3266	JR6150_R6050_V1.0.0.30_1.0.1.zip	JR6150	1.0.0.30	\N	33	\N	f	f	False	f	\N	\N
107945	JR6150_R6050-V1.0.1.2_1.0.1.zip	JR6150	1.0.1.2	\N	33	\N	f	f	False	f	\N	\N
3264	JR6150-R6050-V1.0.0.22.zip	JR6150	1.0.0.22	\N	33	\N	f	f	False	f	\N	\N
107946	JR6150-R6050-V1.0.0.34_1.0.1.zip	JR6150	1.0.0.34	\N	33	\N	f	f	False	f	\N	\N
3033	KWGR614 Firmware Version 1.0.0_09.25 (North America).zip	KWGR614	1.0.0	\N	33	\N	f	f	False	f	mipseb	\N
107948	RBS50-V1.2.0.6.zip	Orbi	1.2.0.6	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107949	RBS50-V1.3.0.12.zip	Orbi	1.3.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107951	RBS50-V1.4.0.16.zip	Orbi	1.4.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107952	RBR50-V1.4.0.18.zip	Orbi	1.4.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107954	RBR50-V1.3.0.12.zip	Orbi	1.3.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107956	RBR50-V1.3.0.26.zip	Orbi	1.3.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107957	RBS50-V1.1.0.16.zip	Orbi	1.1.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107958	PR2000-V1.0.0.15_1.0.1.zip	PR2000	1.0.0.15	\N	33	\N	f	f	False	f	\N	\N
107960	RBR50-V1.1.0.16.zip	Orbi	1.1.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107961	PR2000_V1.0.0.12_1.0.1.zip	PR2000	1.0.0.12	\N	33	\N	f	f	False	f	\N	\N
107962	PR2000_V1.0.0.10_1.0.1.zip	PR2000	1.0.0.10	\N	33	\N	f	f	False	f	\N	\N
107964	PR2000_FW_V1.0.0.09_1.0.1.zip	PR2000	1.0.0.9	\N	33	\N	f	f	False	f	\N	\N
107965	PR2000-V1.0.0.13_1.0.1.zip	PR2000	1.0.0.13	\N	33	\N	f	f	False	f	\N	\N
3286	R4500_V1.0.0.4_1.0.3.zip	R4500	1.0.0.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107966	R2000_V1.0.0.34.zip	R2000	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N
2175	R2000_V1.0.0.20.zip	R2000	1.0.0.20	\N	33	\N	f	f	False	f	mipseb	\N
107968	R6100-V1.0.0.62.zip	R6100	1.0.0.62	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2871	R6100-V1.0.0.38.zip	R6100	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2872	R6100_V1.0.0.52.zip	R6100	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2868	R6100-V1.0.0.28.zip	R6100	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107969	R6200-V1.0.1.56_1.0.43.zip	R6200	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2870	R6100-V1.0.0.48.zip	R6100	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4211	R6200-V1.0.1.48_1.0.37.zip	R6200	1.0.1.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107970	R6100-V1.0.0.60.zip	R6100	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4210	R6200-V1.0.1.46_1.0.36.zip	R6200	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4208	R6200-V1.0.0.18_1.0.18.zip	R6200	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4207	R6200-V1.0.0.28_1.0.24.zip	R6200	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107972	R6220_FW_V1.1.0.34_1.0.1.zip	R6220	1.1.0.34	\N	33	\N	f	f	False	f	\N	\N
2436	R6200V2-V1.0.1.14_1.0.14.zip	R6200v2	1.0.1.14	\N	33	\N	f	f	False	f	armel	\N
2437	R6200v2-V1.0.1.20_1.0.18.zip	R6200v2	1.0.1.20	\N	33	\N	f	f	False	f	armel	\N
2434	R6200v2_V1.0.1.18_1.0.17.zip	R6200v2	1.0.1.18	\N	33	\N	f	f	False	f	armel	\N
2435	R6200v2_V1.0.1.16_1.0.15.zip	R6200v2	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N
107973	R6220_V1.0.0.14_1.0.1_FW.zip	R6220	1.0.0.14	\N	33	\N	f	f	False	f	\N	\N
107974	R6220_V1.0.0.16_1.0.1_FW.zip	R6220	1.0.0.16	\N	33	\N	f	f	False	f	\N	\N
107975	R6220_V1.0.0.17_1.0.1_FW.zip	R6220	1.0.0.17	\N	33	\N	f	f	False	f	\N	\N
107976	R6220_FW_V1.1.0.31_1.0.1.zip	R6220	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N
3284	R6250-V1.0.1.80_1.0.75.zip	R6250	1.0.1.80	\N	33	\N	f	f	False	f	armel	\N
3281	R6250_V1.0.1.84-1.0.78.zip	R6250	1.0.1.84	\N	33	\N	f	f	False	f	armel	\N
3280	R6250-V1.0.1.82_1.0.77.zip	R6250	1.0.1.82	\N	33	\N	f	f	False	f	armel	\N
107978	R6250-V1.0.4.2_10.1.10.zip	R6250	1.0.4.2	\N	33	\N	f	f	False	f	armel	\N
107979	R6250-V1.0.3.12_10.1.8.zip	R6250	1.0.3.12	\N	33	\N	f	f	False	f	armel	\N
3285	R6250-V1.0.0.72_1.0.71.zip	R6250	1.0.0.72	\N	33	\N	f	f	False	f	armel	\N
3283	R6250-V1.0.0.62_1.0.62.zip	R6250	1.0.0.62	\N	33	\N	f	f	False	f	armel	\N
3313	R6300-V1.0.2.38_1.0.33.zip	R6300v1	1.0.2.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3312	R6300-V1.0.2.14_1.0.23.zip	R6300v1	1.0.2.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107981	R6250-V1.0.3.6_10.1.3.zip	R6250	1.0.3.6	\N	33	\N	f	f	False	f	armel	\N
3282	R6250-V1.0.0.70_1.0.70.zip	R6250	1.0.0.70	\N	33	\N	f	f	False	f	armel	\N
3310	R6300_V1.0.2.70_1.0.50.zip	R6300v1	1.0.2.70	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3315	R6300-V1.0.2.10_1.0.21.zip	R6300v1	1.0.2.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3318	R6300-V1.0.2.26_1.0.26.zip	R6300v1	1.0.2.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107982	R6300v2-V1.0.4.6_10.0.76.zip	R6300v2	1.0.4.06	\N	33	\N	f	f	False	f	armel	\N
3319	R6300-V1.0.0.90_1.0.18.zip	R6300v1	1.0.0.90	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107983	R6300v2-V1.0.4.2_10.0.74.zip	R6300v2	1.0.4.2	\N	33	\N	f	f	False	f	armel	\N
107984	R6300v2-V1.0.3.30_10.0.73.zip	R6300v2	1.0.3.30	\N	33	\N	f	f	False	f	armel	\N
3474	R6300v2-V1.0.3.8_1.0.60.zip	R6300v2	1.0.3.8	\N	33	\N	f	f	False	f	armel	\N
107985	R6300v2-V1.0.3.22_10.0.67.zip	R6300v2	1.0.3.22	\N	33	\N	f	f	False	f	armel	\N
107986	R6300v2-V1.0.3.28_10.0.71.zip	R6300v2	1.0.3.28	\N	33	\N	f	f	False	f	armel	\N
3314	R6300-V1.0.0.68_1.0.16.zip	R6300v1	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3479	R6300v2_V1.0.3.2_1.0.57.zip	R6300v2	1.0.3.2	\N	33	\N	f	f	False	f	armel	\N
3476	R6300v2-V1.0.1.72_1.0.21.zip	R6300v2	1.0.1.72	\N	33	\N	f	f	False	f	armel	\N
3477	R6300v2_V1.0.2.86_1.0.51.zip	R6300v2	1.0.2.86	\N	33	\N	f	f	False	f	armel	\N
107987	R6300v2-V1.0.3.26_10.0.70.zip	R6300v2	1.0.3.26	\N	33	\N	f	f	False	f	armel	\N
107988	R6400-V1.0.1.12_1.0.11.zip	R6400	1.0.1.12	\N	33	\N	f	f	False	f	armel	\N
107989	R6400-V1.0.1.6_1.0.4.zip	R6400	1.0.1.6	\N	33	\N	f	f	False	f	armel	\N
107990	R6700-V1.0.0.26_10.0.26.zip	R6700	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N
107991	R6900-V1.0.0.4_1.0.10.zip	R6900	1.0.0.04	\N	33	\N	f	f	False	f	armel	\N
3149	R6700-V1.0.0.2_1.0.1.zip	R6700	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N
107992	R6400-V1.0.0.24_1.0.13.zip	R6400	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N
107993	R6400-V1.0.0.20_1.0.11.zip	R6400	1.0.0.20	\N	33	\N	f	f	False	f	armel	\N
107994	R6400-V1.0.0.14_1.0.8.zip	R6400	1.0.0.14	\N	33	\N	f	f	False	f	armel	\N
107996	R6400-V1.0.0.26_1.0.14.zip	R6400	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N
107997	R6900-V1.0.0.2_1.0.2.zip	R6900	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N
107998	R7000-V1.0.7.2_1.1.93.zip	R7000	1.0.7.2	\N	33	\N	f	f	False	f	armel	\N
107999	R7000-V1.0.5.70_1.1.91.zip	R7000	1.0.5.70	\N	33	\N	f	f	False	f	armel	\N
4346	R7000-V1.0.3.68_1.1.31.zip	R7000	1.0.3.68	\N	33	\N	f	f	False	f	armel	\N
108000	R7000_V1.0.4.30_1.1.67.zip	R7000	1.0.4.30	\N	33	\N	f	f	False	f	armel	\N
4341	R7000-V1.0.2.194_1.0.15.zip	R7000	1.0.2.194	\N	33	\N	f	f	False	f	armel	\N
108001	R7000-V1.0.4.28_1.1.64.zip	R7000	1.0.4.28	\N	33	\N	f	f	False	f	armel	\N
4339	R7000-V1.0.2.164_1.0.15.zip	R7000	1.0.2.164	\N	33	\N	f	f	False	f	armel	\N
4348	R7000_V1.0.3.24_1.1.20.zip	R7000	1.0.3.24	\N	33	\N	f	f	False	f	armel	\N
4345	R7000-_V1.0.3.80-1.1.38.zip	R7000	1.0.3.80	\N	33	\N	f	f	False	f	armel	\N
4344	R7000-V1.0.3.56_1.1.25.zip	R7000	1.0.3.56	\N	33	\N	f	f	False	f	armel	\N
108002	R7000-V1.0.5.64_1.1.88.zip	R7000	1.0.5.64	\N	33	\N	f	f	False	f	armel	\N
108003	R7000_V1.0.4.18_1.1.52.zip	R7000	1.0.4.18	\N	33	\N	f	f	False	f	armel	\N
4347	R7000_V1.0.1.22-1.0.15.zip	R7000	1.0.1.22	\N	33	\N	f	f	False	f	armel	\N
108004	R7500_V1.0.0.94.zip	R7500	1.0.0.94	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108005	R7500-V1.0.0.76.zip	R7500	1.0.0.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108006	R7500-FW-V1.0.0.70.zip	R7500	1.0.0.70	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108007	R7500-V1.0.0.82.zip	R7500	1.0.0.82	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108008	R7300-V1.0.0.32_1.0.6.zip	R7300DST	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N
4677	R7500_V1.0.0.52.zip	R7500	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
4676	R7500-V1.0.0.68.zip	R7500	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108010	R7300-V1.0.0.26_1.0.6.zip	R7300DST	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N
4678	R7500-V1.0.0.46.zip	R7500	1.0.0.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108012	R7500v2-V1.0.2.4.zip	R7500v2	1.0.2.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108013	R7500v2-V1.0.2.2.zip	R7500v2	1.0.2.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108014	R7500v2-V1.0.0.28.zip	R7500v2	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108016	R7800-V1.0.2.12.zip	R7800	1.0.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108017	R7500v2-V1.0.0.26.zip	R7500v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108018	R7800-V1.0.1.30.zip	R7800	1.0.1.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108019	R7800-V1.0.2.04.zip	R7800	1.0.2.04	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108021	R7800-V1.0.0.30.zip	R7800	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108022	R7800-V1.0.0.40.zip	R7800	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108023	R7800-V1.0.0.28.zip	R7800	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108024	R7900-V1.0.0.6_10.0.4.zip	R7900	1.0.0.6	\N	33	\N	f	f	False	f	armel	\N
108026	R7900-V1.0.0.10_10.0.7.zip	R7900	1.0.0.10	\N	33	\N	f	f	False	f	armel	\N
108027	R7900-V1.0.0.2_10.0.1.zip	R7900	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N
108028	R7900-V1.0.0.8_10.0.5.zip	R7900	1.0.0.8	\N	33	\N	f	f	False	f	armel	\N
108029	R8000-V1.0.2.46_1.0.97.zip	R8000	1.0.2.46	\N	33	\N	f	f	False	f	armel	\N
108030	R8000-V1.0.3.4_1.1.2.zip	R8000	1.0.3.4	\N	33	\N	f	f	False	f	armel	\N
108031	R8000-V1.0.1.16-1.0.74.zip	R8000	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N
108032	R8000-V1.0.2.44_1.0.96.zip	R8000	1.0.2.44	\N	33	\N	f	f	False	f	armel	\N
2553	R8000-V1.0.0.110_1.0.70.zip	R8000	1.0.0.110	\N	33	\N	f	f	False	f	armel	\N
2547	R8000-V1.0.0.108_1.0.62.zip	R8000	1.0.0.108	\N	33	\N	f	f	False	f	armel	\N
2551	R8000-V1.0.0.102_1.0.45.zip	R8000	1.0.0.102	\N	33	\N	f	f	False	f	armel	\N
2554	R8000-V1.0.0.76_1.0.32.zip	R8000	1.0.0.76	\N	33	\N	f	f	False	f	armel	\N
2552	R8000-V1.0.0.90_1.0.39.zip	R8000	1.0.0.90	\N	33	\N	f	f	False	f	armel	\N
2548	R8000-V1.0.0.68_1.0.27.zip	R8000	1.0.0.68	\N	33	\N	f	f	False	f	armel	\N
2549	R8000-V1.0.0.74_1.0.31.zip	R8000	1.0.0.74	\N	33	\N	f	f	False	f	armel	\N
108033	R8000-V1.0.0.46_1.0.17.zip	R8000	1.0.0.46	\N	33	\N	f	f	False	f	armel	\N
108035	R8500-V1.0.2.54_1.0.56.zip	R8500	1.0.2.54	\N	33	\N	f	f	False	f	armel	\N
108036	R8500-V1.0.2.56_1.0.57.zip	R8500	1.0.2.56	\N	33	\N	f	f	False	f	armel	\N
108037	R8500-V1.0.0.56_1.0.28.zip	R8500	1.0.0.56	\N	33	\N	f	f	False	f	armel	\N
108038	R8500-V1.0.0.52_1.0.26.zip	R8500	1.0.0.52	\N	33	\N	f	f	False	f	armel	\N
108039	R8300-V1.0.2.48_1.0.52.zip	R8300	1.0.2.48	\N	33	\N	f	f	False	f	armel	\N
108040	R8500-V1.0.2.64_1.0.62.zip	R8500	1.0.2.64	\N	33	\N	f	f	False	f	armel	\N
108041	R8500-V1.0.2.26_1.0.41.zip	R8500	1.0.2.26	\N	33	\N	f	f	False	f	armel	\N
108043	R8500-V1.0.2.30_1.0.43.zip	R8500	1.0.2.30	\N	33	\N	f	f	False	f	armel	\N
108044	R9000_V1.0.1.20.zip	R9000	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108045	R8500-V1.0.0.42_1.0.23.zip	R8500	1.0.0.42	\N	33	\N	f	f	False	f	armel	\N
108046	R9000_V1.0.1.18.zip	R9000	1.0.1.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108047	R8500-V1.0.0.28_1.0.15.zip	R8500	1.0.0.28	\N	33	\N	f	f	False	f	armel	\N
3759	WGR614V10_V1.0.2.58_60.0.84.zip	WGR614v10	1.0.2.58	\N	33	\N	f	f	False	f	mipsel	\N
3763	WGR614v10-V1.0.2.18_47.0.52NA.zip	WGR614v10	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N
3758	WGR614V10_V1.0.2.58_60.0.84NA.zip	WGR614v10	1.0.2.58	\N	33	\N	f	f	False	f	mipsel	\N
3760	WGR614v10-V1.0.2.54_60.0.82NA.zip	WGR614v10	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N
3766	WGR614v10_V1.0.2.60_60.0.85NA.zip	WGR614v10	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N
5016	WGR612 Firmware Version 1.0.1.2 (North America).zip	WGR612	1.0.1.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16135	WGR614v10-V1.0.2.26_51.0.59NA.zip	WGR614v10	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N
2235	WGM124 Pre-N Firmware 1.0.0.7.zip	WGM124	1.0.0.7	\N	33	\N	f	f	False	f	armeb	\N
3761	WGR614v10_V1.0.2.60_60.0.85.zip	WGR614v10	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N
2394	WGR614v9_V1.2.32_43.0.46NA.zip	WGR614v9	1.2.32	\N	33	\N	f	f	False	f	mipsel	\N
2389	WGR614v9 Firmware Version 1.2.6 (North America).zip	WGR614v9	1.2.6	\N	33	\N	f	f	False	f	mipsel	\N
4117	WGR614v8 Firmware Version 1.1.24 (North America).zip	WGR614v8	1.1.24	\N	33	\N	f	f	False	f	mipsel	\N
4125	WGR614v8 Firmware Version 1.1.1 (North America).zip	WGR614v8	1.1.1	\N	33	\N	f	f	False	f	mipsel	\N
4118	WGR614v8 Beta Firmware Version 1.1.20_7.0.37 (North America).zip	WGR614v8	1.1.20	\N	33	\N	f	f	False	f	mipsel	\N
4115	WGR614v8 Firmware Version 1.1.11_6.0.36 (North America).zip	WGR614v8	1.1.11	\N	33	\N	f	f	False	f	mipsel	\N
2397	WGR614v9-V1.2.30_41.0.44(NA).zip	WGR614v9	1.2.30	\N	33	\N	f	f	False	f	mipsel	\N
2406	WGR614v9 Firmware Version 1.2.24 (North America).zip	WGR614v9	1.2.24	\N	33	\N	f	f	False	f	mipsel	\N
2408	WGR614v9 Firmware Version 1.0.18 (North America).zip	WGR614v9	1.0.18	\N	33	\N	f	f	False	f	mipsel	\N
2399	WGR614v9 Initial Release Firmware - Version 1.0.9 (North America).zip	WGR614v9	1.0.9	\N	33	\N	f	f	False	f	mipsel	\N
2411	WGR614v9 Firmware Version 1.2.2 (North America).zip	WGR614v9	1.2.2	\N	33	\N	f	f	False	f	mipsel	\N
4121	WGR614v8 Firmware Version 1.1.2_1.0.23 (North America).zip	WGR614v8	1.1.2	\N	33	\N	f	f	False	f	mipsel	\N
2390	WGR614v9 Firmware Version 1.0.15 (North America).zip	WGR614v9	1.0.15	\N	33	\N	f	f	False	f	mipsel	\N
3377	WGT624v4 - Firmware Version 2.0.13 (North America).zip	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N
4660	WNDR3300-V1.0.45_1.0.45NA.zip	WNDR3300v1	1.0.45	\N	33	\N	f	f	False	f	mipsel	\N
3378	WGT624v4 - Firmware Version 2.0.13_2.0.15.zip	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N
3376	WGT624v4 - Firmware Version 2.0.12 (North America).zip	WGT624v4	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N
4664	WNDR3300 Firmware Version 1.0.29 (North America).zip	WNDR3300v1	1.0.29	\N	33	\N	f	f	False	f	mipsel	\N
3244	WNDR3400-V1.0.0.52_20.0.60.zip	WNDR3400v1	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3240	WNDR3400 Firmware Version 1.0.0.34.zip	WNDR3400v1	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N
3241	WNDR3400 Firmware Version 1.0.0.38.zip	WNDR3400v1	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N
4662	WNDR3300 Firmware Version 1.0.27 (North America).zip	WNDR3300v1	1.0.27	\N	33	\N	f	f	False	f	mipsel	\N
3304	WNDR3400v2-V1.0.0.34_1.0.52.zip	WNDR3400v2	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4665	WNDR3300 Firmware Version 1.0.23 (North America).zip	WNDR3300v1	1.0.23	\N	33	\N	f	f	False	f	mipsel	\N
3243	WNDR3400 Firmware Version 1.0.0.50.zip	WNDR3400v1	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3303	WNDR3400v2-V1.0.0.12_1.0.30.zip	WNDR3400v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108056	WNDR3400v3-V1.0.1.4_1.0.52.zip	WNDR3400v3	1.0.1.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4661	WNDR3300_V1.0.26_1.0.26NA.zip	WNDR3300v1	1.0.26	\N	33	\N	f	f	False	f	mipsel	\N
3837	WNDR3300v2 Initial Firmware Version 1.0.0.26.zip	WNDR3300v2	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N
108057	WNDR3400v2-V1.0.0.52_1.0.81.zip	WNDR3400v2	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108058	WNDR3400v3-V1.0.0.48_1.0.48.zip	WNDR3400v3	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2694	WNDR3400v3-V1.0.0.38_1.0.40.zip	WNDR3400v3	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4062	WNDR3700-V1.0.16.98NA.zip	WNDR3700v1	1.0.16.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3307	WNDR3400v2_V1.0.0.38_1.0.61.zip	WNDR3400v2	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4058	WNDR3700 Firmware Version 1.0.4.68 (North America).zip	WNDR3700v1	1.0.4.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4055	WNDR3700-V1.0.7.98NA.zip	WNDR3700v1	1.0.7.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16222	WNDR3700v2_WNDR37AVv2-V1.0.1.14.zip	WNDR3700v2	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4060	WNDR3700 Firmware Version 1.0.4.55 (North America).zip	WNDR3700v1	1.0.4.55	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2695	WNDR3400v3-V1.0.0.20_1.0.28.zip	WNDR3400v3	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108060	WNDR3400v3-V1.0.0.46_1.0.45.zip	WNDR3400v3	1.0.0.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4610	WNDR3800-V1.0.0.44.zip	WNDR3800	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4551	WNDR4500v2_V1.0.0.54_1.0.33.zip	WNDR4500v2	1.0.0.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4619	WNDR3800-V1.0.0.32.zip	WNDR3800	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4554	WNDR4500v2-V1.0.0.36_1.0.21.zip	WNDR4500v2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3588	WNDR4000-V1.0.0.94_9.1.81.zip	WNDR4000	1.0.0.94	\N	33	\N	f	f	False	f	mipsel	\N
3591	WNDR4000-V1.0.2.4_9.1.86.zip	WNDR4000	1.0.2.4	\N	33	\N	f	f	False	f	mipsel	\N
108073	WNDR4500v3-V1.0.0.32.zip	WNDR4500v3	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3587	WNDR4000-V1.0.0.66_8.0.55.zip	WNDR4000	1.0.0.66	\N	33	\N	f	f	False	f	mipsel	\N
108074	WNDR4500v3-V1.0.0.26.zip	WNDR4500v3	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3592	WNDR4000-V1.0.2.2_9.1.84.zip	WNDR4000	1.0.2.2	\N	33	\N	f	f	False	f	mipsel	\N
4469	WNDRMAC Firmware Version 1.0.0.18.zip	WNDRMACv1	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3589	WNDR4000-V1.0.0.88_9.1.77.zip	WNDR4000	1.0.0.88	\N	33	\N	f	f	False	f	mipsel	\N
2696	WNDR3400V3_V1.0.0.22_1.0.29.zip	WNDR3400v3	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2474	WNDR3700v2 WNDR37AVv2 Firmware Version 1.0.0.8.zip	WNDR3700v2	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4468	WNDRMAC Firmware Version 1.0.0.22.zip	WNDRMACv1	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4470	WNDRMAC Firmware Version 1.0.0.20 - BETA.zip	WNDRMACv1	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108068	WNDR4300-V1.0.2.78.zip	WNDR4300	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4330	WNDR4300-V1.0.1.64PRRU.zip	WNDR4300	1.0.1.64	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4325	WNDR4300_V1.0.1.60.zip	WNDR4300	1.0.1.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4326	WNDR4300-V1.0.1.56PRRU.zip	WNDR4300	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4324	WNDR4300-V1.0.1.30.zip	WNDR4300	1.0.1.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4329	WNDR4300-V1.0.1.34.zip	WNDR4300	1.0.1.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4327	WNDR4300-V1.0.1.52PRRU.zip	WNDR4300	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108064	WNDR3700v5_V1.0.0.17_1.0.1_FW.zip	WNDR3700v5	1.0.0.17	\N	33	\N	f	f	False	f	\N	\N
108065	WNDR3700v5-V1.1.0.30_1.0.1_FW.zip	WNDR3700v5	1.1.0.30	\N	33	\N	f	f	False	f	\N	\N
108069	WNDR4300v2-V1.0.0.32.zip	WNDR4300v2	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2728	WNDR4500 Firmware Version 1.0.0.58.zip	WNDR4500	1.0.0.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2720	WNDR4500_Firmware_Version_1.0.1.6.zip	WNDR4500	1.0.1.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2724	WNDR4500 Firmware Version 1.0.0.50.zip	WNDR4500	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2727	WNDR4500-V1.0.1.20_1.0.40.zip	WNDR4500	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16252	WNDR4500-V1.0.0.40_1.0.10.zip	WNDR4500	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4613	WNDR3800-V1.0.0.16.zip	WNDR3800	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2723	WNDR4500_V1.0.1.38_1.0.64.zip	WNDR4500	1.0.1.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2722	WNDR4500-V1.0.1.18_1.0.36.zip	WNDR4500	1.0.1.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108071	WNDR4500v2-V1.0.0.60_1.0.38.zip	WNDR4500v2	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4549	WNDR4500v2-V1.0.0.50_1.0.30.zip	WNDR4500v2	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4550	WNDR4500v2_V1.0.0.42_1.0.25.zip	WNDR4500v2	1.0.0.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3593	WNDR4000-V1.0.0.82_8.0.71.zip	WNDR4000	1.0.0.82	\N	33	\N	f	f	False	f	mipsel	\N
3590	WNDR4000-V1.0.0.90_9.1.79.zip	WNDR4000	1.0.0.90	\N	33	\N	f	f	False	f	mipsel	\N
4328	WNDR4300-V1.0.1.42.zip	WNDR4300	1.0.1.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108070	WNDR4300v2-V1.0.0.26.zip	WNDR4300v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2725	WNDR4500-V1.0.1.36_1.0.63.zip	WNDR4500	1.0.1.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108072	WNDR4500v2-V1.0.0.56_1.0.36.zip	WNDR4500v2	1.0.0.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4153	WNDR3700v3-V1.0.0.38_1.0.31.zip	WNDR3700v3	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N
4151	WNDR3700v3-V1.0.0.30_1.0.27.zip	WNDR3700v3	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N
2473	WNDR3700v2 Firmware Version 1.0.0.10 - BETA.zip	WNDR3700v2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108061	WNDR3700v4-V1.0.2.80.zip	WNDR3700v4	1.0.2.80	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4149	WNDR3700v3-V1.0.0.22_1.0.17.zip	WNDR3700v3	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
4150	WNDR3700v3-V1.0.0.18_1.0.14.zip	WNDR3700v3	1.0.0.18	\N	33	\N	f	f	False	f	mipsel	\N
108062	WNDR3700v4-V1.0.2.78.zip	WNDR3700v4	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2295	WNDR3700V4_V1.0.1.42.zip	WNDR3700v4	1.0.1.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108063	WNDR3700v5_FW_V1.1.0.32_1.0.1.zip	WNDR3700v5	1.1.0.32	\N	33	\N	f	f	False	f	\N	\N
2904	WNDR3700v2WNDR37AVv2 Firmware Version 1.0.0.10.zip	WNDR37AVv2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108066	WNDR3700_WNDR37AV Firmware Version 1.0.16.98NA.zip	WNDR37AVv1	1.0.16.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2905	WNDR3700v2WNDR37AVv2 Firmware Version 1.0.0.12.zip	WNDR37AVv2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4618	WNDR3800-V1.0.0.48.zip	WNDR3800	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4616	WNDR3800-V1.0.0.19.zip	WNDR3800	1.0.0.19	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4617	WNDR3800-V1.0.0.24.zip	WNDR3800	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4620	WNDR3800-V1.0.0.25-Beta.zip	WNDR3800	1.0.0.25	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4614	WNDR3800-V1.0.0.18.zip	WNDR3800	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3349	WNDRMACv2-V1.0.0.16.zip	WNDRMACv2	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3348	WNDRMACv2-V1.0.0.20.zip	WNDRMACv2	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108077	WNDRMACv2 Firmware Version 1.0.0.10.zip	WNDRMACv2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3347	WNDRMACv2-V1.0.0.12.zip	WNDRMACv2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108078	WNDRMACv2 Firmware Version 1.0.0.8.zip	WNDRMACv2	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2608	WNR1000-2VCNAS Firmware Version 1.2.2.56.zip	WNR1000-2VCNAS	1.2.2.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
761	WNR1000-2VCNAS Firmware Version 1.0.0.12.zip	WNR1000-2VCNAS	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3237	WNR1000 Firmware Version 1.0.1.15 (North America).zip	WNR1000v1	1.0.1.15	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2666	WNR1000v2-V1.1.2.28NA.zip	WNR1000v2	1.1.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2662	WNR1000v2-V1.1.2.54NA.zip	WNR1000v2	1.1.2.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3978	WNR1000v3-V1.0.2.60_60.0.86NA.zip	WNR1000v3	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N
3980	WNR1000V3_V1.0.2.62_60.0.87NA.zip	WNR1000v3	1.0.2.62	\N	33	\N	f	f	False	f	mipsel	\N
3983	WNR1000v3-V1.0.2.68_60.0.93NA.zip	WNR1000v3	1.0.2.68	\N	33	\N	f	f	False	f	mipsel	\N
3469	JWNR2000v2_WNR1500-V1.0.0.10_1.0.4.zip	WNR1500	1.0.0.10	\N	33	\N	f	f	False	f	mipseb	\N
3468	JWNR2000v2_WNR1500-V1.0.0.11_1.0.1.zip	WNR1500	1.0.0.11	\N	33	\N	f	f	False	f	mipseb	\N
4356	WNR2000 Firmware Version 1.2.0.8 (North America).zip	WNR2000v1	1.2.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4353	WNR2000 Firmware Version 1.2.3.7 (NA).zip	WNR2000v1	1.2.3.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4354	WNR2000 Firmware Version 1.1.3.9 (North America).zip	WNR2000v1	1.1.3.9	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3994	WNR2000v2 Firmware Version 1.0.0.40_32.0.54 (NA).zip	WNR2000v2	1.0.0.40	\N	33	\N	f	f	False	f	mipsel	\N
3995	WNR2000v2_V1.2.0.6_36.0.58NA.zip	WNR2000v2	1.2.0.6	\N	33	\N	f	f	False	f	mipsel	\N
4000	WNR2000v2 Firmware Version 1.2.0.4_35.0.57 (North America).zip	WNR2000v2	1.2.0.4	\N	33	\N	f	f	False	f	mipsel	\N
3998	WNR2000v2 Initial Release Firmware Version 1.0.0.34_29.0.45 (North America).zip	WNR2000v2	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N
3500	WNR2000v3_Firmware_Version_1.1.2.2.zip	WNR2000v3	1.1.2.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3496	WNR2000v3_Release_Firmware_Version_1.1.1.72.zip	WNR2000v3	1.1.1.72	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3502	wnr2000v3-V1.1.2.6.zip	WNR2000v3	1.1.2.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2576	WNR2000v4-V1.0.0.40.zip	WNR2000v4	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108079	WNR2000v4-V1.0.0.60.zip	WNR2000v4	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108080	WNR2000v4-V1.0.0.64.zip	WNR2000v4	1.0.0.64	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108081	WNR2000v3_V1.1.2.12.zip	WNR2000v3	1.1.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2580	WNR2000v4-V1.0.0.50.zip	WNR2000v4	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2575	wnr2000v4-V1.0.0.30.zip	WNR2000v4	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108082	WNR2000v4-V1.0.0.58.zip	WNR2000v4	1.0.0.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108083	WNR2000v5-V1.0.0.34.zip	WNR2000v5	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N
3501	WNR2000v3 Firmware Version 1.1.1.58.zip	WNR2000v3	1.1.1.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108084	WNR2000v5-V1.0.0.28.zip	WNR2000v5	1.0.0.28	\N	33	\N	f	f	False	f	mipseb	\N
108085	WNR2000v5_V1.0.0.26.zip	WNR2000v5	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4524	WNR2200 Firmware Version 1.0.1.62.zip	WNR2200	1.0.1.62	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108086	WNR2200-V1.0.1.96.zip	WNR2200	1.0.1.96	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4518	WNR2200-V1.0.1.72.zip	WNR2200	1.0.1.72	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4519	WNR2200 Firmware Version 1.0.0.32.zip	WNR2200	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4522	WNR2200-V1.0.1.76.zip	WNR2200	1.0.1.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108087	WNR2500-V1.0.0.32NA.zip	WNR2500	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4516	WNR2200-V1.0.1.88.zip	WNR2200	1.0.1.88	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2730	WNR2500-V1.0.0.24NA.zip	WNR2500	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2729	WNR2500_V1.0.0.18NA.zip	WNR2500	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3106	WNR3500L Firmware Version 1.2.2.44 (NA).zip	WNR3500Lv1	1.2.2.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3087	WNR3500L Firmware Version 1.0.2.50 (North America).zip	WNR3500Lv1	1.0.2.50	\N	33	\N	f	f	False	f	mipsel	\N
3093	WNR3500L Firmware Version 1.2.2.30 (North America).zip	WNR3500Lv1	1.2.2.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3096	WNR3500L_V1.2.2.48_35.0.55.zip	WNR3500Lv1	1.2.2.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3090	WNR3500L Firmware Version 1.0.0.88 (North America).zip	WNR3500Lv1	1.0.0.88	\N	33	\N	f	f	False	f	mipsel	\N
3101	WNR3500L Firmware Version 1.2.2.40 (NA).zip	WNR3500Lv1	1.2.2.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3100	WNR3500L Initial Release Firmware Version 1.0.0.86 (North America).zip	WNR3500Lv1	1.0.0.86	\N	33	\N	f	f	False	f	mipsel	\N
108109	FVS318N-V4.3.1-31.zip	FVS318N	4.3.1	\N	33	\N	f	f	False	f	\N	\N
2668	WNR1000v2 Firmware Version 1.1.2.50 (North America).zip	WNR1000v2	1.1.2.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2660	WNR1000v2-V1.0.1.1NA.zip	WNR1000v2	1.0.1.1	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3975	WNR1000v3-V1.0.2.26_51.0.59NA.zip	WNR1000v3	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N
3966	WNR1000v3 Firmware Version 1.0.2.18 (North America).zip	WNR1000v3	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N
3971	WNR1000v3 Firmware Version 1.0.2.28 (North America).zip	WNR1000v3	1.0.2.28	\N	33	\N	f	f	False	f	mipsel	\N
2189	WNR3500Lv2_V1.2.0.20_40.0.68.zip	WNR3500Lv2	1.2.0.20	\N	33	\N	f	f	False	f	mipsel	\N
2185	WNR3500Lv2 Firmware Version 1.0.0.10.zip	WNR3500Lv2	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N
108090	WNR3500Lv2-V1.2.0.32_40.0.74.zip	WNR3500Lv2	1.2.0.32	\N	33	\N	f	f	False	f	mipsel	\N
2194	WNR3500Lv2_V1.2.0.28_40.0.72.zip	WNR3500Lv2	1.2.0.28	\N	33	\N	f	f	False	f	mipsel	\N
2192	WNR3500L-V1.2.0.18_40.0.67.zip	WNR3500Lv2	1.2.0.18	\N	33	\N	f	f	False	f	mipsel	\N
2191	WNR3500Lv2-V1.2.0.26_40.0.71.zip	WNR3500Lv2	1.2.0.26	\N	33	\N	f	f	False	f	mipsel	\N
2188	WNR3500Lv2-V1.0.0.14_37.0.50.zip	WNR3500Lv2	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N
4217	WNR3500 Firmware Version 1.0.36 (North America).zip	WNR3500v1	1.0.36	\N	33	\N	f	f	False	f	armel	\N
4222	WNR3500 Initial Release Firmware Version 1.0.10.zip	WNR3500v1	1.0.10	\N	33	\N	f	f	False	f	armel	\N
4218	WNR3500 Firmware Version 1.0.22 (North America).zip	WNR3500v1	1.0.22	\N	33	\N	f	f	False	f	armel	\N
4224	WNR3500 Firmware Version 1.0.29 (North America).zip	WNR3500v1	1.0.29	\N	33	\N	f	f	False	f	armel	\N
4221	WNR3500 Firmware Version 1.0.15 (North America).zip	WNR3500v1	1.0.15	\N	33	\N	f	f	False	f	armel	\N
4220	WNR3500 Firmware Version 1.0.30 (WW and NA users).zip	WNR3500v1	1.0.30	\N	33	\N	f	f	False	f	armel	\N
2311	WNR3500v2 Firmware Version 1.2.2.28 (North America).zip	WNR3500v2	1.2.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
2308	WNR3500v2 Firmware Version 1.0.2.14 (North America).zip	WNR3500v2	1.0.2.14	\N	33	\N	f	f	False	f	mipsel	\N
2304	WNR3500v2 Firmware Version 1.0.2.10 (North America).zip	WNR3500v2	1.0.2.10	\N	33	\N	f	f	False	f	mipsel	\N
2309	WNR3500v2 Firmware Version 1.0.0.64 (North America).zip	WNR3500v2	1.0.0.64	\N	33	\N	f	f	False	f	mipsel	\N
108091	WNR612v3_WNR500_V1.0.0.26.zip	WNR500	1.0.0.26	\N	33	\N	f	f	False	f	mipseb	\N
2258	wnr612v3_wnr500-V1.0.0.18.zip	WNR500	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N
4288	wnr612v2-V1.0.0.3_1.0.2PR.zip	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4289	WNR612v2 Firmware Version 1.0.0.2.zip	WNR612v2	1.0.0.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4290	wnr612v2-V1.0.0.3_1.0.2RU.zip	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4287	wnr612v2-V1.0.0.3_1.0.2.zip	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2897	WNR834B Firmware Version 1.0.4.2 (North America).zip	WNR834Bv1	1.0.4.2	\N	33	\N	f	f	False	f	mipsel	\N
2899	WNR834B Firmware Version 1.0.4.0 (North America).zip	WNR834Bv1	1.0.4.0	\N	33	\N	f	f	False	f	mipsel	\N
2895	WNR834B Firmware Version 1.0.3.8 (North America).zip	WNR834Bv1	1.0.3.8	\N	33	\N	f	f	False	f	mipsel	\N
2506	wnr834bBv2_2_1_13_2_1_13_ww.zip	WNR834Bv2	2.1.13	\N	33	\N	f	f	False	f	mipsel	\N
2509	wnr834bv2_2_1_13_na_only.zip	WNR834Bv2	2.1.13	\N	33	\N	f	f	False	f	mipsel	\N
2507	wnr834bv2_1_0_32_na.zip	WNR834Bv2	1.0.32	\N	33	\N	f	f	False	f	mipsel	\N
4040	WPN824N-V1.0.0.28NA.zip	WPN824N	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4042	WPN824N-V1.0.0.28.zip	WPN824N	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4041	WPN824N-V1.0.0.14NA.zip	WPN824N	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4502	WPN824v3 Firmware Version 1.0.7 (North America).zip	WPN824v3	1.0.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4499	WPN824V3-V1.0.8_1.0.7NA.zip	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2879	WPNT834 Firmware Version 1.0.51 (North America).zip	WPNT834	1.0.51	\N	33	\N	f	f	False	f	mipseb	\N
2880	WPNT834 Initial Release Firmware Version 1.0.24.zip	WPNT834	1.0.24	\N	33	\N	f	f	False	f	mipseb	\N
2877	WPNT834 Firmware Version 1.0.41 (North America).zip	WPNT834	1.0.41	\N	33	\N	f	f	False	f	mipseb	\N
2616	RP614v4 Firmware Version 1.0.8.zip	RP614v4	1.0.8	\N	33	\N	f	f	False	f	mipseb	\N
2614	RP614v4 Firmware Version 1.0.2_06.29.zip	RP614v4	1.0.2	\N	33	\N	f	f	False	f	mipseb	\N
2617	RP614v4 Firmware Version 1.1.2.zip	RP614v4	1.1.2	\N	33	\N	f	f	False	f	mipseb	\N
2613	RP614v4 Firmware Version 1.0.1_11.29.zip	RP614v4	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N
2615	RP614v4 Firmware Version 1.0.5_04.23.zip	RP614v4	1.0.5	\N	33	\N	f	f	False	f	mipseb	\N
3888	DGFV338 DSL Board Firmware Version 2.00.62 (Outside Germany).zip	DGFV338	2.00.62	\N	33	\N	f	f	False	f	mipsel	\N
3878	DGFV338 DSL Board Firmware Version 2.0.59 (Outside Germany).zip	DGFV338	2.0.59	\N	33	\N	f	f	False	f	mipsel	\N
3889	DGFV338 DSL Board Firmware Version 2.0.55 (Outside Germany).zip	DGFV338	2.0.55	\N	33	\N	f	f	False	f	mipsel	\N
4844	FVS318G_V3.1.1-18.zip	FVS318G	3.1.1	\N	33	\N	f	f	False	f	armel	\N
4846	FVS318G_V3.1.1-14.zip	FVS318G	3.1.1	\N	33	\N	f	f	False	f	armel	\N
4840	fvs318g_v3.1.1-08.zip	FVS318G	3.1.1	\N	33	\N	f	f	False	f	armel	\N
4841	FVS318G Firmware Version 3.0.6-16.zip	FVS318G	3.0.6	\N	33	\N	f	f	False	f	armel	\N
4842	FVS318G Firmware Version 3.0.5-24.zip	FVS318G	3.0.5	\N	33	\N	f	f	False	f	armel	\N
108096	FVS318Gv2_V4.3.4-2.zip	FVS318Gv2	4.3.4	\N	33	\N	f	f	False	f	\N	\N
108097	FVS318Gv2_V4.3.4-1.zip	FVS318Gv2	4.3.4	\N	33	\N	f	f	False	f	\N	\N
108098	FVS318Gv2_V4.3.2-7.zip	FVS318Gv2	4.3.2	\N	33	\N	f	f	False	f	\N	\N
108099	FVS318Gv2_V4.3.3-8.zip	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N
108100	FVS318Gv2_v4.3.3-6.zip	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N
108101	FVS318Gv2-V4.3.3-3.zip	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N
108102	FVS318N_V4.3.4-1.zip	FVS318N	4.3.4	\N	33	\N	f	f	False	f	\N	\N
2186	FVS318Gv2_V4.3.1-11.zip	FVS318Gv2	4.3.1	\N	33	\N	f	f	False	f	\N	\N
108103	FVS318N_V4.3.4-2.zip	FVS318N	4.3.4	\N	33	\N	f	f	False	f	\N	\N
108104	FVS318N_V4.3.3-5.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N
108106	FVS318N_v4.3.3-6.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N
2184	FVS318Gv2_V4.3.1-9.zip	FVS318Gv2	4.3.1	\N	33	\N	f	f	False	f	\N	\N
108107	FVS318N-V4.3.3-3.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N
3629	FVS318N_v4.2.1-2.zip	FVS318N	4.2.1	\N	33	\N	f	f	False	f	\N	\N
3630	fvs318n_v4.2.0-14.zip	FVS318N	4.2.0	\N	33	\N	f	f	False	f	\N	\N
108108	FVS318N-V4.3.1-22.zip	FVS318N	4.3.1	\N	33	\N	f	f	False	f	\N	\N
3634	FVS318N_v4.1.1-8.zip	FVS318N	4.1.1	\N	33	\N	f	f	False	f	\N	\N
2112	FVS318N Firmware Version 4.0.1-66.zip	FVS318N	4.0.1	\N	33	\N	f	f	False	f	\N	\N
2111	FVS318N Firmware Version 4.0.1-67.zip	FVS318N	4.0.1	\N	33	\N	f	f	False	f	\N	\N
108111	FVS318N_V4.3.2-7.zip	FVS318N	4.3.2	\N	33	\N	f	f	False	f	\N	\N
3632	FVS318N_v4.1.0-27.zip	FVS318N	4.1.0	\N	33	\N	f	f	False	f	\N	\N
2345	GSM7328SOGSM7352SO Initial firmware version 0.0.3.1.zip	GSM7328SO	0.0.3.1	\N	33	\N	f	f	False	f	ppceb	\N
5402	GSM7328SO-GSM7352SO Initial firmware version 0.0.3.1.zip	GSM7352SO	0.0.3.1	\N	33	\N	f	f	False	f	ppceb	\N
2807	JGSM7224_V9.2.0.13.zip	JGSM7224	9.2.0.13	\N	33	\N	f	f	False	f	mipseb	\N
2805	JGSM7224-9.2.0.7.zip	JGSM7224	9.2.0.7	\N	33	\N	f	f	False	f	mipseb	\N
2802	JGSM7224_FW_V9.2.0.5.zip	JGSM7224	9.2.0.5	\N	33	\N	f	f	False	f	mipseb	\N
2804	JGSM7224_V9.2.0.15.zip	JGSM7224	9.2.0.15	\N	33	\N	f	f	False	f	mipseb	\N
108211	M7100-XSM7224_V10.1.0.15.zip	M7100-24X (XSM7224)	10.1.0.15	\N	33	\N	f	f	False	f	ppceb	\N
4170	M7100_XSM7224_V10.1.0.10.zip	M7100-24X (XSM7224)	10.1.0.10	\N	33	\N	f	f	False	f	ppceb	\N
4171	M7100_XSM7224_V10.1.0.11.zip	M7100-24X (XSM7224)	10.1.0.11	\N	33	\N	f	f	False	f	ppceb	\N
108266	XS728T_XS748T_FW_V6.5.1.26.zip	XS728T	6.5.1.26	\N	33	\N	f	f	False	f	armel	\N
108267	XS728T_FW_V6.5.0.23.zip	XS728T	6.5.0.23	\N	33	\N	f	f	False	f	armel	\N
108268	XS728T_FW_V6.5.0.25.zip	XS728T	6.5.0.25	\N	33	\N	f	f	False	f	armel	\N
108269	XS748T_V6.5.1.25.zip	XS748T	6.5.1.25	\N	33	\N	f	f	False	f	armel	\N
108270	XS748T_V6.5.1.22.zip	XS748T	6.5.1.22	\N	33	\N	f	f	False	f	armel	\N
108289	WAC104_V1.0.4.1.zip	WAC104	1.0.4.1	\N	33	\N	f	f	False	f	\N	\N
108291	WAC120_V2.0.7.zip	WAC120	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2522	WAC120_V2.0.2.zip	WAC120	2.0.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2521	WAC120_V2.0.3.zip	WAC120	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2488	WG103 Firmware version v2.0.37.zip	WG103	2.0.37	\N	33	\N	f	f	False	f	mipseb	\N
2489	WG103_V2.2.5_firmware.zip	WG103	2.2.5	\N	33	\N	f	f	False	f	mipseb	\N
2487	WG103 Firmware version v2.0.0.12.zip	WG103	2.0.0.12	\N	33	\N	f	f	False	f	mipseb	\N
3408	WNAP210 Firmware Version 2.0.27.zip	WNAP210	2.0.27	\N	33	\N	f	f	False	f	mipseb	\N
3406	WNAP210 Firmware Version 2.0.4.zip	WNAP210	2.0.4	\N	33	\N	f	f	False	f	mipseb	\N
3404	WNAP210 Firmware Version 2.0.6.zip	WNAP210	2.0.6	\N	33	\N	f	f	False	f	mipseb	\N
3405	WNAP210 Firmware Version 2.0.10.zip	WNAP210	2.0.10	\N	33	\N	f	f	False	f	mipseb	\N
3409	WNAP210 Firmware Version 2.1.1.zip	WNAP210	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
3407	WNAP210 Firmware Version 2.0.12.zip	WNAP210	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N
2541	WNAP320 Firmware Version 2.0.zip	WNAP320	2.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108295	WNAP320_V2.1.6_firmware.zip	WNAP320	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108296	WNAP320_V2.1.5_firmware.zip	WNAP320	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2540	WNAP320 Firmware Version 2.0.3.zip	WNAP320	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108297	WND930_V2.0.4_firmware.zip	WND930	2.0.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108298	WND930_V2.0.11.zip	WND930	2.0.11	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3948	WNDAP330 Firmware Version 2.1.11.zip	WNDAP330	2.1.11	\N	33	\N	f	f	False	f	mips64eb	\N
3949	WNDAP330 Firmware Version 3.0.3.zip	WNDAP330	3.0.3	\N	33	\N	f	f	False	f	mips64eb	\N
3951	WNDAP330 Firmware Version 2.0.2.zip	WNDAP330	2.0.2	\N	33	\N	f	f	False	f	mips64eb	\N
3950	WNDAP330 Firmware Version 3.0.5.zip	WNDAP330	3.0.5	\N	33	\N	f	f	False	f	mips64eb	\N
108299	WNDAP350_V2.1.8_firmware.zip	WNDAP350	2.1.8	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
4978	WNDAP350_-Firmware-Version-V2.1.6.zip	WNDAP350	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
4977	WNDAP350_-Firmware-Version-V2.1.7.zip	WNDAP350	2.1.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
4979	WNDAP350_-Firmware-Version-2.0.27.zip	WNDAP350	2.0.27	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
4980	WNDAP350_-Firmware-Version_-2.0.9.zip	WNDAP350	2.0.9	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108301	WNDAP360_V2.1.12_firmware.zip	WNDAP360	2.1.12	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3638	WNDAP360_-Firmware-Version-V2.1.7.zip	WNDAP360	2.1.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108302	WNDAP360-V2.1.11_firmware.zip	WNDAP360	2.1.11	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108303	WNDAP360 Firmware Version 2.1.1.zip	WNDAP360	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3637	WNDAP360_-Firmware-Version-V2.1.5.zip	WNDAP360	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3639	WNDAP360_-Firmware-Version-V2.1.6.zip	WNDAP360	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108305	WNDAP360 Firmware Version 2.0.4.zip	WNDAP360	2.0.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
4237	WG602v2 Firmware Version 3.2.zip	WG602v2	3.2	\N	33	\N	f	f	False	f	\N	\N
3901	WG602v3 Firmware Version 1.2.2 (North America).zip	WG602v3	1.2.2	\N	33	\N	f	f	False	f	mipsel	\N
3898	WG602v3 Firmware Version 1.1.0 (North America).zip	WG602v3	1.1.0	\N	33	\N	f	f	False	f	mipsel	\N
3897	WG602v3 Firmware Version 1.2.5 (North America).zip	WG602v3	1.2.5	\N	33	\N	f	f	False	f	mipsel	\N
108311	WN604_V3.3.1_firmware.zip	WN604	3.3.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108312	WN604_V3.3.3_firmware.zip	WN604	3.3.3	\N	33	\N	f	f	False	f	mipseb	\N
4423	WN604 Firmware Version 2.3.1.zip	WN604	2.3.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108313	WN604_V3.3.2_firmware.zip	WN604	3.3.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
4417	WN604 Firmware Version 2.1.zip	WN604	2.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
4422	WN604_V3.0.2_firmware.zip	WN604	3.0.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3752	WNHD3004 Firmware Version 1.2.0.2 (North America).zip	WNHD3004	1.2.0.2	\N	33	\N	f	f	False	f	armel	\N
3755	WNHD3004 Firmware Version 1.3.0.3 (North America).zip	WNHD3004	1.3.0.3	\N	33	\N	f	f	False	f	armel	\N
108316	WMS5316_FW_V2.1.5.zip	WMS5316	2.1.5	\N	33	\N	f	f	False	f	\N	\N
2300	WMS5316_2.1.4.15.zip	WMS5316	2.1.4.15	\N	33	\N	f	f	False	f	\N	\N
2302	WMS5316 Firmware Version 2.0.3.zip	WMS5316	2.0.3	\N	33	\N	f	f	False	f	\N	\N
2303	WMS5316 Firmware Version 2.1.2.zip	WMS5316	2.1.2	\N	33	\N	f	f	False	f	\N	\N
2301	WMS5316 Firmware Version 2.0 (Initial Release).zip	WMS5316	2.0	\N	33	\N	f	f	False	f	\N	\N
108337	DG834_V3.01.25.img	DG834v1	3.01.25	\N	33	\N	f	f	False	f	mipsel	\N
108338	DG834_V2.10.22.img	DG834v1	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N
1802	dg834_g_v1_05_00.zip	DG834v1	1.05.00	\N	33	\N	f	f	False	f	mipsel	\N
108339	DG834_V3.01.32.img	DG834v2	3.01.32	\N	33	\N	f	f	False	f	mipsel	\N
108340	DG834V3_V4.01.30.img	DG834v3	4.01.30	\N	33	\N	f	f	False	f	mipsel	\N
108341	DG834V3_V4.01.27.img	DG834v3	4.01.27	\N	33	\N	f	f	False	f	mipsel	\N
108342	DG834V3_V4.01.04.img	DG834v3	4.01.04	\N	33	\N	f	f	False	f	mipsel	\N
15956	DG834Gv4_V5.01.14.img	DG834v4	5.01.14	\N	33	\N	f	f	False	f	\N	\N
716	dg834v4_dg834gv4_5_01_01.zip	DG834v4	5.01.01	\N	33	\N	f	f	False	f	\N	\N
108343	DG834Gv5-V6.00.24.chk	DG834Gv5	6.00.24	\N	33	\N	f	f	False	f	armel	\N
6283	DG834Gv5_RTV6.00.21.chk	DG834Gv5	6.00.21	\N	33	\N	f	f	False	f	armel	\N
5724	DG834Gv5-V1.6.01.34.chk	DG834Gv5	1.6.00.34	\N	33	\N	f	f	False	f	armel	\N
7331	DGN1000_v1.1.00.46.img	DGN1000	1.1.00.46	\N	33	\N	f	f	False	f	\N	\N
7333	DGN1000WW_V1.1.00.45.img	DGN1000	1.1.00.45	\N	33	\N	f	f	False	f	\N	\N
1961	DGN1000WW_V1.1.00.41.img	DGN1000	1.1.00.41	\N	33	\N	f	f	False	f	\N	\N
5802	DGN1000_V1.1.00.34_ww.img	DGN1000	1.1.00.34	\N	33	\N	f	f	False	f	\N	\N
5687	DGND3700-V1.0.0.12_1.0.12.chk	DGND3700v1	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
108351	EX3700-V1.0.0.58_1.0.38.chk	EX3700	1.0.1.46	\N	33	\N	f	f	False	f	mipsel	\N
108352	EX3700-V1.0.0.50_1.0.30.chk	EX3700	1.0.0.50	\N	33	\N	f	f	False	f	mipsel	\N
108353	EX3700-V1.0.0.48_1.0.28.chk	EX3700	1.0.0.48	\N	33	\N	f	f	False	f	mipsel	\N
108354	EX3700-V1.0.0.46_1.0.26.chk	EX3700	1.0.0.46	\N	33	\N	f	f	False	f	mipsel	\N
108355	EX3700-V1.0.0.34_1.0.22.chk	EX3700	1.0.0.34	\N	33	\N	f	f	False	f	mipsel	\N
108356	EX3700-V1.0.0.28_1.0.20.chk	EX3700	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
108358	EX3700-V1.0.0.24_1.0.18.chk	EX3700	1.0.0.24	\N	33	\N	f	f	False	f	mipsel	\N
108359	EX3700-V1.0.0.22_1.0.17.chk	EX3700	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
108360	EX6100-V1.0.2.6_1.1.120.chk	EX6100v1	1.0.2.6	\N	33	\N	f	f	False	f	mipsel	\N
108361	EX6100-V1.0.1.36_1.0.114_07311820.chk	EX6100v1	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N
16011	EX6100-V1.0.0.28_1.0.66_03281041.chk	EX6100v1	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
16010	EX6100-V1.0.0.22_1.0.51_12121251.chk	EX6100v1	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
108362	EX6100v2-V1.0.1.46.img	EX6100v2	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	armel	\N
108363	EX6150-V1.0.0.32_1.0.68.chk	EX6150v1	1.0.0.32	\N	33	\N	f	f	False	f	mipsel	\N
108364	EX6150-V1.0.0.28_1.0.64.chk	EX6150v1	1.0.0.28	\N	33	\N	f	f	False	f	mipsel	\N
108365	EX6150-V1.0.0.16_1.0.58_01302050.chk	EX6150v1	1.0.0.16	\N	33	\N	f	f	False	f	mipsel	\N
108366	EX6150-V1.0.0.14_1.0.54.chk	EX6150v1	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N
108367	EX6200-V1.0.3.74_1.1.109.chk	EX6200	1.0.3.74	\N	33	\N	f	f	False	f	armel	\N
108368	EX6200-V1.0.1.60_1.1.98.chk	EX6200	1.0.1.60	\N	33	\N	f	f	False	f	armel	\N
16015	EX6200-V1.0.0.46_1.1.70.chk	EX6200	1.0.0.46	\N	33	\N	f	f	False	f	armel	\N
108370	EX6200-V1.0.0.38_1.1.52.chk	EX6200	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N
108371	EX7000-V1.0.0.42_1.0.94.chk	EX7000	1.0.0.42	\N	33	\N	f	f	False	f	armel	\N
108372	EX7000-V1.0.0.38_1.0.91.chk	EX7000	1.0.0.38	\N	33	\N	f	f	False	f	armel	\N
108373	EX7000-V1.0.0.32_1.0.84.chk	EX7000	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N
108374	EX7000-V1.0.0.36_1.0.88.chk	EX7000	1.0.0.32	\N	33	\N	f	f	False	f	armel	\N
108375	EX7000-V1.0.0.30_1.0.72.chk	EX7000	1.0.0.30	\N	33	\N	f	f	False	f	armel	\N
108377	EX7300-V1.0.0.40.img	EX7300	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
108378	EX7300-V1.0.0.34.img	EX7300	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
108379	EX7300-V1.0.0.32.img	EX7300	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
108448	fvs318g_v3.1.1-14.img	FVS318Gv1	3.1.1	\N	33	\N	f	f	False	f	armel	\N
16016	fvs318g_v3.1.1-08.img	FVS318Gv1	3.1.1	\N	33	\N	f	f	False	f	armel	\N
5294	fvs318g_v3.0.7-22.img	FVS318Gv1	3.0.7	\N	33	\N	f	f	False	f	armel	\N
937	fvs318g_v3.0.5-24.img	FVS318Gv1	3.0.5	\N	33	\N	f	f	False	f	armel	\N
108452	FVS318Gv2_v4.3.3-6.img	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N
108454	FVS318Gv2_v4.3.2-7.img	FVS318Gv2	4.3.2	\N	33	\N	f	f	False	f	\N	\N
108577	JGSM7224 FW_1.8.10.zip	JGSM7224	1.8.10	\N	33	\N	f	f	False	f	mipseb	\N
7387	JNDR3000-V1.0.0.18_1.0.16.chk	JNDR3000	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
7389	JNDR3000-V1.0.0.12_1.0.10.chk	JNDR3000	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108579	JNR1010-V1.0.0.24.img	JNR1010	1.0.0.24	\N	33	\N	f	f	False	f	mipseb	\N
4332	jnr1010-v1.0.0.18.zip	JNR1010	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N
16044	jnr1010_V1.0.0.16.img	JNR1010	1.0.0.16	\N	33	\N	f	f	False	f	mipseb	\N
7357	jnr1010-v1.0.0.14.img	JNR1010	1.0.0.14	\N	33	\N	f	f	False	f	mipseb	\N
7185	jnr1010-v1.0.0.11.img	JNR1010	1.0.0.11	\N	33	\N	f	f	False	f	mipseb	\N
16043	jnr1010-v1.0.0.10.img	JNR1010	1.0.0.10	\N	33	\N	f	f	False	f	mipseb	\N
108580	JNR1010v2_1.1.0.32_101.img	JNR1010v2	1.1.0.32	\N	33	\N	f	f	False	f	\N	\N
108581	JNR1010v2_V1.1.0.31.img	JNR1010v2	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N
7546	JNR1010v2-V1.1.0.20.img	JNR1010v2	1.1.0.20	\N	33	\N	f	f	False	f	\N	\N
7547	JNR1010v2_V1.1.0.18_1.0.1.img	JNR1010v2	1.1.0.18	\N	33	\N	f	f	False	f	\N	\N
4166	JNR1010v2_V1.1.0.16_1.0.1.img	JNR1010v2	1.1.0.16	\N	33	\N	f	f	False	f	\N	\N
16062	JNR1010v2-V1.1.0.12_1.0.1.img	JNR1010v2	1.1.0.12	\N	33	\N	f	f	False	f	\N	\N
16064	JWNR1010v2-V1.1.0.09.img	JNR1010v2	1.1.0.09	\N	33	\N	f	f	False	f	\N	\N
7166	JNR3000_V1.1.0.29_1.0.1.img	JNR3000	1.1.0.29	\N	33	\N	f	f	False	f	\N	\N
7140	JNR3000_V1.1.0.26_1.0.8.img	JNR3000	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N
108583	JNR3000_V1.1.0.24_1.0.4.img	JNR3000	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N
16045	JNR3000-V1.1.0.14_1.0.14.img	JNR3000	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N
108584	JNR3210-V1.1.0.30_1.0.2.img	JNR3210	1.1.0.30	\N	33	\N	f	f	False	f	\N	\N
16046	JNR3210-V1.1.0.27_1.0.5.img	JNR3210	1.1.0.27	\N	33	\N	f	f	False	f	\N	\N
7167	JNR3210_V1.10.26_1.0.8.img	JNR3210	1.1.0.26	\N	33	\N	f	f	False	f	\N	\N
7164	JNR3210_V1.1.0.25_1.0.1.img	JNR3210	1.1.0.25	\N	33	\N	f	f	False	f	\N	\N
108585	JNR3210_V1.1.0.24_1.0.4.img	JNR3210	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N
108586	JNR3210_V1.1.0.14_1.0.14.img	JNR3210	1.1.0.14	\N	33	\N	f	f	False	f	\N	\N
108588	JNR3300-V1.0.0.30PR.img	JNR3300	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108589	JNR3300-V1.0.0.26PR.img	JNR3300	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
6440	JNR3300-V1.0.0.24PR.img	JNR3300	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108590	JR6100-V1.0.1.16.img	JR6100	1.0.1.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7563	JR6100-V1.0.1.14.img	JR6100	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7561	JR6100-V1.0.1.12.img	JR6100	1.0.1.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7562	JR6100-V1.0.0.10.img	JR6100	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108592	JR6150_R6050-V1.0.0.34_1.0.1.img	JR6150	1.0.0.34	\N	33	\N	f	f	False	f	\N	\N
108593	JR6150-V1.0.0.32_1.0.1.img	JR6150	1.0.0.32	\N	33	\N	f	f	False	f	\N	\N
7469	JR6150-V1.0.0.30_1.0.1.img	JR6150	1.0.0.30	\N	33	\N	f	f	False	f	\N	\N
7463	JR6150_V1.0.0.22_1.0.1.img	JR6150	1.0.0.22	\N	33	\N	f	f	False	f	\N	\N
7466	JR6150-V1.0.0.18_1.0.1.img	JR6150	1.0.0.18	\N	33	\N	f	f	False	f	\N	\N
5834	JWNR2000-V1.0.0.7_1.0.6PR.img	JWNR2000v1	1.0.0.7	\N	33	\N	f	f	False	f	mipseb	\N
5820	JWNR2000-V1.0.0.7_1.0.6.img	JWNR2000v1	1.0.0.7	\N	33	\N	f	f	False	f	mipseb	\N
5781	JWNR2000-V1.0.0.5_1.0.3.img	JWNR2000v1	1.0.0.5	\N	33	\N	f	f	False	f	mipseb	\N
108595	JWNR2000-V1.0.0.4_1.0.4.img	JWNR2000v1	1.0.0.4	\N	33	\N	f	f	False	f	mipseb	\N
6702	JWNR2000v2_-V1.0.0.11_1.0.1.img	JWNR2000v2	1.0.0.11	\N	33	\N	f	f	False	f	mipseb	\N
108596	JWNR2000v2-V1.0.0.9_1.0.2.img	JWNR2000v2	1.0.0.09	\N	33	\N	f	f	False	f	mipseb	\N
108597	JWNR2000v2-V1.0.0.8_1.0.10.img	JWNR2000v2	1.0.0.08	\N	33	\N	f	f	False	f	mipseb	\N
2006	JWNR2000v2-V1.0.0.8_1.0.7.img	JWNR2000v2	1.0.0.08	\N	33	\N	f	f	False	f	mipseb	\N
108598	JWNR2000v3-V1.0.0.32.img	JWNR2000v3	1.0.0.32	\N	33	\N	f	f	False	f	mipseb	\N
6940	jwnr2000v3-v1.0.0.20.img	JWNR2000v3	1.0.0.20	\N	33	\N	f	f	False	f	mipseb	\N
6939	jwnr2000v3_V1.0.0.18.img	JWNR2000v3	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N
6938	jwnr2000v3_jwnr2010_jwnr2000tv3-v1.0.0.16.img	JWNR2010	1.0.0.16	\N	33	\N	f	f	False	f	mipseb	\N
108600	KWGR614_V1.1.2_01.10PR.bix	KWGR614	1.1.2	\N	33	\N	f	f	False	f	mipseb	\N
108601	KWGR614_V1.0.1_07.10PR.bix	KWGR614	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N
108602	kwgr614_1_0_1_10_17ww_outside_na.bix	KWGR614	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N
108623	m7100-24xv10.1.0.15.stk	M7100	10.1.0.15	\N	33	\N	f	f	False	f	ppceb	\N
108624	m7100-24x-v10.1.0.11.stk	M7100	10.1.0.11	\N	33	\N	f	f	False	f	ppceb	\N
108677	R2000-V1.0.0.34.img	R2000	1.0.0.34	\N	33	\N	f	f	False	f	mipseb	\N
108678	R2000-V1.0.0.20.img	R2000	1.0.0.20	\N	33	\N	f	f	False	f	mipseb	\N
108680	R6100_V1.2.0.2.img	R6100	1.2.0.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108681	R6100-V1.0.1.10.img	R6100	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108682	R6100-V1.0.0.62.img	R6100	1.0.0.62	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16070	R6100-V1.0.0.52.img	R6100	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16068	R6100-V1.0.0.38.img	R6100	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16066	R6100-V1.0.0.24.img	R6100	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108685	R6200-V1.0.1.56_1.0.43.chk	R6200v1	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16075	R6200-V1.0.1.52_1.0.41.chk	R6200v1	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16074	R6200-V1.0.1.46_1.0.36.chk	R6200v1	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16073	R6200-V1.0.0.28_1.0.24.chk	R6200v1	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16072	R6200-V1.0.0.18_1.0.18.chk	R6200v1	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108686	R6200v2-V1.0.3.10_10.1.10.chk	R6200v2	1.0.3.10	\N	33	\N	f	f	False	f	armel	\N
16079	R6200v2-V1.0.1.18_1.0.17.chk	R6200v2	1.0.1.18	\N	33	\N	f	f	False	f	armel	\N
16077	R6200v2-V1.0.1.14_1.0.14.chk	R6200v2	1.0.1.14	\N	33	\N	f	f	False	f	armel	\N
108688	R6220_V1.1.0.34_1.0.1.img	R6220	1.1.0.34	\N	33	\N	f	f	False	f	\N	\N
108689	R6220_1.1.0.31_1.0.1.img	R6220	1.1.0.31	\N	33	\N	f	f	False	f	\N	\N
108690	R6220_V1.0.0.17_1.0.1_FW.img	R6220	1.0.0.17	\N	33	\N	f	f	False	f	\N	\N
108691	R6220_V1.0.0.16_1.0.1_FW.img	R6220	1.0.0.16	\N	33	\N	f	f	False	f	\N	\N
7584	R6220_v1014_101.img	R6220	1.0.0.14	\N	33	\N	f	f	False	f	\N	\N
108693	R6300-V1.0.2.78_1.0.58.chk	R6300v1	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16096	R6300-V1.0.2.70_1.0.50.chk	R6300v1	1.0.2.70	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16095	R6300-V1.0.2.68_1.0.49.chk	R6300v1	1.0.2.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16069	R6100-V1.0.0.48.img	R6100	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16093	R6300-V1.0.2.36_1.0.28.chk	R6300v1	1.0.2.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16092	R6300-V1.0.2.26_1.0.26.chk	R6300v1	1.0.2.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16091	R6300-V1.0.2.14_1.0.23.chk	R6300v1	1.0.2.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
6800	R6300v2-V1.0.0.16_1.0.8PRRU.chk	R6300v2	1.0.0.16	\N	33	\N	f	f	False	f	armel	\N
108701	R6700-V1.0.0.26_10.0.26.chk	R6700	1.0.0.26	\N	33	\N	f	f	False	f	armel	\N
108702	R6700-V1.0.0.24_10.0.18.chk	R6700	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N
108703	R6900-V1.0.1.14_1.0.14.chk	R6900	1.0.1.14	\N	33	\N	f	f	False	f	armel	\N
108704	R6900-V1.0.0.4_1.0.10.chk	R6900	1.0.0.4	\N	33	\N	f	f	False	f	armel	\N
108705	R6900-V1.0.0.2_1.0.2.chk	R6900	1.0.0.2	\N	33	\N	f	f	False	f	armel	\N
7380	R7000_V1.0.3.28_1.1.22PRRU.chk	R7000	1.0.3.28	\N	33	\N	f	f	False	f	armel	\N
108756	rp614v4_1_0_2_06_29.bix	RP614v4	1.0.2	\N	33	\N	f	f	False	f	mipseb	\N
108757	rp614v4_1_0_1_11_29_na.bix	RP614v4	1.0.1	\N	33	\N	f	f	False	f	mipseb	\N
108758	RP614v4_V0.1.8_09.08PR.bix	RP614v4	0.1.8	\N	33	\N	f	f	False	f	mipseb	\N
108771	WAC104_V1.0.4.1.img	WAC104	1.0.4.1	\N	33	\N	f	f	False	f	\N	\N
108773	WAC120_V2.0.5_firmware.tar	WAC120	2.0.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108774	WAC120_V2.0.3_firmware.tar	WAC120	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
966	WG103_V2.2.5_firmware.tar	WG103	2.2.5	\N	33	\N	f	f	False	f	mipseb	\N
5321	WG103_V2.0.25_firmware.tar	WG103	2.0.25	\N	33	\N	f	f	False	f	mipseb	\N
5904	WG103_V2.0.0.12.zip	WG103	2.0.0.12	\N	33	\N	f	f	False	f	mipseb	\N
108798	wg602v3_1_2_5ww.trx	WG602v3	1.2.5	\N	33	\N	f	f	False	f	mipsel	\N
108799	wg602v3_1_2_2ww.trx	WG602v3	1.2.2	\N	33	\N	f	f	False	f	mipsel	\N
108800	wg602v3_1_1_0_non_na.trx	WG602v3	1.1.0	\N	33	\N	f	f	False	f	mipsel	\N
108801	wg602v3_1_0_8.trx	WG602v3	1.0.8	\N	33	\N	f	f	False	f	mipsel	\N
1715	wg602v3_v1_0_5.zip	WG602v3	1.0.5	\N	33	\N	f	f	False	f	mipsel	\N
108802	wg602v3_V1_0_4.trx	WG602v3	1.0.4	\N	33	\N	f	f	False	f	mipsel	\N
108803	wg602v4-V1.1.0.trx	WG602v4	1.1.0	\N	33	\N	f	f	False	f	mipsel	\N
7180	WGR612-V1.0.1.3_1.0.1PR.img	WGR612	1.0.1.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108810	WGR612-V1.0.0.1_1.0.1NA.img	WGR612	1.0.0.1	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108812	WGR614v10-V1.0.2.54_60.0.82BRIC.chk	WGR614v10	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N
6081	WGR614v10-V1.0.2.26_51.0.59BRIC.chk	WGR614v10	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N
1652	WGR614v10-V1.0.2.18_47.0.52BRIC.chk	WGR614v10	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N
6970	WGR614v10-V1.0.0.10_40.0.44BRIC.chk	WGR614v10	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N
581	WGR614v9-V1.2.30_41.0.44.chk	WGR614v9	1.2.30	\N	33	\N	f	f	False	f	mipsel	\N
108817	WGR614v9-V1.2.24_37.0.35PR.chk	WGR614v9	1.2.24	\N	33	\N	f	f	False	f	mipsel	\N
853	WGR614v9-V1.2.24_37.0.35.chk	WGR614v9	1.2.24	\N	33	\N	f	f	False	f	mipsel	\N
7631	WGR614v9-V1.2.8_20.0.18PR.chk	WGR614v9	1.2.08	\N	33	\N	f	f	False	f	mipsel	\N
752	WGR614v9-V1.2.6_18.0.17.chk	WGR614v9	1.2.06	\N	33	\N	f	f	False	f	mipsel	\N
108818	WGR614v9-V1.2.4_15.0.14PR.chk	WGR614v9	1.2.04	\N	33	\N	f	f	False	f	mipsel	\N
108819	WGR614v9-V1.0.18_8.0.10PR.chk	WGR614v9	1.0.18	\N	33	\N	f	f	False	f	mipsel	\N
5025	WGR614v9-V1.0.18_8.0.9.chk	WGR614v9	1.0.18	\N	33	\N	f	f	False	f	mipsel	\N
5936	wgr614v9_1_0_15_4_0_3_ww.chk	WGR614v9	1.0.15	\N	33	\N	f	f	False	f	mipsel	\N
108820	WGR614v9-V1.0.10_1.0.2PR.chk	WGR614v9	1.0.10	\N	33	\N	f	f	False	f	mipsel	\N
1968	wgr614v9_1_0_9_1_0_1_ww.chk	WGR614v9	1.0.09	\N	33	\N	f	f	False	f	mipsel	\N
16151	WGT624v4-V2.0.13_2.0.14.chk	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N
1628	wgt624v4_2_0_12_2_0_12_ww.chk	WGT624v4	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N
108821	wgt624v4_2_0_9_2_0_9_ww.chk	WGT624v4	2.0.09	\N	33	\N	f	f	False	f	mipseb	\N
5485	WGT624V4-V2.0.6_2.0.6PR.chk	WGT624v4	2.0.06	\N	33	\N	f	f	False	f	mipseb	\N
5484	WGT624v4-V2.0.13_2.0.13PR.chk	WGT624v4	2.0.13	\N	33	\N	f	f	False	f	mipseb	\N
108822	WGT624v4-V2.0.12_2.0.13PR.chk	WGT624v4	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N
108823	wms5316_2.1.4.15.bin	WMS5316	2.1.4.15	\N	33	\N	f	f	False	f	\N	\N
7379	R7000-V1.0.2.200_1.0.18PRRU.chk	R7000	1.0.2.200	\N	33	\N	f	f	False	f	armel	\N
108707	R7500-V1.0.0.94.img	R7500	1.0.0.94	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108708	R7500-V1.0.0.76.img	R7500	1.0.0.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
6718	R7500-V1.0.0.52.img	R7500	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108709	R8000-V1.0.3.4_1.1.2.chk	R8000	1.0.3.4	\N	33	\N	f	f	False	f	armel	\N
108710	R8000-V1.0.3.26_1.1.18.chk	R8000	1.0.3.26	\N	33	\N	f	f	False	f	armel	\N
108711	R8000-V1.0.2.44_1.0.96.chk	R8000	1.0.2.44	\N	33	\N	f	f	False	f	armel	\N
108712	R8000-V1.0.1.16_1.0.74.chk	R8000	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N
7605	R8000-V1.0.0.110_1.0.70.chk	R8000	1.0.0.110	\N	33	\N	f	f	False	f	armel	\N
16112	R8000-V1.0.0.102_1.0.45.chk	R8000	1.0.0.102	\N	33	\N	f	f	False	f	armel	\N
108713	R8000-V1.0.0.76_1.0.32.chk	R8000	1.0.0.76	\N	33	\N	f	f	False	f	armel	\N
7602	R8000-V1.0.0.74_1.0.31.chk	R8000	1.0.0.74	\N	33	\N	f	f	False	f	armel	\N
7601	R8000-V1.0.0.68_1.0.27.chk	R8000	1.0.0.68	\N	33	\N	f	f	False	f	armel	\N
108715	R9000-V1.0.0.68.img	R9000	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108717	ReadyNASReplicate.bin	RN00RPL1		\N	33	\N	f	f	False	f	\N	\N
2676	DG834(v1_v2), DG834G (v1_v2) Firmware Version 2.10.22.zip	DG834v1	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N
3816	DG834(v1_v2), DG834G (v1v2) Firmware Version 2.10.22.zip	DG834v2	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N
5706	rp614v4_1_8_03_17.bix	RP614v4	1.8	\N	33	\N	f	f	False	f	mipseb	\N
108753	RP614v4_V1.1.2_09.01.bix	RP614v4	1.1.2	\N	33	\N	f	f	False	f	mipseb	\N
108754	RP614v4_V1.0.5_04.23.bix	RP614v4	1.0.5	\N	33	\N	f	f	False	f	mipseb	\N
808	netgear_wms5316_2.0.3.bin	WMS5316	2.0.3	\N	33	\N	f	f	False	f	\N	\N
2126	netgear_wms5316_2.0.bin	WMS5316	2.0	\N	33	\N	f	f	False	f	\N	\N
108824	wn1000rp-V1.0.0.52.img	WN1000RP	1.0.0.52	\N	33	\N	f	f	False	f	mipsel	\N
108825	WN1000RP-V1.0.0.32_FW_and_Upgrade_Utility.rar	WN1000RP	1.0.0.32	\N	33	\N	f	f	False	f	mipsel	\N
108826	wn1000rp-V1.0.0.22.img	WN1000RP	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
16154	wn1000rp-V1.0.0.20.img	WN1000RP	1.0.0.20	\N	33	\N	f	f	False	f	mipsel	\N
16168	WN3000RP-V1.0.2.64_1.1.86.chk	WN3000RP	1.0.2.64	\N	33	\N	f	f	False	f	mipsel	\N
16167	WN3000RP-V1.0.1.36_1.1.47.chk	WN3000RP	1.0.1.36	\N	33	\N	f	f	False	f	mipsel	\N
16166	WN3000RP-V1.0.1.34_1.1.46.chk	WN3000RP	1.0.1.34	\N	33	\N	f	f	False	f	mipsel	\N
5128	WN3000RP-V1.0.0.12_1.0.12.chk	WN3000RP	1.0.0.12	\N	33	\N	f	f	False	f	mipsel	\N
16171	WN3050RP-V1.0.0.36.img	WN3050RPv1	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16170	WN3050RP-V1.0.0.26.img	WN3050RPv1	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16169	WN3050RP-V1.0.0.24.img	WN3050RPv1	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
108830	WN3050RPv2-V1.0.2.20.img	WN3050RPv2	1.0.2.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
108831	WN3050RPv2-V1.0.1.24.img	WN3050RPv2	1.0.1.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
108832	WN3050RPv2-V1.0.1.20.img	WN3050RPv2	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16177	WN3500RP-V1.0.0.22_1.0.62.chk	WN3500RP	1.0.0.22	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16176	WN3500RP-V1.0.0.20_1.0.60.chk	WN3500RP	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16174	WN3500RP-V1.0.0.16_1.0.58.chk	WN3500RP	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16173	WN3500RP-V1.0.0.14_1.0.54.chk	WN3500RP	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
2074	WN604_V3.0.2_firmware.tar	WN604	3.0.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
5948	WN604_V3.0.0_firmware.tar	WN604	3.0.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
1704	WN604_V2.3.2_firmware.tar	WN604	2.3.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
6312	WN604_V2.3.1_firmware.tar	WN604	2.3.1	\N	33	\N	f	f	False	f	mipseb	\N
6747	WN804-V1.0.0.28_1.0.34.chk	WN804	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.0.233'), ('br1', '192.168.0.233')]	f	mipsel	\N
108836	WNAP210_V2.1.5_firmware.tar	WNAP210v1	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
108837	WNAP210_V2.1.4.tar	WNAP210v1	2.1.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
5087	WNAP210_V2.0.6_firmware.tar	WNAP210v1	2.0.6	\N	33	\N	f	f	False	f	mipseb	\N
5391	WNAP210_2.0.12_firmware.tar	WNAP210v1	2.0.12	\N	33	\N	f	f	False	f	mipseb	\N
6372	WNAP210_2.0.10_firmware.tar	WNAP210v1	2.0.10	\N	33	\N	f	f	False	f	mipseb	\N
1938	WNAP210_2.1.1_firmware.tar	WNAP210v1	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
108838	wnap210_firmware.tar	WNAP210v2	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N
108839	WNAP210v2_V3.5.5.0.zip	WNAP210v2	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N
108841	WNAP210_V3.0.5.0.tar	WNAP210v2	3.0.5.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
108842	WNAP210_V3.0.4.0.tar	WNAP210v2	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
108845	wnap320_firmware.tar	WNAP320	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N
108846	WNAP320_V3.5.5.0.zip	WNAP320	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N
108848	WNAP320_V3.0.4.0.tar	WNAP320	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108850	WNAP320_V3.0.0.7.tar	WNAP320	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108852	WNAP320_V2.1.5_firmware.tar	WNAP320	2.1.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2105	WNAP320_V2.1.1_firmware.tar	WNAP320	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
1921	WNAP320_V2.0.3_firmware.tar	WNAP320	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
6301	WNDAP330_V3.0.5.zip	WNDAP330	3.0.5	\N	33	\N	f	f	False	f	mips64eb	\N
2114	WNDAP330_V3.0.3_firmware.tar	WNDAP330	3.0.3	\N	33	\N	f	f	False	f	mips64eb	\N
6303	WNDAP330_2.1.11_firmware.tar	WNDAP330	2.1.11	\N	33	\N	f	f	False	f	mips64eb	\N
5636	wndap330_2_0_2.tar	WNDAP330	2.0.2	\N	33	\N	f	f	False	f	mips64eb	\N
108855	wndap350_firmware.tar	WNDAP350	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N
108856	WNDAP350_V3.5.5.0.zip	WNDAP350	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N
108858	WNDAP350_V3.0.5.0.tar	WNDAP350	3.0.5.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108861	WNDAP350_V3.0.0.7.tar	WNDAP350	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108862	WNDAP350_V2.1.8_firmware.tar	WNDAP350	2.1.08	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108863	WNDAP350_V2.1.7_firmware.tar	WNDAP350	2.1.07	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
5118	WNDAP350_V2.1.2_firmware.tar	WNDAP350	2.1.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
1752	WNDAP350_V2.0.9_firmware.tar	WNDAP350	2.0.9	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108865	WNDAP350_V2.0.27_firmware.tar	WNDAP350	2.0.27	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108866	wndap360_firmware.tar	WNDAP360	3.5.6.0	\N	33	\N	f	f	False	f	mipseb	\N
108867	WNDAP360_V3.5.5.0.zip	WNDAP360	3.5.5.0	\N	33	\N	f	f	False	f	mipseb	\N
108870	WNDAP360_V3.0.4.0.tar	WNDAP360	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108872	WNDAP360_V3.0.0.7.tar	WNDAP360	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108874	WNDAP360_V2.1.11_firmware.tar	WNDAP360	2.1.11	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108875	WNDAP360_FW_V2.1.7.tar	WNDAP360	2.1.07	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108876	WNDAP360_V2.1.6_firmware.tar	WNDAP360	2.1.06	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
504	WNDAP360_V2.1.1_firmware.tar	WNDAP360	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
956	WNDR3300-V1.0.45_1.0.45.chk	WNDR3300	1.0.45	\N	33	\N	f	f	False	f	mipsel	\N
818	WNDR3300_V1.0.29_1.0.29.chk	WNDR3300	1.0.29	\N	33	\N	f	f	False	f	mipsel	\N
5877	WNDR3300_V1.0.26_1.0.26.chk	WNDR3300	1.0.26	\N	33	\N	f	f	False	f	mipsel	\N
7088	WNDR3400-V1.0.0.52_20.0.60.chk	WNDR3400v1	1.0.0.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
1824	WNDR3400-V1.0.0.50_20.0.59.chk	WNDR3400v1	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
7091	WNDR3400-V1.0.0.38_16.0.48.chk	WNDR3400v1	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N
7194	WNDR3400v2-V1.0.0.48.chk	WNDR3400v2	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16199	WNDR3400v2-V1.0.0.34_1.0.52.chk	WNDR3400v2	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
5068	WNDR3400v2-V1.0.0.16_1.0.34.chk	WNDR3400v2	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
5701	WNDR3400v2-V1.0.0.12_1.0.30.chk	WNDR3400v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
5911	WNDR3700-V1.0.16.98.img	WNDR3700v1	1.0.16.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16211	WNDR3700-V1.0.4.68.img	WNDR3700v1	1.0.04.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16221	WNDR3700v2_WNDR37AVv2-V1.0.1.14.img	WNDR3700v2	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16219	WNDR3700v2_WNDR37AVv2-V1.0.0.36.img	WNDR3700v2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
5188	WNDR3700v2-V1.0.0.10.img	WNDR3700v2	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16220	WNDR3700v2-V1.0.0.8.img	WNDR3700v2	1.0.0.08	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
1903	WNDR3700v2-V1.0.0.6.img	WNDR3700v2	1.0.0.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16226	WNDR3700v3-V1.0.0.38_1.0.31.chk	WNDR3700v3	1.0.0.38	\N	33	\N	f	f	False	f	mipsel	\N
16225	WNDR3700v3-V1.0.0.36_1.0.30.chk	WNDR3700v3	1.0.0.36	\N	33	\N	f	f	False	f	mipsel	\N
16224	WNDR3700v3-V1.0.0.30_1.0.27.chk	WNDR3700v3	1.0.0.30	\N	33	\N	f	f	False	f	mipsel	\N
5745	WNDR3700v3-V1.0.0.18_1.0.14.chk	WNDR3700v3	1.0.0.18	\N	33	\N	f	f	False	f	mipsel	\N
7023	WNDR3700v4-V1.0.1.60PRRU.img	WNDR3700v4	1.0.1.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16230	WNDR3700v4-V1.0.1.44PRRU.img	WNDR3700v4	1.0.1.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16228	WNDR3700v4-V1.0.1.32.img	WNDR3700v4	1.0.1.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16240	WNDR3800-V1.0.0.44.img	WNDR3800	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16239	WNDR3800-V1.0.0.40.img	WNDR3800	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16238	WNDR3800-V1.0.0.38.img	WNDR3800	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16237	WNDR3800-V1.0.0.34.img	WNDR3800	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
903	WNDR3800-V1.0.0.25-Beta.img	WNDR3800	1.0.0.25	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16235	WNDR3800-V1.0.0.24.img	WNDR3800	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16234	WNDR3800-V1.0.0.18.img	WNDR3800	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16247	WNDR4000-V1.0.2.4_9.1.86.chk	WNDR4000	1.0.2.4	\N	33	\N	f	f	False	f	mipsel	\N
6021	WNDR4000-V1.0.0.60_8.0.49.chk	WNDR4000	1.0.0.60	\N	33	\N	f	f	False	f	mipsel	\N
7435	WNDR4300-V1.0.1.56PRRU.img	WNDR4300v1	1.0.1.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7434	WNDR4300-V1.0.1.52PRRU.img	WNDR4300v1	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16249	WNDR4300-V1.0.1.34.img	WNDR4300v1	1.0.1.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16248	WNDR4300-V1.0.1.30.img	WNDR4300v1	1.0.1.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108893	WNDR4300v2-V1.0.0.26.img	WNDR4300v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16259	WNDR4500-V1.0.1.40_1.0.68.chk	WNDR4500v1	1.0.1.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16258	WNDR4500-V1.0.1.38_1.0.64.chk	WNDR4500v1	1.0.1.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16256	WNDR4500-V1.0.1.20_1.0.40.chk	WNDR4500v1	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16255	WNDR4500-V1.0.1.18_1.0.36.chk.chk	WNDR4500v1	1.0.1.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
1019	WNDR4500-V1.0.1.6_1.0.24.chk	WNDR4500v1	1.0.1.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
696	WNDR4500-V1.0.0.103_1.0.21.chk	WNDR4500v1	1.0.0.103	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108895	WNDR4500v2-V1.0.0.56_1.0.36.chk	WNDR4500v2	1.0.0.56	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16266	WNDR4500v2-V1.0.0.54_1.0.33.chk	WNDR4500v2	1.0.0.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16265	WNDR4500v2-V1.0.0.50_1.0.30.chk	WNDR4500v2	1.0.0.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16263	WNDR4500v2-V1.0.0.36_1.0.21.chk	WNDR4500v2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16262	WNDR4500v2-V1.0.0.26_1.0.16.chk	WNDR4500v2	1.0.0.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16271	WNDR4700-V1.0.0.52.img	WNDR4700	1.0.0.52	\N	33	\N	f	f	False	f	ppceb	\N
16270	WNDR4700-V1.0.0.50.img	WNDR4700	1.0.0.50	\N	33	\N	f	f	False	f	ppceb	\N
16269	WNDR4700-V1.0.0.34.img	WNDR4700	1.0.0.34	\N	33	\N	f	f	False	f	ppceb	\N
16268	WNDR4700-V1.0.0.32.img	WNDR4700	1.0.0.32	\N	33	\N	f	f	False	f	ppceb	\N
16267	WNDR4700-V1.0.0.28.img	WNDR4700	1.0.0.28	\N	33	\N	f	f	False	f	ppceb	\N
16275	WNDRMACv2-V1.0.0.10.img	WNDRMAC	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7030	WNR1000v2-V1.1.2.54.img	WNR1000v2	1.1.2.54	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16289	WNR1000v2-V1.1.2.50.img	WNR1000v2	1.1.2.50	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16287	WNR1000v2-V1.1.2.28.img	WNR1000v2	1.1.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7004	WNR1000v3-V1.0.2.68_60.0.93.chk	WNR1000v3	1.0.2.68	\N	33	\N	f	f	False	f	mipsel	\N
16299	WNR1000v3-V1.0.2.60_60.0.86WW.chk	WNR1000v3	1.0.2.60	\N	33	\N	f	f	False	f	mipsel	\N
108896	WNR1000v3-V1.0.2.54_60.0.82.chk	WNR1000v3	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N
2116	WNR1000v3-V1.0.2.4_39.0.39.chk	WNR1000v3	1.0.2.4	\N	33	\N	f	f	False	f	mipsel	\N
20014	DSL-2640B_fw_revb2_EU401_310023B00_ALL_multi_20090302.zip	dsl-2640b		\N	18	\N	f	f	False	f	\N	\N
20017	DSL-2640B_HW-E1_EU_2.04_08072012_BETA.zip	dsl-2640b		\N	18	\N	f	f	False	f	mipseb	\N
107910	EX6200v2-V1.0.1.38.zip	EX6200v2	1.0.1.38	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
3973	WNR1000_V1.0.2.62_60.0.87.zip	WNR1000v3	1.0.2.62	\N	33	\N	f	f	False	f	mipsel	\N
108755	RP614v4_V1.0.4_12.21PR.bix	RP614v4	1.0.4	\N	33	\N	f	f	False	f	mipseb	\N
19357	DSL-2740B_fw_reve_516b45_ALL_multi_20100115.zip	dsl-2740b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107911	EX6200v2-V1.0.1.40.zip	EX6200v2	1.0.1.40	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107912	EX6200v2-V1.0.1.34.zip	EX6200v2	1.0.1.34	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
3982	WNR1000v3-V1.0.2.54_60.0.82NA.chk.zip	WNR1000v3	1.0.2.54	\N	33	\N	f	f	False	f	mipsel	\N
108772	WAC120_V2.0.7.tar	WAC120	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
107916	EX7000-V1.0.0.50_1.0.102.zip	EX7000	1.0.0.50	\N	33	\N	f	f	False	f	armel	\N
20681	DSL-2741B_fw_revc_229eu_ALL_multi.zip	dsl-2741b		\N	18	\N	f	f	False	f	\N	\N
20679	DSL-2741B_fw_reve_516b46_ALL_multi_20100115.zip	dsl-2741b		\N	18	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
5061	wg602_v2_apfirmware_3_2rc6.zip	WG602v2	3.2	\N	33	\N	f	f	False	f	\N	\N
4360	WNR2000 Firmware Version 1.1.2.6 (North America).zip	WNR2000v1	1.1.2.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
20208	DSL-2750B_1.01_WI_20141007.zip	dsl-2750b		\N	18	\N	f	f	False	f	mipseb	\N
1836	WNR1000v3-V1.0.2.26_51.0.59.chk	WNR1000v3	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N
1890	WNR1000v3-V1.0.2.18_47.0.52.chk	WNR1000v3	1.0.2.18	\N	33	\N	f	f	False	f	mipsel	\N
16310	WNR2000-V1.2.3.7.img	WNR2000v1	1.2.3.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
5301	WNR2000-V1.2.0.8.img	WNR2000v1	1.2.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
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
6384	WNR3500-V1.0.30_8.0.30.chk	WNR3500v1	1.0.30	\N	33	\N	f	f	False	f	armel	\N
1883	WNR3500-V1.0.22_6.0.22.chk	WNR3500v1	1.0.22	\N	33	\N	f	f	False	f	armel	\N
615	wnr3500_1_0_15_outside_na.chk	WNR3500v1	1.0.15	\N	33	\N	f	f	False	f	armel	\N
5863	WNR3500v2-V1.2.2.28_25.0.85.chk	WNR3500v2	1.2.2.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
5161	WNR3500v2-V1.0.2.10_23.0.70.chk	WNR3500v2	1.0.2.10	\N	33	\N	f	f	False	f	mipsel	\N
5300	WNR3500v2-V1.0.0.64_11.0.51.chk	WNR3500v2	1.0.0.64	\N	33	\N	f	f	False	f	mipsel	\N
5098	WNR3500L-V1.2.2.44_35.0.53.chk	WNR3500Lv1	1.2.2.44	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
6097	WNR3500L-V1.2.2.40_34.0.48.chk	WNR3500Lv1	1.2.2.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
476	WNR3500L-V1.2.2.30_34.0.37.chk	WNR3500Lv1	1.2.2.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16344	WNR3500Lv2-V1.2.0.26_40.0.71.chk	WNR3500Lv2	1.2.0.26	\N	33	\N	f	f	False	f	mipsel	\N
16343	WNR3500Lv2-V1.2.0.20_40.0.68.chk	WNR3500Lv2	1.2.0.20	\N	33	\N	f	f	False	f	mipsel	\N
16342	WNR3500Lv2-V1.2.0.18_40.0.67.chk	WNR3500Lv2	1.2.0.18	\N	33	\N	f	f	False	f	mipsel	\N
16341	WNR3500Lv2-V1.2.0.16_40.0.66.chk	WNR3500Lv2	1.2.0.16	\N	33	\N	f	f	False	f	mipsel	\N
16340	WNR3500Lv2-V1.0.0.14_37.0.50.chk	WNR3500Lv2	1.0.0.14	\N	33	\N	f	f	False	f	mipsel	\N
16339	WNR3500Lv2-V1.0.0.10.chk	WNR3500Lv2	1.0.0.10	\N	33	\N	f	f	False	f	mipsel	\N
108901	WNR500-100PRS_1.0.7.1.img	WNR500	1.0.7.1	\N	33	\N	f	f	False	f	mipseb	\N
108902	wnr500-v1.0.0.26.img	WNR500	1.0.0.26	\N	33	\N	f	f	False	f	mipseb	\N
7210	wnr612v3_wnr500-V1.0.0.18.img	WNR500	1.0.0.18	\N	33	\N	f	f	False	f	mipseb	\N
7205	wnr612v3_wnr500-v1.0.0.16.img	WNR500	1.0.0.16	\N	33	\N	f	f	False	f	mipseb	\N
108903	WNR500v1.0.0.14.rar	WNR500	1.0.0.14	\N	33	\N	f	f	False	f	mipseb	\N
108904	wnr612v2-V1.0.0.3_1.0.3PR.img	WNR612v2	1.0.0.3	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7057	wnr612v2-V1.0.0.2_1.0.3PR.img	WNR612v2	1.0.0.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2071	wnr834bv1_1_0_4_0_ww.img	WNR834Bv1	1.0.4.0	\N	33	\N	f	f	False	f	mipsel	\N
5211	wnr834b_1_0_3_8_ww.img	WNR834Bv1	1.0.3.8	\N	33	\N	f	f	False	f	mipsel	\N
7262	WNR834Bv2-V2.1.15_7.1.20PR.chk	WNR834Bv2	2.1.15	\N	33	\N	f	f	False	f	mipsel	\N
5278	wnr834bBv2_2_1_13_2_1_13_ww.chk	WNR834Bv2	2.1.13	\N	33	\N	f	f	False	f	mipsel	\N
6835	WNTR2001-V1.0.0.6_1.0.1.img	WNTR2001	1.0.0.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
1982	WPN824V3-V1.0.8_1.0.7.img	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16366	WPN824V3-V1.0.7_1.0.8.img	WPN824v3	1.0.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16368	WPN824V3-V1.0.6_1.0.6.img	WPN824v3	1.0.06	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16364	WPN824N-V1.0.0.28.img	WPN824N	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16157	WN2000RPT-V1.0.1.20NA.zip	WN2000RPTv1	1.0.1.20	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N
3812	WN2000RPT-V1.0.1.24NA.zip	WN2000RPTv1	1.0.1.24	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '100.10.10.10'), ('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	mipseb	\N
107924	WN2000RPTv3-V1.0.1.4.zip	WN2000RPTv3	1.0.1.4	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
3250	WN3000RPv2-V1.0.0.36.zip	WN3000RPv2	1.0.0.36	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3320	WN3000RPv3-V1.0.1.14.zip	WN3000RPv3	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
108809	WGR612-V1.0.1.4_1.0.2PR.img	WGR612	1.0.1.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
569	WGR614v9-V1.2.2_14.0.13.chk	WGR614v9	1.2.02	\N	33	\N	f	f	False	f	mipsel	\N
5728	netgear_wms5316_2.1.2.bin	WMS5316	2.1.2	\N	33	\N	f	f	False	f	\N	\N
3497	WNR2000v3 Initial Release Firmware Version 1.0.1.26.zip	WNR2000v3	1.0.1.26	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3499	WNR2000v3_V1.1.2.10.zip	WNR2000v3	1.1.2.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4972	WNR2000v5-V1.0.0.18.zip	WNR2000v5	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4517	wnr2200-V1.0.1.68.zip	WNR2200	1.0.1.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108088	WNR2500-V1.0.0.30NA.zip	WNR2500	1.0.0.30	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
18895	DSL-2751_fw_revD1_1-00_all_20130415.zip	dsl-2751	1.00	\N	18	\N	f	f	False	f	mipseb	\N
20274	DSL-2770L_fw_revA1_1-02_eu_multi_20140425.zip	dsl-2770l		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipseb	\N
20967	DSL-320B_fw_revd_123_ALL_multi_20101228.zip	dsl-320b		\N	18	\N	f	f	False	f	\N	\N
18260	DSL_321B_fw_revD2_102_ALL_en_20130430_instructions.zip	dsl-321b		\N	18	\N	f	f	False	f	\N	\N
19870	DSL-3580L_fw_revAx_1.01_04282014.zip	dsl-3580l		\N	18	\N	f	f	False	f	mipseb	\N
107934	WN3100RPv2-V1.0.0.18.zip	WN3100RPv2	1.0.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
3092	WNR3500L Firmware Version 1.0.2.26 (North America).zip	WNR3500Lv1	1.0.2.26	\N	33	\N	f	f	False	f	mipsel	\N
18805	DSL-380T_fw_revA_300B01T02DE20060718_ALL_de_20060718.zip	dsl-380t		\N	18	\N	f	f	False	f	mipsel	\N
3527	WN3500RP-V1.0.0.20_1.0.60.zip	WN3500RP	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
16165	WN3000RP-V1.0.1.18_1.1.24.chk	WN3000RP	1.0.1.18	\N	33	\N	f	f	False	f	mipsel	\N
3099	WNR3500L_V1.2.2.48_35.0.55NA.zip	WNR3500Lv1	1.2.2.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4439	AC1450-V1.0.0.8_1.0.4.zip	AC1450	1.0.0.8	\N	33	\N	f	f	False	f	armel	\N
108089	WNR3500Lv2-V1.2.0.34_40.0.75.zip	WNR3500Lv2	1.2.0.34	\N	33	\N	f	f	False	f	mipsel	\N
108829	WN3050RPv2-V1.0.2.24.img	WN3050RPv2	1.0.2.24	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
4164	JNR1010V2-JWNR2000-JWNR2000v5-JWNR2010v5-JNR1010v2-WNR2020-WNR614-WNR618_FW_V1.1.0.20_1.0.1.zip	JNR1010v2	1.1.0.20	\N	33	\N	f	f	False	f	\N	\N
2573	JNR3000_V1.1.0.24_1.0.4.zip	JNR3000	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N
2570	JNR3000_V1.1.0.22_1.0.1.zip	JNR3000	1.1.0.22	\N	33	\N	f	f	False	f	\N	\N
107943	JR6150_R6050_V1.0.0.32_1.0.1.zip	JR6150	1.0.0.32	\N	33	\N	f	f	False	f	\N	\N
107947	JWNR2000v3_JWNR2010v3_JWNR2000Tv3-v1.0.0.32.zip	JWNR2000Tv3	1.0.0.32	\N	33	\N	f	f	False	f	mipseb	\N
7109	WN3050RPv2-V1.0.1.14.img	WN3050RPv2	1.0.1.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
2193	WNR3500Lv2-V1.2.0.16_40.0.66.zip	WNR3500Lv2	1.2.0.16	\N	33	\N	f	f	False	f	mipsel	\N
107950	RBS50-V1.4.0.18.zip	Orbi	1.4.0.18	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
20505	DSL-G604T_fw_revALL_100B02T02EU20040610_ALL_en_040610.zip	dsl-g604t		\N	18	\N	f	f	False	f	mipsel	\N
107953	RBS50-V1.3.0.26.zip	Orbi	1.3.0.26	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
16172	WN3500RP-V1.0.0.12_1.0.49.chk	WN3500RP	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107955	RBR50-V1.4.0.16.zip	Orbi	1.4.0.16	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
107959	RBR50-V1.2.0.6.zip	Orbi	1.2.0.6	\N	33	\N	f	f	[('br0', '192.168.1.250'), ('br0', '192.168.1.250')]	f	armel	\N
712	WN604_V2.1_firmware.tar	WN604	2.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
107963	PR2000-V1.0.0.14_1.0.1.zip	PR2000	1.0.0.14	\N	33	\N	f	f	False	f	\N	\N
108833	WN804-V1.0.0.24_1.0.30.chk	WN804	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.0.233'), ('br1', '192.168.0.233')]	f	mipsel	\N
107967	R6100-V1.0.1.10.zip	R6100	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4416	WNR612 Initial Release Firmware Version 1.0.0.7 (North America).zip	WNR612	1.0.0.7	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
18381	DSP-W215_fw_revB1_2-0-1_all_en_20141003.zip	dsp-w215		\N	18	\N	f	f	False	f	mipseb	\N
2869	R6100-V1.0.0.24.zip	R6100	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
458	WNAP210_2.0.27_firmware.tar	WNAP210v1	2.0.27	\N	33	\N	f	f	False	f	mipseb	\N
4209	R6200_Firmware_-V1.0.1.52_1.0.zip	R6200	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108844	WNAP210_V3.0.0.7.tar	WNAP210v2	3.0.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
20379	DSR-1000N_fw_revALL_1-04B13_all_en_110919.zip	dsr-1000n		\N	18	\N	f	f	False	f	\N	\N
18444	DSR-250N_fw_revALL_1-05b20_all_en_20120514.zip	dsr-250n		\N	18	\N	f	f	False	f	\N	\N
2505	WNR834Bv2 Firmware Version 2.0.8 (North America).zip	WNR834Bv2	2.0.8	\N	33	\N	f	f	False	f	mipsel	\N
107971	R6200v2-V1.0.3.10_10.1.10.zip	R6200v2	1.0.3.10	\N	33	\N	f	f	False	f	armel	\N
20779	DVA-G3342SD_fw_revab_204_ALL_de_080226.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
108851	WNAP320_V2.1.6_firmware.tar	WNAP320	2.1.6	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
20783	DVA-G3342SD_fw_revab_208_ALL_de_081127.zip	dva-g3342sd		\N	18	\N	f	f	False	f	mipseb	\N
20221	DWC-1000_fw_revALL_v4-2-0-3_all_en_20130430.zip	dwc-1000		\N	18	\N	f	f	False	f	\N	\N
4500	WPN824v3 Firmware Version 1.0.8_1.0.6 (North America).zip	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
20607	DWL-6600AP_fw_revALL_4-1-0-14_all_en_121217.zip	dwl-6600ap		\N	18	\N	f	f	False	f	\N	\N
108853	WND930_V2.0.3_firmware.tar	WND930	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
107977	R6300-V1.0.2.78_1.0.58.zip	R6300v1	1.0.2.78	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
18314	DWL-G700ap_fw_revB_200r110408_ALL_en_051128.zip	dwl-g700ap		\N	18	\N	f	f	False	f	mipseb	\N
108859	WNDAP350_V3.0.4.0.tar	WNDAP350	3.0.4.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
108864	WNDAP350_V2.1.6_firmware.tar	WNDAP350	2.1.06	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
107980	R6300-V1.0.2.76_1.0.57.zip	R6300v1	1.0.2.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
3890	DGFV338 DSL Board Firmware Version 2.0.61 (Outside Germany).zip	DGFV338	2.0.61	\N	33	\N	f	f	False	f	mipsel	\N
108869	WNDAP360_V3.0.5.0.tar	WNDAP360	3.0.5.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3317	R6300-V1.0.2.36_1.0.28.zip	R6300v1	1.0.2.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108105	FVS318N_V4.3.3-8.zip	FVS318N	4.3.3	\N	33	\N	f	f	False	f	\N	\N
3633	FVS318N_v4.1.1-14.zip	FVS318N	4.1.1	\N	33	\N	f	f	False	f	\N	\N
108112	fvs318n-v4.3.0-19.zip	FVS318N	4.3.0	\N	33	\N	f	f	False	f	\N	\N
108873	WNDAP360_V2.1.12_firmware.tar	WNDAP360	2.1.12	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
3316	R6300-V1.0.2.68_1.0.49.zip	R6300v1	1.0.2.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
19323	DWR-512_fw_reva_101b15_ALL_en_20111121.zip	dwr-512		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
108877	WNDAP360_V2.1.5_firmware.tar	WNDAP360	2.1.05	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2806	JGSM7224-V9.2.0.11.zip	JGSM7224	9.2.0.11	\N	33	\N	f	f	False	f	mipseb	\N
720	WNDAP360_V2.0.7_firmware.tar	WNDAP360	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
6264	wndr3300_1_0_14_outside_na_only.chk	WNDR3300	1.0.14	\N	33	\N	f	f	False	f	mipsel	\N
16200	WNDR3400v2-V1.0.0.38_1.0.61.chk	WNDR3400v2	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16216	WNDR3700-V1.0.7.98.img	WNDR3700v1	1.0.07.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16218	WNDR3700v2-V1.0.0.12.img	WNDR3700v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
663	WNDR3700v3-V1.0.0.22_1.0.17.chk	WNDR3700v3	1.0.0.22	\N	33	\N	f	f	False	f	mipsel	\N
16241	WNDR3800-V1.0.0.48.img	WNDR3800	1.0.0.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16236	WNDR3800-V1.0.0.32.img	WNDR3800	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
7436	WNDR4300-V1.0.1.64PRRU.img	WNDR4300v1	1.0.1.64	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108892	WNDR4300v2-V1.0.0.32.img	WNDR4300v2	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16257	WNDR4500-V1.0.1.36_1.0.63.chk	WNDR4500v1	1.0.1.36	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
108894	WNDR4500v2-V1.0.0.60_1.0.38.chk	WNDR4500v2	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16264	WNDR4500v2-V1.0.0.42_1.0.25.chk	WNDR4500v2	1.0.0.42	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
20573	DWR-921_fw_revB1_2-01-b03_eu_en_20141016.zip	dwr-921		\N	18	\N	f	f	[('br0', '192.168.123.254')]	f	mipsel	\N
20057	DWS-3024_fw_revAll_incl-Firmware-fuer-Accesspoints_FW_3.0.0.17.zip	dws-3024	3.0	\N	18	\N	f	f	False	f	mips64eb	\N
19811	GO-RT-AC750_fw_revA_1-01-b03_eu_multi_20141212.zip	go-rt-ac750		\N	18	\N	f	f	[('br0', '192.168.0.1'), ('br1', '192.168.7.1')]	f	mipseb	\N
2932	EVA8000 Firmware Version 2.1.82 (North America).zip	EVA8000	2.1.82	\N	33	\N	f	f	False	f	\N	\N
4807	EVA9150 Firmware Version 2.4.68 (NA).zip	EVA9150	2.4.68	\N	33	\N	f	f	False	f	mipsel	\N
2495	MBRN3000 Firmware Version 1.0.0.43_2.0.11 (NA).zip	MBRN3000	1.0.0.43	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
6246	W801_789876_02-23-01.bin	AirCard 801S (Sprint)	02.23.01	\N	33	\N	f	f	False	f	armel	\N
107800	D3600_FW_V1.0.0.49_1.0.1.zip	D3600	1.0.0.49	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107806	D6000_V1.0.0.41_1.0.1_FW.zip	D6000	1.0.0.41	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
107811	D6100-V1.0.0.38_0.0.38.zip	D6100	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
3473	R6300v2_V1.0.2.72_1.0.46.zip	R6300v2	1.0.2.72	\N	33	\N	f	f	False	f	armel	\N
107995	R6700-V1.0.0.24_10.0.18.zip	R6700	1.0.0.24	\N	33	\N	f	f	False	f	armel	\N
4342	R7000-V1.0.3.60_1.1.27.zip	R7000	1.0.3.60	\N	33	\N	f	f	False	f	armel	\N
4336	R7000-V1.0.0.96_1.0.15.zip	R7000	1.0.0.96	\N	33	\N	f	f	False	f	armel	\N
108009	R7300-V1.0.0.44_1.0.12.zip	R7300DST	1.0.0.44	\N	33	\N	f	f	False	f	armel	\N
108011	R7500v2-V1.0.3.4.zip	R7500v2	1.0.3.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108015	R7500v2-V1.0.0.24.zip	R7500v2	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108020	R7800-V1.0.1.28.zip	R7800	1.0.1.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108025	R7900-V1.0.1.4_10.0.12.zip	R7900	1.0.1.4	\N	33	\N	f	f	False	f	armel	\N
108290	WAC120_V2.0.5_firmware.zip	WAC120	2.0.5	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2486	WG103 Firmware version v2.0.25.zip	WG103	2.0.25	\N	33	\N	f	f	False	f	mipseb	\N
2638	WNAP210-Firmware-version-V2.1.4.zip	WNAP210	2.1.4	\N	33	\N	f	f	[('brtrunk', '192.168.0.236')]	f	mipseb	\N
2542	WNAP320 Firmware Version 2.1.1.zip	WNAP320	2.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2224	WND930-Firmware_V2.0.3.zip	WND930	2.0.3	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108300	WNDAP350_V2.1.9_firmware.zip	WNDAP350	2.1.9	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
4975	WNDAP350_-Firmware-Version-2.1.2.zip	WNDAP350	2.1.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.237')]	f	mipseb	\N
3640	WNDAP360JP_-Firmware-Version-V2.1.8.zip	WNDAP360	2.1.8	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
108304	WNDAP360 Firmware Version 2.0.7.zip	WNDAP360	2.0.7	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
2119	WNDAP360 Firmware Version 2.0.0.zip	WNDAP360	2.0.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
4421	WN604 Firmware Version 3.0.0.zip	WN604	3.0.0	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
4419	WN604 Firmware Version 2.3.2.zip	WN604	2.3.2	\N	33	\N	f	f	[('brtrunk', '192.168.0.100')]	f	mipseb	\N
4528	WN802Tv2 Firmware Version 3.1.1.zip	WN802Tv2	3.1.1	\N	33	\N	f	f	[('brtrunk', '192.168.0.233')]	f	mipseb	\N
16277	WNDRMACv2-V1.0.0.20.img	WNDRMAC	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2656	DG632 Firmware Version 3.6.0C_38 (from 3.3.x or 3.4.x to this version).zip	DG632	3.6.0	\N	33	\N	f	f	False	f	mipsel	\N
1756	dg834v4_dg834gv4_5_01_09.img	DG834v4	5.01.09	\N	33	\N	f	f	False	f	\N	\N
5841	WNR1000v2-V1.0.1.1.img	WNR1000v2	1.0.1.1	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
848	DGND3700-V1.0.0.17_1.0.17.chk	DGND3700v1	1.0.0.17	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
2550	R8000-V1.0.0.100_1.0.44.zip	R8000	1.0.0.100	\N	33	\N	f	f	False	f	armel	\N
1626	WNR1000v3-V1.0.2.28_52.0.60.chk	WNR1000v3	1.0.2.28	\N	33	\N	f	f	False	f	mipsel	\N
2846	DG834Gv4NA_V5.03.16.zip	DG834Gv4	5.03.16	\N	33	\N	f	f	False	f	\N	\N
108034	R8300-V1.0.2.80_1.0.71.zip	R8300	1.0.2.80	\N	33	\N	f	f	False	f	armel	\N
108357	EX3700-V1.0.0.26_1.0.19.chk	EX3700	1.0.0.26	\N	33	\N	f	f	False	f	mipsel	\N
108897	wnr2000v3-V1.1.2.12.img	WNR2000v3	1.1.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3781	DG834GV Firmware Version 1.02.37.zip	DG834GVv1	1.02.37	\N	33	\N	f	f	False	f	mipsel	\N
16317	wnr2000v3-V1.1.1.58.img	WNR2000v3	1.1.1.58	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4229	DG834Nv1 Firmware Version 1.02.15 (For users OUTSIDE Germany and Austria only).zip	DG834Nv1	1.02.15	\N	33	\N	f	f	False	f	\N	\N
108042	R8500-V1.0.2.80_1.0.71.zip	R8500	1.0.2.80	\N	33	\N	f	f	False	f	armel	\N
16325	WNR2000v4-V1.0.0.40.img	WNR2000v4	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2671	DG834(v1_v2) and DG834G(v1_v2) Firmware Version 3.01.29.zip	DG834v1	3.01.29	\N	33	\N	f	f	False	f	mipsel	\N
108048	R9000_V1.0.0.68.zip	R9000	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
108369	EX6200-V1.0.0.52_1.1.90.chk	EX6200	1.0.0.52	\N	33	\N	f	f	False	f	armel	\N
6911	wnr2200-100-V1.0.2.12.img	WNR2200	1.0.2.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4932	DGN1000_1.1.00.55_NA.zip	DGN1000	1.1.00.55	\N	33	\N	f	f	False	f	\N	\N
108376	EX7300-V1.0.0.44.img	EX7300	1.0.0.44	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipseb	\N
787	WNR3500v2-V1.0.2.14_24.0.74.chk	WNR3500v2	1.0.2.14	\N	33	\N	f	f	False	f	mipsel	\N
4119	WGR614v8 Firmware Version 1.2.10_21.0.52 (North America).zip	WGR614v8	1.2.10	\N	33	\N	f	f	False	f	mipsel	\N
107847	DGN1000v3-V1.0.0.20_0.0.20.zip	DGN1000Bv3	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
4857	DGN2200M Firmware Version 1.0.0.24 (North America).zip	DGN2200M	1.0.0.24	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
16345	WNR3500Lv2-V1.2.0.28_40.0.72.chk	WNR3500Lv2	1.2.0.28	\N	33	\N	f	f	False	f	mipsel	\N
108453	FVS318Gv2_v4.3.3-3.img	FVS318Gv2	4.3.3	\N	33	\N	f	f	False	f	\N	\N
4942	DGN2200 Firmware Version 1.0.0.20 - Initial Release (NA).zip	DGN2200v1	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.0.1')]	f	mipseb	\N
7388	JNDR3000V1.0.0.10_1.0.8.chk	JNDR3000	1.0.0.10	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
5005	DGND3300v2 Firmware Version 2.1.00.41 (North America).zip	DGND3300v2	2.1.00.41	\N	33	\N	f	f	False	f	\N	\N
2198	DM111PSPv2-V1.1.00.06_NA.zip	DM111PSPv2	1.1.00.06	\N	33	\N	f	f	False	f	\N	\N
4820	DM111Pv2 Firmware Version 2.00.26 (North America).zip	DM111Pv2	2.00.26	\N	33	\N	f	f	False	f	\N	\N
108582	JNR1010v2 V1.1.0.28.img	JNR1010v2	1.1.0.28	\N	33	\N	f	f	False	f	\N	\N
7550	JNR1010v2_V1.1.0.24_1.0.1.img	JNR1010v2	1.1.0.24	\N	33	\N	f	f	False	f	\N	\N
7137	JNR3000_V1.1.0.22_1.0.1.img	JNR3000	1.1.0.22	\N	33	\N	f	f	False	f	\N	\N
108587	JNR3300-V1.0.0.32PR.img	JNR3300	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3374	WGT624v4 - Firmware Version 2.0.6_2.0.6 (North America).zip	WGT624v4	2.0.6	\N	33	\N	f	f	False	f	mipseb	\N
5932	wnr834bv1_1_0_4_2_ww.img	WNR834Bv1	1.0.4.2	\N	33	\N	f	f	False	f	mipsel	\N
6439	JNR3300-V1.0.0.20PR.img	JNR3300	1.0.0.20	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2563	XAVN2001-V0.4.0.7.zip	XAVN2001v2	0.4.0.7	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N
108591	JR6150_R6050-V1.0.0.36_1.0.1.img	JR6150	1.0.0.36	\N	33	\N	f	f	False	f	\N	\N
1800	WPN824V3-V1.0.8_1.0.6.img	WPN824v3	1.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4663	WNDR3300 Firmware Version 1.0.14 (North America).zip	WNDR3300v1	1.0.14	\N	33	\N	f	f	False	f	mipsel	\N
4973	XWN5001_V0.4.0.7.zip	XWN5001	0.4.0.7	\N	33	\N	f	f	[('br0', '192.168.0.102'), ('br0', '192.168.0.102')]	f	mipseb	\N
16052	JWNR2000v2_WNR1500-V1.0.0.10_1.0.4.img	JWNR2000v2	1.0.0.10	\N	33	\N	f	f	False	f	mipseb	\N
3306	WNDR3400v2-V1.0.0.16_1.0.34.zip	WNDR3400v2	1.0.0.16	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
4955	wnce4004-V1.0.0.32.zip	WNCE4004	1.0.0.32	\N	33	\N	f	f	[('br0', '192.168.1.240'), ('br0', '192.168.1.240')]	f	mipseb	\N
108059	WNDR3400v3-V1.0.1.2_1.0.51.zip	WNDR3400v3	1.0.1.2	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
107872	EX2700-V1.0.1.10.zip	EX2700	1.0.1.10	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
2470	WNDR3700v2 WNDR37AVv2 Firmware Version 1.0.0.12.zip	WNDR3700v2	1.0.0.12	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108679	R6100-V1.2.0.4.img	R6100	1.2.0.4	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
108683	R6100-V1.0.0.60.img	R6100	1.0.0.60	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16067	R6100-V1.0.0.28.img	R6100	1.0.0.28	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
16076	R6200-V1.0.1.48_1.0.37.chk	R6200v1	1.0.1.48	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16078	R6200v2-V1.0.1.16_1.0.15.chk	R6200v2	1.0.1.16	\N	33	\N	f	f	False	f	armel	\N
108694	R6300-V1.0.2.76_1.0.57.chk	R6300v1	1.0.2.76	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
16094	R6300-V1.0.2.38_1.0.33.chk	R6300v1	1.0.2.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
6799	R6300v2_V1.0.0.8_1.0.4PRRU.chk	R6300v2	1.0.0.08	\N	33	\N	f	f	False	f	armel	\N
6717	R7500-V1.0.0.68.img	R7500	1.0.0.68	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	armel	\N
7598	R8000-V1.0.0.90_1.0.39.chk	R8000	1.0.0.90	\N	33	\N	f	f	False	f	armel	\N
108725	DG834(v1 & v2), DG834G (v1 & v2) Firmware Version 2.10.22.zip	DG834Gv1	2.10.22	\N	33	\N	f	f	False	f	mipsel	\N
2254	EX2700-V1.0.0.14.zip	EX2700	1.0.0.14	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	mipsel	\N
107888	EX3700-V1.0.0.24_1.0.18.zip	EX3700	1.0.0.24	\N	33	\N	f	f	False	f	mipsel	\N
107893	EX6150v2_EX6100v2-V1.0.1.46.zip	EX6100v2	1.0.1.46	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	armel	\N
107905	EX6150v2-V1.0.1.42.zip	EX6150v2	1.0.1.42	\N	33	\N	f	f	[('br0', '192.168.1.250')]	f	armel	\N
2471	WNDR3700v2 Firmware Version 1.0.0.6.zip	WNDR3700v2	1.0.0.6	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2298	WNDR3700v4-V1.0.1.32.zip	WNDR3700v4	1.0.1.32	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
3569	WNDR3700-WNDR37AV Firmware Version 1.0.7.98 (North America).zip	WNDR37AVv1	1.0.7.98	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4615	WNDR3800-V1.0.0.38.zip	WNDR3800	1.0.0.38	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4059	WNDR3700 Initial Release Firmware - Version 1.0.4.31 (North America).zip	WNDR3700v1	1.0.4.31	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4061	WNDR3700 Firmware Version 1.0.4.49 (North America).zip	WNDR3700v1	1.0.4.49	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4152	WNDR3700v3-V1.0.0.36_1.0.30.zip	WNDR3700v3	1.0.0.36	\N	33	\N	f	f	False	f	mipsel	\N
2299	WNDR3700v4_V1.0.1.52.zip	WNDR3700v4	1.0.1.52	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2903	WNDR3700v2WNDR37AVv2 Firmware Version 1.0.0.8.zip	WNDR37AVv2	1.0.0.8	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4612	WNDR3800-V1.0.0.34.zip	WNDR3800	1.0.0.34	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
4611	WNDR3800-V1.0.0.40.zip	WNDR3800	1.0.0.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipseb	\N
2721	WNDR4500-V1.0.1.40_1.0.68.zip	WNDR4500	1.0.1.40	\N	33	\N	f	f	[('br0', '192.168.1.1')]	f	mipsel	\N
\.


--
-- Name: image_new image_new_pkey; Type: CONSTRAINT; Schema: public; Owner: firmadyne
--

ALTER TABLE ONLY public.image_new
    ADD CONSTRAINT image_new_pkey PRIMARY KEY (image_id);


--
-- PostgreSQL database dump complete
--

