--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2021-01-21 16:21:52

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
-- TOC entry 203 (class 1259 OID 16921)
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16919)
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 202
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- TOC entry 227 (class 1259 OID 17070)
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    body text,
    "user" integer,
    subject integer,
    date timestamp with time zone,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17068)
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 226
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- TOC entry 211 (class 1259 OID 16973)
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16971)
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 210
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- TOC entry 207 (class 1259 OID 16943)
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16941)
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 206
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- TOC entry 209 (class 1259 OID 16956)
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16954)
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 208
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- TOC entry 213 (class 1259 OID 16986)
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16984)
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 212
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- TOC entry 205 (class 1259 OID 16932)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16930)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 204
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 225 (class 1259 OID 17058)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    title character varying(255),
    "user" integer,
    date timestamp with time zone,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17056)
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_id_seq OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 224
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- TOC entry 221 (class 1259 OID 17033)
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17031)
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 220
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- TOC entry 223 (class 1259 OID 17046)
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17044)
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 222
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- TOC entry 215 (class 1259 OID 16994)
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16992)
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 214
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- TOC entry 217 (class 1259 OID 17005)
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17003)
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 216
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- TOC entry 219 (class 1259 OID 17018)
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17016)
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 218
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- TOC entry 2770 (class 2604 OID 16924)
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 17073)
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- TOC entry 2778 (class 2604 OID 16976)
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- TOC entry 2772 (class 2604 OID 16946)
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 16959)
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 16989)
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 16935)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 2789 (class 2604 OID 17061)
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- TOC entry 2785 (class 2604 OID 17036)
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- TOC entry 2788 (class 2604 OID 17049)
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- TOC entry 2780 (class 2604 OID 16997)
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- TOC entry 2781 (class 2604 OID 17008)
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- TOC entry 2782 (class 2604 OID 17021)
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- TOC entry 2960 (class 0 OID 16921)
-- Dependencies: 203
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
2	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
4	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
6	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
7	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
8	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
10	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]}}	object		
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
12	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"fields","size":12}],[{"name":"conditions","size":12}]]}}	object		
13	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
14	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4}]]}}	object		
15	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
16	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
17	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
18	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
19	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
20	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
3	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"fields":{"type":"json","configurable":false,"required":false,"default":[]},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::application::subjects.subjects	{"uid":"application::subjects.subjects","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"user":{"edit":{"label":"User","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"User","searchable":true,"sortable":true}},"date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"messages":{"edit":{"label":"Messages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Messages","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","user","date"],"edit":[[{"name":"title","size":6},{"name":"date","size":6}]],"editRelations":["user","messages"]}}	object		
23	model_def_application::messages.messages	{"uid":"application::messages.messages","collectionName":"messages","kind":"collectionType","info":{"name":"Messages","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"body":{"type":"text","maxLength":1000,"minLength":1,"required":true},"user":{"plugin":"admin","model":"user"},"date":{"type":"datetime"},"subject":{"model":"subjects","via":"messages"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
21	model_def_application::subjects.subjects	{"uid":"application::subjects.subjects","collectionName":"subjects","kind":"collectionType","info":{"name":"Subjects"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"title":{"type":"string","required":true,"unique":true,"maxLength":255,"minLength":5},"user":{"plugin":"admin","model":"user"},"date":{"type":"datetime"},"messages":{"via":"subject","collection":"messages","isVirtual":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::application::messages.messages	{"uid":"application::messages.messages","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":true,"sortable":true}},"user":{"edit":{"label":"User","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"User","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"Subject","searchable":true,"sortable":true}},"date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","body","user","subject"],"editRelations":["user","subject"],"edit":[[{"name":"body","size":6},{"name":"date","size":6}]]}}	object		
5	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true}}}	object	\N	\N
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
\.


--
-- TOC entry 2984 (class 0 OID 17070)
-- Dependencies: 227
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, body, "user", subject, date, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	I love reading books!	1	1	2021-01-04 12:00:00+01	2021-01-21 14:42:52.709+01	1	1	2021-01-21 14:42:51.354+01	2021-01-21 14:42:52.746+01
2	I love reading at night before sleeping.	1	1	2021-01-04 12:00:00+01	2021-01-21 15:06:51.443+01	1	1	2021-01-21 15:06:49.669+01	2021-01-21 15:06:51.477+01
3	I love playing Badminton!	1	2	2021-01-12 12:00:00+01	2021-01-21 15:09:06.36+01	1	1	2021-01-21 15:09:04.879+01	2021-01-21 15:09:06.392+01
\.


