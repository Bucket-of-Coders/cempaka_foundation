--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-09-05 12:25:48

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

DROP DATABASE "cempakafoundation";
--
-- TOC entry 4348 (class 1262 OID 4132057)
-- Name: cempakafoundation; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "cempakafoundation" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect "cempakafoundation"

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

SET default_table_access_method = "heap";

--
-- TOC entry 219 (class 1259 OID 11046103)
-- Name: article_add_article; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."article_add_article" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "body" "text" NOT NULL,
    "time" timestamp with time zone NOT NULL,
    "slug" character varying(255) NOT NULL,
    "banner" character varying(100) NOT NULL,
    "category" character varying(255),
    "meta_description" character varying(255)
);


--
-- TOC entry 218 (class 1259 OID 11046101)
-- Name: article_add_article_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."article_add_article_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 218
-- Name: article_add_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."article_add_article_id_seq" OWNED BY "public"."article_add_article"."id";


--
-- TOC entry 207 (class 1259 OID 11045983)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_group" (
    "id" integer NOT NULL,
    "name" character varying(150) NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 11045981)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."auth_group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "public"."auth_group"."id";


--
-- TOC entry 209 (class 1259 OID 11045993)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_group_permissions" (
    "id" integer NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 11045991)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "public"."auth_group_permissions"."id";


--
-- TOC entry 205 (class 1259 OID 11045975)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 11045973)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."auth_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "public"."auth_permission"."id";


--
-- TOC entry 211 (class 1259 OID 11046001)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_user" (
    "id" integer NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamp with time zone,
    "is_superuser" boolean NOT NULL,
    "username" character varying(150) NOT NULL,
    "first_name" character varying(30) NOT NULL,
    "last_name" character varying(150) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL
);


--
-- TOC entry 213 (class 1259 OID 11046011)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_user_groups" (
    "id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 11046009)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."auth_user_groups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "public"."auth_user_groups"."id";


--
-- TOC entry 210 (class 1259 OID 11045999)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."auth_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "public"."auth_user"."id";


--
-- TOC entry 215 (class 1259 OID 11046019)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_user_user_permissions" (
    "id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 11046017)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "public"."auth_user_user_permissions"."id";


--
-- TOC entry 221 (class 1259 OID 11046126)
-- Name: dashboard_userdashboardmodule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."dashboard_userdashboardmodule" (
    "id" integer NOT NULL,
    "title" character varying(255) NOT NULL,
    "module" character varying(255) NOT NULL,
    "app_label" character varying(255),
    "user" integer NOT NULL,
    "column" integer NOT NULL,
    "order" integer NOT NULL,
    "settings" "text" NOT NULL,
    "children" "text" NOT NULL,
    "collapsed" boolean NOT NULL,
    CONSTRAINT "dashboard_userdashboardmodule_column_check" CHECK (("column" >= 0)),
    CONSTRAINT "dashboard_userdashboardmodule_user_check" CHECK (("user" >= 0))
);


--
-- TOC entry 220 (class 1259 OID 11046124)
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."dashboard_userdashboardmodule_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 220
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."dashboard_userdashboardmodule_id_seq" OWNED BY "public"."dashboard_userdashboardmodule"."id";


--
-- TOC entry 217 (class 1259 OID 11046079)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" "text",
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" "text" NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    CONSTRAINT "django_admin_log_action_flag_check" CHECK (("action_flag" >= 0))
);


--
-- TOC entry 216 (class 1259 OID 11046077)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."django_admin_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "public"."django_admin_log"."id";


--
-- TOC entry 203 (class 1259 OID 11045965)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 11045963)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."django_content_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "public"."django_content_type"."id";


--
-- TOC entry 201 (class 1259 OID 11045954)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_migrations" (
    "id" integer NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 11045952)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."django_migrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "public"."django_migrations"."id";


--
-- TOC entry 240 (class 1259 OID 11046288)
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 11046139)
-- Name: jet_bookmark; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."jet_bookmark" (
    "id" integer NOT NULL,
    "url" character varying(200) NOT NULL,
    "title" character varying(255) NOT NULL,
    "user" integer NOT NULL,
    "date_add" timestamp with time zone NOT NULL,
    CONSTRAINT "jet_bookmark_user_check" CHECK (("user" >= 0))
);


--
-- TOC entry 222 (class 1259 OID 11046137)
-- Name: jet_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."jet_bookmark_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 222
-- Name: jet_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."jet_bookmark_id_seq" OWNED BY "public"."jet_bookmark"."id";


--
-- TOC entry 225 (class 1259 OID 11046148)
-- Name: jet_pinnedapplication; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."jet_pinnedapplication" (
    "id" integer NOT NULL,
    "app_label" character varying(255) NOT NULL,
    "user" integer NOT NULL,
    "date_add" timestamp with time zone NOT NULL,
    CONSTRAINT "jet_pinnedapplication_user_check" CHECK (("user" >= 0))
);


--
-- TOC entry 224 (class 1259 OID 11046146)
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."jet_pinnedapplication_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 224
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."jet_pinnedapplication_id_seq" OWNED BY "public"."jet_pinnedapplication"."id";


--
-- TOC entry 227 (class 1259 OID 11046170)
-- Name: landingpage_landing_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."landingpage_landing_page" (
    "id" integer NOT NULL,
    "history" "text" NOT NULL,
    "visi_misi_and_core_value" "text" NOT NULL,
    "strategy_and_program" "text" NOT NULL,
    "history_image" character varying(100) NOT NULL,
    "strategy_and_program_image" character varying(100) NOT NULL,
    "visi_misi_image" character varying(100) NOT NULL,
    "name" character varying(20) NOT NULL,
    "office_address" character varying(1000) NOT NULL,
    "office_email" character varying(255) NOT NULL,
    "office_location_map" character varying(1000) NOT NULL,
    "office_phone_number" character varying(255) NOT NULL,
    "bank_account_owner" character varying(255) NOT NULL,
    "bank_name" character varying(50) NOT NULL,
    "no_rek" integer NOT NULL
);


--
-- TOC entry 226 (class 1259 OID 11046168)
-- Name: landingpage_landing_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."landingpage_landing_page_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 226
-- Name: landingpage_landing_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."landingpage_landing_page_id_seq" OWNED BY "public"."landingpage_landing_page"."id";


--
-- TOC entry 233 (class 1259 OID 11046210)
-- Name: landingpage_management_team; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."landingpage_management_team" (
    "id" integer NOT NULL,
    "staff_name" character varying(255) NOT NULL,
    "staff_position" character varying(255) NOT NULL,
    "staff_photo" character varying(100) NOT NULL,
    "post_id" integer NOT NULL,
    "staff_social_facebook" character varying(1000),
    "staff_social_instagram" character varying(1000),
    "staff_social_linkedin" character varying(1000),
    "staff_social_twitter" character varying(1000)
);


--
-- TOC entry 232 (class 1259 OID 11046208)
-- Name: landingpage_management_team_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."landingpage_management_team_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 232
-- Name: landingpage_management_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."landingpage_management_team_id_seq" OWNED BY "public"."landingpage_management_team"."id";


--
-- TOC entry 246 (class 1259 OID 18328302)
-- Name: landingpage_question_answer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."landingpage_question_answer" (
    "id" integer NOT NULL,
    "question" character varying(100) NOT NULL,
    "answer" "text" NOT NULL,
    "date" "date"
);


--
-- TOC entry 245 (class 1259 OID 18328300)
-- Name: landingpage_question_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."landingpage_question_answer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 245
-- Name: landingpage_question_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."landingpage_question_answer_id_seq" OWNED BY "public"."landingpage_question_answer"."id";


--
-- TOC entry 229 (class 1259 OID 11046185)
-- Name: landingpage_sponsor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."landingpage_sponsor" (
    "id" integer NOT NULL,
    "organization_name" character varying(255) NOT NULL,
    "organization_logo" character varying(100) NOT NULL,
    "post_id" integer NOT NULL
);


--
-- TOC entry 228 (class 1259 OID 11046183)
-- Name: landingpage_sponsor_logo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."landingpage_sponsor_logo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 228
-- Name: landingpage_sponsor_logo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."landingpage_sponsor_logo_id_seq" OWNED BY "public"."landingpage_sponsor"."id";


--
-- TOC entry 231 (class 1259 OID 11046199)
-- Name: landingpage_user_review; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."landingpage_user_review" (
    "id" integer NOT NULL,
    "user_name" character varying(255) NOT NULL,
    "user_occupation" character varying(255) NOT NULL,
    "user_review" "text" NOT NULL,
    "post_id" integer NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 11046197)
-- Name: landingpage_user_review_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."landingpage_user_review_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 230
-- Name: landingpage_user_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."landingpage_user_review_id_seq" OWNED BY "public"."landingpage_user_review"."id";


--
-- TOC entry 235 (class 1259 OID 11046241)
-- Name: login_login_page; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."login_login_page" (
    "id" integer NOT NULL,
    "body" "text" NOT NULL,
    "name" character varying(20) NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 11046239)
-- Name: login_login_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."login_login_page_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 234
-- Name: login_login_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."login_login_page_id_seq" OWNED BY "public"."login_login_page"."id";


--
-- TOC entry 248 (class 1259 OID 89981684)
-- Name: login_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."login_users" (
    "id" integer NOT NULL,
    "password" character varying(128) NOT NULL,
    "email" character varying(100) NOT NULL,
    "username" character varying(255),
    "date_joined" timestamp with time zone NOT NULL,
    "last_login" timestamp with time zone NOT NULL,
    "is_admin" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_superuser" boolean NOT NULL,
    "first_name" character varying(255) NOT NULL,
    "last_name" character varying(255) NOT NULL
);


--
-- TOC entry 250 (class 1259 OID 89982532)
-- Name: login_users_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."login_users_groups" (
    "id" integer NOT NULL,
    "users_id" integer NOT NULL,
    "group_id" integer NOT NULL
);


--
-- TOC entry 249 (class 1259 OID 89982530)
-- Name: login_users_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."login_users_groups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 249
-- Name: login_users_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."login_users_groups_id_seq" OWNED BY "public"."login_users_groups"."id";


--
-- TOC entry 247 (class 1259 OID 89981682)
-- Name: login_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."login_users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 247
-- Name: login_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."login_users_id_seq" OWNED BY "public"."login_users"."id";