--
-- TOC entry 2968 (class 0 OID 16973)
-- Dependencies: 211
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
1	akbar	khan	\N	kyhanakbar56@yahoo.fr	$2a$10$zNHSjgipYI.r9gQZNGIUhOfqjtCCnAJfNUfA8E1jh3nMHYV4wyOkq	\N	\N	t	\N
\.


--
-- TOC entry 2964 (class 0 OID 16943)
-- Dependencies: 207
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	\N	[]	2	2021-01-21 14:35:47.443+01	2021-01-21 14:35:47.466+01
2	plugins::upload.assets.create	\N	\N	[]	2	2021-01-21 14:35:47.444+01	2021-01-21 14:35:47.466+01
3	plugins::upload.assets.update	\N	\N	[]	2	2021-01-21 14:35:47.444+01	2021-01-21 14:35:47.466+01
4	plugins::upload.assets.download	\N	\N	[]	2	2021-01-21 14:35:47.444+01	2021-01-21 14:35:47.467+01
5	plugins::upload.assets.copy-link	\N	\N	[]	2	2021-01-21 14:35:47.445+01	2021-01-21 14:35:47.473+01
6	plugins::upload.read	\N	\N	["admin::is-creator"]	3	2021-01-21 14:35:47.51+01	2021-01-21 14:35:47.534+01
7	plugins::upload.assets.create	\N	\N	[]	3	2021-01-21 14:35:47.511+01	2021-01-21 14:35:47.535+01
8	plugins::upload.assets.update	\N	\N	["admin::is-creator"]	3	2021-01-21 14:35:47.511+01	2021-01-21 14:35:47.535+01
9	plugins::upload.assets.download	\N	\N	[]	3	2021-01-21 14:35:47.512+01	2021-01-21 14:35:47.535+01
10	plugins::upload.assets.copy-link	\N	\N	[]	3	2021-01-21 14:35:47.512+01	2021-01-21 14:35:47.536+01
11	plugins::content-manager.explorer.create	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-01-21 14:35:47.611+01	2021-01-21 14:35:47.66+01
12	plugins::content-manager.explorer.read	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-01-21 14:35:47.613+01	2021-01-21 14:35:47.661+01
13	plugins::content-manager.explorer.update	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-01-21 14:35:47.613+01	2021-01-21 14:35:47.661+01
14	plugins::content-manager.explorer.delete	plugins::users-permissions.user	\N	[]	1	2021-01-21 14:35:47.614+01	2021-01-21 14:35:47.661+01
15	plugins::content-type-builder.read	\N	\N	[]	1	2021-01-21 14:35:47.614+01	2021-01-21 14:35:47.662+01
16	plugins::upload.read	\N	\N	[]	1	2021-01-21 14:35:47.614+01	2021-01-21 14:35:47.662+01
17	plugins::upload.assets.create	\N	\N	[]	1	2021-01-21 14:35:47.615+01	2021-01-21 14:35:47.662+01
18	plugins::upload.assets.update	\N	\N	[]	1	2021-01-21 14:35:47.615+01	2021-01-21 14:35:47.663+01
19	plugins::upload.assets.download	\N	\N	[]	1	2021-01-21 14:35:47.615+01	2021-01-21 14:35:47.663+01
20	plugins::upload.assets.copy-link	\N	\N	[]	1	2021-01-21 14:35:47.616+01	2021-01-21 14:35:47.676+01
21	plugins::upload.settings.read	\N	\N	[]	1	2021-01-21 14:35:47.744+01	2021-01-21 14:35:47.795+01
22	plugins::content-manager.single-types.configure-view	\N	\N	[]	1	2021-01-21 14:35:47.744+01	2021-01-21 14:35:47.796+01
23	plugins::content-manager.collection-types.configure-view	\N	\N	[]	1	2021-01-21 14:35:47.745+01	2021-01-21 14:35:47.796+01
24	plugins::content-manager.components.configure-layout	\N	\N	[]	1	2021-01-21 14:35:47.745+01	2021-01-21 14:35:47.796+01
25	plugins::users-permissions.roles.create	\N	\N	[]	1	2021-01-21 14:35:47.747+01	2021-01-21 14:35:47.797+01
26	plugins::users-permissions.roles.read	\N	\N	[]	1	2021-01-21 14:35:47.747+01	2021-01-21 14:35:47.797+01
27	plugins::users-permissions.roles.update	\N	\N	[]	1	2021-01-21 14:35:47.748+01	2021-01-21 14:35:47.797+01
28	plugins::users-permissions.roles.delete	\N	\N	[]	1	2021-01-21 14:35:47.748+01	2021-01-21 14:35:47.798+01
29	plugins::users-permissions.providers.read	\N	\N	[]	1	2021-01-21 14:35:47.76+01	2021-01-21 14:35:47.81+01
30	plugins::users-permissions.providers.update	\N	\N	[]	1	2021-01-21 14:35:47.763+01	2021-01-21 14:35:47.814+01
31	plugins::users-permissions.email-templates.read	\N	\N	[]	1	2021-01-21 14:35:47.893+01	2021-01-21 14:35:47.945+01
32	plugins::users-permissions.email-templates.update	\N	\N	[]	1	2021-01-21 14:35:47.893+01	2021-01-21 14:35:47.945+01
33	plugins::users-permissions.advanced-settings.read	\N	\N	[]	1	2021-01-21 14:35:47.894+01	2021-01-21 14:35:47.946+01
34	plugins::users-permissions.advanced-settings.update	\N	\N	[]	1	2021-01-21 14:35:47.894+01	2021-01-21 14:35:47.946+01
35	admin::marketplace.read	\N	\N	[]	1	2021-01-21 14:35:47.894+01	2021-01-21 14:35:47.947+01
36	admin::marketplace.plugins.install	\N	\N	[]	1	2021-01-21 14:35:47.895+01	2021-01-21 14:35:47.947+01
37	admin::marketplace.plugins.uninstall	\N	\N	[]	1	2021-01-21 14:35:47.895+01	2021-01-21 14:35:47.947+01
38	admin::webhooks.create	\N	\N	[]	1	2021-01-21 14:35:47.895+01	2021-01-21 14:35:47.948+01
39	admin::webhooks.read	\N	\N	[]	1	2021-01-21 14:35:47.907+01	2021-01-21 14:35:47.963+01
40	admin::webhooks.update	\N	\N	[]	1	2021-01-21 14:35:47.926+01	2021-01-21 14:35:47.974+01
41	admin::webhooks.delete	\N	\N	[]	1	2021-01-21 14:35:48.039+01	2021-01-21 14:35:48.083+01
42	admin::users.create	\N	\N	[]	1	2021-01-21 14:35:48.04+01	2021-01-21 14:35:48.084+01
43	admin::users.read	\N	\N	[]	1	2021-01-21 14:35:48.04+01	2021-01-21 14:35:48.084+01
44	admin::users.update	\N	\N	[]	1	2021-01-21 14:35:48.041+01	2021-01-21 14:35:48.084+01
45	admin::users.delete	\N	\N	[]	1	2021-01-21 14:35:48.041+01	2021-01-21 14:35:48.085+01
46	admin::roles.create	\N	\N	[]	1	2021-01-21 14:35:48.041+01	2021-01-21 14:35:48.085+01
47	admin::roles.read	\N	\N	[]	1	2021-01-21 14:35:48.042+01	2021-01-21 14:35:48.085+01
48	admin::roles.update	\N	\N	[]	1	2021-01-21 14:35:48.042+01	2021-01-21 14:35:48.086+01
49	admin::roles.delete	\N	\N	[]	1	2021-01-21 14:35:48.055+01	2021-01-21 14:35:48.098+01
53	plugins::content-manager.explorer.delete	application::subjects.subjects	\N	[]	1	2021-01-21 14:39:09.075+01	2021-01-21 14:39:09.102+01
54	plugins::content-manager.explorer.publish	application::subjects.subjects	\N	[]	1	2021-01-21 14:39:09.075+01	2021-01-21 14:39:09.116+01
55	plugins::content-manager.explorer.create	application::messages.messages	["body", "user", "subject", "date"]	[]	1	2021-01-21 14:41:49.395+01	2021-01-21 14:41:49.418+01
56	plugins::content-manager.explorer.read	application::messages.messages	["body", "user", "subject", "date"]	[]	1	2021-01-21 14:41:49.395+01	2021-01-21 14:41:49.418+01
57	plugins::content-manager.explorer.update	application::messages.messages	["body", "user", "subject", "date"]	[]	1	2021-01-21 14:41:49.396+01	2021-01-21 14:41:49.419+01
58	plugins::content-manager.explorer.delete	application::messages.messages	\N	[]	1	2021-01-21 14:41:49.396+01	2021-01-21 14:41:49.419+01
59	plugins::content-manager.explorer.publish	application::messages.messages	\N	[]	1	2021-01-21 14:41:49.396+01	2021-01-21 14:41:49.427+01
60	plugins::content-manager.explorer.create	application::subjects.subjects	["title", "user", "date", "messages"]	[]	1	2021-01-21 15:03:52.163+01	2021-01-21 15:03:52.177+01
61	plugins::content-manager.explorer.read	application::subjects.subjects	["title", "user", "date", "messages"]	[]	1	2021-01-21 15:03:52.163+01	2021-01-21 15:03:52.177+01
62	plugins::content-manager.explorer.update	application::subjects.subjects	["title", "user", "date", "messages"]	[]	1	2021-01-21 15:03:52.163+01	2021-01-21 15:03:52.177+01
\.


--
-- TOC entry 2966 (class 0 OID 16956)
-- Dependencies: 209
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-01-21 14:35:47.371+01	2021-01-21 14:35:47.371+01
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-01-21 14:35:47.399+01	2021-01-21 14:35:47.399+01
3	Author	strapi-author	Authors can manage the content they have created.	2021-01-21 14:35:47.42+01	2021-01-21 14:35:47.42+01
\.


--
-- TOC entry 2970 (class 0 OID 16986)
-- Dependencies: 213
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- TOC entry 2962 (class 0 OID 16932)
-- Dependencies: 205
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 2982 (class 0 OID 17058)
-- Dependencies: 225
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, title, "user", date, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Books	1	2021-01-01 12:00:00+01	2021-01-21 14:42:26.017+01	1	1	2021-01-21 14:42:21.965+01	2021-01-21 14:42:26.048+01
2	Sports	1	2021-01-04 12:00:00+01	2021-01-21 15:07:38.414+01	1	1	2021-01-21 15:07:37.087+01	2021-01-21 15:07:38.452+01
\.


--
-- TOC entry 2978 (class 0 OID 17033)
-- Dependencies: 221
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2980 (class 0 OID 17046)
-- Dependencies: 223
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- TOC entry 2972 (class 0 OID 16994)
-- Dependencies: 215
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	content-manager	collection-types	bulkdelete	f		1	\N	\N
2	content-manager	collection-types	bulkdelete	f		2	\N	\N
3	content-manager	collection-types	create	f		1	\N	\N
4	content-manager	collection-types	create	f		2	\N	\N
5	content-manager	collection-types	delete	f		1	\N	\N
6	content-manager	collection-types	delete	f		2	\N	\N
7	content-manager	collection-types	find	f		1	\N	\N
8	content-manager	collection-types	find	f		2	\N	\N
9	content-manager	collection-types	findone	f		1	\N	\N
10	content-manager	collection-types	findone	f		2	\N	\N
11	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
12	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
13	content-manager	collection-types	publish	f		1	\N	\N
14	content-manager	collection-types	publish	f		2	\N	\N
15	content-manager	collection-types	unpublish	f		1	\N	\N
16	content-manager	collection-types	unpublish	f		2	\N	\N
17	content-manager	collection-types	update	f		1	\N	\N
18	content-manager	collection-types	update	f		2	\N	\N
19	content-manager	components	findcomponentconfiguration	f		1	\N	\N
20	content-manager	components	findcomponentconfiguration	f		2	\N	\N
21	content-manager	components	findcomponents	f		1	\N	\N
22	content-manager	components	findcomponents	f		2	\N	\N
23	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
24	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
25	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
26	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
27	content-manager	content-types	findcontenttypes	f		1	\N	\N
28	content-manager	content-types	findcontenttypes	f		2	\N	\N
29	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
30	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
31	content-manager	relations	find	f		1	\N	\N
32	content-manager	relations	find	f		2	\N	\N
33	content-manager	single-types	createorupdate	f		1	\N	\N
34	content-manager	single-types	createorupdate	f		2	\N	\N
35	content-manager	single-types	delete	f		1	\N	\N
36	content-manager	single-types	delete	f		2	\N	\N
37	content-manager	single-types	find	f		1	\N	\N
38	content-manager	single-types	find	f		2	\N	\N
39	content-manager	single-types	publish	f		1	\N	\N
40	content-manager	single-types	publish	f		2	\N	\N
41	content-manager	single-types	unpublish	f		1	\N	\N
42	content-manager	single-types	unpublish	f		2	\N	\N
43	content-manager	uid	checkuidavailability	f		1	\N	\N
44	content-manager	uid	checkuidavailability	f		2	\N	\N
45	content-manager	uid	generateuid	f		1	\N	\N
46	content-manager	uid	generateuid	f		2	\N	\N
47	content-type-builder	builder	getreservednames	f		1	\N	\N
48	content-type-builder	builder	getreservednames	f		2	\N	\N
49	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
50	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
51	content-type-builder	componentcategories	editcategory	f		1	\N	\N
52	content-type-builder	componentcategories	editcategory	f		2	\N	\N
53	content-type-builder	components	createcomponent	f		1	\N	\N
54	content-type-builder	components	createcomponent	f		2	\N	\N
55	content-type-builder	components	deletecomponent	f		1	\N	\N
56	content-type-builder	components	deletecomponent	f		2	\N	\N
57	content-type-builder	components	getcomponent	f		1	\N	\N
58	content-type-builder	components	getcomponent	f		2	\N	\N
59	content-type-builder	components	getcomponents	f		1	\N	\N
60	content-type-builder	components	getcomponents	f		2	\N	\N
61	content-type-builder	components	updatecomponent	f		1	\N	\N
62	content-type-builder	components	updatecomponent	f		2	\N	\N
63	content-type-builder	connections	getconnections	f		1	\N	\N
64	content-type-builder	connections	getconnections	f		2	\N	\N
65	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
68	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
69	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
75	email	email	send	f		1	\N	\N
78	upload	upload	count	f		2	\N	\N
79	upload	upload	destroy	f		1	\N	\N
85	upload	upload	getsettings	f		1	\N	\N
88	upload	upload	search	f		2	\N	\N
89	upload	upload	updatesettings	f		1	\N	\N
95	users-permissions	auth	connect	t		1	\N	\N
98	users-permissions	auth	emailconfirmation	t		2	\N	\N
99	users-permissions	auth	forgotpassword	f		1	\N	\N
105	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
108	users-permissions	user	count	f		2	\N	\N
109	users-permissions	user	create	f		1	\N	\N
111	users-permissions	user	destroy	f		1	\N	\N
118	users-permissions	user	findone	f		2	\N	\N
119	users-permissions	user	me	t		1	\N	\N
121	users-permissions	user	update	f		1	\N	\N
129	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
66	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
76	email	email	send	f		2	\N	\N
86	upload	upload	getsettings	f		2	\N	\N
96	users-permissions	auth	connect	t		2	\N	\N
106	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
116	users-permissions	user	find	f		2	\N	\N
126	users-permissions	userspermissions	deleterole	f		2	\N	\N
136	users-permissions	userspermissions	getproviders	f		2	\N	\N
146	users-permissions	userspermissions	searchusers	f		2	\N	\N
156	application	subjects	count	f		2	\N	\N
166	application	subjects	update	f		2	\N	\N
167	application	messages	count	f		1	\N	\N
177	application	messages	update	f		1	\N	\N
67	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
77	upload	upload	count	f		1	\N	\N
87	upload	upload	search	f		1	\N	\N
97	users-permissions	auth	emailconfirmation	f		1	\N	\N
107	users-permissions	user	count	f		1	\N	\N
117	users-permissions	user	findone	f		1	\N	\N
127	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
137	users-permissions	userspermissions	getrole	f		1	\N	\N
147	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
168	application	messages	count	f		2	\N	\N
178	application	messages	update	f		2	\N	\N
157	application	subjects	create	t		1	\N	\N
70	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
80	upload	upload	destroy	f		2	\N	\N
90	upload	upload	updatesettings	f		2	\N	\N
100	users-permissions	auth	forgotpassword	t		2	\N	\N
110	users-permissions	user	create	f		2	\N	\N
120	users-permissions	user	me	t		2	\N	\N
130	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
140	users-permissions	userspermissions	getroles	f		2	\N	\N
150	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
158	application	subjects	create	f		2	\N	\N
169	application	messages	create	t		1	\N	\N
71	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
82	upload	upload	find	f		2	\N	\N
92	upload	upload	upload	f		2	\N	\N
102	users-permissions	auth	register	t		2	\N	\N
115	users-permissions	user	find	f		1	\N	\N
125	users-permissions	userspermissions	deleterole	f		1	\N	\N
135	users-permissions	userspermissions	getproviders	f		1	\N	\N
145	users-permissions	userspermissions	searchusers	f		1	\N	\N
159	application	subjects	delete	f		1	\N	\N
170	application	messages	create	f		2	\N	\N
72	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
81	upload	upload	find	f		1	\N	\N
91	upload	upload	upload	f		1	\N	\N
101	users-permissions	auth	register	f		1	\N	\N
112	users-permissions	user	destroy	f		2	\N	\N
122	users-permissions	user	update	f		2	\N	\N
132	users-permissions	userspermissions	getpermissions	f		2	\N	\N
142	users-permissions	userspermissions	getroutes	f		2	\N	\N
152	users-permissions	userspermissions	updateproviders	f		2	\N	\N
160	application	subjects	delete	f		2	\N	\N
171	application	messages	delete	f		1	\N	\N
73	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
83	upload	upload	findone	f		1	\N	\N
94	users-permissions	auth	callback	t		2	\N	\N
104	users-permissions	auth	resetpassword	t		2	\N	\N
114	users-permissions	user	destroyall	f		2	\N	\N
124	users-permissions	userspermissions	createrole	f		2	\N	\N
134	users-permissions	userspermissions	getpolicies	f		2	\N	\N
144	users-permissions	userspermissions	index	f		2	\N	\N
154	users-permissions	userspermissions	updaterole	f		2	\N	\N
161	application	subjects	find	f		1	\N	\N
172	application	messages	delete	f		2	\N	\N
74	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
84	upload	upload	findone	f		2	\N	\N
93	users-permissions	auth	callback	f		1	\N	\N
103	users-permissions	auth	resetpassword	f		1	\N	\N
113	users-permissions	user	destroyall	f		1	\N	\N
123	users-permissions	userspermissions	createrole	f		1	\N	\N
133	users-permissions	userspermissions	getpolicies	f		1	\N	\N
143	users-permissions	userspermissions	index	f		1	\N	\N
153	users-permissions	userspermissions	updaterole	f		1	\N	\N
162	application	subjects	find	f		2	\N	\N
173	application	messages	find	t		1	\N	\N
128	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
138	users-permissions	userspermissions	getrole	f		2	\N	\N
148	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
174	application	messages	find	f		2	\N	\N
163	application	subjects	findone	t		1	\N	\N
131	users-permissions	userspermissions	getpermissions	f		1	\N	\N
141	users-permissions	userspermissions	getroutes	f		1	\N	\N
151	users-permissions	userspermissions	updateproviders	f		1	\N	\N
164	application	subjects	findone	f		2	\N	\N
175	application	messages	findone	t		1	\N	\N
139	users-permissions	userspermissions	getroles	f		1	\N	\N
149	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
155	application	subjects	count	f		1	\N	\N
165	application	subjects	update	f		1	\N	\N
176	application	messages	findone	f		2	\N	\N
\.