--
-- TOC entry 252 (class 1259 OID 89982540)
-- Name: login_users_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."login_users_user_permissions" (
    "id" integer NOT NULL,
    "users_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


--
-- TOC entry 251 (class 1259 OID 89982538)
-- Name: login_users_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."login_users_user_permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 251
-- Name: login_users_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."login_users_user_permissions_id_seq" OWNED BY "public"."login_users_user_permissions"."id";


--
-- TOC entry 237 (class 1259 OID 11046252)
-- Name: mapmanager_posisipohon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."mapmanager_posisipohon" (
    "id" integer NOT NULL,
    "relasi_id" integer NOT NULL,
    "urlmap" character varying(500) NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 11046250)
-- Name: mapmanager_posisipohon_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."mapmanager_posisipohon_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 236
-- Name: mapmanager_posisipohon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."mapmanager_posisipohon_id_seq" OWNED BY "public"."mapmanager_posisipohon"."id";


--
-- TOC entry 239 (class 1259 OID 11046276)
-- Name: program_activity_program_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."program_activity_program_activity" (
    "id" integer NOT NULL,
    "slug" character varying(50) NOT NULL,
    "title" character varying(200),
    "image" character varying(100),
    "meta_description" character varying(255),
    "description" "text",
    "date_posted" timestamp with time zone NOT NULL,
    "category" character varying(20) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 11046274)
-- Name: program_activity_program_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."program_activity_program_activity_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 238
-- Name: program_activity_program_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."program_activity_program_activity_id_seq" OWNED BY "public"."program_activity_program_activity"."id";


--
-- TOC entry 244 (class 1259 OID 13658959)
-- Name: sponsor_dashboard_sponsor_galery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."sponsor_dashboard_sponsor_galery" (
    "id" integer NOT NULL,
    "date" "date" NOT NULL,
    "images" character varying(100) NOT NULL,
    "post_id" integer NOT NULL
);


--
-- TOC entry 243 (class 1259 OID 13658957)
-- Name: sponsor_dashboard_sponsor_galery_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."sponsor_dashboard_sponsor_galery_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 243
-- Name: sponsor_dashboard_sponsor_galery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."sponsor_dashboard_sponsor_galery_id_seq" OWNED BY "public"."sponsor_dashboard_sponsor_galery"."id";


--
-- TOC entry 242 (class 1259 OID 13658939)
-- Name: sponsor_dashboard_user_sponsor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."sponsor_dashboard_user_sponsor" (
    "id" integer NOT NULL,
    "sponsor_name" character varying(255) NOT NULL,
    "sponsor_logo" character varying(100),
    "sponsor_user_id" integer NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 13658931)
-- Name: sponsor_dashboard_user_sponsor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."sponsor_dashboard_user_sponsor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 241
-- Name: sponsor_dashboard_user_sponsor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."sponsor_dashboard_user_sponsor_id_seq" OWNED BY "public"."sponsor_dashboard_user_sponsor"."id";


--
-- TOC entry 4015 (class 2604 OID 11046106)
-- Name: article_add_article id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."article_add_article" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."article_add_article_id_seq"'::"regclass");


--
-- TOC entry 4008 (class 2604 OID 11045986)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_id_seq"'::"regclass");


--
-- TOC entry 4009 (class 2604 OID 11045996)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_permissions_id_seq"'::"regclass");


--
-- TOC entry 4007 (class 2604 OID 11045978)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_permission_id_seq"'::"regclass");


--
-- TOC entry 4010 (class 2604 OID 11046004)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_id_seq"'::"regclass");


--
-- TOC entry 4011 (class 2604 OID 11046014)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_groups_id_seq"'::"regclass");


--
-- TOC entry 4012 (class 2604 OID 11046022)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_user_permissions_id_seq"'::"regclass");


--
-- TOC entry 4016 (class 2604 OID 11046129)
-- Name: dashboard_userdashboardmodule id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."dashboard_userdashboardmodule" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."dashboard_userdashboardmodule_id_seq"'::"regclass");


--
-- TOC entry 4013 (class 2604 OID 11046082)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_admin_log_id_seq"'::"regclass");


--
-- TOC entry 4006 (class 2604 OID 11045968)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_content_type" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_content_type_id_seq"'::"regclass");


--
-- TOC entry 4005 (class 2604 OID 11045957)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_migrations_id_seq"'::"regclass");


--
-- TOC entry 4019 (class 2604 OID 11046142)
-- Name: jet_bookmark id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jet_bookmark" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."jet_bookmark_id_seq"'::"regclass");


--
-- TOC entry 4021 (class 2604 OID 11046151)
-- Name: jet_pinnedapplication id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jet_pinnedapplication" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."jet_pinnedapplication_id_seq"'::"regclass");


--
-- TOC entry 4023 (class 2604 OID 11046173)
-- Name: landingpage_landing_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_landing_page" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."landingpage_landing_page_id_seq"'::"regclass");


--
-- TOC entry 4026 (class 2604 OID 11046213)
-- Name: landingpage_management_team id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_management_team" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."landingpage_management_team_id_seq"'::"regclass");


--
-- TOC entry 4032 (class 2604 OID 18328305)
-- Name: landingpage_question_answer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_question_answer" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."landingpage_question_answer_id_seq"'::"regclass");


--
-- TOC entry 4024 (class 2604 OID 11046188)
-- Name: landingpage_sponsor id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_sponsor" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."landingpage_sponsor_logo_id_seq"'::"regclass");


--
-- TOC entry 4025 (class 2604 OID 11046202)
-- Name: landingpage_user_review id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_user_review" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."landingpage_user_review_id_seq"'::"regclass");


--
-- TOC entry 4027 (class 2604 OID 11046244)
-- Name: login_login_page id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_login_page" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."login_login_page_id_seq"'::"regclass");


--
-- TOC entry 4033 (class 2604 OID 89981687)
-- Name: login_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."login_users_id_seq"'::"regclass");


--
-- TOC entry 4034 (class 2604 OID 89982535)
-- Name: login_users_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."login_users_groups_id_seq"'::"regclass");


--
-- TOC entry 4035 (class 2604 OID 89982543)
-- Name: login_users_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."login_users_user_permissions_id_seq"'::"regclass");


--
-- TOC entry 4028 (class 2604 OID 11046255)
-- Name: mapmanager_posisipohon id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."mapmanager_posisipohon" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."mapmanager_posisipohon_id_seq"'::"regclass");


--
-- TOC entry 4029 (class 2604 OID 11046279)
-- Name: program_activity_program_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."program_activity_program_activity" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."program_activity_program_activity_id_seq"'::"regclass");


--
-- TOC entry 4031 (class 2604 OID 13658962)
-- Name: sponsor_dashboard_sponsor_galery id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_sponsor_galery" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."sponsor_dashboard_sponsor_galery_id_seq"'::"regclass");


--
-- TOC entry 4030 (class 2604 OID 13658944)
-- Name: sponsor_dashboard_user_sponsor id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_user_sponsor" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."sponsor_dashboard_user_sponsor_id_seq"'::"regclass");


--
-- TOC entry 4309 (class 0 OID 11046103)
-- Dependencies: 219
-- Data for Name: article_add_article; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."article_add_article" ("id", "name", "body", "time", "slug", "banner", "category", "meta_description") VALUES (1, 'Kick Off Konservasi Hutan dan Daerah Tangkapan Air', '<p>Sumber mata air yang ada di Gunung Arjuno bla bla bla</p>', '2021-06-01 16:33:34.979029+00', 'kick-off-konservasi-hutan-dan-daerah-tangkapan-air', 'article_images/irina-iriser-2Y4dE8sdhlc-unsplash.jpg', 'Program', 'kick of konservasi ...');
INSERT INTO "public"."article_add_article" ("id", "name", "body", "time", "slug", "banner", "category", "meta_description") VALUES (2, 'Team Cempaka', '<p>Cempaka foundation berdiri atas dasar kepedulian terhadap keberlangsungan Sumber Daya Air yang ada di Gunung Arjuna.</p>

<p>Serta peningkatan ekonomi masyarakat</p>', '2021-06-01 16:36:19.366277+00', 'team-cempaka', 'article_images/natalie-pedigo-wJK9eTiEZHY-unsplash_1.jpg', 'COBA', 'team cempaka ....');


--
-- TOC entry 4297 (class 0 OID 11045983)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."auth_group" ("id", "name") VALUES (1, 'sponsor');


--
-- TOC entry 4299 (class 0 OID 11045993)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4295 (class 0 OID 11045975)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (1, 'Can add user dashboard module', 1, 'add_userdashboardmodule');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (2, 'Can change user dashboard module', 1, 'change_userdashboardmodule');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (3, 'Can delete user dashboard module', 1, 'delete_userdashboardmodule');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (4, 'Can view user dashboard module', 1, 'view_userdashboardmodule');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (5, 'Can add bookmark', 2, 'add_bookmark');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (6, 'Can change bookmark', 2, 'change_bookmark');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (7, 'Can delete bookmark', 2, 'delete_bookmark');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (8, 'Can view bookmark', 2, 'view_bookmark');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (9, 'Can add pinned application', 3, 'add_pinnedapplication');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (10, 'Can change pinned application', 3, 'change_pinnedapplication');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (11, 'Can delete pinned application', 3, 'delete_pinnedapplication');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (12, 'Can view pinned application', 3, 'view_pinnedapplication');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (13, 'Can add landing_page', 4, 'add_landing_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (14, 'Can change landing_page', 4, 'change_landing_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (15, 'Can delete landing_page', 4, 'delete_landing_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (16, 'Can view landing_page', 4, 'view_landing_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (17, 'Can add sponsor', 5, 'add_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (18, 'Can change sponsor', 5, 'change_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (19, 'Can delete sponsor', 5, 'delete_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (20, 'Can view sponsor', 5, 'view_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (21, 'Can add user_review', 6, 'add_user_review');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (22, 'Can change user_review', 6, 'change_user_review');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (23, 'Can delete user_review', 6, 'delete_user_review');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (24, 'Can view user_review', 6, 'view_user_review');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (25, 'Can add management_team', 7, 'add_management_team');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (26, 'Can change management_team', 7, 'change_management_team');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (27, 'Can delete management_team', 7, 'delete_management_team');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (28, 'Can view management_team', 7, 'view_management_team');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (29, 'Can add login_page', 8, 'add_login_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (30, 'Can change login_page', 8, 'change_login_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (31, 'Can delete login_page', 8, 'delete_login_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (32, 'Can view login_page', 8, 'view_login_page');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (33, 'Can add add_article', 9, 'add_add_article');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (34, 'Can change add_article', 9, 'change_add_article');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (35, 'Can delete add_article', 9, 'delete_add_article');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (36, 'Can view add_article', 9, 'view_add_article');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (37, 'Can add program_activity', 10, 'add_program_activity');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (38, 'Can change program_activity', 10, 'change_program_activity');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (39, 'Can delete program_activity', 10, 'delete_program_activity');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (40, 'Can view program_activity', 10, 'view_program_activity');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (41, 'Can add posisipohon', 11, 'add_posisipohon');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (42, 'Can change posisipohon', 11, 'change_posisipohon');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (43, 'Can delete posisipohon', 11, 'delete_posisipohon');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (44, 'Can view posisipohon', 11, 'view_posisipohon');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (45, 'Can add log entry', 12, 'add_logentry');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (46, 'Can change log entry', 12, 'change_logentry');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (47, 'Can delete log entry', 12, 'delete_logentry');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (48, 'Can view log entry', 12, 'view_logentry');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (49, 'Can add permission', 13, 'add_permission');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (50, 'Can change permission', 13, 'change_permission');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (51, 'Can delete permission', 13, 'delete_permission');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (52, 'Can view permission', 13, 'view_permission');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (53, 'Can add group', 14, 'add_group');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (54, 'Can change group', 14, 'change_group');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (55, 'Can delete group', 14, 'delete_group');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (56, 'Can view group', 14, 'view_group');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (57, 'Can add user', 15, 'add_user');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (58, 'Can change user', 15, 'change_user');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (59, 'Can delete user', 15, 'delete_user');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (60, 'Can view user', 15, 'view_user');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (61, 'Can add content type', 16, 'add_contenttype');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (62, 'Can change content type', 16, 'change_contenttype');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (63, 'Can delete content type', 16, 'delete_contenttype');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (64, 'Can view content type', 16, 'view_contenttype');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (65, 'Can add session', 17, 'add_session');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (66, 'Can change session', 17, 'change_session');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (67, 'Can delete session', 17, 'delete_session');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (68, 'Can view session', 17, 'view_session');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (69, 'Can add user_sponsor', 18, 'add_user_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (70, 'Can change user_sponsor', 18, 'change_user_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (71, 'Can delete user_sponsor', 18, 'delete_user_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (72, 'Can view user_sponsor', 18, 'view_user_sponsor');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (73, 'Can add sponsor_galery', 19, 'add_sponsor_galery');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (74, 'Can change sponsor_galery', 19, 'change_sponsor_galery');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (75, 'Can delete sponsor_galery', 19, 'delete_sponsor_galery');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (76, 'Can view sponsor_galery', 19, 'view_sponsor_galery');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (77, 'Can add question_answer', 20, 'add_question_answer');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (78, 'Can change question_answer', 20, 'change_question_answer');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (79, 'Can delete question_answer', 20, 'delete_question_answer');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (80, 'Can view question_answer', 20, 'view_question_answer');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (81, 'Can add faq', 21, 'add_faq');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (82, 'Can change faq', 21, 'change_faq');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (83, 'Can delete faq', 21, 'delete_faq');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (84, 'Can view faq', 21, 'view_faq');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (110, 'Can add users', 53, 'add_users');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (111, 'Can change users', 53, 'change_users');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (112, 'Can delete users', 53, 'delete_users');
INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES (113, 'Can view users', 53, 'view_users');


--
-- TOC entry 4301 (class 0 OID 11046001)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (2, 'pbkdf2_sha256$150000$lJfG8aZmBame$j+3Lv3yQz12LIFu8BlDLMVDO0lTf3GSP/EU8ufodK5k=', '2021-06-02 12:46:12.018304+00', false, 'bucketofcoders@gmail.com', 'bucket of', 'coders', 'bucketofcoders@gmail.com', false, true, '2021-06-02 11:49:27+00');
INSERT INTO "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (3, 'pbkdf2_sha256$150000$O1VNAhn1HeXz$vUEyn0x2VlG3jtoCSufzidlCm/y7agQHu+QxwC5T0zk=', '2021-06-06 04:34:14.502341+00', false, 'admin2', '', '', '', false, true, '2021-06-06 04:30:44.828066+00');
INSERT INTO "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (1, 'pbkdf2_sha256$150000$dbpNkRAc0zTM$KjahMVJnWfzH27uOE7AMcCkP/03y9iyVVGpDZlFUAH0=', '2021-08-10 02:46:21.873247+00', true, 'admin', 'admin', 'cempaka', 'cempaka@email.com', true, true, '2021-05-29 06:38:10+00');
INSERT INTO "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (4, 'pbkdf2_sha256$150000$T0iffsIv41UY$B1CC1ZwDfUky5oEyiF+QEesSUhMCEG7xJ6f2r67pe2M=', '2021-08-10 09:54:51.250223+00', false, 'agellanggeng', 'PT', 'agellanggeng', '', false, true, '2021-06-06 04:46:04+00');
INSERT INTO "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES (37, 'pbkdf2_sha256$150000$7HJLtv9esQCU$0EtjGCAFWAl2V7lDeL+x3yndZkIzgEVWtRVlKDo0FV4=', '2021-08-10 10:15:35.518295+00', false, 'panverta', 'PT', 'Panverta Cakrakencana', '', false, true, '2021-08-05 04:53:46+00');


--
-- TOC entry 4303 (class 0 OID 11046011)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4305 (class 0 OID 11046019)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4311 (class 0 OID 11046126)
-- Dependencies: 221
-- Data for Name: dashboard_userdashboardmodule; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (7, 'Application models', 'jet.dashboard.modules.ModelList', 'mapmanager', 1, 0, 0, '{"models": ["mapmanager.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (8, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'mapmanager', 1, 1, 0, '{"limit": 10, "include_list": ["mapmanager.*"], "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (10, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'landingpage', 1, 1, 0, '{"limit": 10, "include_list": ["landingpage.*"], "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (11, 'Application models', 'jet.dashboard.modules.ModelList', 'program_activity', 1, 0, 0, '{"models": ["program_activity.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (12, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'program_activity', 1, 1, 0, '{"limit": 10, "include_list": ["program_activity.*"], "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (20, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 1, 2, 2, '{"feed_url": "http://www.djangoproject.com/rss/weblog/", "limit": 5}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (18, 'Administration', 'jet.dashboard.modules.AppList', NULL, 1, 2, 0, '{"models": ["auth.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (9, 'Application models', 'jet.dashboard.modules.ModelList', 'landingpage', 1, 0, 0, '{"models": ["landingpage.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (13, 'Application models', 'jet.dashboard.modules.ModelList', 'sponsor_dashboard', 1, 0, 0, '{"models": ["sponsor_dashboard.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (14, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'sponsor_dashboard', 1, 1, 0, '{"limit": 10, "include_list": ["sponsor_dashboard.*"], "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (16, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 1, 0, 0, '{"draggable": false, "deletable": false, "collapsible": false, "layout": "inline"}', '[{"title": "Return to site", "url": "/"}, {"title": "Change password", "url": "/adminpassword_change/"}, {"title": "Log out", "url": "/adminlogout/"}]', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (17, 'Applications', 'jet.dashboard.modules.AppList', NULL, 1, 1, 0, '{"models": null, "exclude": ["auth.*"]}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (19, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 1, 0, 1, '{"limit": 10, "include_list": null, "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (21, 'Support', 'jet.dashboard.modules.LinkList', NULL, 1, 2, 1, '{"draggable": true, "deletable": true, "collapsible": true, "layout": "stacked"}', '[{"title": "Django documentation", "url": "http://docs.djangoproject.com/", "external": true}, {"title": "Django \"django-users\" mailing list", "url": "http://groups.google.com/group/django-users", "external": true}, {"title": "Django irc channel", "url": "irc://irc.freenode.net/django", "external": true}]', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (22, 'Application models', 'jet.dashboard.modules.ModelList', 'auth', 1, 0, 0, '{"models": ["auth.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (23, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'auth', 1, 1, 0, '{"limit": 10, "include_list": ["auth.*"], "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (55, 'Application models', 'jet.dashboard.modules.ModelList', 'article', 1, 0, 0, '{"models": ["article.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (56, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'article', 1, 1, 0, '{"limit": 10, "include_list": ["article.*"], "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (57, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 2, 0, 0, '{"draggable": false, "deletable": false, "collapsible": false, "layout": "inline"}', '[{"title": "Return to site", "url": "/"}, {"title": "Change password", "url": "/adminpassword_change/"}, {"title": "Log out", "url": "/adminlogout/"}]', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (58, 'Applications', 'jet.dashboard.modules.AppList', NULL, 2, 1, 0, '{"models": null, "exclude": ["auth.*"]}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (59, 'Administration', 'jet.dashboard.modules.AppList', NULL, 2, 2, 0, '{"models": ["auth.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (60, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 2, 0, 1, '{"limit": 10, "include_list": null, "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (61, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 2, 1, 1, '{"feed_url": "http://www.djangoproject.com/rss/weblog/", "limit": 5}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (62, 'Support', 'jet.dashboard.modules.LinkList', NULL, 2, 2, 1, '{"draggable": true, "deletable": true, "collapsible": true, "layout": "stacked"}', '[{"title": "Django documentation", "url": "http://docs.djangoproject.com/", "external": true}, {"title": "Django \"django-users\" mailing list", "url": "http://groups.google.com/group/django-users", "external": true}, {"title": "Django irc channel", "url": "irc://irc.freenode.net/django", "external": true}]', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (63, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 4, 0, 0, '{"draggable": false, "deletable": false, "collapsible": false, "layout": "inline"}', '[{"title": "Return to site", "url": "/"}, {"title": "Change password", "url": "/adminpassword_change/"}, {"title": "Log out", "url": "/adminlogout/"}]', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (64, 'Applications', 'jet.dashboard.modules.AppList', NULL, 4, 1, 0, '{"models": null, "exclude": ["auth.*"]}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (65, 'Administration', 'jet.dashboard.modules.AppList', NULL, 4, 2, 0, '{"models": ["auth.*"], "exclude": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (66, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 4, 0, 1, '{"limit": 10, "include_list": null, "exclude_list": null, "user": null}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (67, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 4, 1, 1, '{"feed_url": "http://www.djangoproject.com/rss/weblog/", "limit": 5}', '', false);
INSERT INTO "public"."dashboard_userdashboardmodule" ("id", "title", "module", "app_label", "user", "column", "order", "settings", "children", "collapsed") VALUES (68, 'Support', 'jet.dashboard.modules.LinkList', NULL, 4, 2, 1, '{"draggable": true, "deletable": true, "collapsible": true, "layout": "stacked"}', '[{"title": "Django documentation", "url": "http://docs.djangoproject.com/", "external": true}, {"title": "Django \"django-users\" mailing list", "url": "http://groups.google.com/group/django-users", "external": true}, {"title": "Django irc channel", "url": "irc://irc.freenode.net/django", "external": true}]', false);


--
-- TOC entry 4307 (class 0 OID 11046079)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (1, '2021-05-29 06:40:43.220938+00', '1', 'Landing_page object (1)', 1, '[{"added": {}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (2, '2021-05-29 06:46:58.306031+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "sponsor", "object": "bucket of coders"}}, {"added": {"name": "sponsor", "object": "sydeco"}}, {"added": {"name": "sponsor", "object": "test image"}}, {"added": {"name": "sponsor", "object": "python"}}, {"added": {"name": "sponsor", "object": "bootstrap"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (3, '2021-05-29 06:47:57.863427+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "user_review", "object": "1. People"}}, {"added": {"name": "user_review", "object": "2. people"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (4, '2021-05-29 06:49:05.75211+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "management_team", "object": "1. staff"}}, {"added": {"name": "management_team", "object": "2. staff"}}, {"added": {"name": "management_team", "object": "3. staff"}}, {"added": {"name": "management_team", "object": "4. staff"}}, {"added": {"name": "management_team", "object": "5. staff"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (5, '2021-05-29 06:49:32.120768+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "1. staff", "fields": ["staff_social_facebook"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (6, '2021-05-29 06:49:58.957833+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "1. staff", "fields": ["staff_social_facebook"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (7, '2021-05-29 06:51:36.854204+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["office_location_map"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (8, '2021-06-01 16:33:34.99033+00', '1', '1. Lorem Ipsum', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (9, '2021-06-01 16:36:19.385413+00', '2', '2. lorem ipsum 2', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (10, '2021-06-01 16:36:53.433417+00', '3', '3. lorem ipsum 3', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (11, '2021-06-01 16:37:20.322136+00', '4', '4. lorem ipsum 4', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (12, '2021-06-01 16:38:27.497979+00', '5', '5. lorem ipsum 5', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (13, '2021-06-01 16:39:31.355474+00', '6', '6. lorem ipsum 6', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (14, '2021-06-01 16:49:20.499548+00', '1', 'Login_page object (1)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (15, '2021-06-01 17:24:41.83772+00', '1', 'lorem ipsum, <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco l', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (16, '2021-06-01 17:26:13.805561+00', '2', 'lorem ipsum 3, <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (17, '2021-06-01 17:50:16.801255+00', '1', 'lorem ipsum, <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco l', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (18, '2021-06-01 18:22:24.306157+00', '1', 'sponsor', 1, '[{"added": {}}]', 14, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (19, '2021-06-01 18:27:33.305955+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["history"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (20, '2021-06-02 11:49:28.945113+00', '2', 'bucketofcoders@gmail.com', 1, '[{"added": {}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (21, '2021-06-02 11:50:12.645274+00', '2', 'bucketofcoders@gmail.com', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (22, '2021-06-02 11:52:56.948365+00', '1', 'User_sponsor object (1)', 1, '[{"added": {}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (23, '2021-06-02 12:26:47.549787+00', '1', 'User_sponsor object (1)', 2, '[{"added": {"name": "sponsor_galery", "object": "Sponsor_galery object (1)"}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (24, '2021-06-02 13:09:04.02721+00', '1', 'User_sponsor object (1)', 2, '[{"changed": {"fields": ["sponsor_user"]}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (25, '2021-06-03 13:26:35.605607+00', '1', 'User_sponsor object (1)', 2, '[{"added": {"name": "sponsor_galery", "object": "Sponsor_galery object (2)"}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (26, '2021-06-03 13:28:43.016283+00', '1', 'User_sponsor object (1)', 2, '[{"added": {"name": "sponsor_galery", "object": "Sponsor_galery object (3)"}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (27, '2021-06-03 15:05:21.861642+00', '1', 'User_sponsor object (1)', 2, '[]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (28, '2021-06-03 15:06:17.57649+00', '2', 'User_sponsor object (2)', 1, '[{"added": {}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (29, '2021-06-04 20:24:35.381078+00', '1', 'test FAQ', 1, '[{"added": {}}]', 21, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (30, '2021-06-04 20:57:54.059254+00', '1', 'test FAQ', 2, '[{"added": {"name": "question_answer", "object": "Question_answer object (1)"}}]', 21, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (31, '2021-06-04 21:08:48.906395+00', '1', 'test FAQ', 2, '[{"added": {"name": "question_answer", "object": "Question_answer object (2)"}}]', 21, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (32, '2021-06-04 21:10:59.212678+00', '1', 'test FAQ', 2, '[]', 21, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (33, '2021-06-04 21:11:30.475138+00', '2', 'test FAQ2', 1, '[{"added": {}}, {"added": {"name": "question_answer", "object": "Question_answer object (3)"}}, {"added": {"name": "question_answer", "object": "Question_answer object (4)"}}]', 21, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (34, '2021-06-05 08:14:32.558482+00', '2', 'test FAQ2', 2, '[{"changed": {"name": "question_answer", "object": "Question_answer object (4)", "fields": ["answer"]}}]', 21, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (35, '2021-06-05 08:25:06.000818+00', '1', '1. Siapa Cempaka Foundation?', 2, '[{"changed": {"fields": ["question", "answer"]}}]', 20, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (36, '2021-06-05 08:25:51.125906+00', '2', '2. Bagaimana cara...?', 2, '[{"changed": {"fields": ["question", "answer"]}}]', 20, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (37, '2021-06-05 08:26:51.267218+00', '3', '3. Visi & Misi', 2, '[{"changed": {"fields": ["question", "answer"]}}]', 20, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (38, '2021-06-05 08:27:45.289409+00', '4', '4. Siapa pemimpin Cempaka Foundation?', 2, '[{"changed": {"fields": ["question", "answer"]}}]', 20, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (39, '2021-06-06 04:30:44.965611+00', '3', 'admin2', 1, '[{"added": {}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (40, '2021-06-06 04:31:35.896201+00', '7', 'admin2', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (41, '2021-06-06 04:33:21.22931+00', '3', 'cempaka foundation', 1, '[{"added": {}}, {"added": {"name": "sponsor_galery", "object": "Sponsor_galery object (4)"}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (42, '2021-06-06 04:46:05.178142+00', '4', 'agellanggeng', 1, '[{"added": {}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (43, '2021-06-06 04:46:58.852764+00', '8', 'agellanggeng', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (44, '2021-06-06 04:51:12.418243+00', '4', 'agellanggeng', 2, '[{"changed": {"fields": ["password"]}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (45, '2021-06-06 04:57:13.351259+00', '4', 'PT Angel Langgeng', 1, '[{"added": {}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (46, '2021-06-06 05:10:34.233618+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["bank_name", "bank_account_owner"]}}, {"deleted": {"name": "sponsor", "object": "bucket of coders"}}, {"deleted": {"name": "sponsor", "object": "sydeco"}}, {"deleted": {"name": "sponsor", "object": "test image"}}, {"deleted": {"name": "sponsor", "object": "python"}}, {"deleted": {"name": "sponsor", "object": "bootstrap"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (47, '2021-06-06 05:11:05.027147+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "sponsor", "object": "PT Agel Langgeng"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (48, '2021-06-06 05:12:26.33261+00', '1', 'Landing_page object (1)', 2, '[{"deleted": {"name": "management_team", "object": "1. staff"}}, {"deleted": {"name": "management_team", "object": "2. staff"}}, {"deleted": {"name": "management_team", "object": "3. staff"}}, {"deleted": {"name": "management_team", "object": "4. staff"}}, {"deleted": {"name": "management_team", "object": "5. staff"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (49, '2021-06-06 05:13:17.109969+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "management_team", "object": "6. Name"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (50, '2021-06-06 05:14:08.246627+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "management_team", "object": "7. Name"}}, {"added": {"name": "management_team", "object": "8. Name"}}, {"added": {"name": "management_team", "object": "9. Name"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (156, '2021-09-03 04:52:08.616803+00', '2', '2. Bagaimana cara...?', 3, '', 20, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (51, '2021-06-06 05:21:27.572853+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "sponsor", "object": "Shell"}}, {"added": {"name": "sponsor", "object": "Pertamina"}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (52, '2021-06-06 07:08:18.833619+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "sponsor", "object": "PT Agel Langgeng", "fields": ["organization_logo"]}}, {"changed": {"name": "sponsor", "object": "Shell", "fields": ["organization_logo"]}}, {"changed": {"name": "sponsor", "object": "Pertamina", "fields": ["organization_logo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (53, '2021-06-06 07:09:25.12912+00', '4', 'agellanggeng', 2, '[{"changed": {"fields": ["password"]}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (54, '2021-06-06 08:42:41.54595+00', '1', 'admin', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (55, '2021-06-06 09:19:18.145377+00', '4', 'agellanggeng', 2, '[{"changed": {"fields": ["first_name", "last_name"]}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (88, '2021-06-22 04:22:38.763293+00', '1', '1. Kick Off Konservasi Hutan dan Daerah Tangkapan Air', 2, '[{"changed": {"fields": ["name", "banner", "category", "body"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (89, '2021-06-22 04:23:07.610453+00', '1', '1. Kick Off Konservasi Hutan dan Daerah Tangkapan Air', 2, '[]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (90, '2021-06-22 04:37:20.768566+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "6. Sarifudin Lathif", "fields": ["staff_name", "staff_position", "staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (91, '2021-06-22 07:05:42.944265+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "management_team", "object": "39. Arifin"}}, {"added": {"name": "management_team", "object": "40. Riky"}}, {"changed": {"name": "management_team", "object": "6. Sarifudin Lathif", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "7. Didik Wahyudi", "fields": ["staff_name", "staff_position", "staff_photo"]}}, {"changed": {"name": "management_team", "object": "8. Khusnul Arifin", "fields": ["staff_name", "staff_position", "staff_photo"]}}, {"changed": {"name": "management_team", "object": "9. Mawan Kustono", "fields": ["staff_name", "staff_position", "staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (92, '2021-06-22 07:10:52.426518+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "39. Arifin", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (93, '2021-06-22 07:12:49.558988+00', '1', 'Landing_page object (1)', 2, '[]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (94, '2021-06-22 07:15:03.49714+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "39. Arifin", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (95, '2021-06-22 07:47:25.953397+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "39. Arifin", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (96, '2021-06-22 09:05:51.766183+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "6. Sarifudin Lathif", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "7. Didik Wahyudi", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (97, '2021-06-22 09:14:55.801537+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "6. Sarifudin Lathif", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "7. Didik Wahyudi", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (98, '2021-06-22 09:15:03.216543+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "6. Sarifudin Lathif", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "7. Didik Wahyudi", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (99, '2021-06-22 09:18:53.171257+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "8. Khusnul Arifin", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "9. Mawan Kustono", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "39. Arifin", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "40. Riky", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (100, '2021-06-22 09:20:05.415492+00', '1', 'Landing_page object (1)', 2, '[]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (101, '2021-06-22 09:21:26.543943+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "8. Khusnul Arifin", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "9. Mawan Kustono", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "39. Arifin", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "40. Riky", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (102, '2021-06-22 09:26:08.667807+00', '2', '2. Team Cempaka', 2, '[{"changed": {"fields": ["name", "banner", "category", "body"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (103, '2021-06-22 09:28:17.649541+00', '2', '2. Team Cempaka', 2, '[]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (104, '2021-06-22 09:28:25.111348+00', '2', '2. Team Cempaka', 2, '[]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (105, '2021-06-22 09:42:50.991801+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["history", "visi_misi_and_core_value"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (106, '2021-06-22 09:44:23.980103+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["visi_misi_and_core_value"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (107, '2021-06-22 09:48:01.399607+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["visi_misi_and_core_value"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (108, '2021-06-22 09:55:56.419718+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["office_address", "office_email", "office_phone_number", "bank_name", "no_rek", "bank_account_owner"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (109, '2021-06-22 10:08:21.578057+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["history", "visi_misi_and_core_value"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (110, '2021-06-22 10:20:29.248112+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "8. Kusnul Arifin", "fields": ["staff_name"]}}, {"changed": {"name": "management_team", "object": "39. Aripin", "fields": ["staff_name", "staff_position"]}}, {"changed": {"name": "management_team", "object": "40. Riki Siswanto", "fields": ["staff_name", "staff_position"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (111, '2021-06-22 10:24:34.929781+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "9. Mawan Kustono", "fields": ["staff_position"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (112, '2021-07-28 06:44:53.919444+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "8. Kusnul Arifin", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (145, '2021-07-29 09:42:02.67955+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["strategy_and_program"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (146, '2021-07-30 07:27:30.837782+00', '2', 'Caping Gunung, <p><strong>Caping Gunung</strong> merupakan akronim dari Camping, Ngopi, Guyon dan Merenung. berdasarkan arti akronim tersebut, Caping Gunung adalah kegiatan saling berbagi dan berdisku', 2, '[{"changed": {"fields": ["slug", "title", "description"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (147, '2021-08-05 04:53:46.820753+00', '37', 'panverta', 1, '[{"added": {}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (148, '2021-08-05 04:54:00.420389+00', '41', 'panverta', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (149, '2021-08-05 04:57:16.876656+00', '37', 'panverta', 2, '[{"changed": {"fields": ["last_login"]}}]', 15, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (150, '2021-08-05 17:12:24.648682+00', '39', '39. Article FF', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (151, '2021-08-09 03:20:14.533149+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "sponsor", "object": "Pertamina", "fields": ["organization_logo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (152, '2021-08-09 05:18:12.79322+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "sponsor", "object": "Pertamina", "fields": ["organization_logo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (153, '2021-08-09 05:21:06.803452+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "sponsor", "object": "Pertamina", "fields": ["organization_logo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (154, '2021-08-09 05:35:05.735109+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "sponsor", "object": "Pertamina", "fields": ["organization_logo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (155, '2021-08-10 21:25:36.740237+00', '2', 'bucket of coders', 1, '[{"added": {}}]', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (157, '2021-09-03 04:54:26.926272+00', '7', 'demo', 1, '[{"added": {}}]', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (158, '2021-09-03 14:29:50.491653+00', '4', 'PT Angel Langgeng', 3, '', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (159, '2021-09-03 14:30:34.040836+00', '1', 'bucket of coders', 3, '', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (160, '2021-09-03 14:33:33.017948+00', '3', 'cempaka foundation', 3, '', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (161, '2021-09-03 14:39:42.036275+00', '1', 'Landing_page object (1)', 2, '[{"added": {"name": "sponsor", "object": "PT easterntex"}}, {"added": {"name": "sponsor", "object": "PT Coats Rejo Indonesia"}}, {"added": {"name": "sponsor", "object": "PT panverta Cakrakencana"}}, {"added": {"name": "sponsor", "object": "PT CS2 Pola Sehat"}}, {"added": {"name": "sponsor", "object": "PT agel langgeng"}}, {"changed": {"name": "sponsor", "object": "PT Mitra Alam Segar", "fields": ["organization_name", "organization_logo"]}}, {"changed": {"name": "sponsor", "object": "PT Varia Niaga Nusantara", "fields": ["organization_name", "organization_logo"]}}, {"changed": {"name": "sponsor", "object": "PT Akasha Wira International", "fields": ["organization_name", "organization_logo"]}}, {"changed": {"name": "user_review", "object": "3. people 2", "fields": ["user_review"]}}, {"changed": {"name": "user_review", "object": "4. bucket", "fields": ["user_review"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (162, '2021-09-03 14:47:45.982502+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["history", "history_image", "visi_misi_image"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (163, '2021-09-03 14:51:21.474054+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["history_image", "strategy_and_program_image"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (164, '2021-09-03 14:54:22.326008+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"fields": ["history_image"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (165, '2021-09-03 14:58:52.545569+00', '1', 'Landing_page object (1)', 2, '[{"changed": {"name": "management_team", "object": "6. Sarifudin Lathif", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "7. Didik Wahyudi", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "8. Kusnul Arifin", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "9. Mawan Kustono", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "39. Aripin", "fields": ["staff_photo"]}}, {"changed": {"name": "management_team", "object": "40. Riki Siswanto", "fields": ["staff_photo"]}}]', 4, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (166, '2021-09-03 15:01:11.796274+00', '39', '39. Article FF', 3, '', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (167, '2021-09-03 15:01:59.664952+00', '6', '6. lorem ipsum 6', 3, '', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (168, '2021-09-03 15:02:55.892969+00', '5', '5. lorem ipsum 5', 3, '', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (169, '2021-09-03 15:03:21.967426+00', '4', '4. lorem ipsum 4', 3, '', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (170, '2021-09-03 15:04:01.194189+00', '3', '3. lorem ipsum 3', 3, '', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (171, '2021-09-03 15:08:28.202531+00', '2', '2. Team Cempaka', 2, '[{"changed": {"fields": ["banner"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (172, '2021-09-03 15:10:13.053272+00', '1', '1. Kick Off Konservasi Hutan dan Daerah Tangkapan Air', 2, '[{"changed": {"fields": ["banner", "meta_description"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (173, '2021-09-03 15:12:01.425014+00', '2', '2. Team Cempaka', 2, '[{"changed": {"fields": ["banner"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (174, '2021-09-03 15:13:43.814403+00', '1', '1. Kick Off Konservasi Hutan dan Daerah Tangkapan Air', 2, '[{"changed": {"fields": ["meta_description"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (175, '2021-09-03 15:14:30.002171+00', '2', '2. Team Cempaka', 2, '[{"changed": {"fields": ["meta_description"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (176, '2021-09-04 05:58:41.605921+00', '2', 'bucket of coders 2', 3, '', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (177, '2021-09-04 06:00:28.044271+00', '8', 'user', 1, '[{"added": {}}]', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (178, '2021-09-04 06:47:59.341106+00', '4', 'admin', 3, '', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (179, '2021-09-04 06:48:41.277751+00', '5', 'fikratest', 3, '', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (180, '2021-09-04 06:49:19.919303+00', '3', 'adminadmin', 3, '', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (181, '2021-09-04 06:50:37.845487+00', '6', 'fikra', 3, '', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (182, '2021-09-04 06:55:32.017221+00', '7', 'demo', 3, '', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (183, '2021-09-04 06:56:10.419469+00', '8', 'user', 3, '', 53, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (184, '2021-09-04 07:08:59.406676+00', '38', 'admin', 1, '[{"added": {}}]', 18, 1);
INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES (185, '2021-09-04 07:09:39.523895+00', '39', 'admin', 1, '[{"added": {}}]', 18, 1);


--
-- TOC entry 4293 (class 0 OID 11045965)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (1, 'dashboard', 'userdashboardmodule');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (2, 'jet', 'bookmark');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (3, 'jet', 'pinnedapplication');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (4, 'landingpage', 'landing_page');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (5, 'landingpage', 'sponsor');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (6, 'landingpage', 'user_review');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (7, 'landingpage', 'management_team');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (8, 'login', 'login_page');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (9, 'article', 'add_article');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (10, 'program_activity', 'program_activity');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (11, 'mapmanager', 'posisipohon');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (12, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (13, 'auth', 'permission');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (14, 'auth', 'group');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (15, 'auth', 'user');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (16, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (17, 'sessions', 'session');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (18, 'sponsor_dashboard', 'user_sponsor');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (19, 'sponsor_dashboard', 'sponsor_galery');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (20, 'landingpage', 'question_answer');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (21, 'landingpage', 'faq');
INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES (53, 'login', 'users');


--
-- TOC entry 4291 (class 0 OID 11045954)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (1, 'contenttypes', '0001_initial', '2021-05-29 06:37:04.329204+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (2, 'auth', '0001_initial', '2021-05-29 06:37:04.607114+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (3, 'admin', '0001_initial', '2021-05-29 06:37:04.811862+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-05-29 06:37:04.911412+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-29 06:37:04.963017+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (6, 'article', '0001_initial', '2021-05-29 06:37:04.992844+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (7, 'article', '0002_auto_20210502_0040', '2021-05-29 06:37:05.025789+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (8, 'article', '0003_add_article_banner', '2021-05-29 06:37:05.050977+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (9, 'article', '0004_add_article_category', '2021-05-29 06:37:05.07786+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (10, 'article', '0005_add_article_meta_description', '2021-05-29 06:37:05.101743+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (11, 'contenttypes', '0002_remove_content_type_name', '2021-05-29 06:37:05.221094+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (12, 'auth', '0002_alter_permission_name_max_length', '2021-05-29 06:37:05.246814+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (13, 'auth', '0003_alter_user_email_max_length', '2021-05-29 06:37:05.292567+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (14, 'auth', '0004_alter_user_username_opts', '2021-05-29 06:37:05.33606+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (15, 'auth', '0005_alter_user_last_login_null', '2021-05-29 06:37:05.379636+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (16, 'auth', '0006_require_contenttypes_0002', '2021-05-29 06:37:05.410957+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (17, 'auth', '0007_alter_validators_add_error_messages', '2021-05-29 06:37:05.464755+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (18, 'auth', '0008_alter_user_username_max_length', '2021-05-29 06:37:05.512855+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (19, 'auth', '0009_alter_user_last_name_max_length', '2021-05-29 06:37:05.5569+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (20, 'auth', '0010_alter_group_name_max_length', '2021-05-29 06:37:05.594295+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (21, 'auth', '0011_update_proxy_permissions', '2021-05-29 06:37:05.652941+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (22, 'dashboard', '0001_initial', '2021-05-29 06:37:05.685363+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (23, 'jet', '0001_initial', '2021-05-29 06:37:05.755959+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (24, 'jet', '0002_delete_userdashboardmodule', '2021-05-29 06:37:05.80149+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (25, 'landingpage', '0001_initial', '2021-05-29 06:37:05.8378+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (26, 'landingpage', '0002_auto_20210410_1257', '2021-05-29 06:37:05.861428+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (27, 'landingpage', '0003_auto_20210410_1310', '2021-05-29 06:37:05.946017+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (28, 'landingpage', '0004_landing_page_name', '2021-05-29 06:37:05.995296+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (29, 'landingpage', '0005_auto_20210410_1441', '2021-05-29 06:37:06.031383+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (30, 'landingpage', '0006_auto_20210410_1456', '2021-05-29 06:37:06.083167+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (31, 'landingpage', '0007_sponsor_logo', '2021-05-29 06:37:06.119279+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (32, 'landingpage', '0008_auto_20210410_1531', '2021-05-29 06:37:06.261333+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (33, 'landingpage', '0009_auto_20210410_1541', '2021-05-29 06:37:06.417569+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (34, 'landingpage', '0010_management_team_user_review', '2021-05-29 06:37:06.601182+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (35, 'landingpage', '0011_auto_20210526_0307', '2021-05-29 06:37:06.701498+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (36, 'landingpage', '0012_auto_20210526_0308', '2021-05-29 06:37:06.83697+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (37, 'landingpage', '0013_auto_20210526_0320', '2021-05-29 06:37:07.065874+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (38, 'landingpage', '0014_auto_20210526_0325', '2021-05-29 06:37:07.259943+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (39, 'landingpage', '0015_auto_20210526_0326', '2021-05-29 06:37:07.479401+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (40, 'landingpage', '0016_auto_20210526_0335', '2021-05-29 06:37:07.709084+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (41, 'login', '0001_initial', '2021-05-29 06:37:07.732112+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (42, 'login', '0002_auto_20210501_1514', '2021-05-29 06:37:07.749765+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (43, 'login', '0003_auto_20210502_0038', '2021-05-29 06:37:07.802962+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (44, 'mapmanager', '0001_initial', '2021-05-29 06:37:07.848548+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (45, 'mapmanager', '0002_auto_20210512_2100', '2021-05-29 06:37:08.033579+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (46, 'mapmanager', '0003_auto_20210512_2105', '2021-05-29 06:37:08.251153+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (47, 'program_activity', '0001_initial', '2021-05-29 06:37:08.377008+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (48, 'sessions', '0001_initial', '2021-05-29 06:37:08.467797+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (49, 'program_activity', '0002_auto_20210601_1720', '2021-06-01 17:20:45.815539+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (50, 'sponsor_dashboard', '0001_initial', '2021-06-02 11:43:15.12086+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (51, 'sponsor_dashboard', '0002_auto_20210603_2207', '2021-06-03 15:07:11.58687+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (52, 'landingpage', '0017_faq_question_answer', '2021-06-04 20:12:58.724339+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (53, 'landingpage', '0018_faq_date', '2021-06-04 20:19:26.063069+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (54, 'landingpage', '0019_auto_20210605_1517', '2021-06-05 08:17:11.265462+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (55, 'landingpage', '0020_question_answer_date', '2021-06-05 08:20:35.314483+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (56, 'landingpage', '0021_auto_20210605_1541', '2021-06-05 08:41:54.486966+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (57, 'landingpage', '0021_auto_20210605_1550', '2021-06-05 08:50:42.177873+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (58, 'sponsor_dashboard', '0003_auto_20210606_1248', '2021-06-06 05:48:41.260666+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (59, 'auth', '0012_auto_20210606_1432', '2021-06-06 07:32:14.577404+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (60, 'sponsor_dashboard', '0004_auto_20210606_1525', '2021-06-06 08:25:19.532278+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (61, 'sponsor_dashboard', '0005_auto_20210606_1614', '2021-06-06 09:14:40.022959+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (62, 'auth', '0013_auto_20210606_1615', '2021-06-06 09:15:57.648677+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (94, 'landingpage', '0022_auto_20210809_0332', '2021-08-09 03:32:50.477146+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (95, 'login', '0004_users', '2021-08-10 20:40:04.14549+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (96, 'login', '0005_auto_20210810_2105', '2021-08-10 21:06:46.799447+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (97, 'login', '0006_auto_20210810_2106', '2021-08-10 21:06:48.824413+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (98, 'login', '0007_auto_20210810_2110', '2021-08-10 21:10:23.788391+00');
INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES (99, 'login', '0008_remove_users_profile_image', '2021-08-10 21:22:02.530903+00');


--
-- TOC entry 4330 (class 0 OID 11046288)
-- Dependencies: 240
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('6vz37yiyr28jbjefeu2hlpnnc27ii36z', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-15 16:48:37.193697+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('ykfme38yulmwviex6napo87j8zgsf3be', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-15 18:21:37.177339+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('bmr7qdy1ynrsnm3tkrtlyeh9xiquyma6', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-16 13:07:39.167188+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('tfaz61ldid0vicb1flthy9teqm4fgu2l', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-17 11:51:27.846926+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('5a2z5lqxlmapn1u5aqc7cxgjh88avr6a', 'Y2RlNTFkMWViMDU3YTU4ZDA2YmM0OWZhMzM1MmU0MjYwZDU4ZThjZjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMTViOWY5ZGE4N2NlZjFlMDRlZWQ3YjVlZWNlNWE5MmRjZGE2M2JjIn0=', '2021-06-20 07:10:57.571775+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('abvmn3sgpv9ebleh3jgprwm49q4fnbn5', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-17 13:32:59.578109+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('3ki187vixf4kofp7lp8o8bw6zkpju9n8', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-20 09:12:55.291388+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('fxiur9o8nj79oq0dmm8hncg8mwz8p31y', 'Y2RlNTFkMWViMDU3YTU4ZDA2YmM0OWZhMzM1MmU0MjYwZDU4ZThjZjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMTViOWY5ZGE4N2NlZjFlMDRlZWQ3YjVlZWNlNWE5MmRjZGE2M2JjIn0=', '2021-06-20 09:25:14.383016+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('698j1bv3vkd2gladli5w36hkqutm3h99', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-20 17:43:31.933839+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('nexhac4amva7izyf2sxiltg23kbzli7r', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-06-18 03:26:09.903676+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('3l91yhcicijh246g4ss9oyrhjrz3wbf1', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-07-06 04:14:06.440942+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('rx0mt19b86gxjmhf2itur8w3n49cgunh', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-07-06 04:46:49.403455+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('p3gjrpqzq8mlsg81pmtew3zlikdfiehq', 'Y2VmY2U5MWQxMzEwNjUwNDM5MDBmOTdkMjVmY2ZlYjVkNDk0NjczNTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmEwN2U1YWI4ZjhiNmRlZTNlYTAzMDE0NDdhYzg4MjI2MzQ2Mzg2In0=', '2021-06-20 05:08:53.232824+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('1x737gpn4y45aphrs3trxdltgnabmwu1', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-07-06 06:52:54.971998+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('lopi38rtcqdmb4bwk1u16yucur21zdi6', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-07-07 09:18:32.20382+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('vkcxe75btakxuw11m8zltdib89xjj9a4', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-08-04 04:37:22.445159+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('jsklwcdentg5p9t5w4yv85njrrmmvvq1', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-08-11 06:06:50.089236+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('3bgrmi70ipxrbiapaextg7w5mjlq1jif', 'ZWU0ZGFkNzRmMzFlOTMyYjM2OWE0NmMwMGMwYWU1MTAyNmJiMzk0Mjp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmM0NWY0MzFmYmRkZTRkZDFhNWJmN2I1ZGUwYTJlMTI4Njc5OGQ5ZSJ9', '2021-08-19 04:57:06.100672+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('c5pyuln6uwl2dagshf8yx0lc0zqhnk7r', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-08-19 17:09:17.661513+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('fjfy3i3f17u4pm3qxfwpxqomxletkov9', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-08-23 01:45:23.846123+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('1ft9d7xv2r62mizufmkq0wb7bjmj70je', 'ZWU0ZGFkNzRmMzFlOTMyYjM2OWE0NmMwMGMwYWU1MTAyNmJiMzk0Mjp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmM0NWY0MzFmYmRkZTRkZDFhNWJmN2I1ZGUwYTJlMTI4Njc5OGQ5ZSJ9', '2021-08-24 10:15:35.524279+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('x7iz3x7ft912l8kc6c1y3vlsesrie52q', 'MGJmMDg5ZDc1ODM0YTViZDZlMzAwZDc4MzMyYjM5ZTk0YjUyNjdiYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNzJlOWE2MGY5MmIzOGE0Nzk4ZmU0OTBkZDc5NjY4OTYxMTA4ZGIyIn0=', '2021-08-24 21:28:19.183341+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('unpz4bblavo8emwqcajqcih75mvo2cv8', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-08-24 22:32:47.768606+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('d9wmmixkartyi676rh8cemkrh5espdvu', 'NmVhNDdhNDUzMTQ4YjQ2NzVjZGRkMWZjYzI3YmMzZmE3Nzk2NGYyZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGRjZGU2MTg0MDk3NjQwMWM2NDRmY2VhYWRlZDlhNTdjYTk5N2RmIn0=', '2021-08-24 02:46:21.916834+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('nsm1n6gpfz6ie2fufmg1xcgxmw5p6wji', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-16 02:31:47.455046+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('z0yhrx072inw2ted99mkbs1rj4m29jh2', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-16 03:00:44.702224+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('6eaol90ksfeb305mqscpk7z1p5t8as89', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-17 03:18:05.111211+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('2cojj7rtftmh8acsla8u42xunvpssw96', 'YjcwM2I5MzBhMTQxYjkxOTE3YzFjNjVlOTM0YjMwMGMwNDRlMWJhNzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YjcxYTVmNjAyNjhmYzE3NDBlOGI3YTM5OTczOGI2MWFkMWE1Y2MyIn0=', '2021-09-17 04:55:09.047827+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('oyw4pqieozwvwhd5i1o5ohoa281yhiyn', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-18 06:12:59.619649+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('bq1ioz4cfw0vin447gr56p973rnpfney', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-18 06:34:40.778709+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('y061w2lzu2dnovxn2pen9s3blbdngjff', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-18 06:37:16.660534+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('gcbbqlqpoq25b8a8gx37jloyzz1p6kvm', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-18 06:48:03.120387+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('i4sk7a2vq3w8lmtos4hdge5tq6ukvjbc', 'MjNmNzY5MGNiMDg0NzFiNDBmNDI1YjEwZGMzOWQxYWI3NGMzMzMzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZGZiMjQyYzc3OTYwMTAxZmQxNDcyNDgwMmY3YzlhNWE4MWIzNDYzIn0=', '2021-09-18 07:23:48.986575+00');
INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES ('ikr8z8z8yvzskfaco0fmxb34k9wt083t', 'MGJmMDg5ZDc1ODM0YTViZDZlMzAwZDc4MzMyYjM5ZTk0YjUyNjdiYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNzJlOWE2MGY5MmIzOGE0Nzk4ZmU0OTBkZDc5NjY4OTYxMTA4ZGIyIn0=', '2021-09-18 08:26:16.25943+00');


--
-- TOC entry 4313 (class 0 OID 11046139)
-- Dependencies: 223
-- Data for Name: jet_bookmark; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4315 (class 0 OID 11046148)
-- Dependencies: 225
-- Data for Name: jet_pinnedapplication; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4317 (class 0 OID 11046170)
-- Dependencies: 227
-- Data for Name: landingpage_landing_page; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."landingpage_landing_page" ("id", "history", "visi_misi_and_core_value", "strategy_and_program", "history_image", "strategy_and_program_image", "visi_misi_image", "name", "office_address", "office_email", "office_location_map", "office_phone_number", "bank_account_owner", "bank_name", "no_rek") VALUES (1, '<p>Dengan adanya krisis sosial ekonomi masyarakat, khususnya masyarakat desa hutan yang merupaka komunitas dan memberikan dampak langsung terhadap kelestarian hutan dan konservasi, yang dalam kenyataanya masyarakat semakin cenderung masih memandang hutan dari paradigma ekonomi sesaat yang lebih mementingkan kayu sebagai hasil utama dari hutan. Pentingnya merubah paradigma tersebut dikarenakan hutan tidak hanya memiliki fungsi ekonomi dan&nbsp;ekologi yang sampai saat ini belum di sadari oleh sebagian besar masyarakat seperti hutan sebagai penyedia sumber mata air, hutan sebagai penyedia udara bersih.</p>

<p>Untuk memecahkan persoalan tersebut di atas, pentingnya membuat media penyadaran sekaligus usaha nyata untuk memecahkan persoalan tersebut di atas serta kepentingan ekologi, sosial dan ekonomi harus berjalan bersinergi sehingga terjadi kehidupan masyarakat yang berkelanjutan.</p>

<p>1. pengelolaan hutan yang kolaboratif</p>

<p>2. sarana pendidikan alternatif untuk peningkatan ekonomi dan pelestarian alam</p>

<p>3. adanya ruang interaksi yang nyata antara alam dan manusia</p>', '<div><strong>Visi :&nbsp;</strong>Terciptanya masyarakat mandiri secara ekonomi dan berbudaya lingkungan</div>

<div><strong>Misi : </strong>- Ekonomi berbasis lingkungan dan masyarakat<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&nbsp;Melestarikan hutan dan sumber daya air<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Keterlibatan sosial masyarakat untuk pengembangan ekonomi</div>

<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dan kelestarian hutan dengan konsep agroforestry</div>

<div>
<hr />
<p>Berdiri atas dasar kepedulian dengan kondisi lingkungan/hutan di kawasan Gunung Arjuna yang mengalami kerusakan hutan, mengakibatkan ketersediaan sumber air bersih menurun dan tidak bisa mengimbangi kebutuhan masyarakat akan air bersih menjadi fokus kegiatan Cempaka Foundation&nbsp;dalam merestorasi sumber - sumber mata air yang ada di kawasan Gunung Arjuna. Selain itu, tingginya kebudayaan dan kesenian di kawasan Gunung Arjuna, menjadikan Cempaka Foundation&nbsp;sebagai tempat belajar dan pengenalan berbagai macam budaya warisan leluhur&nbsp;</p>
</div>', '<p><strong>Cempaka Foundation&nbsp;</strong>menekankan pada pendampingan dan peningkatan ekonomi masyarakat Desa melalui program - program bamlmlancklsanclksacnksanc</p>', 'landing_page_image/akudui-OhMfc8ADMd0-unsplash_LRXuzvK.jpg', 'landing_page_image/ken-shono-S35PpgCIjis-unsplash.jpg', 'landing_page_image/steven-kamenar-MMJx78V7xS8-unsplash_sy8nWhM.jpg', 'Edit Landing Page', 'Jl. Indrokilo Km 10 RT 07 RW 02 Dsn. Gamoh Ds. Dayurejo Kec. Prigen - Pasuruan', 'info@cempakafoundation.org', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.4361151457524!2d112.6541809141764!3d-7.743479478909673!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7d66585aa3fdb%3A0xaf4ed93d101d1b47!2sYayasan%20Cempaka%20Education%20Center!5e0!3m2!1sen!2sid!4v1622271069309!5m2!1sen!2sid', '+6285852021907', 'Yayasan Cempaka Education Center', 'Mandiri', 144);


--
-- TOC entry 4323 (class 0 OID 11046210)
-- Dependencies: 233
-- Data for Name: landingpage_management_team; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."landingpage_management_team" ("id", "staff_name", "staff_position", "staff_photo", "post_id", "staff_social_facebook", "staff_social_instagram", "staff_social_linkedin", "staff_social_twitter") VALUES (6, 'Sarifudin Lathif', 'Direktur', 'staff_photos/travis-blessing-Kremnfgk3n0-unsplash.jpg', 1, '#', '#', '#', '#');
INSERT INTO "public"."landingpage_management_team" ("id", "staff_name", "staff_position", "staff_photo", "post_id", "staff_social_facebook", "staff_social_instagram", "staff_social_linkedin", "staff_social_twitter") VALUES (7, 'Didik Wahyudi', 'Sekretaris', 'staff_photos/travis-blessing-Kremnfgk3n0-unsplash_yaK1m1B.jpg', 1, '#', '#', '#', '#');
INSERT INTO "public"."landingpage_management_team" ("id", "staff_name", "staff_position", "staff_photo", "post_id", "staff_social_facebook", "staff_social_instagram", "staff_social_linkedin", "staff_social_twitter") VALUES (8, 'Kusnul Arifin', 'Bendahara', 'staff_photos/travis-blessing-Kremnfgk3n0-unsplash_OQVVh8Y.jpg', 1, '#', '#', '#', '#');
INSERT INTO "public"."landingpage_management_team" ("id", "staff_name", "staff_position", "staff_photo", "post_id", "staff_social_facebook", "staff_social_instagram", "staff_social_linkedin", "staff_social_twitter") VALUES (9, 'Mawan Kustono', 'Pembina', 'staff_photos/travis-blessing-Kremnfgk3n0-unsplash_YXRmIwk.jpg', 1, '#', '#', '#', '#');
INSERT INTO "public"."landingpage_management_team" ("id", "staff_name", "staff_position", "staff_photo", "post_id", "staff_social_facebook", "staff_social_instagram", "staff_social_linkedin", "staff_social_twitter") VALUES (39, 'Aripin', 'Dewan Pengawas', 'staff_photos/travis-blessing-Kremnfgk3n0-unsplash_l4zXjK6.jpg', 1, '#', '#', '#', '#');
INSERT INTO "public"."landingpage_management_team" ("id", "staff_name", "staff_position", "staff_photo", "post_id", "staff_social_facebook", "staff_social_instagram", "staff_social_linkedin", "staff_social_twitter") VALUES (40, 'Riki Siswanto', 'Dewan Pengawas', 'staff_photos/travis-blessing-Kremnfgk3n0-unsplash_yxgamaE.jpg', 1, '#', '#', '#', '#');


--
-- TOC entry 4336 (class 0 OID 18328302)
-- Dependencies: 246
-- Data for Name: landingpage_question_answer; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."landingpage_question_answer" ("id", "question", "answer", "date") VALUES (1, 'Siapa Cempaka Foundation?', '<p>cempaka foundation adalah...</p>', '2021-06-05');
INSERT INTO "public"."landingpage_question_answer" ("id", "question", "answer", "date") VALUES (3, 'Visi & Misi', '<p>Visi &amp; Misi kami adalah...</p>', '2021-06-05');
INSERT INTO "public"."landingpage_question_answer" ("id", "question", "answer", "date") VALUES (4, 'Siapa pemimpin Cempaka Foundation?', '<p>Pemimpin Kami adalah...</p>', '2021-06-05');


--
-- TOC entry 4319 (class 0 OID 11046185)
-- Dependencies: 229
-- Data for Name: landingpage_sponsor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (6, 'PT Mitra Alam Segar', 'sponsor_logo/1._PT_Mitra_Alam_Segar.png', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (7, 'PT Varia Niaga Nusantara', 'sponsor_logo/2._PT_Varia_Niaga_Nusantara.jpg', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (8, 'PT Akasha Wira International', 'sponsor_logo/3._PT_Akasha_Wira_International.png', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (40, 'PT easterntex', 'sponsor_logo/4._PT_easterntex.jpg', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (41, 'PT Coats Rejo Indonesia', 'sponsor_logo/5._PT_Coats_Rejo_Indonesia.jpg', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (42, 'PT panverta Cakrakencana', 'sponsor_logo/6._PT_panverta_Cakrakencana.png', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (43, 'PT CS2 Pola Sehat', 'sponsor_logo/7._PT_CS2_Pola_Sehat.jpg', 1);
INSERT INTO "public"."landingpage_sponsor" ("id", "organization_name", "organization_logo", "post_id") VALUES (44, 'PT agel langgeng', 'sponsor_logo/8._PT_agel_langgeng.png', 1);


--
-- TOC entry 4321 (class 0 OID 11046199)
-- Dependencies: 231
-- Data for Name: landingpage_user_review; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."landingpage_user_review" ("id", "user_name", "user_occupation", "user_review", "post_id") VALUES (1, 'People', 'developer', '<p>good review</p>', 1);
INSERT INTO "public"."landingpage_user_review" ("id", "user_name", "user_occupation", "user_review", "post_id") VALUES (2, 'people', 'developer', '<p>nice website</p>', 1);
INSERT INTO "public"."landingpage_user_review" ("id", "user_name", "user_occupation", "user_review", "post_id") VALUES (3, 'people 2', 'web developer', '<p>ini sangat membantu untuk melestarikan bumi</p>', 1);
INSERT INTO "public"."landingpage_user_review" ("id", "user_name", "user_occupation", "user_review", "post_id") VALUES (4, 'bucket', 'web developer', '<p>lanjutkan</p>', 1);


--
-- TOC entry 4325 (class 0 OID 11046241)
-- Dependencies: 235
-- Data for Name: login_login_page; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."login_login_page" ("id", "body", "name") VALUES (1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Edit Login Page Demo');


--
-- TOC entry 4338 (class 0 OID 89981684)
-- Dependencies: 248
-- Data for Name: login_users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."login_users" ("id", "password", "email", "username", "date_joined", "last_login", "is_admin", "is_active", "is_staff", "is_superuser", "first_name", "last_name") VALUES (1, 'pbkdf2_sha256$150000$m4EsZdmVDoPF$PTEZ5F1jwcQT0Xh2tU7UDfSrdSz+EYswliyQvVbvzXI=', 'admin@admin.com', 'admin', '2021-08-10 20:55:11.292342+00', '2021-09-04 08:25:11.3793+00', true, true, true, true, '', '');
INSERT INTO "public"."login_users" ("id", "password", "email", "username", "date_joined", "last_login", "is_admin", "is_active", "is_staff", "is_superuser", "first_name", "last_name") VALUES (2, 'pbkdf2_sha256$150000$HVtRR5AWcCLf$Btx9/hc7MqsrjXXobTztq0jLOWTHa58suGjRqqhBrBo=', 'bucketofcoders@bucketofcoders.com', 'bucket of coders', '2021-08-10 21:25:36.484506+00', '2021-09-04 08:26:16.016601+00', true, true, true, true, 'bucket of', 'coders');


--
-- TOC entry 4340 (class 0 OID 89982532)
-- Dependencies: 250
-- Data for Name: login_users_groups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4342 (class 0 OID 89982540)
-- Dependencies: 252
-- Data for Name: login_users_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4327 (class 0 OID 11046252)
-- Dependencies: 237
-- Data for Name: mapmanager_posisipohon; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."mapmanager_posisipohon" ("id", "relasi_id", "urlmap") VALUES (41, 37, 'https://www.google.com/maps/d/u/1/viewer?mid=1wCfeo28uM01ivVJAlUJMCUZUUO6XynN6&ll=-7.746093000374897%2C112.64557250000003&z=19');
INSERT INTO "public"."mapmanager_posisipohon" ("id", "relasi_id", "urlmap") VALUES (42, 2, 'https://www.google.com/maps/d/u/0/embed?mid=1EixjMJALd1_2ivizKU4g7_jIbye1nvR5');
INSERT INTO "public"."mapmanager_posisipohon" ("id", "relasi_id", "urlmap") VALUES (1, 1, 'https://www.google.com/maps/d/u/0/embed?mid=1EixjMJALd1_2ivizKU4g7_jIbye1nvR5');


--
-- TOC entry 4329 (class 0 OID 11046276)
-- Dependencies: 239
-- Data for Name: program_activity_program_activity; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."program_activity_program_activity" ("id", "slug", "title", "image", "meta_description", "description", "date_posted", "category") VALUES (1, 'lorem-ipsum', 'lorem ipsum', 'uploads/on_going/ff_x_t1_001.jpg', 'lorem ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2021-06-01 17:50:16.798251+00', 'On Going');
INSERT INTO "public"."program_activity_program_activity" ("id", "slug", "title", "image", "meta_description", "description", "date_posted", "category") VALUES (2, 'caping-gunung-cempaka', 'Caping Gunung', 'uploads/on_going/ff_x_t1_001_Zrl3UyR.jpg', 'lorem ipsum 3', '<p><strong>Caping Gunung</strong> merupakan akronim dari Camping, Ngopi, Guyon dan Merenung. berdasarkan arti akronim tersebut, Caping Gunung adalah kegiatan saling berbagi dan berdiskusi terkait kondisi lingkungan, sosial, ekonomi, kebudayaan atau berbagai macam problema kehidupan.</p>', '2021-07-30 07:27:30.834202+00', 'Latest Project');


--
-- TOC entry 4334 (class 0 OID 13658959)
-- Dependencies: 244
-- Data for Name: sponsor_dashboard_sponsor_galery; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4332 (class 0 OID 13658939)
-- Dependencies: 242
-- Data for Name: sponsor_dashboard_user_sponsor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "public"."sponsor_dashboard_user_sponsor" ("id", "sponsor_name", "sponsor_logo", "sponsor_user_id") VALUES (38, 'admin', 'sponsor_logo/pemasyarakatan.png', 1);
INSERT INTO "public"."sponsor_dashboard_user_sponsor" ("id", "sponsor_name", "sponsor_logo", "sponsor_user_id") VALUES (39, 'admin', 'sponsor_logo/79676932.png', 2);


--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 218
-- Name: article_add_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."article_add_article_id_seq"', 39, true);


--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_group_id_seq"', 33, true);


--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_group_permissions_id_seq"', 1, false);


--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_permission_id_seq"', 113, true);


--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_user_groups_id_seq"', 1, false);


--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_user_id_seq"', 37, true);


--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_user_user_permissions_id_seq"', 1, false);


--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 220
-- Name: dashboard_userdashboardmodule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."dashboard_userdashboardmodule_id_seq"', 68, true);


--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_admin_log_id_seq"', 185, true);


--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_content_type_id_seq"', 53, true);


--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_migrations_id_seq"', 99, true);


--
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 222
-- Name: jet_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."jet_bookmark_id_seq"', 1, false);


--
-- TOC entry 4387 (class 0 OID 0)
-- Dependencies: 224
-- Name: jet_pinnedapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."jet_pinnedapplication_id_seq"', 1, false);


--
-- TOC entry 4388 (class 0 OID 0)
-- Dependencies: 226
-- Name: landingpage_landing_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."landingpage_landing_page_id_seq"', 1, true);


--
-- TOC entry 4389 (class 0 OID 0)
-- Dependencies: 232
-- Name: landingpage_management_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."landingpage_management_team_id_seq"', 40, true);


--
-- TOC entry 4390 (class 0 OID 0)
-- Dependencies: 245
-- Name: landingpage_question_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."landingpage_question_answer_id_seq"', 34, true);


--
-- TOC entry 4391 (class 0 OID 0)
-- Dependencies: 228
-- Name: landingpage_sponsor_logo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."landingpage_sponsor_logo_id_seq"', 44, true);


--
-- TOC entry 4392 (class 0 OID 0)
-- Dependencies: 230
-- Name: landingpage_user_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."landingpage_user_review_id_seq"', 4, true);


--
-- TOC entry 4393 (class 0 OID 0)
-- Dependencies: 234
-- Name: login_login_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."login_login_page_id_seq"', 33, true);


--
-- TOC entry 4394 (class 0 OID 0)
-- Dependencies: 249
-- Name: login_users_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."login_users_groups_id_seq"', 1, false);


--
-- TOC entry 4395 (class 0 OID 0)
-- Dependencies: 247
-- Name: login_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."login_users_id_seq"', 8, true);


--
-- TOC entry 4396 (class 0 OID 0)
-- Dependencies: 251
-- Name: login_users_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."login_users_user_permissions_id_seq"', 1, false);


--
-- TOC entry 4397 (class 0 OID 0)
-- Dependencies: 236
-- Name: mapmanager_posisipohon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."mapmanager_posisipohon_id_seq"', 44, true);


--
-- TOC entry 4398 (class 0 OID 0)
-- Dependencies: 238
-- Name: program_activity_program_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."program_activity_program_activity_id_seq"', 33, true);


--
-- TOC entry 4399 (class 0 OID 0)
-- Dependencies: 243
-- Name: sponsor_dashboard_sponsor_galery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."sponsor_dashboard_sponsor_galery_id_seq"', 36, true);


--
-- TOC entry 4400 (class 0 OID 0)
-- Dependencies: 241
-- Name: sponsor_dashboard_user_sponsor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."sponsor_dashboard_user_sponsor_id_seq"', 39, true);


--
-- TOC entry 4080 (class 2606 OID 11046111)
-- Name: article_add_article article_add_article_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."article_add_article"
    ADD CONSTRAINT "article_add_article_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4049 (class 2606 OID 11046122)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");


--
-- TOC entry 4054 (class 2606 OID 11046045)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");


--
-- TOC entry 4057 (class 2606 OID 11045998)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4051 (class 2606 OID 11045988)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4044 (class 2606 OID 11046031)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");


--
-- TOC entry 4046 (class 2606 OID 11045980)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4065 (class 2606 OID 11046016)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4068 (class 2606 OID 11046060)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");


--
-- TOC entry 4059 (class 2606 OID 11046006)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4071 (class 2606 OID 11046024)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4074 (class 2606 OID 11046074)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");


--
-- TOC entry 4062 (class 2606 OID 11046116)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");


--
-- TOC entry 4084 (class 2606 OID 11046136)
-- Name: dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."dashboard_userdashboardmodule"
    ADD CONSTRAINT "dashboard_userdashboardmodule_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4077 (class 2606 OID 11046088)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4039 (class 2606 OID 11045972)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");


--
-- TOC entry 4041 (class 2606 OID 11045970)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4037 (class 2606 OID 11045962)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4113 (class 2606 OID 11046295)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");


--
-- TOC entry 4086 (class 2606 OID 11046145)
-- Name: jet_bookmark jet_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jet_bookmark"
    ADD CONSTRAINT "jet_bookmark_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4088 (class 2606 OID 11046154)
-- Name: jet_pinnedapplication jet_pinnedapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jet_pinnedapplication"
    ADD CONSTRAINT "jet_pinnedapplication_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4090 (class 2606 OID 11046178)
-- Name: landingpage_landing_page landingpage_landing_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_landing_page"
    ADD CONSTRAINT "landingpage_landing_page_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4098 (class 2606 OID 11046218)
-- Name: landingpage_management_team landingpage_management_team_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_management_team"
    ADD CONSTRAINT "landingpage_management_team_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4123 (class 2606 OID 18328310)
-- Name: landingpage_question_answer landingpage_question_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_question_answer"
    ADD CONSTRAINT "landingpage_question_answer_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4092 (class 2606 OID 11046190)
-- Name: landingpage_sponsor landingpage_sponsor_logo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_sponsor"
    ADD CONSTRAINT "landingpage_sponsor_logo_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4095 (class 2606 OID 11046207)
-- Name: landingpage_user_review landingpage_user_review_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_user_review"
    ADD CONSTRAINT "landingpage_user_review_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4101 (class 2606 OID 11046249)
-- Name: login_login_page login_login_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_login_page"
    ADD CONSTRAINT "login_login_page_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4126 (class 2606 OID 89981694)
-- Name: login_users login_users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users"
    ADD CONSTRAINT "login_users_email_key" UNIQUE ("email");


--
-- TOC entry 4131 (class 2606 OID 89982537)
-- Name: login_users_groups login_users_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_groups"
    ADD CONSTRAINT "login_users_groups_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4134 (class 2606 OID 89982557)
-- Name: login_users_groups login_users_groups_users_id_group_id_41125daf_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_groups"
    ADD CONSTRAINT "login_users_groups_users_id_group_id_41125daf_uniq" UNIQUE ("users_id", "group_id");


--
-- TOC entry 4128 (class 2606 OID 89981692)
-- Name: login_users login_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users"
    ADD CONSTRAINT "login_users_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4136 (class 2606 OID 89982571)
-- Name: login_users_user_permissions login_users_user_permiss_users_id_permission_id_7111a68b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_user_permissions"
    ADD CONSTRAINT "login_users_user_permiss_users_id_permission_id_7111a68b_uniq" UNIQUE ("users_id", "permission_id");


--
-- TOC entry 4139 (class 2606 OID 89982545)
-- Name: login_users_user_permissions login_users_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_user_permissions"
    ADD CONSTRAINT "login_users_user_permissions_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4103 (class 2606 OID 11046257)
-- Name: mapmanager_posisipohon mapmanager_posisipohon_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."mapmanager_posisipohon"
    ADD CONSTRAINT "mapmanager_posisipohon_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4105 (class 2606 OID 11046259)
-- Name: mapmanager_posisipohon mapmanager_posisipohon_relasi_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."mapmanager_posisipohon"
    ADD CONSTRAINT "mapmanager_posisipohon_relasi_id_key" UNIQUE ("relasi_id");


--
-- TOC entry 4107 (class 2606 OID 11046284)
-- Name: program_activity_program_activity program_activity_program_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."program_activity_program_activity"
    ADD CONSTRAINT "program_activity_program_activity_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4110 (class 2606 OID 11046286)
-- Name: program_activity_program_activity program_activity_program_activity_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."program_activity_program_activity"
    ADD CONSTRAINT "program_activity_program_activity_slug_key" UNIQUE ("slug");


--
-- TOC entry 4120 (class 2606 OID 13658964)
-- Name: sponsor_dashboard_sponsor_galery sponsor_dashboard_sponsor_galery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_sponsor_galery"
    ADD CONSTRAINT "sponsor_dashboard_sponsor_galery_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4116 (class 2606 OID 13658950)
-- Name: sponsor_dashboard_user_sponsor sponsor_dashboard_user_sponsor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_user_sponsor"
    ADD CONSTRAINT "sponsor_dashboard_user_sponsor_pkey" PRIMARY KEY ("id");


--
-- TOC entry 4118 (class 2606 OID 13658954)
-- Name: sponsor_dashboard_user_sponsor sponsor_dashboard_user_sponsor_sponsor_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_user_sponsor"
    ADD CONSTRAINT "sponsor_dashboard_user_sponsor_sponsor_user_id_key" UNIQUE ("sponsor_user_id");


--
-- TOC entry 4081 (class 1259 OID 11046112)
-- Name: article_add_article_slug_08c1e4bf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "article_add_article_slug_08c1e4bf" ON "public"."article_add_article" USING "btree" ("slug");


--
-- TOC entry 4082 (class 1259 OID 11046113)
-- Name: article_add_article_slug_08c1e4bf_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "article_add_article_slug_08c1e4bf_like" ON "public"."article_add_article" USING "btree" ("slug" "varchar_pattern_ops");


--
-- TOC entry 4047 (class 1259 OID 11046123)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING "btree" ("name" "varchar_pattern_ops");


--
-- TOC entry 4052 (class 1259 OID 11046046)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING "btree" ("group_id");


--
-- TOC entry 4055 (class 1259 OID 11046047)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING "btree" ("permission_id");


--
-- TOC entry 4042 (class 1259 OID 11046032)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING "btree" ("content_type_id");


--
-- TOC entry 4063 (class 1259 OID 11046062)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING "btree" ("group_id");


--
-- TOC entry 4066 (class 1259 OID 11046061)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING "btree" ("user_id");


--
-- TOC entry 4069 (class 1259 OID 11046076)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING "btree" ("permission_id");


--
-- TOC entry 4072 (class 1259 OID 11046075)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING "btree" ("user_id");


--
-- TOC entry 4060 (class 1259 OID 11046117)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING "btree" ("username" "varchar_pattern_ops");


--
-- TOC entry 4075 (class 1259 OID 11046099)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING "btree" ("content_type_id");


--
-- TOC entry 4078 (class 1259 OID 11046100)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING "btree" ("user_id");


--
-- TOC entry 4111 (class 1259 OID 11046297)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING "btree" ("expire_date");


--
-- TOC entry 4114 (class 1259 OID 11046296)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING "btree" ("session_key" "varchar_pattern_ops");


--
-- TOC entry 4099 (class 1259 OID 11046230)
-- Name: landingpage_management_team_post_id_518b6f04; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "landingpage_management_team_post_id_518b6f04" ON "public"."landingpage_management_team" USING "btree" ("post_id");


--
-- TOC entry 4093 (class 1259 OID 11046196)
-- Name: landingpage_sponsor_logo_post_id_e5d7ccd1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "landingpage_sponsor_logo_post_id_e5d7ccd1" ON "public"."landingpage_sponsor" USING "btree" ("post_id");


--
-- TOC entry 4096 (class 1259 OID 11046224)
-- Name: landingpage_user_review_post_id_d5eb2d46; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "landingpage_user_review_post_id_d5eb2d46" ON "public"."landingpage_user_review" USING "btree" ("post_id");


--
-- TOC entry 4124 (class 1259 OID 89981697)
-- Name: login_users_email_a132952a_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "login_users_email_a132952a_like" ON "public"."login_users" USING "btree" ("email" "varchar_pattern_ops");


--
-- TOC entry 4129 (class 1259 OID 89982559)
-- Name: login_users_groups_group_id_31de3175; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "login_users_groups_group_id_31de3175" ON "public"."login_users_groups" USING "btree" ("group_id");


--
-- TOC entry 4132 (class 1259 OID 89982558)
-- Name: login_users_groups_users_id_07db2fc1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "login_users_groups_users_id_07db2fc1" ON "public"."login_users_groups" USING "btree" ("users_id");


--
-- TOC entry 4137 (class 1259 OID 89982573)
-- Name: login_users_user_permissions_permission_id_07478200; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "login_users_user_permissions_permission_id_07478200" ON "public"."login_users_user_permissions" USING "btree" ("permission_id");


--
-- TOC entry 4140 (class 1259 OID 89982572)
-- Name: login_users_user_permissions_users_id_9ffa4195; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "login_users_user_permissions_users_id_9ffa4195" ON "public"."login_users_user_permissions" USING "btree" ("users_id");


--
-- TOC entry 4108 (class 1259 OID 11046287)
-- Name: program_activity_program_activity_slug_ed3701be_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "program_activity_program_activity_slug_ed3701be_like" ON "public"."program_activity_program_activity" USING "btree" ("slug" "varchar_pattern_ops");


--
-- TOC entry 4121 (class 1259 OID 13658984)
-- Name: sponsor_dashboard_sponsor_galery_post_id_40753e86; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "sponsor_dashboard_sponsor_galery_post_id_40753e86" ON "public"."sponsor_dashboard_sponsor_galery" USING "btree" ("post_id");


--
-- TOC entry 4143 (class 2606 OID 11046039)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4142 (class 2606 OID 11046034)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4141 (class 2606 OID 11046025)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4145 (class 2606 OID 11046054)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4144 (class 2606 OID 11046049)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4147 (class 2606 OID 11046068)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4146 (class 2606 OID 11046063)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4148 (class 2606 OID 11046089)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4149 (class 2606 OID 11046094)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4152 (class 2606 OID 11046225)
-- Name: landingpage_management_team landingpage_manageme_post_id_518b6f04_fk_landingpa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_management_team"
    ADD CONSTRAINT "landingpage_manageme_post_id_518b6f04_fk_landingpa" FOREIGN KEY ("post_id") REFERENCES "public"."landingpage_landing_page"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4150 (class 2606 OID 11046191)
-- Name: landingpage_sponsor landingpage_sponsor__post_id_e5d7ccd1_fk_landingpa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_sponsor"
    ADD CONSTRAINT "landingpage_sponsor__post_id_e5d7ccd1_fk_landingpa" FOREIGN KEY ("post_id") REFERENCES "public"."landingpage_landing_page"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4151 (class 2606 OID 11046219)
-- Name: landingpage_user_review landingpage_user_rev_post_id_d5eb2d46_fk_landingpa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."landingpage_user_review"
    ADD CONSTRAINT "landingpage_user_rev_post_id_d5eb2d46_fk_landingpa" FOREIGN KEY ("post_id") REFERENCES "public"."landingpage_landing_page"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4157 (class 2606 OID 89982551)
-- Name: login_users_groups login_users_groups_group_id_31de3175_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_groups"
    ADD CONSTRAINT "login_users_groups_group_id_31de3175_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4156 (class 2606 OID 89982546)
-- Name: login_users_groups login_users_groups_users_id_07db2fc1_fk_login_users_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_groups"
    ADD CONSTRAINT "login_users_groups_users_id_07db2fc1_fk_login_users_id" FOREIGN KEY ("users_id") REFERENCES "public"."login_users"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4159 (class 2606 OID 89982565)
-- Name: login_users_user_permissions login_users_user_per_permission_id_07478200_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_user_permissions"
    ADD CONSTRAINT "login_users_user_per_permission_id_07478200_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4158 (class 2606 OID 89982560)
-- Name: login_users_user_permissions login_users_user_per_users_id_9ffa4195_fk_login_use; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."login_users_user_permissions"
    ADD CONSTRAINT "login_users_user_per_users_id_9ffa4195_fk_login_use" FOREIGN KEY ("users_id") REFERENCES "public"."login_users"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4153 (class 2606 OID 11046269)
-- Name: mapmanager_posisipohon mapmanager_posisipohon_relasi_id_c0548404_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."mapmanager_posisipohon"
    ADD CONSTRAINT "mapmanager_posisipohon_relasi_id_c0548404_fk_auth_user_id" FOREIGN KEY ("relasi_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4155 (class 2606 OID 13658978)
-- Name: sponsor_dashboard_sponsor_galery sponsor_dashboard_sp_post_id_40753e86_fk_sponsor_d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_sponsor_galery"
    ADD CONSTRAINT "sponsor_dashboard_sp_post_id_40753e86_fk_sponsor_d" FOREIGN KEY ("post_id") REFERENCES "public"."sponsor_dashboard_user_sponsor"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4154 (class 2606 OID 20072134)
-- Name: sponsor_dashboard_user_sponsor sponsor_dashboard_us_sponsor_user_id_eef4f260_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sponsor_dashboard_user_sponsor"
    ADD CONSTRAINT "sponsor_dashboard_us_sponsor_user_id_eef4f260_fk_auth_user" FOREIGN KEY ("sponsor_user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-09-05 12:27:34

--
-- PostgreSQL database dump complete
--