--
-- TOC entry 2974 (class 0 OID 17005)
-- Dependencies: 217
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
\.


--
-- TOC entry 2976 (class 0 OID 17018)
-- Dependencies: 219
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
1	satsuki	satsuki@email.com	local	$2a$10$xohoHJqHwlCy3gXH25d1SuHjb9j1wziJotearU4tSoBxYIK.LV8Ni	\N	\N	t	f	1	1	1	2021-01-21 14:43:29.822+01	2021-01-21 14:43:29.828+01
\.


--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 202
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 24, true);


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 226
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 3, true);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 210
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 206
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 62, true);


--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 208
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- TOC entry 3008 (class 0 OID 0)
-- Dependencies: 212
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- TOC entry 3009 (class 0 OID 0)
-- Dependencies: 204
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3010 (class 0 OID 0)
-- Dependencies: 224
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 2, true);


--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 220
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);


--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 222
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 214
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 178, true);


--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 216
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 218
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, true);


--
-- TOC entry 2796 (class 2606 OID 16929)
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 17080)
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- TOC entry 2808 (class 2606 OID 16983)
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- TOC entry 2810 (class 2606 OID 16981)
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- TOC entry 2800 (class 2606 OID 16953)
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2802 (class 2606 OID 16970)
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- TOC entry 2804 (class 2606 OID 16968)
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- TOC entry 2806 (class 2606 OID 16966)
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- TOC entry 2812 (class 2606 OID 16991)
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2798 (class 2606 OID 16940)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 17065)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 17067)
-- Name: subjects subjects_title_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_title_unique UNIQUE (title);


--
-- TOC entry 2826 (class 2606 OID 17054)
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 17043)
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- TOC entry 2814 (class 2606 OID 17002)
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 17013)
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- TOC entry 2818 (class 2606 OID 17015)
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- TOC entry 2820 (class 2606 OID 17028)
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- TOC entry 2822 (class 2606 OID 17030)
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


-- Completed on 2021-01-21 16:21:53

--
-- PostgreSQL database dump complete
--

