--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: cs280
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO cs280;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO cs280;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO cs280;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_group_id_seq', 3, true);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO cs280;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO cs280;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 123, true);


--
-- Name: auth_message; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_message (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.auth_message OWNER TO cs280;

--
-- Name: auth_message_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_message_id_seq OWNER TO cs280;

--
-- Name: auth_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_message_id_seq OWNED BY auth_message.id;


--
-- Name: auth_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_message_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO cs280;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO cs280;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_permission_id_seq', 81, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO cs280;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO cs280;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO cs280;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 11, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO cs280;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_user_id_seq', 9, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO cs280;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO cs280;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 27, true);


--
-- Name: core_category; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_category (
    id integer NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    name character varying(512) NOT NULL,
    description text NOT NULL,
    slug character varying(512) NOT NULL,
    published boolean NOT NULL,
    teaser text NOT NULL
);


ALTER TABLE public.core_category OWNER TO cs280;

--
-- Name: core_category_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_category_id_seq OWNER TO cs280;

--
-- Name: core_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_category_id_seq OWNED BY core_category.id;


--
-- Name: core_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_category_id_seq', 8, true);


--
-- Name: core_customtag; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_customtag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.core_customtag OWNER TO cs280;

--
-- Name: core_customtag_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_customtag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_customtag_id_seq OWNER TO cs280;

--
-- Name: core_customtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_customtag_id_seq OWNED BY core_customtag.id;


--
-- Name: core_customtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_customtag_id_seq', 185, true);


--
-- Name: core_customtagitem; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_customtagitem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.core_customtagitem OWNER TO cs280;

--
-- Name: core_customtagitem_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_customtagitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_customtagitem_id_seq OWNER TO cs280;

--
-- Name: core_customtagitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_customtagitem_id_seq OWNED BY core_customtagitem.id;


--
-- Name: core_customtagitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_customtagitem_id_seq', 5724, true);


--
-- Name: core_documentset; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_documentset (
    id integer NOT NULL,
    name character varying(512) NOT NULL,
    description text NOT NULL,
    published boolean DEFAULT false NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    slug character varying(512) NOT NULL,
    url character varying(200) NOT NULL,
    kind character varying(64) NOT NULL,
    image character varying(256),
    teaser text NOT NULL
);


ALTER TABLE public.core_documentset OWNER TO cs280;

--
-- Name: core_documentset_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_documentset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_documentset_id_seq OWNER TO cs280;

--
-- Name: core_documentset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_documentset_id_seq OWNED BY core_documentset.id;


--
-- Name: core_documentset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_documentset_id_seq', 19, true);


--
-- Name: core_operatingsystem; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_operatingsystem (
    id integer NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    name character varying(512) NOT NULL,
    url character varying(200) NOT NULL,
    published boolean NOT NULL,
    description text NOT NULL,
    slug character varying(512) NOT NULL,
    teaser text NOT NULL
);


ALTER TABLE public.core_operatingsystem OWNER TO cs280;

--
-- Name: core_operatingsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_operatingsystem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_operatingsystem_id_seq OWNER TO cs280;

--
-- Name: core_operatingsystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_operatingsystem_id_seq OWNED BY core_operatingsystem.id;


--
-- Name: core_operatingsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_operatingsystem_id_seq', 9, true);


--
-- Name: core_product; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_product (
    id integer NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    name character varying(512) NOT NULL,
    url character varying(200) NOT NULL,
    description text NOT NULL,
    cost character varying(64) NOT NULL,
    slug character varying(512) NOT NULL,
    published boolean NOT NULL,
    open_source boolean NOT NULL,
    demo_available boolean NOT NULL,
    company character varying(128) NOT NULL,
    release_date character varying(64),
    obsolete boolean NOT NULL,
    image character varying(256),
    os_availability character varying(128) NOT NULL,
    teaser text NOT NULL
);


ALTER TABLE public.core_product OWNER TO cs280;

--
-- Name: core_product_categories; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.core_product_categories OWNER TO cs280;

--
-- Name: core_product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_product_categories_id_seq OWNER TO cs280;

--
-- Name: core_product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_product_categories_id_seq OWNED BY core_product_categories.id;


--
-- Name: core_product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_product_categories_id_seq', 208, true);


--
-- Name: core_product_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_product_id_seq OWNER TO cs280;

--
-- Name: core_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_product_id_seq OWNED BY core_product.id;


--
-- Name: core_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_product_id_seq', 29, true);


--
-- Name: core_product_operating_systems; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_product_operating_systems (
    id integer NOT NULL,
    product_id integer NOT NULL,
    operatingsystem_id integer NOT NULL
);


ALTER TABLE public.core_product_operating_systems OWNER TO cs280;

--
-- Name: core_product_operating_systems_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_product_operating_systems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_product_operating_systems_id_seq OWNER TO cs280;

--
-- Name: core_product_operating_systems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_product_operating_systems_id_seq OWNED BY core_product_operating_systems.id;


--
-- Name: core_product_operating_systems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_product_operating_systems_id_seq', 466, true);


--
-- Name: core_producttask; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_producttask (
    id integer NOT NULL,
    name character varying(512) NOT NULL,
    description text NOT NULL,
    published boolean DEFAULT false NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    slug character varying(512) NOT NULL,
    product_id integer NOT NULL,
    task_id integer NOT NULL,
    rating integer NOT NULL,
    rating_text character varying(256) NOT NULL,
    teaser text NOT NULL,
    reviewer_id integer,
    editor_id integer,
    kicker character varying(128) NOT NULL,
    subtitle character varying(512) NOT NULL,
    version_tested character varying(128) NOT NULL,
    review_done date,
    image character varying(256)
);


ALTER TABLE public.core_producttask OWNER TO cs280;

--
-- Name: core_producttask_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_producttask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_producttask_id_seq OWNER TO cs280;

--
-- Name: core_producttask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_producttask_id_seq OWNED BY core_producttask.id;


--
-- Name: core_producttask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_producttask_id_seq', 71, true);


--
-- Name: core_producttask_os_used; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_producttask_os_used (
    id integer NOT NULL,
    producttask_id integer NOT NULL,
    operatingsystem_id integer NOT NULL
);


ALTER TABLE public.core_producttask_os_used OWNER TO cs280;

--
-- Name: core_producttask_os_used_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_producttask_os_used_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_producttask_os_used_id_seq OWNER TO cs280;

--
-- Name: core_producttask_os_used_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_producttask_os_used_id_seq OWNED BY core_producttask_os_used.id;


--
-- Name: core_producttask_os_used_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_producttask_os_used_id_seq', 999, true);


--
-- Name: core_review; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_review (
    id integer NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    version_tested character varying(128) NOT NULL,
    slug character varying(512) NOT NULL,
    user_rating_votes integer DEFAULT 0 NOT NULL,
    user_rating_score integer DEFAULT 0 NOT NULL,
    reviewer_id integer NOT NULL,
    product_id integer NOT NULL,
    rating integer NOT NULL,
    published boolean NOT NULL,
    name character varying(512) NOT NULL,
    description text NOT NULL,
    teaser text NOT NULL,
    kicker character varying(128) NOT NULL,
    subtitle character varying(512) NOT NULL,
    review_done date,
    editor_id integer,
    community integer NOT NULL,
    documentation integer NOT NULL,
    performance integer NOT NULL,
    usability integer NOT NULL,
    image character varying(256),
    community_text character varying(256) NOT NULL,
    documentation_text character varying(256) NOT NULL,
    performance_text character varying(256) NOT NULL,
    usability_text character varying(256) NOT NULL,
    rating_text character varying(256) NOT NULL,
    programming integer NOT NULL,
    programming_text character varying(256) NOT NULL,
    CONSTRAINT core_review_user_rating_votes_check CHECK ((user_rating_votes >= 0))
);


ALTER TABLE public.core_review OWNER TO cs280;

--
-- Name: core_review_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_review_id_seq OWNER TO cs280;

--
-- Name: core_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_review_id_seq OWNED BY core_review.id;


--
-- Name: core_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_review_id_seq', 15, true);


--
-- Name: core_review_os_used; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_review_os_used (
    id integer NOT NULL,
    review_id integer NOT NULL,
    operatingsystem_id integer NOT NULL
);


ALTER TABLE public.core_review_os_used OWNER TO cs280;

--
-- Name: core_review_os_used_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_review_os_used_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_review_os_used_id_seq OWNER TO cs280;

--
-- Name: core_review_os_used_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_review_os_used_id_seq OWNED BY core_review_os_used.id;


--
-- Name: core_review_os_used_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_review_os_used_id_seq', 458, true);


--
-- Name: core_task; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_task (
    id integer NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    name character varying(512) NOT NULL,
    description text NOT NULL,
    slug character varying(512) NOT NULL,
    published boolean NOT NULL,
    document_id integer,
    difficulty integer NOT NULL,
    difficulty_text character varying(256) NOT NULL,
    teaser text NOT NULL
);


ALTER TABLE public.core_task OWNER TO cs280;

--
-- Name: core_task_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_task_id_seq OWNER TO cs280;

--
-- Name: core_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_task_id_seq OWNED BY core_task.id;


--
-- Name: core_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_task_id_seq', 17, true);


--
-- Name: core_tutorial; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_tutorial (
    id integer NOT NULL,
    name character varying(512) NOT NULL,
    description text NOT NULL,
    published boolean DEFAULT false NOT NULL,
    creation_time timestamp with time zone NOT NULL,
    update_time timestamp with time zone NOT NULL,
    slug character varying(512) NOT NULL,
    product_id integer NOT NULL,
    url character varying(200) NOT NULL,
    writer_id integer,
    writer_external character varying(256) NOT NULL,
    editor_id integer,
    kicker character varying(128) NOT NULL,
    subtitle character varying(512) NOT NULL,
    teaser text NOT NULL,
    image character varying(256),
    embed text NOT NULL,
    repo_link character varying(200) NOT NULL,
    files character varying(100),
    version character varying(128) NOT NULL
);


ALTER TABLE public.core_tutorial OWNER TO cs280;

--
-- Name: core_tutorial_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_tutorial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_tutorial_id_seq OWNER TO cs280;

--
-- Name: core_tutorial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_tutorial_id_seq OWNED BY core_tutorial.id;


--
-- Name: core_tutorial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_tutorial_id_seq', 1, true);


--
-- Name: core_tutorial_os_used; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_tutorial_os_used (
    id integer NOT NULL,
    tutorial_id integer NOT NULL,
    operatingsystem_id integer NOT NULL
);


ALTER TABLE public.core_tutorial_os_used OWNER TO cs280;

--
-- Name: core_tutorial_os_used_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_tutorial_os_used_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_tutorial_os_used_id_seq OWNER TO cs280;

--
-- Name: core_tutorial_os_used_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_tutorial_os_used_id_seq OWNED BY core_tutorial_os_used.id;


--
-- Name: core_tutorial_os_used_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_tutorial_os_used_id_seq', 1, false);


--
-- Name: core_tutorial_tasks; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE core_tutorial_tasks (
    id integer NOT NULL,
    tutorial_id integer NOT NULL,
    task_id integer NOT NULL
);


ALTER TABLE public.core_tutorial_tasks OWNER TO cs280;

--
-- Name: core_tutorial_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE core_tutorial_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_tutorial_tasks_id_seq OWNER TO cs280;

--
-- Name: core_tutorial_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE core_tutorial_tasks_id_seq OWNED BY core_tutorial_tasks.id;


--
-- Name: core_tutorial_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('core_tutorial_tasks_id_seq', 32, true);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO cs280;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO cs280;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1464, true);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO cs280;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO cs280;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('django_content_type_id_seq', 27, true);


--
-- Name: django_flatpage; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE django_flatpage (
    id integer NOT NULL,
    url character varying(100) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    enable_comments boolean NOT NULL,
    template_name character varying(70) NOT NULL,
    registration_required boolean NOT NULL
);


ALTER TABLE public.django_flatpage OWNER TO cs280;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE django_flatpage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_flatpage_id_seq OWNER TO cs280;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE django_flatpage_id_seq OWNED BY django_flatpage.id;


--
-- Name: django_flatpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('django_flatpage_id_seq', 1, true);


--
-- Name: django_flatpage_sites; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE django_flatpage_sites (
    id integer NOT NULL,
    flatpage_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.django_flatpage_sites OWNER TO cs280;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE django_flatpage_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_flatpage_sites_id_seq OWNER TO cs280;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE django_flatpage_sites_id_seq OWNED BY django_flatpage_sites.id;


--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('django_flatpage_sites_id_seq', 2, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO cs280;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO cs280;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO cs280;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: djangoratings_ignoredobject; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE djangoratings_ignoredobject (
    object_id integer NOT NULL,
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT djangoratings_ignoredobject_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.djangoratings_ignoredobject OWNER TO cs280;

--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE djangoratings_ignoredobject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangoratings_ignoredobject_id_seq OWNER TO cs280;

--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE djangoratings_ignoredobject_id_seq OWNED BY djangoratings_ignoredobject.id;


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('djangoratings_ignoredobject_id_seq', 1, false);


--
-- Name: djangoratings_score; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE djangoratings_score (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    key character varying(32) NOT NULL,
    score integer NOT NULL,
    votes integer NOT NULL,
    CONSTRAINT djangoratings_score_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT djangoratings_score_votes_check CHECK ((votes >= 0))
);


ALTER TABLE public.djangoratings_score OWNER TO cs280;

--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE djangoratings_score_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangoratings_score_id_seq OWNER TO cs280;

--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE djangoratings_score_id_seq OWNED BY djangoratings_score.id;


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('djangoratings_score_id_seq', 1, false);


--
-- Name: djangoratings_similaruser; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE djangoratings_similaruser (
    to_user_id integer NOT NULL,
    agrees integer DEFAULT 0 NOT NULL,
    id integer NOT NULL,
    disagrees integer DEFAULT 0 NOT NULL,
    from_user_id integer NOT NULL,
    exclude boolean NOT NULL,
    CONSTRAINT djangoratings_similaruser_agrees_check CHECK ((agrees >= 0)),
    CONSTRAINT djangoratings_similaruser_disagrees_check CHECK ((disagrees >= 0))
);


ALTER TABLE public.djangoratings_similaruser OWNER TO cs280;

--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE djangoratings_similaruser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangoratings_similaruser_id_seq OWNER TO cs280;

--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE djangoratings_similaruser_id_seq OWNED BY djangoratings_similaruser.id;


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('djangoratings_similaruser_id_seq', 1, false);


--
-- Name: djangoratings_vote; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE djangoratings_vote (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    key character varying(32) NOT NULL,
    score integer NOT NULL,
    user_id integer,
    ip_address inet NOT NULL,
    date_added timestamp with time zone DEFAULT '2011-08-04 13:31:06.70737-04'::timestamp with time zone NOT NULL,
    date_changed timestamp with time zone DEFAULT '2011-08-04 13:31:06.707552-04'::timestamp with time zone NOT NULL,
    cookie character varying(32),
    CONSTRAINT djangoratings_vote_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.djangoratings_vote OWNER TO cs280;

--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE djangoratings_vote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangoratings_vote_id_seq OWNER TO cs280;

--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE djangoratings_vote_id_seq OWNED BY djangoratings_vote.id;


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('djangoratings_vote_id_seq', 1, false);


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO cs280;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO cs280;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 38, true);


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO cs280;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO cs280;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 30, true);


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: cs280; Tablespace: 
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    tag_id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO cs280;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: cs280
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO cs280;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cs280
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cs280
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 73, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_message ALTER COLUMN id SET DEFAULT nextval('auth_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_category ALTER COLUMN id SET DEFAULT nextval('core_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_customtag ALTER COLUMN id SET DEFAULT nextval('core_customtag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_customtagitem ALTER COLUMN id SET DEFAULT nextval('core_customtagitem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_documentset ALTER COLUMN id SET DEFAULT nextval('core_documentset_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_operatingsystem ALTER COLUMN id SET DEFAULT nextval('core_operatingsystem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_product ALTER COLUMN id SET DEFAULT nextval('core_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_product_categories ALTER COLUMN id SET DEFAULT nextval('core_product_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_product_operating_systems ALTER COLUMN id SET DEFAULT nextval('core_product_operating_systems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_producttask ALTER COLUMN id SET DEFAULT nextval('core_producttask_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_producttask_os_used ALTER COLUMN id SET DEFAULT nextval('core_producttask_os_used_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_review ALTER COLUMN id SET DEFAULT nextval('core_review_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_review_os_used ALTER COLUMN id SET DEFAULT nextval('core_review_os_used_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_task ALTER COLUMN id SET DEFAULT nextval('core_task_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_tutorial ALTER COLUMN id SET DEFAULT nextval('core_tutorial_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_tutorial_os_used ALTER COLUMN id SET DEFAULT nextval('core_tutorial_os_used_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE core_tutorial_tasks ALTER COLUMN id SET DEFAULT nextval('core_tutorial_tasks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE django_flatpage ALTER COLUMN id SET DEFAULT nextval('django_flatpage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE django_flatpage_sites ALTER COLUMN id SET DEFAULT nextval('django_flatpage_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE djangoratings_ignoredobject ALTER COLUMN id SET DEFAULT nextval('djangoratings_ignoredobject_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE djangoratings_score ALTER COLUMN id SET DEFAULT nextval('djangoratings_score_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE djangoratings_similaruser ALTER COLUMN id SET DEFAULT nextval('djangoratings_similaruser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE djangoratings_vote ALTER COLUMN id SET DEFAULT nextval('djangoratings_vote_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cs280
--

ALTER TABLE taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_group (id, name) FROM stdin;
1	Creators
3	Editors
2	Freelancers
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	28
2	1	29
3	1	30
4	1	31
5	1	32
6	1	33
7	1	34
8	1	35
9	1	36
10	1	37
11	1	38
12	1	39
13	1	40
14	1	41
15	1	42
16	1	43
17	1	44
18	1	45
19	1	46
20	1	47
21	1	48
22	1	49
23	1	50
24	1	51
25	1	52
26	1	53
27	1	54
28	1	55
29	1	56
30	1	57
31	1	58
32	1	59
33	1	60
34	1	61
35	1	62
36	1	63
37	1	64
38	1	65
39	1	66
40	1	67
41	1	68
42	1	69
43	1	70
44	1	71
45	1	72
46	1	73
47	1	74
48	1	75
49	1	76
50	1	77
51	1	78
64	3	46
65	3	47
66	3	48
67	3	49
68	3	50
69	3	51
70	3	52
71	3	53
72	3	54
73	3	55
74	3	56
75	3	57
76	3	58
77	3	59
78	3	60
79	3	61
80	3	62
81	3	63
82	3	64
83	3	65
84	3	66
85	3	67
86	3	68
87	3	69
88	3	70
89	3	71
90	3	72
91	3	73
92	3	74
93	3	75
94	3	76
95	3	77
96	3	78
110	2	67
111	2	68
112	2	73
113	2	74
114	2	76
115	2	77
116	2	46
117	2	47
118	2	49
119	2	50
120	2	53
121	2	55
122	2	56
123	2	59
\.


--
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_message (id, user_id, message) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add message	4	add_message
11	Can change message	4	change_message
12	Can delete message	4	delete_message
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add content type	6	add_contenttype
17	Can change content type	6	change_contenttype
18	Can delete content type	6	delete_contenttype
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add log entry	8	add_logentry
23	Can change log entry	8	change_logentry
24	Can delete log entry	8	delete_logentry
25	Can add migration history	9	add_migrationhistory
26	Can change migration history	9	change_migrationhistory
27	Can delete migration history	9	delete_migrationhistory
28	Can add Tag	10	add_tag
29	Can change Tag	10	change_tag
30	Can delete Tag	10	delete_tag
31	Can add Tagged Item	11	add_taggeditem
32	Can change Tagged Item	11	change_taggeditem
33	Can delete Tagged Item	11	delete_taggeditem
34	Can add vote	12	add_vote
35	Can change vote	12	change_vote
36	Can delete vote	12	delete_vote
37	Can add score	13	add_score
38	Can change score	13	change_score
39	Can delete score	13	delete_score
40	Can add similar user	14	add_similaruser
41	Can change similar user	14	change_similaruser
42	Can delete similar user	14	delete_similaruser
43	Can add ignored object	15	add_ignoredobject
44	Can change ignored object	15	change_ignoredobject
45	Can delete ignored object	15	delete_ignoredobject
46	Can add review	16	add_review
47	Can change review	16	change_review
48	Can delete review	16	delete_review
49	Can add product	17	add_product
50	Can change product	17	change_product
51	Can delete product	17	delete_product
52	Can add task	18	add_task
53	Can change task	18	change_task
54	Can delete task	18	delete_task
55	Can add Product Task Review	19	add_producttask
56	Can change Product Task Review	19	change_producttask
57	Can delete Product Task Review	19	delete_producttask
58	Can add Document Set	20	add_documentset
59	Can change Document Set	20	change_documentset
60	Can delete Document Set	20	delete_documentset
61	Can add category	21	add_category
62	Can change category	21	change_category
63	Can delete category	21	delete_category
64	Can add Operating System	22	add_operatingsystem
65	Can change Operating System	22	change_operatingsystem
66	Can delete Operating System	22	delete_operatingsystem
67	Can add tutorial	23	add_tutorial
68	Can change tutorial	23	change_tutorial
69	Can delete tutorial	23	delete_tutorial
70	Can add challenge	24	add_challenge
71	Can change challenge	24	change_challenge
72	Can delete challenge	24	delete_challenge
73	Can add Kitchen Tag	25	add_customtag
74	Can change Kitchen Tag	25	change_customtag
75	Can delete Kitchen Tag	25	delete_customtag
76	Can add custom tag item	26	add_customtagitem
77	Can change custom tag item	26	change_customtagitem
78	Can delete custom tag item	26	delete_customtagitem
79	Can add flat page	27	add_flatpage
80	Can change flat page	27	change_flatpage
81	Can delete flat page	27	delete_flatpage
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
8	aaron.kessler	Aaron	Kessler	kessler.aaron@gmail.com	sha1$b50a9$a76b6a264087b34bbe7241e8c3e1c86d7381e602	t	t	f	2011-12-02 11:38:50-05	2011-12-02 11:38:50-05
3	andy.bailey	Andy	Bailey	andy@primary-data.com	sha1$90a65$1b0b7cad314a705a24bce7dcc8f983dac37f678e	t	t	f	2012-06-11 16:32:10.128837-04	2011-08-29 16:58:40-04
1	charlie	Charlie	Szymanski	charlie@charlieszymanski.com	sha1$52114$297650bd0d751957f5bce9a19f65f0b57a1250f4	t	t	t	2012-07-31 10:13:01.160887-04	2011-08-04 13:30:58-04
7	david.gulliver	David	Gulliver	david.gulliver@gmail.com	sha1$2a869$70258d02d82733446a8464d02e525c958ac6dccb	t	t	f	2012-06-17 18:18:23.940058-04	2011-12-02 11:37:45-05
6	jennifer.wig	Jennifer	Wig	jennifer@jenniferwig.com	sha1$2f4f7$faa8ee4d2ae14b8ae8eee82221ec5c2955f10fcd	t	t	f	2012-07-05 12:08:13.388217-04	2011-12-02 11:35:06-05
4	mtdukes	Tyler	Dukes	tyler@reporterslab.org	sha1$a5750$14c5b6ba5881cb64fba4bb3786ba2d95307c92ef	t	t	t	2012-07-02 10:38:33.443496-04	2011-11-07 14:43:13-05
2	sarah	Sarah	Cohen	sarah@reporterslab.org	sha1$40616$91b658976b0211ee6ed45df10363110206f32f66	t	t	t	2012-03-21 13:05:43.387093-04	2011-08-04 16:31:45-04
9	admin	Administrator		info@reporterslab.org	sha1$9e9a5$9f63ad4307c484b4c653d1c5fff9c29fbc1ef077	t	t	t	2012-07-31 10:14:59-04	2012-07-31 10:14:59-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	3	2
2	6	2
3	7	2
4	8	2
6	4	1
7	4	3
8	1	1
9	1	3
10	2	1
11	2	3
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: core_category; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_category (id, creation_time, update_time, name, description, slug, published, teaser) FROM stdin;
3	2011-11-09 11:35:48.286102-05	2012-02-06 11:57:13.909521-05	PDF tools	<p>Convert PDFs into spreadsheets capable of sorting and filtering information, as well as other formats</p>	pdf-tools-2011-11-09	t	<p>Convert PDFs into spreadsheets capable of sorting and filtering information, as well as other formats</p>
2	2011-09-28 12:38:56.148765-04	2012-02-06 11:57:35.074404-05	Scrapers	<p>Gather data or documents from online sources and convert them into more useable formats</p>	scraper-2011-09-28	t	<p>Gather data or documents from online sources and convert them into more useable formats</p>
5	2011-11-28 10:44:59.186201-05	2012-02-06 11:59:32.405162-05	Project/document management	<p>Allows collaboration with multiple users to organize and edit documents and coordinate large projects</p>	document-management-2011-11-28	t	<p>Allows collaboration with multiple users to organize and edit documents and coordinate large projects</p>
6	2012-02-02 16:24:57.24245-05	2012-02-06 11:59:43.978107-05	Entity extraction	<p>Identifies and tags words and phrases in certain categories like names, places, groups, etc. for easier analysis of documents</p>	entity-extraction-2012-02-02	t	<p>Identifies and tags words and phrases in certain categories like names, places, groups, etc. for easier analysis of documents</p>
7	2012-02-06 12:01:52.417902-05	2012-02-06 12:01:55.578303-05	Speech recognition	<p>Recognizes speech directly or within audio files and transcribes to text</p>	speech-recognition-2012-02-06	t	<p>Recognizes speech directly or within audio files and transcribes to text</p>
4	2011-11-28 10:41:35.246401-05	2012-02-24 14:26:27.8228-05	OCR	<p>Optical character recognition software converts images into selectable, searchable text</p>	ocr-2011-11-28	t	<p>Optical character recognition software converts images into selectable, searchable text</p>
8	2012-04-17 12:25:28.473691-04	2012-04-17 12:25:28.474104-04	Transcription tools	<p>Helps users more efficiently transcribe audio and video using advanced playback controls combined with text editors</p>	transcription-tools-2012-04-17	t	<p>Helps users more efficiently transcribe audio and video using advanced playback controls combined with text editors</p>
\.


--
-- Data for Name: core_customtag; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_customtag (id, name, slug) FROM stdin;
1	scraping	scraping
2	table	table
3	bad:lets in junk information	badlets-in-junk-information
4	good:gets all the data	goodgets-all-the-data
5	outwit	outwit
6	good:export options	goodexport-options
7	good:custom scrapers	goodcustom-scrapers
8	bad:inflexible	badinflexible
9	good:getting multimedia content	goodgetting-multimedia-content
10	bad:rough edges	badrough-edges
11	good:macros	goodmacros
12	bad:small community	badsmall-community
13	hosted solution	hosted-solution
14	needlebase	needlebase
15	good:fast	goodfast
16	good:fills out search fields	goodfills-out-search-fields
17	good:master-detail	goodmaster-detail
18	bad:no file download	badno-file-download
20	scraping	scraping_1
21	good:visual scraping	goodvisual-scraping
23	needlebase	needlebase_1
24	pdf tools	pdf-tools
25	bad:difficulty with table lines	baddifficulty-with-table-lines
26	bad:output not sortable	badoutput-not-sortable
27	small print	small-print
28	portrait-landscape	portrait-landscape
29	bad:clean up required	badclean-up-required
30	good:reasonable accuracy	goodreasonable-accuracy
31	nitro pro	nitro-pro
32	bad:no output	badno-output
33	bad:crashes or glitches	badcrashes-or-glitches
34	good:easy to use	goodeasy-to-use
35	bad:omits information	badomits-information
36	bad:limited customization	badlimited-customization
37	good:active community	goodactive-community
38	bad:garbled output	badgarbled-output
39	bad:poor ocr	badpoor-ocr
51	scanning	scanning
52	bad formatting	bad-formatting
53	word	word
54	good: easy to use	good-easy-to-use
55	good: transcripts	good-transcripts
56	bad: does not convert handwriting	bad-does-not-convert-handwriting
57	good: searching in word	good-searching-in-word
58	search	search
59	abbyy	abbyy
60	bad: no terms found	bad-no-terms-found
61	partial text	partial-text
63	bad: formatting	bad-formatting_1
64	good: converts	good-converts
65	data	data
66	good: some terms found	good-some-terms-found
67	forms	forms
70	adobe	adobe
71	acrobat	acrobat
72	scan	scan
73	tribunal	tribunal
77	memo	memo
84	expensive	expensive
124	cookies	cookies
125	multilevel	multilevel
50	pdf	pdf
40	ocr	ocr
85	Able2Extract	able2extract
86	spreadsheet	spreadsheet
87	excel	excel
88	omnipage	omnipage
89	database	database
90	template	template
91	embedded font	embedded-font
92	weird font	weird-font
93	cogniview	cogniview
94	bad:large files	badlarge-files
95	good:small files	goodsmall-files
96	pdf2xl	pdf2xl
97	scanned	scanned
98	interest groups	interest-groups
99	obama	obama
100	search fields	search-fields
101	teacher	teacher
102	lobbyist	lobbyist
103	paginated	paginated
104	appointments	appointments
105	clinton	clinton
106	report	report
107	congress	congress
108	access	access
109	one-to-many	one-to-many
110	housing	housing
111	headings	headings
112	Madoff	madoff
114	madoff	madoff_1
115	arizona	arizona
116	contributors	contributors
117	image pdf	image-pdf
118	general assembly	general-assembly
119	civitas	civitas
120	north carolina	north-carolina
121	unrecognized text	unrecognized-text
122	combatant	combatant
123	scraper	scraper
126	disclosure	disclosure
127	transcript	transcript
128	post	post
129	search form	search-form
130	cometdocs	cometdocs
131	good:cheap/free	goodcheapfree
132	finereader	finereader
133	good:low price	goodlow-price
134	bad:missing data	badmissing-data
135	mineral management service	mineral-management-service
136	deepwater horizon	deepwater-horizon
137	oil spill	oil-spill
138	emails	emails
139	email	email
140	entity extraction	entity-extraction
141	document management	document-management
142	project management	project-management
143	speech recognition	speech-recognition
144	audio	audio
145	language	language
146	timeline	timeline
147	timeflow	timeflow
148	basecamp	basecamp
149	mendeley	mendeley
150	documentcloud	documentcloud
151	opencalais	opencalais
152	tesseract	tesseract
153	note	note
154	notes	notes
155	writing	writing
156	notetaking	notetaking
157	editing	editing
158	saving web pages	saving-web-pages
159	organizing information	organizing-information
160	lists	lists
161	evernote	evernote
163	OCR	ocr_1
164	google	google
165	entity analysis	entity-analysis
166	thomson reuters	thomson-reuters
167	transcription	transcription
168	video	video
169	fireox	fireox
170	firefox	firefox
171	copy tables	copy-tables
172	Table2Clipboard	table2clipboard
173	plug-in	plug-in
174	mtdukes	mtdukes
175	chrome	chrome
176	extension	extension
177	plugin	plugin
178	explorer	explorer
179	Jane Mayer	jane-mayer
180	rutherfurd	rutherfurd
181	Dana Priest	dana-priest
182	legislature	legislature
183	mp3	mp3
184	committee	committee
185	hearing	hearing
\.


--
-- Data for Name: core_customtagitem; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_customtagitem (id, object_id, content_type_id, tag_id) FROM stdin;
3152	6	17	24
3153	21	19	26
3154	18	19	34
3155	18	19	3
1957	9	18	24
5148	25	17	50
1958	9	18	50
5149	25	17	163
1959	9	18	110
1960	9	18	86
1966	12	18	40
3444	2	21	123
3448	6	21	140
3455	9	17	24
3456	9	17	40
3457	41	19	72
3458	41	19	40
3459	41	19	77
3460	41	19	70
1967	12	18	107
1968	12	18	50
3461	41	19	71
3462	40	19	40
3156	18	19	30
3157	17	19	26
3158	17	19	38
3159	16	19	34
3160	16	19	3
3161	16	19	29
3162	16	19	30
1406	1	23	24
1407	1	23	50
1408	1	23	85
1409	1	23	86
3163	4	16	24
3164	4	16	50
3165	4	16	131
3166	4	16	130
3167	4	16	86
3463	40	19	73
3464	40	19	70
3465	40	19	71
3466	39	19	72
3467	39	19	40
3468	39	19	67
3469	39	19	70
3470	39	19	71
3471	38	19	40
3472	38	19	50
3473	38	19	61
3474	37	19	71
3475	37	19	40
3476	37	19	50
3477	37	19	115
3478	37	19	86
3479	37	19	24
3480	36	19	24
3481	36	19	50
3482	36	19	114
3483	36	19	71
3484	35	19	134
3485	35	19	108
3486	35	19	50
3487	35	19	86
3488	35	19	24
3489	35	19	89
3490	30	19	24
3491	30	19	105
3492	30	19	50
3493	30	19	71
3494	8	16	70
3495	8	16	71
3496	8	16	40
3497	8	16	50
3498	8	16	84
3625	8	17	24
3626	8	17	40
3627	8	17	85
3499	8	16	24
3632	47	19	40
3633	47	19	77
3634	47	19	85
3635	46	19	40
3636	46	19	50
3637	46	19	85
3430	15	20	135
3431	15	20	136
3432	15	20	137
3433	15	20	138
3434	15	20	139
3638	46	19	127
3639	25	19	24
3640	25	19	50
3641	25	19	85
3642	25	19	86
3435	15	20	77
3520	16	17	140
3643	24	19	108
3644	24	19	50
3645	24	19	85
3646	24	19	86
3647	24	19	24
3530	19	17	141
3648	24	19	89
3649	23	19	24
3650	23	19	50
3651	23	19	85
3652	23	19	86
3653	22	19	38
3654	22	19	50
3655	22	19	85
3656	22	19	86
3657	22	19	24
3658	22	19	91
4109	3	17	1
4110	3	17	20
4111	3	17	13
4112	3	17	14
4113	3	17	23
4114	9	19	4
4115	9	19	50
4116	9	19	14
3668	49	19	40
3669	49	19	50
3670	49	19	67
3671	49	19	85
4117	9	19	18
4118	9	19	23
4119	9	19	89
4120	9	19	123
3850	16	18	135
3851	16	18	136
3852	16	18	137
3853	16	18	139
3854	16	18	140
3855	16	18	77
4121	8	19	32
4122	8	19	123
4123	8	19	14
4124	8	19	23
4125	7	19	129
4126	7	19	67
4127	7	19	4
4128	7	19	14
4129	7	19	16
4130	7	19	17
1728	2	20	89
1729	2	20	50
1730	2	20	99
1731	2	20	98
1732	2	20	97
4131	7	19	23
4132	7	19	100
4133	7	19	123
4134	7	19	125
4135	6	19	23
4136	6	19	4
4137	6	19	14
4138	6	19	6
4139	6	19	15
4173	4	21	40
4183	2	16	1
4184	2	16	14
4185	2	16	15
4186	2	16	16
4187	2	16	17
4188	2	16	18
4189	2	16	20
4190	2	16	21
4191	2	16	23
1744	5	20	89
1745	5	20	2
1746	5	20	102
1747	5	20	103
1748	7	20	104
1749	7	20	105
1750	7	20	50
1807	13	20	50
1808	13	20	117
1809	13	20	118
1810	13	20	119
1811	13	20	120
1812	13	20	121
1817	14	20	121
1818	14	20	50
1819	14	20	122
1820	14	20	117
1762	3	20	89
1763	3	20	100
1953	6	18	24
1954	6	18	104
1955	6	18	50
1767	4	20	89
1768	4	20	100
1769	4	20	101
5150	25	17	164
5151	25	17	141
1956	6	18	105
1961	11	18	24
1962	11	18	115
1963	11	18	50
1964	11	18	91
1778	10	20	50
1779	10	20	108
1780	10	20	109
1781	10	20	110
1782	10	20	111
1965	11	18	86
1969	12	18	106
1970	12	18	61
1971	13	18	40
1972	13	18	50
1788	11	20	112
1789	11	20	2
1790	11	20	114
1791	11	20	50
1792	11	20	86
1973	13	18	67
1974	13	18	126
1975	13	18	118
3168	7	17	40
1797	12	20	50
1798	12	20	115
1799	12	20	116
1800	12	20	86
3169	7	17	50
3170	7	17	51
1980	14	18	40
1981	14	18	50
1982	14	18	122
1983	14	18	127
1988	15	18	40
1989	15	18	97
1990	15	18	50
1991	15	18	99
1992	2	18	123
1993	2	18	50
1994	2	18	99
5689	68	19	123
5690	68	19	175
5697	70	19	89
5530	66	19	123
5531	66	19	67
5532	66	19	172
5535	14	16	170
4812	10	16	40
4813	10	16	50
5536	14	16	123
5537	14	16	173
5538	14	16	174
5179	61	19	24
5180	61	19	50
5181	61	19	163
1888	10	18	24
1889	10	18	2
1890	10	18	114
1891	10	18	50
1892	10	18	86
4814	10	16	140
4815	10	16	150
5186	63	19	24
5187	63	19	40
5188	63	19	50
5698	70	19	123
5699	70	19	175
5703	15	16	123
5704	15	16	175
4828	22	17	40
4829	22	17	152
3171	29	19	64
3172	29	19	66
4830	22	17	163
5720	19	20	144
5721	19	20	184
3173	29	19	40
3174	29	19	58
3175	29	19	59
4831	22	17	164
5722	19	20	185
5723	19	20	182
5724	19	20	183
4844	10	17	24
4845	10	17	40
4846	10	17	96
4847	34	19	96
3176	29	19	61
1931	3	18	89
1932	3	18	123
1933	3	18	124
1934	3	18	125
4848	34	19	40
3442	3	21	24
3177	28	19	56
3178	28	19	57
4849	34	19	50
1946	5	18	2
1947	5	18	123
1948	5	18	102
3449	7	21	144
3450	7	21	143
3451	7	21	127
4850	34	19	86
4851	34	19	24
3507	14	17	146
2039	4	18	89
2040	4	18	123
2041	4	18	125
2042	4	18	101
3508	14	17	147
3509	14	17	142
3179	28	19	50
3180	28	19	40
3181	27	19	132
3182	27	19	40
3183	27	19	50
3184	27	19	55
3185	27	19	59
3186	27	19	127
3516	15	17	148
3517	15	17	141
3518	15	17	142
4852	34	19	93
3187	26	19	40
3188	26	19	50
4599	11	16	160
4600	11	16	161
4601	11	16	144
4602	11	16	154
4603	11	16	155
4604	11	16	156
4605	11	16	157
4606	11	16	158
4607	11	16	159
5468	26	17	1
5469	26	17	170
5470	26	17	123
5471	26	17	20
3189	26	19	59
3190	26	19	132
3191	26	19	54
3192	6	16	40
3193	6	16	65
3194	6	16	50
3195	6	16	59
3446	5	21	141
4149	20	17	40
4150	20	17	140
4151	20	17	141
4152	20	17	150
4153	20	17	151
4154	20	17	152
3692	5	16	24
3693	5	16	50
3694	5	16	85
3695	5	16	86
3696	5	16	133
4840	23	17	140
4841	23	17	165
4842	23	17	166
4843	23	17	151
4853	33	19	24
4854	33	19	40
4855	33	19	50
3129	4	17	24
3130	4	17	31
3131	15	19	24
3132	15	19	32
2942	2	17	123
2943	2	17	5
2944	5	19	1
2945	5	19	3
2946	5	19	4
2947	5	19	5
2948	5	19	20
2949	4	19	123
2950	4	19	89
2951	4	19	50
2952	4	19	99
2953	4	19	5
2954	3	19	128
2955	3	19	129
2956	3	19	100
2957	3	19	5
2958	3	19	89
2959	3	19	123
2960	2	19	123
2961	2	19	5
3447	5	21	142
3452	12	17	144
3453	12	17	143
3454	12	17	127
3502	13	17	145
3503	13	17	140
3829	17	18	99
3830	17	18	140
3831	17	18	77
4856	33	19	92
4857	33	19	96
4858	32	19	24
4859	32	19	96
4860	32	19	50
4861	31	19	24
4862	31	19	96
4863	31	19	50
4864	31	19	15
4870	7	16	24
4871	7	16	50
4872	7	16	93
4873	7	16	94
4874	7	16	95
4875	42	19	24
4586	21	17	153
4587	21	17	154
4588	21	17	155
4589	21	17	161
4876	42	19	88
4877	42	19	50
4878	42	19	86
4879	43	19	24
4880	43	19	88
4881	43	19	86
4882	43	19	89
4883	44	19	24
4884	44	19	88
4885	44	19	50
4886	44	19	90
4887	44	19	86
4888	45	19	40
4889	45	19	88
3133	15	19	31
3134	14	19	4
3135	14	19	29
3136	13	19	10
3137	13	19	15
3138	13	19	24
3139	13	19	29
3140	13	19	30
3141	13	19	31
3142	10	19	24
3143	10	19	25
3144	10	19	26
3145	10	19	31
3146	3	16	34
3147	3	16	35
3148	3	16	36
3149	3	16	37
3150	3	16	24
3151	3	16	29
4890	45	19	50
3387	1	16	6
3388	1	16	7
3389	1	16	8
3390	1	16	9
3391	1	16	10
3392	1	16	11
3393	1	16	12
4891	45	19	86
4892	45	19	24
4893	45	19	91
3523	17	17	141
3524	17	17	149
4894	45	19	92
4895	54	19	40
4608	11	17	40
4609	11	17	88
4610	11	17	50
4611	11	17	86
4612	11	17	87
4613	11	17	24
4896	54	19	88
4897	54	19	61
4898	57	19	40
4899	57	19	88
4900	57	19	67
4901	57	19	118
4902	57	19	97
4277	8	20	50
4278	8	20	107
4279	8	20	106
4903	58	19	40
4904	58	19	88
4905	58	19	127
4906	59	19	40
4907	59	19	88
4908	59	19	99
4909	59	19	77
4910	12	16	24
4911	12	16	40
4912	12	16	50
4913	12	16	88
4914	8	21	144
4915	8	21	168
4916	8	21	167
4917	18	17	141
4918	18	17	142
4760	50	19	24
4761	50	19	40
4762	50	19	50
4766	51	19	24
4767	51	19	40
4768	51	19	50
4769	52	19	24
4770	52	19	40
4771	52	19	50
4772	52	19	150
4773	53	19	24
4774	53	19	40
4775	53	19	50
4776	53	19	150
4782	55	19	140
4783	55	19	150
4786	56	19	140
4787	56	19	150
4922	24	17	144
4923	24	17	168
4924	24	17	167
5176	60	19	24
5177	60	19	40
5178	60	19	50
5182	62	19	24
5183	62	19	129
5184	62	19	50
5185	62	19	163
5695	69	19	123
5520	64	19	1
5521	64	19	170
5205	13	16	24
5206	13	16	50
5207	13	16	163
5208	13	16	142
5522	64	19	171
5523	64	19	172
5524	64	19	173
5525	64	19	20
5528	65	19	123
5529	65	19	172
5533	67	19	172
5534	67	19	102
5696	69	19	175
5700	71	19	89
5701	71	19	123
5702	71	19	175
5575	27	17	1
5576	27	17	175
5577	27	17	176
5578	27	17	177
5579	27	17	20
5580	27	17	123
5624	28	17	1
5625	28	17	2
5626	28	17	123
5627	28	17	20
5630	29	17	178
5631	29	17	123
5644	17	20	168
5645	17	20	179
5646	17	20	180
5647	17	20	127
5651	18	20	168
5652	18	20	181
5653	18	20	127
\.


--
-- Data for Name: core_documentset; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_documentset (id, name, description, published, creation_time, update_time, slug, url, kind, image, teaser) FROM stdin;
9	Executive branch congressional reports	<p>This is a list of reports that Congress requires of the executive branch. It is required to be distributed to the House at the beginning of every session, but it is not required to be made public. This is the most recent we can find, referred to as House Document Number 111-83, 111th Congress, 2nd Session.</p>\r\n<p>This document is an image and requires OCR, and is particularly difficult for two reasons: It uses page numbers, and annotations portrait and the data landscape; and it has extremely small print.</p>	t	2011-11-09 12:31:51.154979-05	2011-11-18 10:15:12.598677-05	executive-branch-congressional-reports-2011-11-09	http://www.gpo.gov/fdsys/pkg/CDOC-111hdoc83/pdf/CDOC-111hdoc83.pdf	pdf		
5	South Dakota lobbyist database	<p>This dataset is a simple paginated table containing contact information for lobbyists and their employers in the state of South Dakota.</p>	t	2011-09-06 12:14:36.895205-04	2012-01-26 10:16:12.317956-05	south-dakota-lobbyist-information-2011-09-06	http://apps.sd.gov/applications/ST12ODRS/LobbyistViewlist.asp?psearch=&Submit=GO&ddlYear=All+Years&psearchtype=OR	database		<p>This dataset is a simple paginated table containing contact information for lobbyists and their employers in the state of South Dakota.</p>
14	Combatant tribunal transcripts	<p>This PDF collection is a set of transcripts from combat status review tribunals for high-value detainees of the U.S. Department of Defense. The documents are posted on the <a href="http://www.defense.gov/news/combatant_Tribunals.html">DoD website</a>.</p>\r\n<p>The PDFs appear as images with no searchable text, but they are high-quality scans of typed transcripts.</p>	t	2011-12-09 14:56:22.363496-05	2012-01-26 10:50:54.352634-05	combatant-tribunal-transcripts-2011-12-09	http://media.reporterslab.org/documents/combatant-scripts/transcripts.zip	pdf		<p>This PDF collection is a set of transcripts from combat status review tribunals for high-value detainees of the U.S. Department of Defense. The PDFs appear as images with no searchable text, but they are high-quality scans of typed transcripts.</p>
13	N.C. legislature's statements of economic interest	<p>This collection contains PDFs of statements of economic interest from candidates for North Carolina office in 2010 and state legislators in North Carolina in 2011. PDFs were obtained from Karen Duquette at the <a href="http://www.nccivitas.org/">Civitas Institute</a>, which posts the documents publicly on <a href="http://www.carolinatransparency.com/">carolinatransparency.com</a>.</p>\r\n<p>The PDFs do not contain searchable text. Many of the records are handwritten.</p>	t	2011-12-05 16:35:13.441977-05	2012-01-26 10:42:27.968332-05	nc-legislatures-statements-of-economic-interest-2011-12-05	http://media.reporterslab.org/documents/nc-econ-statements/statements.zip	pdf		<p>This collection contains PDFs of statements of economic interest from candidates for North Carolina office in 2010 and state legislators in North Carolina in 2011. The PDFs do not contain searchable text. Many of the records are handwritten.</p>
10	D.C. housing violations	<p>This is a list of housing code violations from fiscal year 2005 and 2006 from the District of Columbia Department of Consumer and Regulatory Affairs. Documents were obtained via a public information request in 2007 from <a href="http://www.washingtonpost.com/">The Washington Post</a>.</p>\r\n<p>These PDFs contain text as a report generated from Microsoft Access. It has headings that group violations into type and must be applied to the individual records.</p>	t	2011-11-09 16:42:09.034473-05	2012-01-26 10:35:25.996237-05	dc-housing-violations-2011-11-09	http://media.reporterslab.org/documents/dc-housing/housing-violations.zip	pdf		<p>This is a list of housing code violations from fiscal year 2005 and 2006 from the District of Columbia Department of Consumer and Regulatory Affairs. Documents were obtained via a public information request in 2007 from <a href="http://www.washingtonpost.com/">The Washington Post</a>.</p>
11	Madoff customers	<p>This is a list of customers of Bernie Madoff's firm who lost money when it collapsed, courtesy of training materials from <a href="http://www.ire.org/">Investigative Reporters and Editors</a>. It's a straightforward PDF with text data.</p>	t	2011-11-10 09:54:16.952436-05	2012-01-26 10:38:34.677763-05	madoff-customers-2011-11-10	http://media.reporterslab.org/documents/madoff/madoff.pdf	pdf		<p>This is a list of customers of Bernie Madoff's firm who lost money when it collapsed, courtesy of training materials from <a href="http://www.ire.org/">Investigative Reporters and Editors</a>. It's a straightforward PDF with text data.</p>
12	Border fence contributors	<p>This is a list of nationwide contributors to Arizona Gov. Jan Brewer's plan to build a border fence, courtesy of Arizona State University Professor Steve Doig. There appears to be an embedded font in the document.</p>	t	2011-11-10 13:01:59.747872-05	2012-01-26 10:39:44.9699-05	border-fence-contributors-2011-11-10	http://media.reporterslab.org/documents/az-border-list/contributor-list-11.pdf	pdf		<p>This is a list of nationwide contributors to Arizona Gov. Jan Brewer's plan to build a border fence, courtesy of Arizona State University Professor Steve Doig. There appears to be an embedded font in the document.</p>
2	Your Seat at the Table	<p>The Obama-Biden Transition Team posted these documents when they met with interest groups during the transition. On that page, you could track those meetings, view documents provided to the transition team and leave comments for the team.</p>\r\n<p>The site allows users to search for download all of the documents (mostly scanned PDFs) as well as some of the included metadata.</p>	t	2011-08-10 11:19:57.112199-04	2012-01-26 09:57:50.092712-05	your-seat-at-the-table	http://change.gov/open_government/yourseatatthetable	database		<p>The Obama-Biden Transition Team posted these documents when they met with interest groups during the transition. On that page, you could track those meetings, view documents provided to the transition team and leave comments for the team.</p>
7	Clinton political appointments	<p>Officially the United States Government Policy and Supporting Positions, the "Plum Book" is produced every four years after the November election in various formats.</p>\r\n<p>The 2000 edition, which we're using here, notes all political appointments at the end of the Clinton administration. The format as much as anything is the difficulty with this book.</p>\r\n<p>Download the <a href="/admin/core/documentset/7/media.reporterslab.org/documents/congress/clinton-appointments-00.pdf">combined document</a><a href="http://media.reporterslab.org/documents/congress/clinton-appointments-00.pdf"> here (PDF)</a> or view the <a href="http://www.gpoaccess.gov/plumbook/2000/index.html">appointments by office</a> at the document's source.</p>	t	2011-11-09 12:25:17.61423-05	2012-01-26 10:17:08.014361-05	clinton-political-appointments-2011-11-09	http://www.gpoaccess.gov/plumbook/2000/index.html	pdf		<p>Officially the United States Government Policy and Supporting Positions, the "Plum Book" is produced every four years after the November election in various formats.</p>
3	British Columbia physician and surgeons database	<p>This physician database from the College of Physicians and Surgeons of British Columbia contains information such as addresses and phone numbers as well as details like license status, credentials and degree information. Information can only be returned by search.</p>\r\n<p>Any search performed must return fewer than 200 results or an error message will appear. Searching must be done through last name, first name or city. You can also narrow results by language spoken, gender, or type of physician.</p>\r\n<p>Searches also store a cookie on the user's machine. Other machines can't access those search results without it.</p>\r\n<p><em>&nbsp;Requested by Chad Skelton of the <a href="http://www.vancouversun.com">Vancouver Sun</a></em></p>	t	2011-08-15 10:12:02.538248-04	2012-01-26 10:27:36.544713-05	college-of-physicians-and-surgeons-of-british-columbia	https://www.cpsbc.ca/find-a-contact	database		<p>This physician database from the College of Physicians and Surgeons of British Columbia contains information such as addresses and phone numbers as well as details like license status, credentials and degree information. Information can only be returned by search.</p>
4	British Columbia teacher database	<p>This database from the British Columbia Ministry of Education provides details about teachers practicing in the province. It returns name, certificate status, practicing status and a table of items like disciplinary action, fee non-payment or criminal actions.</p>\r\n<p>Data must be accessed through name search. It does provide a last name search that will find any typed letter at the beginning of their last name, and if the last name is split into two pieces, the search will hit if either are true.</p>\r\n<p>Results are returned only 10 at a time. But the results datagrid is on every individual details page, just hidden with CSS.</p>\r\n<p><em>Requested by Chad Skelton of the <a href="http://www.vancouversun.com">Vancouver Sun</a></em></p>	t	2011-08-15 10:34:10.145757-04	2012-01-26 10:31:45.336448-05	bc-college-of-teachers	http://www.bcteacherregulation.ca/CertificateServices/FindATeacher.aspx	database		<p>This database from the British Columbia Ministry of Education provides details about teachers practicing in the province. It returns name, certificate status, practicing status and a table of items like disciplinary action, fee non-payment or criminal actions.</p>
17	Interview with Jane Mayer	<p>This interview with investigative reporter Jane Mayer, conducted by Duke Professor Phil Bennett, was recorded at Duke Studio&nbsp;on Oct. 25, 2010.&nbsp;Total run time is 1:19:17.</p>\r\n<p>The video is provided by the DeWitt Wallace Center for Media &amp; Democracy's <a href="http://dewitt.sanford.duke.edu/rutherfurd-living-history/">Rutherfurd Living History</a> program.</p>\r\n<p>The transcript contained in the ZIP file was created June 6, 2012, by workers from Amazon's <a href="https://www.mturk.com">Mechanical Turk</a> service and edited by Reporters' Lab Managing Editor Tyler Dukes.</p>	t	2012-07-09 11:32:11.013555-04	2012-07-09 11:33:50.223492-04	interview-with-jane-mayer-2012-07-09	http://media.reporterslab.org/documents/mayer/mayer-docs.zip	video		<p>This interview with investigative reporter Jane Mayer, conducted by Duke Professor Phil Bennett, was recorded at Duke Studio&nbsp;on Oct. 25, 2010.&nbsp;Total run time is 1:19:17.</p>
15	Deepwater Horizon correspondence	<p>This collection of PDFs resulted from a FOIA request from The Washington Post for the Mineral Management Service related to the Deepwater Horizon oil spill in the Gulf Coast.</p>\r\n<p>It contains 1,553 pages of correspondence that have already been processed using optical character recognition.</p>	t	2012-02-02 12:59:33.30441-05	2012-02-02 13:45:53.574365-05	deepwater-horizon-correspondence-2012-02-02	http://media.reporterslab.org/documents/oil-spill/oil-spill.zip	pdf		<p>This collection of PDFs resulted from a FOIA request from The Washington Post for the Mineral Management Service related to the Deepwater Horizon oil spill in the Gulf Coast. It contains 1,553 pages of correspondence that have already been processed using optical character recognition.</p>
16	NC Stars site	<p>The NC Stars database is a site for unemployed workers. It's a difficult scraping job because it requires cookies to be set and has the information you want buried deep inside the answers.&nbsp;</p>	f	2012-02-28 18:23:19.211221-05	2012-02-28 18:23:19.211629-05	nc-stars-site-2012-02-28	http://eslmi01.esc.state.nc.us/default.asp	database		
8	House disbursement accounts	<p>The 2009 3rd quarter House Disbursement Accounts poses a formatting challenge because they're printed as a book or report instead of a database. The House has declined to release any other format, claiming it would be subject to mischief.</p>\r\n<p>This version of the material is available through the <a href="http://disbursements.house.gov/archive.shtml">House archives</a>, while the most current version is available at <a href="http://disbursements.house.gov/">disbursements.house.gov</a>. You can also find more about some of the codes in this document on the site.</p>	t	2011-11-09 12:28:25.285664-05	2012-02-29 13:50:26.139061-05	2011-q2-house-dispursement-accounts-2011-11-09	http://media.reporterslab.org/documents/congress/house-disbursements-09Q3.pdf	pdf		<p>The 2009 3rd quarter House Disbursement Accounts poses a formatting challenge because they're printed as a book or report instead of a database. The House has declined to release any other format, claiming it would be subject to mischief.</p>
18	Interview with Dana Priest	<p>This interview with Pulitzer Prize-winning reporter Dana Priest, conducted by Duke Professor Phil Bennett, was recorded at Duke Studio on Oct. 19, 2009. Total run time is 1:08:00.</p>\r\n<p>The video is provided by the DeWitt Wallace Center for Media &amp; Democracy's <a href="http://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=1&amp;ved=0CEMQFjAA&amp;url=http%3A%2F%2Fdewitt.sanford.duke.edu%2Frutherfurd-living-history%2F&amp;ei=v_z6T_2fJI-u8ASbtvD2Bg&amp;usg=AFQjCNHX6NpiJUzN1MDhVv74dNbkbJurSQ&amp;sig2=p6bufmJlhMAmUIdwUJ4r6Q">Rutherfurd Living History</a> program.&nbsp;</p>\r\n<p>The transcript contained in the ZIP file was created May 24, 2012, by workers from Amazon's <a href="https://www.mturk.com">Mechanical Turk</a> service and edited by Reporters' Lab Managing Editor Tyler Dukes.</p>	t	2012-07-09 11:37:33.306354-04	2012-07-09 11:38:07.709005-04	interview-with-dana-priest-2012-07-09	http://media.reporterslab.org/documents/priest/priest-docs.zip	video		<p>This interview with Pulitzer Prize-winning reporter Dana Priest, conducted by Duke Professor Phil Bennett, was recorded at Duke Studio on Oct. 19, 2009. Total run time is 1:08:00.</p>
19	N.C. House Judiciary Committee eugenics meeting audio	<p>This mp3 file from the&nbsp;<a href="http://www.ncleg.net/gascripts/committees/Committees.asp?sAction=ViewCommittee&amp;sActionDetails=House+Standing_29">North Carolina House Judiciary Committee</a>&nbsp;meeting May 22, 2012, contains discussion on proposed compensation for victims of the state's eugenics program, which operated until 1977.</p>\r\n<p>Audio was recorded at the Legislative Building in Raleigh, N.C., and provided by the N.C. Center for Voter Education's&nbsp;<a href="http://www.voterradio.com/">VoterRadio.com</a>. Total run time is 47:36.</p>\r\n<p>Audio around the 40-minute mark is heavily garbled due to serious injuries sustained by the speaker in a car accident.</p>\r\n<p>The transcript contained in the ZIP file was created July 10, 2012, by workers from Amazon's&nbsp;<a href="https://www.mturk.com">Mechanical Turk</a>&nbsp;service and edited by Reporters' Lab Managing Editor Tyler Dukes.</p>	t	2012-07-10 14:20:55.054509-04	2012-07-10 14:23:35.099979-04	nc-house-judiciary-committee-eugenics-meeting-audio-2012-07-10	http://media.reporterslab.org/documents/eugenics-hearing/hearing-files.zip	audio		<p>This mp3 file from the <a href="http://www.ncleg.net/gascripts/committees/Committees.asp?sAction=ViewCommittee&amp;sActionDetails=House+Standing_29">North Carolina House Judiciary Committee</a> meeting May 22, 2012, contains discussion on proposed compensation for victims of the state's eugenics program, which operated until 1977.&nbsp;Total run time is 47:36.</p>
\.


--
-- Data for Name: core_operatingsystem; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_operatingsystem (id, creation_time, update_time, name, url, published, description, slug, teaser) FROM stdin;
1	2011-08-10 11:13:54.321854-04	2011-08-10 11:13:54.321896-04	Mac OSX 'Snow Leopard'	http://en.wikipedia.org/wiki/Mac_OS_X_Snow_Leopard	t		mac-osx-snow-leopard	
2	2011-08-10 11:14:23.815904-04	2011-08-10 11:14:23.815937-04	Microsoft WIndows 7 x64	http://windows.microsoft.com/en-US/windows7/products/home	t		microsoft-windows-7-x64	
3	2011-08-10 11:14:36.561316-04	2011-08-10 11:14:36.561349-04	Microsoft Windows 7 x32	http://windows.microsoft.com/en-US/windows7/products/home	t		microsoft-windows-7-x32	
4	2011-08-10 11:15:13.139407-04	2011-08-10 11:15:13.13944-04	Microsoft WIndows Vista x64	http://windows.microsoft.com/en-US/windows-vista/products/home	t		microsoft-windows-vista-x64	
5	2011-08-10 11:15:25.136384-04	2011-08-10 11:15:25.136416-04	Microsoft Windows Vista x32	http://windows.microsoft.com/en-US/windows-vista/products/home	t		microsoft-windows-vista-x32	
6	2011-08-10 11:15:51.409576-04	2011-08-10 11:15:51.409615-04	Microsoft Windows XP	http://windows.microsoft.com/en-US/windows/products/windows-xp	t		microsoft-windows-xp	
7	2011-08-10 11:16:25.89106-04	2011-08-10 11:16:25.891093-04	Ubuntu Linux 11.04	http://www.ubuntu.com/	t		ubuntu-linux-1104	
8	2011-09-28 12:39:43.844784-04	2011-09-28 13:02:44.935804-04	Web Based	http://www.getfirefox.com/	t	<p>Anything web-based should be operating system agnostic.</p>	web-based-2011-09-28	
\.


--
-- Data for Name: core_product; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_product (id, creation_time, update_time, name, url, description, cost, slug, published, open_source, demo_available, company, release_date, obsolete, image, os_availability, teaser) FROM stdin;
8	2011-12-16 08:16:29.223677-05	2012-02-07 17:00:22.639653-05	Able2Extract Professional	http://www.investintech.com/	<p>Able2Extract Professional turns PDFs into editable Excel sheets and Word documents. This software also includes OCR technology to read scanned images in PDFs.</p>\r\n<p>This software will also convert PDFs into Open Office Calc, the open-source Excel equivalent, or Open Office Writer, the open-source Word equivalent.</p>\r\n<p>A free seven-day trial of this software is available. However, it will only convert three pages at a time without purchasing the full license</p>\r\n<p>Investintech also provides a product called Able2Extract PDF Converter that is $30 cheaper than this Professional version, but does not include the OCR technology.</p>	$129.95	able2extract-pdf-converter-2011-12-16	t	f	t	Investintech.com Inc.	9.30.2010	f		windows	<p>Able2Extract Professional turns PDFs into editable Excel sheets and Word documents. This software also includes OCR technology to read scanned images in PDFs.</p>
4	2011-11-09 11:37:47.376576-05	2012-01-31 19:12:08.292891-05	Nitro Pro	http://www.nitropdf.com/	<p>Nitro Pro is PDF software that allows users to edit PDFs and convert them to other file formats, like spreadsheets, Word documents and images. It also has other features, like OCR support and encryption capability. The full version is available for a 14-day trial.</p>	$99.99	nitro-pro-2011-11-09	t	f	t	Nitro	2011-11-02	f		windows	<p>Nitro Pro is PDF software that allows users to edit PDFs and convert them to other file formats, like spreadsheets, Word documents and images. It also has other features, like OCR support and encryption capability.</p>
7	2011-12-15 12:08:33.561623-05	2012-01-31 19:14:27.109572-05	ABBYY FineReader	http://finereader.abbyy.com/	<p>This optical character recognition software turns scans, PDFs and digital photographs into searchable and editable documents. The company boasts "unmatched recognition accuracy."</p>\r\n<p>The software recognizes documents written in one or several of 189 languages.</p>	$169 for professional, $399 for corporate	abbyy-fine-reader-2011-12-15	t	f	t	ABBYY		f	review_lab/contrib/img/products/FR11_L_Eng_Pro_80x95.png	windows	<p>This optical character recognition software turns scans, PDFs and digital photographs into searchable and editable documents. The company boasts "unmatched recognition accuracy."</p>
2	2011-08-15 11:16:20.777005-04	2012-01-31 19:07:44.156128-05	Outwit Hub	http://www.outwit.com/	<p>The developers call Outwit a "web collection engine." A limited version of the software is free, but to unlock the full features you must buy a license. From the site:</p>\r\n<blockquote>\r\n<p>Users can easily extract links, images, email addresses, RSS news, data tables, etc. from series of pages without ever seeing the source code. Extracted data can be exported to CSV, HTML, Excel or SQL databases, while images and documents, are directly saved to your hard disk.</p>\r\n</blockquote>	$35	outwit-hub	t	f	t	Outwit	2011-08-13	f		wm	<p>The developers call Outwit a "Web collection engine" designed to extract everything from links to data tables. The program allows users to save data in multiple formats and downloaded files on their computers.</p>
9	2011-12-20 13:01:05.694416-05	2012-02-06 12:33:03.282231-05	Acrobat Pro	http://www.adobe.com/products/acrobatpro.html	<p>Adobe Acrobat Pro bills itself as the "original PDF converter" and gives users a variety of tools for managing, creating and publishing documents to or from PDF format. It also features tools to make PDFs searchable with OCR software.</p>\r\n<p>Its full features list is long, but here's an overview:</p>\r\n<ul>\r\n<li>Convert or scan to PDF</li>\r\n<li>Export and edit PDF files</li>\r\n<li>Combine files from multiple applications</li>\r\n<li>Increase productivity and process consistency</li>\r\n<li>Streamline online document reviews</li>\r\n<li>Collect data with fillable PDF forms</li>\r\n<li>Protect PDF files and documents</li>\r\n<li>Comply with PDF and accessibility standards</li>\r\n<li>Read, search, and share PDF files</li>\r\n</ul>\r\n<p>The company also offers a fully functional trial (Windows only for now).</p>	$449	adobe-acrobat-pro-2011-12-20	t	f	t	Adobe		f		wm	<p>Adobe Acrobat Pro bills itself as the "original PDF converter" and gives users a variety of tools for managing, creating and publishing documents to or from PDF format. It also features tools to make PDFs searchable with OCR software.</p>
15	2012-02-06 14:11:06.972519-05	2012-02-06 14:14:43.252846-05	Basecamp	http://basecamphq.com/	<p>Basecamp is a Web-based application that allows users to manage multiple projects by sharing files, calendars, to-do lists and messages with groups.</p>\r\n<p>On its website, the company points out that it does not take a statistics-based approach to project management:</p>\r\n<blockquote>\r\n<p>Pictures and numbers don&rsquo;t get projects done. Basecamp tackles project management from an entirely different angle: A focus on communication and collaboration. Basecamp brings <em>people</em> together.</p>\r\n</blockquote>\r\n<p>The software has a 30-day trial. Although users pay a monthly subscription fee, contracts aren't required.</p>	$49.99/month - $149/month	basecamp-2012-02-06	t	f	t	37signals		f		web	<p>Basecamp is a Web-based application that allows users to manage multiple projects by sharing files, calendars, to-do lists and messages with groups.</p>
12	2012-02-06 12:32:37.487765-05	2012-02-06 12:32:37.487865-05	Dragon	http://www.nuance.com/	<p>Dragon speech recognition software allows users to convert talk to text with either a microphone or through compatible recording devices and boasts "up to 99 percent <span id="opmodule_nuanceus_ProductDetailsPage_contentBody" class="opDefaultContent">recognition accuracy right out of the box."</span></p>\r\n<p>The software,available as Dragon Dictate for Mac and Dragon Naturally Speaking for PC, can also be trained to recognize proper nouns with a Vocabulary Editor.</p>\r\n<p>Programmable voice commands also give users the ability to control their computers, launching programs or executing tasks.</p>	$99.99-$199.99	dragon-2012-02-06	t	f	f	Nuance Communications Inc.		f		wm	<p>Dragon speech recognition software allows users to convert talk to text with either a microphone or through compatible recording devices and boasts "up to 99 percent <span id="opmodule_nuanceus_ProductDetailsPage_contentBody" class="opDefaultContent">recognition accuracy right out of the box."</span></p>
10	2011-12-20 21:53:06.954169-05	2012-03-22 12:28:51.340485-04	Cogniview PDF2XL OCR	http://www.cogniview.com/pdf2xl-ocr.php	<p>Cogniview's PDF2XL OCR is conversion software that turns PDF files into Excel or Word files, as well as HTML and comma-delimited text.&nbsp;It also includes an optical character recognition feature that allows it to convert scanned documents into usable formats.</p>	$129.97	cogniview-pdf2xl-ocr-2011-12-20	t	f	t	Cogniview		f	review_lab/contrib/img/products/Capture.PNG	windows	<p>Cogniview's PDF2XL OCR is conversion software that turns PDF files into Excel or Word files, as well as HTML and comma-delimited text.&nbsp;It also includes an optical character recognition feature that allows it to convert scanned documents into usable formats.</p>
6	2011-11-18 12:38:38.132573-05	2012-01-31 19:13:13.350927-05	Cometdocs	http://www.cometdocs.com/	<p>Cometdocs is a free online file converter good for more than 50 different functions, including OCR and PDF-to-Excel conversion. A full list of these functions is available on the <a href="http://www.cometdocs.com/">application's FAQ page</a>.</p>\r\n<p>Although it's free, users must supply their email address if they opt not to sign up for a free premium account.The site then sends a link where users have 24 hours to download the converted file.</p>\r\n<p>Premium accounts provide a few additional benefits, as described by the company:</p>\r\n<blockquote>\r\n<p>By signing up for a free account, you will receive faster document conversions since account holders receive priority in the conversion sequence. You will also be able to retrieve them directly from the file manager and store the files there for use at a later stage. You will also not have to provide an email address each time that you perform a conversion. Best of all, it is totally free! There is no cost to you.</p>\r\n</blockquote>	Free	cometdocs-2011-11-18	t	f	f	Cometdocs.com	2010	f		web	<p>Cometdocs is a free online file converter good for more than 50 different functions, including OCR and PDF-to-Excel conversion</p>
13	2012-02-06 13:06:42.242029-05	2012-02-06 13:07:05.111956-05	GATE	http://gate.ac.uk/	<p>GATE is a suite of open-source software used for natural language processing that includes a system for <a href="http://gate.ac.uk/ie/">information/entity extraction</a>.</p>\r\n<p>Developed in the mid-1990s, it is now available for almost every operating system. From the <a href="http://gate.ac.uk/sale/tao/splitch1.html#x4-30001">user manual</a>:</p>\r\n<blockquote>\r\n<p>It is nearly 15 years old and is in active use for all types of computational task involving human language. GATE excels at text analysis of all shapes and sizes. From large corporations to small startups, from multi-million-pound research consortia to undergraduate projects, our user community is the largest and most diverse of any system of this type, and is spread across all but one of the continents<span class="footnote-mark"><a name="fn3x1-bk" href="http://gate.ac.uk/sale/tao/splitch1.html#fn3x1"></a></span>.</p>\r\n</blockquote>	Free	gate-2012-02-06	t	t	f	University of Sheffield	May 6, 2011	f		wm	<p>GATE is a suite of open-source software used for natural language processing that includes a system for information/entity extraction.</p>
14	2012-02-06 13:52:08.399808-05	2012-02-06 13:56:24.81662-05	TimeFlow	http://reporterslab.org/timeflow/	<p>TimeFlow is a visual tool for reporters looking to organize and analyze historical data on long-term stories.</p>\r\n<p>Developed by visualization experts <a href="http://fernandaviegas.com/">Fernanda Vi&eacute;gas</a> and <a href="http://www.bewitched.com/">Martin Wattenberg</a> at <a href="http://flowingmedia.com/">Flowing Media</a>, TimeFlow makes it easier for reporters to tell in-depth narratives by tracking trends and making sense of temporal data.</p>	Free	timeflow-2012-02-06	t	t	f	Reporters' Lab	July 29, 2010	f		wm	<p>TimeFlow is a visual tool for reporters looking to organize and analyze historical data on long-term stories.</p>
16	2012-02-06 14:30:41.888502-05	2012-02-06 14:31:10.387566-05	OpenNLP	http://incubator.apache.org/opennlp/	<p>Apache's OpenNLP is an open-source toolkit that processes natural language using machine-based learning and includes support for entity extraction.</p>\r\n<p>Other features in the java package include a sentence detector and a system to tag parts of speech.</p>	Free	opennlp-2012-02-06	t	t	f	Apache Software Foundation	Nov. 28, 2011	f		wm	<p>Apache's OpenNLP is an open-source toolkit that processes natural language using machine-based learning and includes support for entity extraction.</p>
3	2011-09-28 12:40:08.710918-04	2012-02-24 14:18:42.343778-05	Needlebase	http://www.needlebase.com/	<p>Needlebase is a hosted solution for data analysis. It can scrape webpages or uploaded files, allowing users to view that information in different ways. It also allows users to export those data views in a number of useful formats like XML or JSON.</p>\r\n<p>Developers announced in 2011 they would be <a href="http://www.needlebase.com/blog/243-needlebase-to-be-retired">retiring the program</a> in June 2012.</p>\r\n<p>From the Needlebase homepage:</p>\r\n<blockquote>\r\n<p>Using Needlebase through a web browser, without programmers or DBAs, your data team can easily:</p>\r\n<ul>\r\n<li><strong>acquire data from multiple sources</strong>:&nbsp; A simple tagging process quickly imports structured data from complex websites, XML feeds, and spreadsheets into a unified database of your design.</li>\r\n<li><strong>merge, deduplicate and cleanse</strong>: Needlebase uses intelligent semantics to help you find and merge variant forms of the same record.&nbsp; Your merges, edits and deletions persist even after the original data is refreshed from its source.</li>\r\n<li><strong>build and publish custom data views</strong>: Use Needlebase's visual UI and powerful query language to configure exactly your desired view of the data, whether as a list, table, grid, or map.&nbsp; Then, with one click, publish the data for others to see, or export a feed of the clean data to your own local database.</li>\r\n</ul>\r\nNeedlebase dramatically reduces the time, cost, and expertise needed to build and maintain comprehensive databases of practically anything.</blockquote>\r\n<p>Needlebase has a free tier, but it is very limited in the quantity of data you can put into it. Prices range from $399 to $999 a month based on how much data you want to deal with.</p>	Free to $999/Month	needlebase-2011-09-28	t	f	t	ITA Software		t			<p>Needlebase is a hosted solution for data analysis. It can scrape webpages or uploaded files, allowing users to view that information and save it in different ways. Developers are retiring the program in June 2012.</p>
17	2012-02-06 15:23:57.761756-05	2012-02-06 15:24:20.28322-05	Mendeley	http://www.mendeley.com/	<p>Although it was created as a way for scientists to manage references, generate citations and connect with other researchers, Mendeley also provides options for organizing documents and collaborating on projects.</p>\r\n<p>Users can annotate documents and share notes with private groups, and uploaded documents are auto-populated with metadata, according to the <a href="http://www.mendeley.com/features/add-and-organize/">website</a>:</p>\r\n<blockquote>\r\n<p>When you add PDFs, we instantly scan them to identify the author, title, journal and other information by matching the PDF's contents with our global research library.</p>\r\n</blockquote>\r\n<p>Mendeley is free for managing up to 1 GB of files, and premium packages are available for up to $9.99 a month for 15 GB.</p>	Free - $9.99/month	mendeley-2012-02-06	t	f	f	Mendeley Ltd.		f		wm	<p>Although it was created as a way for scientists to manage references, generate citations and connect with other researchers, Mendeley also provides options for organizing documents and collaborating on projects.</p>
25	2012-05-16 11:03:02.459095-04	2012-05-21 13:21:59.263477-04	Google Drive	http://drive.google.com/	<p>Google says its <a href="https://drive.google.com/">Drive</a> feature is a way to "store and access your files anywhere -- on the Web, on your hard drive or on the go." It's a cloud service that offers access from desktop and mobile devices.</p>\r\n<p>Google offers 5 GB of storage for free; you can have 25 GB for $2.49 a month.</p>\r\n<p>Drive&nbsp;synchronizes with Google Documents and its optical character recognition feature. Users can upload PDFs and convert them via OCR to Google Docs (you also can store PDFs in their original format). Drive replaces the Google Docs "Document List" feature but allows Docs collaboration as before.</p>\r\n<p>Users can also install Drive to their systems or mobile devices, allowing the application to automatically sync files they're modified. Installation requires downloading a 334KB package. The Drive application requires about 68MB of hard drive space.</p>	Free-$2.49/month	google-drive-2012-05-16	t	f	f	Google		f		web	<p>Google Drive is a storage and file sharing service that synchronizes with Google Documents and its optical character recognition function.</p>
19	2012-02-06 18:08:19.383605-05	2012-02-06 18:09:12.493634-05	DEVONthink Pro	http://www.devontechnologies.com/products/devonthink/overview.html	<p>DEVONthink Pro is an organizational tool that allows users to file and manage documents, tag research automatically and write with rich text.</p>\r\n<p>Users can store information in a variety of formats, from PDF and multimedia files to bookmarks and RSS feeds. Smart tags also extract keywords to help with searching and organizing. The software even allows users to share information with a built-in password-protected Web server.</p>\r\n<p>A free demo is available for 150 hours of use.</p>	$79.95	devonthink-pro-2012-02-06	t	f	t	DEVONtechnologies LLC	Dec. 8, 2011	f		mac	<p>DEVONthink Pro is an organizational tool that allows users to file and manage documents, tag research automatically and write with rich text.</p>
20	2012-02-10 10:26:23.087176-05	2012-02-24 14:18:52.381393-05	DocumentCloud	http://www.documentcloud.org/	<p>DocumentCloud, a Web-based document management system developed largely by teams from <em>The New York Times</em> and <em>ProPublica</em>, allows users to upload documents, annotate, analyze and share them with colleagues or the public.</p>\r\n<p>Although it's free, users must <a href="https://www.documentcloud.org/contact">request accounts</a>. Most users are connected with working newsrooms, although there are exceptions.</p>\r\n<blockquote>\r\n<p>DocumentCloud accounts are all newsroom based. DocumentCloud is available to anyone who reports on primary source documents. For the most part our users are journalists, but if you are doing document based investigative reporting we'd love to have you join us, even if you aren't a newsroom-based journalist in the conventional sense.</p>\r\n</blockquote>\r\n<p>DocumentCloud uses <a href="http://code.google.com/p/tesseract-ocr/">Tesseract</a>, an open-source optical character recognition program, to identify text in PDFs. It also uses Thomson Reuters' proprietary <a href="http://www.opencalais.com/">OpenCalais</a> service for entity extraction using natural language processing.</p>\r\n<p>From the <a href="https://www.documentcloud.org/about">website</a>:</p>\r\n<blockquote>\r\n<p>DocumentCloud is a catalog of primary source documents and a tool for annotating, organizing and publishing them on the web. Documents are contributed by journalists, researchers and archivists. We're helping reporters get more out of documents and helping newsrooms make their online presence more engaging.</p>\r\n</blockquote>\r\n<p>The application also has an open API and other related, <a href="https://www.documentcloud.org/opensource">open-source projects</a> to help organizations work with data.</p>	Free	documentcloud-2012-02-10	t	t	f	Investigative Reporters and Editors	2009	f		web	<p>DocumentCloud, a Web-based document management system<em></em>, allows users to upload documents, automatically identify text, annotate, analyze them with entity extraction and share files with colleagues or the public.</p>
21	2012-03-12 09:35:47.904296-04	2012-03-16 15:25:43.08543-04	Evernote	http://evernote.com/	<p>Evernote's tagline is "Remember everything." It offers a way to take notes on your computer, phone or tablet and organize them into categories, notebooks and by tags.</p>\r\n<p>All the stored information syncs between devices and can also be shared with other Evernote users.</p>	Free	evernote-2012-03-12	t	f	f	Evernote Corp.		f	review_lab/contrib/img/products/evernoteLogo.png	all	<p>Evernote's tagline is "Remember everything." It offers a way to take and share notes on your computer, phone or tablet and organize them into categories, notebooks and by tags.</p>
18	2012-02-06 17:04:42.852078-05	2012-04-17 12:26:07.204026-04	Scrivener	http://www.literatureandlatte.com/scrivener.php	<p>Primarily designed as a writing tool, Scrivener allows users to organize research documents, notes and drafts for longform projects.</p>\r\n<p>In addition to a rich text editor, the software has features that allow users to reorganize writing on the fly as well as file and manage photos, PDFs and other documents. From the features list:</p>\r\n<blockquote>\r\n<p>While many other writing project management tools impose their own workflows or limit themselves to fiction-writing, Scrivener recognises that all writers of long-form texts often face similar problems, and provides an array of flexible tools that allow you to do things your way, no matter what kind of writing you do.</p>\r\n</blockquote>\r\n<p>Separate apps also allow users to sync content with mobile devices.</p>	$40 - $45	scrivener-2012-02-06	t	f	t	Literature & Latte Ltd.	Nov. 26, 2011	f		wm	<p>Primarily designed as a writing tool, Scrivener allows users to organize research documents, notes and drafts for longform projects.</p>
11	2012-01-13 11:08:53.746694-05	2012-03-19 11:42:59.611656-04	OmniPage	http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600	<p>OmniPage is a PDF tool that advertises itself as "the most accurate OCR solution." It can process scanned documents and save PDFs in multiple formats, including Excel spreadsheets.</p>\r\n<p>From the <a href="http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600">product's website</a>:</p>\r\n<blockquote>\r\n<p>OmniPage can convert almost all image formats into editable files for your existing PC applications, including Microsoft Word and Excel. Better still, OmniPage can convert documents from one format to another (e.g. TIF to PDF) and make static image documents searchable on your PC and within content-management applications.</p>\r\n</blockquote>\r\n<p>In terms of its optical character recognition and PDF-to-spreadsheet conversion capabilities, the standard and professional versions do not have <a href="http://www.nuance.com/ucmprod/groups/imaging/@web-enus/documents/collateral/nc_016052.pdf">significant differences</a>.</p>\r\n<p>It also boasts recognition dictionaries for a variety of industry-specific jargon from law to medicine and features an "IntelliTrain proofing system" that allows it to "learn" the user's editing style to improve results.</p>	$149.99-$499.99	omnipage-professional-2012-01-13	t	f	f	Nuance Communications Inc.	April 23, 2009	f		windows	<p>OmniPage is a PDF tool that advertises itself as "the most accurate OCR solution." It can process scanned documents and save PDFs in multiple formats, including Excel spreadsheets.</p>
22	2012-03-22 12:05:47.436024-04	2012-03-22 12:08:03.980785-04	Tesseract	http://code.google.com/p/tesseract-ocr/	<p>Tesseract is an open-source optical character recognition engine currently maintained by Google. The software uses a command-line interface. For more on Tesseract's OCR performance, see our <a href="/review/documentcloud-offers-useful-but-flawed-features-2012-02-16">review of DocumentCloud</a>, which uses the service.</p>\r\n<p>From the <a href="http://code.google.com/p/tesseract-ocr/">site</a>:</p>\r\n<blockquote>\r\n<p>The Tesseract OCR engine was one of the top 3 engines in the 1995 UNLV Accuracy test. Between 1995 and 2006 it had little work done on it, but since then it has been improved extensively by Google and is probably one of the most accurate open source OCR engines available. Combined with the <a href="http://leptonica.org/">Leptonica Image Processing Library</a> it can read a wide variety of image formats and convert them to text in over 40 languages.</p>\r\n</blockquote>	Free	tesseract-2012-03-22	t	t	f	Google	Oct. 21, 2011	f		wm	<p>Tesseract is an open-source optical character recognition engine currently maintained by Google. The software uses a command-line interface. For more on Tesseract's OCR performance, see our&nbsp;<a href="/review/documentcloud-offers-useful-but-flawed-features-2012-02-16">review of DocumentCloud</a>, which uses the service.</p>
23	2012-03-22 12:24:16.778466-04	2012-03-22 12:27:31.301503-04	OpenCalais	http://www.opencalais.com/	<p>OpenCalais is a Web-based entity extraction service by Thomson Reuters with an open API that allows users to process up to 50,000 documents per day for free. It can only be used for public content.&nbsp;For more on OpenCalais' entity extraction performance, see our <a href="/review/documentcloud-offers-useful-but-flawed-features-2012-02-16">review of DocumentCloud</a>, which uses the service.</p>\r\n<p>Users must register with the site for access to the OpenCalais API.&nbsp;Several plug-ins and services also have OpenCalais built in, mostly to help with auto-tagging and search engine optimization.</p>\r\n<p>Although OpenCalais does not keep copies of the documents it processes, it does keep the metadata -- all the entities like names, organizations and places it extracts from the text. From <a href="http://www.opencalais.com/blogs/kristathomas/introduction-opencalais">the site</a>:</p>\r\n<blockquote>\r\n<p>To repeat, OpenCalais is not a private service, and there is no secure, enterprise version that you can buy to operate behind a firewall. It is your responsibility to police the content that you submit, so make sure you are comfortable with our Terms of Service (<a href="http://www.opencalais.com/terms">TOS</a>) before you jump in.</p>\r\n</blockquote>\r\n<p><a href="http://www.opencalais.com/CommercialCalais">Professional licenses</a> are available for users looking to process more than 50,000 documents a day.</p>	Free	opencalais-2012-03-22	t	f	f	Thomson Reuters	January 2011	f		web	<p>OpenCalais is a Web-based entity extraction service by Thomson Reuters with an open API that allows users to process up to 50,000 documents per day for free. It can only be used for public content.&nbsp;For more on OpenCalais' entity extraction performance, see our&nbsp;<a href="/review/documentcloud-offers-useful-but-flawed-features-2012-02-16">review of DocumentCloud</a>, which uses the service.</p>
24	2012-04-17 12:41:54.190439-04	2012-04-17 12:42:15.537919-04	f4/f5	http://www.audiotranskription.de/english/f4.htm	<p>Developed by a German team of researchers, f4 for Windows and f5 for Mac aid transcription by giving users advanced playback options for audio and video and an integrated text editor.</p>\r\n<p>From the <a href="http://www.audiotranskription.de/english/f4.htm">website</a>:</p>\r\n<blockquote>\r\n<p>Both programs facilitate transcription with various features: adjustable playback speed; keyboard, mouse or foot pedal control; automatic rewind when pausing playback; and programmable keyboard shortcuts for inserting timestamps and text blocks.</p>\r\n</blockquote>\r\n<p>The company's USB foot pedals, which it sells for $75 to $130 depending on the model, are designed to allow hands-free playback control of the software.</p>	Free	f4f5-2012-04-17	t	f	f	audiotranscription.de	2010	f			<p>Developed by a German team of researchers, f4 for Windows and f5 for Mac aid transcription by giving users advanced playback options for audio and video and an integrated text editor.</p>
26	2012-06-07 11:19:17.573496-04	2012-06-19 10:30:34.050517-04	Table2Clipboard	https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/	<p>This Firefox add-on improves the browser's ability to copy HTML tables and paste them into spreadsheets.</p>\r\n<p>Firefox does allow users to copy HTML tables, but the original table disposition is often lost, meaning ugly results when pasting the text onto datasheet applications.&nbsp;Table2Clipboard fixes that problem by allowing users to past table data in Microsoft Excel and other programs with the correct formatting.</p>	Free	table2clipboard-by-dafizilla-for-firefox-2012-06-07	t	f	f	Dafizilla	Aug. 5, 2011	f		web	<p>This Firefox add-on improves the browser's ability to copy HTML tables and paste them into spreadsheets.</p>
28	2012-07-09 10:50:54.115402-04	2012-07-09 10:54:04.467907-04	Table Capture	https://chrome.google.com/webstore/detail/iebpjdmgckacbodjpijphcplhebcmeop	<p>Table Capture is a free Chrome extension that allows users to copy entire HTML tables displayed on single Web pages and paste them in a spreadsheet or export them to Google Docs.</p>\r\n<p>The extension appears as an icon in Chrome's URL bar when HTML tables are present on a page and lists them in a dropdown menu, which highlights the tables on mouse-over.</p>\r\n<p>From the <a href="https://chrome.google.com/webstore/detail/iebpjdmgckacbodjpijphcplhebcmeop/details">developer</a>:</p>\r\n<blockquote>\r\n<p>Chrome itself actually does a great job of copying tables to the clipboard when selecting, copying and pasting tables natively, but often selecting all of the cells is tedious and if you're a Google Docs user, this just saves time.&nbsp;</p>\r\n</blockquote>	Free	table-capture-2012-07-09	t	f	f	George Mike	May 6, 2012	f		web	<p>Table Capture is a free Chrome extension that allows users to copy entire HTML tables displayed on single Web pages and paste them in a spreadsheet or export them to Google Docs.</p>
27	2012-06-13 14:25:42.148425-04	2012-07-03 12:51:17.585742-04	Scraper	https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd	<p>Scraper, a free browser extension for Google Chrome, mines data from Web pages and exports directly to a Google Doc spreadsheet.</p>\r\n<p>Its creator considers it a work in progress, meaning users might find some bugs.&nbsp;</p>\r\n<p>To use the scraper, users highlight a part of the webpage they'd like to scrape, right-click and choose "Scrape similar..." from the menu options. The information is exported to Google Docs as a spreadsheet.&nbsp;</p>\r\n<p>The extension comes with the caveat that it is intended for intermediate to advanced users who are comfortable with XPath, although jQuery is also supported to an extent.</p>	Free	google-chrome-scraper-2012-06-13	t	t	f	bit155	March 18, 2011	f		web	<p>Scraper, a free browser extension for Google Chrome, mines data from Web pages and exports directly to a Google Doc spreadsheet.</p>
29	2012-07-09 11:16:06.443227-04	2012-07-09 11:20:45.46672-04	Data Toolbar	http://datatoolbar.com/	<p>Data Toolbar, available as a browser extension or a standalone program, offers users a point-and-click solution for scraping data from single or multiple Web pages and saving the results as a spreadsheet.</p>\r\n<p>From the <a href="http://datatoolbar.com/">website</a>:</p>\r\n<blockquote>\r\n<p>Data Tool is designed for everyday business users and requires no technical skill. Within minutes you will be extracting thousands of data records from your favourite free or subscription web sites.</p>\r\n</blockquote>\r\n<p>The program allows users to select only the fields they want to mine and gives them options to rename the fields before pulling them into a comma-separated value file.</p>\r\n<p>A free version is available, but results are limited to 100 rows of data.</p>	$24	data-toolbar-2012-07-09	t	f	t	DataTool Services Inc.	May 5, 2012	f		windows	<p>Data Toolbar, available as a browser extension or a standalone program, offers users a point-and-click solution for scraping data from single or multiple Web pages and saving the results as a spreadsheet.</p>
\.


--
-- Data for Name: core_product_categories; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_product_categories (id, product_id, category_id) FROM stdin;
80	2	2
81	4	3
82	6	3
83	7	4
147	3	2
148	20	4
149	20	5
150	20	6
94	12	7
95	9	3
96	9	4
98	13	6
100	14	5
154	21	5
155	11	3
103	15	5
156	11	4
105	16	6
107	17	5
111	19	5
160	22	4
114	8	3
115	8	4
163	23	6
164	10	3
165	10	4
166	18	8
167	18	5
169	24	8
185	25	4
186	25	5
199	26	2
202	27	2
206	28	2
208	29	2
\.


--
-- Data for Name: core_product_operating_systems; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_product_operating_systems (id, product_id, operatingsystem_id) FROM stdin;
409	22	1
410	22	2
303	15	8
411	22	3
412	22	4
413	22	5
414	22	6
415	22	7
311	16	1
219	4	2
220	4	4
221	4	6
222	6	8
223	7	2
312	16	2
224	7	3
225	7	4
226	7	5
313	16	3
314	16	4
315	16	5
316	16	6
317	16	7
227	7	6
418	23	8
419	10	2
420	10	3
421	10	4
422	10	5
423	10	6
424	18	1
425	18	2
426	18	3
427	18	4
428	18	5
429	18	6
325	17	1
326	17	2
327	17	3
328	17	4
329	17	5
330	17	6
331	17	7
437	25	8
259	12	1
260	12	2
261	12	3
262	12	4
263	12	5
264	12	6
265	9	1
266	9	2
267	9	3
268	9	4
213	2	1
214	2	2
215	2	3
269	9	5
270	9	6
345	19	1
351	8	2
352	8	3
216	2	4
217	2	5
218	2	6
353	8	4
354	8	5
279	13	1
280	13	2
281	13	3
282	13	4
283	13	5
284	13	6
285	13	7
286	13	8
355	8	6
447	26	8
450	27	8
294	14	1
295	14	2
296	14	3
297	14	4
298	14	5
299	14	6
300	14	7
454	28	8
366	20	8
461	29	2
462	29	3
463	29	4
464	29	5
465	29	6
376	21	1
377	21	2
378	21	3
379	21	4
380	21	5
381	21	6
382	21	8
383	11	2
384	11	3
385	11	4
386	11	5
387	11	6
466	29	8
\.


--
-- Data for Name: core_producttask; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_producttask (id, name, description, published, creation_time, update_time, slug, product_id, task_id, rating, rating_text, teaser, reviewer_id, editor_id, kicker, subtitle, version_tested, review_done, image) FROM stdin;
53	DocumentCloud spotty on recognizing text in form-based PDF	<p>It took two tries to upload these disclosure forms from North Carolina legislators to DocumentCloud, and the service correctly&nbsp;recognized&nbsp;only half of the terms we were looking for in our tests.</p>\r\n<p>We uploaded the documents at about 11 p.m. in hopes of avoiding peak-hour overloads. But 10 hours later, the Web-based service still hadn't processed 20 of the forms. We had to delete and reload the next morning. This time, it had the 20 problem files ready in less than 10 minutes, indicating the previous hangup was probably a system hiccup.</p>\r\n<p>DocumentCloud batted .500 in our tests to search correctly recognized names and symbols of stocks the legislators own. It hit one of two on "Pfizer," in one case rendering it as "Pflzer" instead. It found three of five in our search for "IBM" but completely whiffed on two reports, failing to capture any of the letters. Experimenting with various search terms eventually led to three of six lawmakers holding BBT, which is also known as BB&amp;T or Branch Banking &amp; Trust. The program's OCR rendered it as "BBE-T" in one case, "BBKT" in another and whiffed on the last.</p>\r\n<p>The program also spit back several false positives.</p>	t	2012-02-10 12:36:33-05	2012-03-22 11:21:01.934015-04	documentcloud-spotty-on-searching-form-based-pdf-2012-02-10	20	13	3	Recognized about half of desired search results	<p>It took two tries to upload these disclosure forms from North Carolina legislators to DocumentCloud, and the service correctly recognized only half of the terms we were looking for in our tests.</p>	7	4		Missed and garbled text caused performance problems.	N/A	2012-02-10	
16	Despite junk data, Cometdocs spits out usable spreadsheet	<p>Cometdocs did a good job converting this simple, lined table into a sortable spreadsheet requiring minimal cleanup. Nothing standout here, but certainly fast and easy if you're looking for something quick.</p>\r\n<p>In our test, Cometdocs converted the text into entries on the output spreadsheet -- page numbers and repeated headers and all. That meant some sorting and deleting, but this just involved some basic Excel functions most users will know and didn't take long.</p>\r\n<p>But the application did inaccurately interpret large white spaces into empty columns, littering the document with blank cells.</p>\r\n<p>Cometdocs nailed our desired outcome, allowing us to sort and return all 29 entries we were looking for. A few entries seemed out of place, and line breaks seemed to be the culprit. These enlarged cells tripped up Cometdocs and made the output a little messy.</p>	t	2011-11-18 13:30:11-05	2012-01-31 19:13:13.495275-05	despite-junk-data-cometdocs-spits-out-usable-spreadsheet-2011-11-18	6	10	3	Simple housekeeping required	<p>Cometdocs did a good job converting this simple, lined table into a sortable spreadsheet requiring minimal cleanup. Nothing standout here, but certainly fast and easy if you're looking for something quick.</p>	4	\N		Sorting and deleting entries won't take long with this product's output.	N/A	2011-11-18	
49	Form-based PDF provides a challenge for Able2Extract	<p>Able2Extract took a very long time to process this large PDF of nearly 1,700 pages of scanned-in forms, some with handwritten responses. After nearly four hours, it did eventually produce a legible, search-ready document, but missed a few terms.</p>\r\n<p>Searching for our keywords proved to be mostly successful. Searching the document for "Pfizer" and for "IBM" yielded the desired results. However, the third test search, on "BB&amp;T," failed to find all six lawmakers. It only found three matches. I was able to locate two others matches by altering the search term, but one last match was still unaccounted for.</p>\r\n<p>Turns out Able2Extract completely missed the term on one page, returning nothing in that space. So proceed with caution.</p>	t	2012-02-07 12:56:28-05	2012-02-07 17:02:22.544109-05	form-based-pdf-provides-a-challenge-for-able2extract-2012-02-07	8	13	3	Slow and imperfect, but mostly effective	<p>Able2Extract took a very long time to process this large PDF of nearly 1,700 pages of scanned-in forms, some with handwritten responses. After nearly four hours, it did eventually produce a legible, search-ready document, but missed a few terms.</p>	3	4		The software missed a few terms and took its time, but its results are passable.	Able2Extract Professional 7	2012-02-07	
52	Searching partial-text PDF clumsy, but doable with DocumentCloud 	<p>Despite issues with recognizing combined strings of numbers and letters and some miscues from this poorly scanned document of congressional reports, DocumentCloud was a good first step when trying to sift through this massive PDF file.</p>\r\n<p>After some trial-and-error using various search terms, we were able to track down five of the eight text entries we were looking for in our tests.</p>\r\n<p>That text, though, was garbled in many places, due to the formatting and poor scan quality of the report. However, DocumentCloud allows users to easily switch between the recognized plain text and the original PDF. By searching the text and switching to the PDF, we were able to find the answers in most cases.</p>\r\n<p>DocumentCloud failed in two of our searches for strings of numbers and letters, which were too garbled to locate in part or in whole. In the third failure, the program returned multiple hits, but froze repeatedly when trying to scroll through the list.</p>	t	2012-02-10 11:56:53-05	2012-03-22 11:18:55.299446-04	searching-partial-text-pdf-clumsy-but-do-able-with-documentcloud-2012-02-10	20	12	2	Poor scan quality hinders text recognition; strings of numbers, letters an issue	<p>Despite issues with recognizing combined strings of numbers and letters and some miscues from this poorly scanned list of congressional reports, DocumentCloud was a good first step when trying to sift through this massive PDF file.</p>	7	4		Although it's a good first step, results are far from perfect.	N/A	2012-02-10	
63	Google Drive fails to convert large partial-text PDF	<p>Google Drive failed completely in our attempt to recognize text in this&nbsp;list of executive branch reports required by Congress.</p>\r\n<p>The document is a 17.4 MB beast, far beyond Drive's 2 MB limit. Drive reported an error and failure to upload, preventing any effort to test its capabilities on this challenging document.</p>	t	2012-05-16 12:03:58-04	2012-05-21 15:49:04.062745-04	google-drive-fails-to-convert-large-partial-text-pdf-2012-05-16	25	12	0	Couldn't upload large file	<p>Google Drive failed completely in our attempt to recognize text in this&nbsp;list of executive branch reports required by Congress.</p>	7	4		File size limit stops service in its tracks.		2012-05-16	
4	Outwit captures PDFs, metadata without trouble	<p>With a little help, Outwit takes advantage of this database's simple URL structure and display formatting to download PDFs and collect metadata from the Obama transition team without much trouble.</p>\r\n<p>Although the program's "guess" option picks up most of what you're looking to grab from the site, it chokes on small variations in the entries (in this case, multiple PDFs).</p>\r\n<p><a href="http://blog.outwit.com/?p=55">Building a custom scraper</a> will help capture what you need. It's simple enough to make one that collects the title, date, details link and a list of the PDF file names.</p>	t	2011-08-16 11:20:48-04	2012-01-31 19:07:44.313769-05	outwit-on-changegov	2	2	4	Easily parses simple database structure; custom scraper helps capture needed info	<p>With a little help, Outwit takes advantage of this database's simple URL structure and display formatting to download PDFs and collect metadata from the Obama transition team without much trouble.</p>	1	4		Building a custom scraper helps ensure users collect all the data they want.	2.0.1.15	2011-09-05	
38	Acrobat's OCR incorrectly translates partial-text PDF	<p>The relatively poor quality of this partial-text PDF of congressional reports was too difficult for Adobe Acrobat to translate into a fully text-enabled, searchable document. Much of the text was garbled and misinterpreted, so be wary of using this product if your document was hastily scanned or features unclear text.</p>\r\n<p>Running through the OCR feature was a process- and time-intensive task for the program, especially given the 100-plus-page document. But the wait was largely in vain.</p>\r\n<p>Instead of whole words and/or sentences, many characters were garbled and mistaken for numbers, other letters and symbols. In our tests for search terms, we couldn't return a single one of the full phrases we were looking for. Even some simple keywords were unsearchable -- "terrorist" and "emergency war powers or authorities," for example. Acrobat even had trouble with numbers.</p>	t	2012-01-03 18:08:43-05	2012-02-06 12:33:03.531492-05	acrobats-ocr-falters-on-partial-text-pdf-2012-01-03	9	12	1	Inaccuracy makes finding keywords unlikely	<p>The relatively poor quality of this partial-text PDF of congressional reports was too difficult for Adobe Acrobat to translate into a fully text-enabled, searchable document. Much of the text was garbled and misinterpreted, so be wary of using this product if your document was hastily scanned or features unclear text.</p>	4	\N		Poor scan quality resulted in a garbled document.	10.1.1	2012-01-03	
70	Scraper unable to tackle database with complex structure	<p>Scraper required a lot of hand-holding to capture even a single page of data from this directory of physicians in British Columbia. But even with manual help, its navigation limitations make it a bad choice for the task.</p>\r\n<p>Scraper isn't designed to automatically enter the search terms required by this database, so manual entry is required. Since these search results are displayed in an iFrame, the extension threw an error and was unable to capture the information.</p>\r\n<p>After navigating past the iFrame, however,&nbsp;the tool did quickly highlight, scrape and export the resulting data into a table and Google Document.&nbsp;But it's not able to dig down into the detail pages or navigate through multiple pages of results.</p>\r\n<p>Journalists seeking a tool that can dig into a large database like this will be better served by using other tools.&nbsp;</p>	t	2012-06-15 10:12:36-04	2012-07-10 09:27:24.083469-04	chrome-scraper-unable-to-scrape-database-2012-06-15	27	3	0	Can't scrape without extensive manual work; can't grab details	<p>Scraper required a lot of hand-holding to capture even a single page of data from this directory of physicians in British Columbia. But even with manual help, its navigation limitations make it a bad choice for the task.</p>	6	4		Problems with iFrame, pagination and detail pages foil browser extension.	1.6	2012-06-15	
5	Outwit collects table data, but cleanup required	<p>Outwit got what we needed from this database of South Dakota lobbyists formatted as a table, but it did let in some junk data that needed some easy cleanup.</p>\r\n<p>After trying the guess function and building a custom scraper, the table function seemed to work best given the tabular structure of the page. There doesn't appear to be a way to tell the program which specific table to pull data from though, so it just grabs everything and merges it.</p>\r\n<p>And because the HTML structure of the data does not allow Outwit to easily discriminate between data, helper text and navigational elements, all three are combined within the output.</p>\r\n<p>This meant some manual clean-up, but it's mostly obvious what needs to go and it shouldn't take long.</p>	t	2011-09-06 12:36:46-04	2012-01-31 19:07:44.220658-05	outwit-on-the-south-dakota-lobbyists-database-2011-09-06	2	5	3	"Table" function captures data, lets in junk; needs cleanup	<p>Outwit got what we needed from this database of South Dakota lobbyists formatted as a table, but it did let in some junk data that needed some easy cleanup.</p>	1	4		None of the scraping options get it exactly right, but the result is pretty close.	2.0.1.15	2011-09-06	
39	Acrobat makes scanned forms searchable with inaccuracies	<p>Acrobat took its time wading through this 1,600-page collection of forms from North Carolina legislators, but its attempt to make the poorly scanned document text searchable shows the program is a good first step when trying to locate keywords in lengthy PDFs.</p>\r\n<p>The first attempt to use optical character recognition using the program's "Searchable Image" output style on the documents ended with an error message, alerting the user that "save as" had failed. Only when switching the output to "Searchable Image (exact)" and splitting the forms into 500-page sections was the conversion successful.</p>\r\n<p>Acrobat took 2 to 3 seconds to convert each page, so although it took some time to wrap up, it's doable in a single sitting.</p>\r\n<p>Accuracy was reasonable, especially considering most of the documents we tested weren't pristine. They were obviously scanned from paper copies -- often poorly -- meaning some of the text was hard to read even for human eyes. Despite that challenge, the company names we were trying to locate in our test for the most part showed up where they were expected. One term, "BB&amp;T," was off by a few characters in some places, and in another Acrobat translated the ampersand into "S.", foiling our search.</p>\r\n<p>Searching for other items also returned a number of false positives as we worked through the document, a clear sign that the program did have trouble where the original type was particularly small or sloppy.</p>\r\n<p>With documents like these, Acrobat shouldn't be the final word when it comes to OCR, but it certainly does a decent job helping reporters find what they're looking for.</p>	t	2012-01-05 15:27:50-05	2012-02-06 12:33:03.479273-05	acrobat-makes-scanned-forms-searchable-with-some-inaccuracies-2012-01-05	9	13	3	Translated most text, tripped up on some symbols	<p>Acrobat took its time wading through this 1,600-page collection of forms from North Carolina legislators, but its attempt to make the poorly scanned document text searchable shows the program is a good first step when trying to locate keywords in lengthy PDFs.</p>	4	\N		Reasonable accuracy makes this a good starting point for OCR.	10.1.1	2012-01-05	
17	Cometdocs turns embedded font into garbled text	<p>Although Cometdocs manages to complete the conversion, the output is nothing but a seemingly random assortment of characters. Nothing useful, sortable or readable here.</p>\r\n<p>Not unexpected with this hard-to-accomplish task, so avoid Cometdocs if an embedded font is giving you trouble.</p>	t	2011-11-18 15:14:45-05	2012-01-31 19:13:13.452549-05	cometdocs-turns-embedded-font-into-garbled-text-2011-11-18	6	11	1	Output in table format, but unusable	<p>Although Cometdocs manages to complete the conversion, the output is nothing but a seemingly random assortment of characters. Nothing useful, sortable or readable here.</p>	4	\N		With this tough document, the only output is mixed bag of symbols.	N/A	2011-11-18	
26	FineReader makes scanned memos searchable with few errors	<p>ABBYY FineReader 11 easily converted scanned memos submitted to the Obama-Biden Transition team to searchable PDFs, getting the text mostly right.</p>\r\n<p>Our tests for accuracy showed very few words missing or changed. The software struggled with some words, including those with apostrophes and some words whose letters are close together. For example, "modern" turned into "modem" and "very" turned into "veiy."</p>	t	2011-12-19 09:04:57-05	2012-01-31 19:14:27.358063-05	abbyy-fine-reader-manages-pdfs-2011-12-19	7	15	4	Quick, nearly accurate conversion	<p>ABBYY FineReader 11 easily converted scanned memos submitted to the Obama-Biden Transition team to searchable PDFs, getting the text mostly right.</p>	6	4		Program produces mostly accurate, searchable PDFs. 	11	2011-12-19	
58	OmniPage's text recognition of transcripts nearly flawless	<p>OmniPage Pro whipped through these transcripts from combatant tribunals fast, recognizing the text in all but a few areas with lower quality scans.</p>\r\n<p>Based on comparisons with samples of the overall document set, the software introduced errors in only 0.5 percent of the text -- nearly flawless performance. Among the words it missed were a few Arabic names -- "Ana" instead of "Atta" and "Anmar instead of "Ammar." It also had a little trouble with faded text in one portion of the document, where the scan wasn't as good as others.</p>\r\n<p>OmniPage's recognition options, which allow users to define the format of the document, also helps make sure the recognized text isn't split into columns.</p>\r\n<p>Between its speed and accuracy, OmniPage is more than a match for this kind of document.</p>	t	2012-03-12 16:55:51-04	2012-03-26 09:29:02.084735-04	omnipages-text-recognition-of-transcripts-nearly-flawless-2012-03-12	11	14	4	Quick text recognition, only minor errors	<p>OmniPage Pro whipped through these transcripts from combatant tribunals fast, recognizing the text in all but a few areas with lower quality scans.</p>	4	\N		Fast work and less than 1 percent error rate buoys software's performance.	18.0	2012-03-12	
62	Drive quickly recognizes text in scanned forms	<p>Google Drive handled this test with relative ease, uploading and recognizing text in 174 political candidate disclosure forms in about 40 minutes.</p>\r\n<p>The Google service performed well, but not perfectly, in our tests for accuracy, which involved searching the forms for the candidates' stock holdings. It correctly found the two with holdings in "Pfizer." It found three of five with IBM stock, and five of six with stock in BB&amp;T, though that search required the user to enter different variants of the stock symbol.</p>\r\n<p>Drive and Docs missed two of the candidates because they entered their info in addendum tables, which the OCR feature failed to capture. In the third miss, the information came on page 14, and Google's documentation notes that its OCR stops recognizing text after 10 pages.</p>\r\n<p>Docs' OCR function also will not accept any file larger than 2MB; in this test, the files ranged from 151KB to 768KB.</p>	t	2012-05-16 11:58:06-04	2012-05-21 15:48:32.151462-04	google-drive-quickly-finds-text-in-scanned-forms-2012-05-16	25	13	3	Converted text in most search targets accurately	<p>Google Drive handled this test with relative ease, uploading and recognizing text in 174 political candidate disclosure forms in about 40 minutes.</p>	7	4		Service offers fast upload, conversion and largely accurate search.		2012-05-16	
69	Scraper easily exports data - only one page at a time	<p>While it quickly gathered data from the first page of the South Dakota lobbyists website, Scraper's single-page limitation meant it could not automatically scrape the other pages of lobbyist information.</p>\r\n<p>That's not to say the tool is without merit. When working with only the first page of data, the tool produced a perfect table in another tab, clearly recreating the first page and adding numbers to the rows.</p>\r\n<p>But without the ability to navigate through hundreds of pages at a clip, using Scraper to collect all the data would be tedious and time-consuming for the average reporter.</p>	t	2012-06-15 10:07:17-04	2012-07-10 09:27:24.104215-04	chrome-scraper-enabled-easy-export-of-page-data-2012-06-15	27	5	1	Scraped first page beautifully; can only handle one page at a time	<p>While it quickly gathered data from the first page of the South Dakota lobbyists website, Scraper's single-page limitation meant it could not automatically scrape the other pages of lobbyist information.</p>	6	4		Inability to paginate would make data collection tedious.	1.6	2012-06-15	
61	Drive chokes on large transcript files, fails to convert text	<p>Google Drive couldn't get out of the starting gate in this test of combatant tribunal transcripts because of its file size restrictions.</p>\r\n<p>It failed to upload three of the five documents because they exceeded its 2 MB limit (our files were 3.4 MB, 3.2 MB, 2.6 MB). It did upload two other smaller files, but Drive's documentation notes "we only look at the first 10 pages when searching for text to extract." In both documents, the sample passages appeared after the 10th page and were cut off.</p>	t	2012-05-16 11:18:10-04	2012-05-21 15:47:21.453055-04	google-drive-chokes-on-large-pdf-transcript-files-2012-05-16	25	14	0	Can't handle large files, long documents; completely failed test	<p>Google Drive couldn't get out of the starting gate in this test of combatant tribunal transcripts because of its file size restrictions.</p>	7	4		Size limits rule out every transcript in this document set.		2012-05-16	
59	OmniPage error-free in recognizing scanned memo text	<p>OmniPage had no trouble with these scanned memos from the Obama-Biden transition team, flawlessly recognizing the text despite a variety of different scan qualities.</p>\r\n<p>In our tests of sample text pulled from the document, OmniPage didn't make a single mistake in the body copy we were looking to recognize.</p>\r\n<p>OmniPage also ran through these smaller documents quickly: Recognition took less than a minute with each file.</p>\r\n<p>It did have trouble with a header in one of our test documents, where an Obama-Biden watermark obscured the text. That's not surprising given the poor quality of the resulting text.</p>	t	2012-03-13 16:24:02-04	2012-03-26 09:29:58.334418-04	omnipage-error-free-in-recognizing-text-in-scanned-memos-2012-03-13	11	15	5	Perfect text recognition; works fast	<p>OmniPage had no trouble with these scanned memos from the Obama-Biden transition team, flawlessly recognizing the text despite a variety of different scan qualities.</p>	4	\N		Perfect performance complemented by product's speed.	18.0	2012-03-13	
3	Form-based search defeats Outwit's scraping attempt	<p>This database of teachers in British Columbia only returns results based on the terms users enter in the search form. And because Outwit can't submit search terms through forms, it's impossible for the software to perform this test.</p>\r\n<p>Without search, there's no way to reliably grab an individual detail record and increment through them to get all of the data.</p>\r\n<p>And although Outwit is able to navigate through pages of search results, it mistakenly jumps through them 10 pages at a time.</p>\r\n<p>Outwit is unable to guess what information you want, so users would have to write a custom scraper. But since there's no reliable way to navigate between pages, at this point it'd make the most sense to find another way to scrape the page.</p>	t	2011-08-16 11:13:22-04	2012-01-31 19:07:44.406406-05	outwit-on-bc-teachers-site	2	4	0	Inability to use search terms in form stop scraping in its tracks	<p>This database of teachers in British Columbia only returns results based on the terms users enter in the search form. And because Outwit can't submit search terms through forms, it's impossible for the software to perform this test.</p>	1	4		The program's limited search function and navigation miscues hold it back.	2.0.1.15	2011-09-05	
7	Needlebase plows through search fields to perfectly copy database	<p>With its ability to automate searches and handle multilevel databases, Needlebase can easily root through and capture this collection of teacher information.</p>\r\n<p>The site returns results based on form searches, so the software can access and save the results by taking user-defined search terms and entering them one at a time.</p>\r\n<p>Needlebase can even collect information from detail pages associated with search results, which require users to click to view. Users just specify what looks like a link and the program will go through those pages one at a time.</p>\r\n<p>The result is a perfect, accurate reproduction of every entry in the database.</p>	t	2011-10-03 10:40:58-04	2012-02-24 14:18:42.5942-05	needlebase-on-the-bc-college-of-teachers-website-2011-10-03	3	4	5	Easily downloads content using search forms, master/detail pattern	<p>With its ability to automate searches and handle multilevel databases, Needlebase can easily root through and capture this collection of teacher information.</p>	1	4		The scraper navigates the database's multiple levels without problems.	--	2011-10-03	
57	Software crashes bring down passable performance on scanned forms	<p>Processing these scanned disclosure forms from North Carolina legislators is time-consuming with OmniPage Pro, and although it recognized most of the text accurately, a software hangup prompted by this 1,700-page file made the results more difficult to wrangle.</p>\r\n<p>OmniPage took its time with each stage of the process, from opening the document to converting it and saving it in PDF format. OCR processing alone took about an hour and a half. But when saving the results into PDF format, the system stalled, prompting a force close. This may be a result of running the program with a virtual machine on a Mac, which means less processing resources.</p>\r\n<p>When we were finally able to wrestle a result from the program, our test showed its text recognition only missed one instance of our search terms. In this case, a poorly scanned table line meant the term - "BB&amp;T" - was mixed with bullet points and dashes.</p>\r\n<p>Searches did return several false positives, mostly caused by smaller type often obscured by shading from the messy scan.</p>	t	2012-03-12 14:58:26-04	2012-03-26 09:27:43.633907-04	software-crashes-bring-down-passable-performance-on-scanned-forms-2012-03-12	11	13	3	Some misses and false positives; big file takes time, causes glitches	<p>Processing these scanned disclosure forms from North Carolina legislators is time-consuming with OmniPage, and although it recognized most of the text accurately, a software hangup prompted by this 1,700-page file made the results more difficult to wrangle.</p>	4	\N		Small text and imperfect scans prompted a few false positives and missed recognition.	18.0	2012-03-12	
2	Quirky physicians database too complex for Outwit	<p>Outwit Hub had too much trouble figuring out the structure of this database of physician contact information to perform an automated scrape. But while it couldn&rsquo;t do everything, it can extract data once users give it a hand.</p>\r\n<p>Database search results are determined partly by the browser cookie the site stores on a user&rsquo;s machine. Each search changes where the URL is pointing, making almost impossible for Outwit Hub to accomplish the task on its own.</p>\r\n<p>For the program to do any good, users have to perform searches themselves, then use Outwit to scrape the data. That&rsquo;s not practical given the size of the dataset and the fact that you can only see 200 results at a time.</p>\r\n<p>Outwit also had trouble with the relationship between master and detail entries. It has options to "dig" into URLs but doesn&rsquo;t differentiate them, simply lumping this data with the master set in the resulting spreadsheet.</p>\r\n<p>None of the default data formats work for this particular page, requiring users to <a href="http://blog.outwit.com/?p=1070">write a scraper manually</a>. Fortunately though, the task is relatively simple and did a good job capturing the data from there.</p>	t	2011-08-15 17:07:26-04	2012-01-31 19:07:44.467856-05	outwit-on-bc-physicians-site	2	3	2	Software can't grasp database structure, but captures some data with help	<p>Outwit Hub had too much trouble figuring out the structure of this database of physician contact information to perform an automated scrape. But while it couldn&rsquo;t do everything, it can extract data once users give it a hand.</p>	1	4		Process for helping software manually is too time-intensive for big dataset.	2.0.1.15	2011-09-05	
40	Acrobat's OCR hits stride with neatly typed transcripts	<p>Acrobat's OCR feature was able to fill this PDF collection with searchable text with only a handful of missing words. Even most of the Arabic names in the original document were translated accurately into the resulting PDF.</p>\r\n<p>After spending about 2 seconds on each page, Acrobat's results were mostly accurate. Some words, as well as a few names, were omitted from searchable text. Others were partially misinterpreted for similar characters -- "a! Qaida" instead of "al Qaida," for example.</p>	t	2012-01-10 12:49:41-05	2012-02-06 12:33:03.417805-05	acrobats-ocr-hits-stride-with-neatly-typed-transcripts-2012-01-10	9	14	3	Some words missing in OCR translation, but plenty remain	<p>Acrobat's OCR feature was able to fill this PDF collection with searchable text with only a handful of missing words. Even most of the Arabic names in the original document were translated accurately into the resulting PDF.</p>	4	\N		Missed words and names are few and far between.	10.1.1	2012-01-10	
64	Table2Clipboard can't help with doctors database	<p>Because Table2Clipboard only assists in copying and pasting tables from the Web to a spreadsheet, it's incapable of navigating through the BC physician's database.</p>\r\n<p>If you search this data manually and want to copy the results table into a sheet, then Table2Clipboard will provide a prettier result, but that is all.</p>	t	2012-06-07 13:32:27-04	2012-06-19 11:42:39.142808-04	table2clipboard-cant-help-with-bc-doctors-database-2012-06-07	26	3	1	Wrong software for task	<p>Because Table2Clipboard only assists in copying and pasting tables from the Web to a spreadsheet, it's incapable of navigating through the BC physician's database.</p>	3	4		Although it copies the results table formatting and all, it's not designed for such a complicated task.	1.5.3.1	2012-06-08	
41	Scanned memos easy fodder for Acrobat's OCR	<p>This collection of scanned-in memos from the Obama-Biden transition wasn't much of a match for Adobe Acrobat, which recognized the text with only a few minor errors. It even handled italics well.</p>\r\n<p>In seconds, Acrobat converted the documents we tested into searchable PDFs without missing a single word. The conversion did result in a handful of misinterpretations, many of them simply leaving out or inserting a space.</p>\r\n<p>The program only flubbed actual words in a few cases, where it substituted near-identical characters. "Findings," for example, was recognized incorrectly as "fmdings," and "infrastructure" as "inii&bull;strcture."</p>	t	2012-01-11 14:03:25-05	2012-02-06 12:33:03.356421-05	scanned-memos-are-easy-fodder-for-acrobats-ocr-2012-01-11	9	15	4	Conversion handles variety of text styles with few errors	<p>This collection of scanned-in memos from the Obama-Biden transition wasn't much of a match for Adobe Acrobat, which recognized the text with only a few minor errors. It even handled italics well.</p>	4	\N		Minor flubs aren't likely to cause problems for reporters processing similar documents.	10.1.1	2012-01-11	
14	Nitro spreads data from simple table across multiple sheets	<p>Although it captures the data and formats it perfectly, Nitro splits this table of Bernie Madoff's customers over more than 100 pages. That kind of cleanup means a lot of work or a little programming knowledge.</p>\r\n<p>If users don't want to cut and paste 163 sheets of tables, using a macro in Visual Basic would work fine. But given the simplicity of the task, it's probably a better idea to find another PDF tool.</p>	t	2011-11-10 12:43:27-05	2012-01-31 19:12:08.378081-05	nitro-pro-on-madoff-customers-2011-11-10	4	10	2	Perfectly captured data split over dozens of sheets, requiring automated cleanup	<p>Although it captures the data and formats it perfectly, Nitro splits this table of Bernie Madoff's customers over more than 100 pages. That kind of cleanup means a lot of work or a little programming knowledge.</p>	4	\N		Users would need programming skill to make sense of this program's output.	7.0.1.5	2011-11-10	
65	Table2Clipboard can't find tables in database of PDFs	<p>Table2Clipboard doesn't recognize this collection of linked documents submitted to the Obama-Biden transition team as a table and fails to assist Firefox with the formatting.&nbsp;</p>\r\n<p>It does not have the capability to page you through the 186 pages of PDF links, since that's not its intended purpose. Although you can copy text from the page, it doesn't copy via Table2Clipboard because the items aren't formatted as HTML tables.</p>	t	2012-06-07 13:48:19-04	2012-06-19 11:45:58.101916-04	table2clipboard-doesnt-find-any-tables-to-copy-2012-06-07	26	2	0	Doesn't recognize table formatting; fails to copy links	<p>Table2Clipboard doesn't recognize this collection of linked documents submitted to the Obama-Biden transition team as a table and fails to assist Firefox with the formatting.&nbsp;</p>	3	4		Formatting fools the software, preventing it from being useful.	1.5.3.1	2012-06-08	
13	With advanced cleanup, Nitro copes with Access report	<p>Nitro was able to make quick work of this 50-page report generated from Microsoft Access, although a few rows of data are omitted. The biggest problem stems from split pages, which require a little programming knowledge to clean up.</p>\r\n<p>The resulting spreadsheet is missing several entire entries from the beginning of the document. These have to be spot checked and added during clean up.</p>\r\n<p>Headings also have to be added manually during a cleanup process, which is relatively easy given the well-formatted spreadsheet.</p>\r\n<p>The most tedious part of this cleanup is sorting through the 67 tables Nitro generates for each separate violation and similar violations that appear over multiple pages. The software's failure to combine this data into one easy-to-manage table makes it hard to compare, sort or filter. To clean it up and combine, users will need to have a grasp of <a href="http://msdn.microsoft.com/en-us/vstudio/hh388568">Visual Basic</a> to accomplish some of the rote copy-paste requirements that would make doing things by hand too much of a chore.</p>	t	2011-11-09 18:17:52-05	2012-01-31 19:12:08.436122-05	nitro-pro-on-dc-housing-violations-2011-11-09	4	9	2	Provides mostly reliable dataset, with some omissions; automated cleanup required	<p>Nitro was able to make quick work of this 50-page report generated from Microsoft Access, although a few rows of data are omitted. The biggest problem stems from split pages, which require a little programming knowledge to clean up.</p>	4	\N		Data omission and multiple-page output hold analysis of the resulting spreadsheet back.	7.0.1.5	2011-11-09	
28	FineReader accurately detects text on scanned forms	<p>FineReader made quick work of these reports from lawmakers, which could potentially show conflicts of interest. The resulting PDFs made finding search terms easy.</p>\r\n<p>I had no trouble finding any typed terms I tested for -- including "IBM," "Pfizer" and "BB&amp;T" -- in an effort to match the companies with stockholding legislators. The acronym proved slightly tricky, as the software varied its interpretation of the spacing in "BB&amp;T." But by tweaking the search term, I still managed to find it. In the end, I found all the terms I searched and was able to accurately match them with the corresponding lawmakers for our tests.</p>	t	2011-12-19 10:27:13-05	2012-01-31 19:14:27.236313-05	abbyy-fine-reader-does-not-convert-to-searchable-pdfs-2011-12-19	7	13	4	Text captured accurately	<p>FineReader made quick work of these reports from lawmakers, which could potentially show conflicts of interest. The resulting PDFs made finding search terms easy.</p>	6	4		Typed keywords are easily found in converted format. 	11	2011-12-19	
51	DocumentCloud hit or miss with OCR on typed transcripts	<p>Formatting and white space posed problems for DocumentCloud in its attempt to recognize text in these typed transcripts from Iraq-Afghanistan combatant tribunals. It garbled some text and mixed up content split into columns.</p>\r\n<p>DocumentCloud dropped several words and garbled many more in one document, reversing the meaning of two sentences. The problem appeared to be a dense block of interview text and not the quality of the original PDF, which was comparable to the others.</p>\r\n<p>In three of the five transcripts tested, DocumentCloud stacked all text from the left-hand attribution column on top of the content from the text of the conversation on the right. While a user would be able to tell from context who was speaking, it forced some tedious back-and-forth comparisons with the original PDF.</p>\r\n<p>It did better on several other parts of the test. In two transcripts, where there seemed to be a smaller gap of white space between the columns, the program handled the attributions cleanly. In four of the five documents, it also converted the PDF to plain text with few errors, from about 3 percent of the words to less than 1 percent of our test sample.</p>	t	2012-02-10 11:17:02-05	2012-03-22 11:16:39.580935-04	documentclouds-ocr-hit-and-miss-with-typed-transcripts-2012-02-10	20	14	2	Some text recognition stumped by formatting	<p>Formatting and white space posed problems for DocumentCloud in its attempt to recognize&nbsp;text in&nbsp;these typed transcripts from Iraq-Afghanistan combatant tribunals. It garbled some text and mixed up content split into columns.</p>	7	4		The service handled quoted text well, but it mangled the document's column formatting.	N/A	2012-02-10	
10	Unseperated entries make Nitro output unusable	<p>Nitro Pro nailed the headings in this unlined table of political appointments but not much else. The combination of lined and unlined entries confused the programming, so it lumped entries into single cells. Sorting and filtering isn't possible as a result.</p>\r\n<p>The output split every office into separate tables -- 397 total -- but the program did not account for offices spread across multiple pages. Users would need to manually wade through to combine these tables.</p>\r\n<p>The resulting output is more trouble than it's worth, so if you're thinking of using Nitro for a similar type of document, don't bother.</p>	t	2011-11-09 13:07:34-05	2012-01-31 19:12:08.492357-05	nitro-pro-on-clinton-political-appointments-2011-11-09	4	6	1	Skip if PDF includes unlined tables	<p>Nitro Pro nailed the headings in this unlined table of political appointments, but not much else. The lack of lines confused the program, so it lumped entries into single cells. Sorting and filtering isn't possible as a result.</p>	4	\N		The program fails to differentiate between cell entries without lines.	7.0.1.5	2011-11-09	
34	PDF2XL handles database-generated report cleanly	<p>PDF2XL did a good job capturing information from this PDF of D.C. housing violations cleanly and accurately while minimizing hassle.</p>\r\n<p>Its automatic guesses were mostly correct for this test, and its row/column editor, an interface familiar to those with experience in Access or Excel, allowed a closer look and the opportunity to quickly fix problems. Tests for accuracy also showed no data was omitted.</p>\r\n<p>Like the other PDF tools we've tested, PDF2XL could not automatically recognize the headings that group multiple violations by type. Like the original document, they're only listed once in the converted spreadsheet and must be copied to the applicable rows during cleanup.</p>	t	2011-12-20 22:58:43-05	2012-03-22 12:28:51.413295-04	pdf2xl-ocr-handles-database-generated-report-cleanly-2011-12-20	10	9	4	Easy to turn report into accurate spreadsheet requiring simple cleanup	<p>PDF2XL did a good job capturing information from this PDF of D.C. housing violations cleanly and accurately while minimizing hassle.</p>	7	4		Row and column tools allow for near-perfect conversion.	4.14.2.253	2011-12-20	
18	Unwieldy results, junk data hamper passable performance	<p>The database-style formatting of these documents -- housing violations from Washington, D.C. -- was tricky for Cometdocs to figure out. Parsing through junk data, reorganizing entries and applying headings will take some time for users familiar with Excel.</p>\r\n<p>Conversion captured everything into spreadsheet format, including the headings, tallies from each violation and the title from each of the documents' combined 100 pages -- in other words, useless data. Cometdocs also fails to correctly interpret white space, lumping data in with other columns and leaving blank cells. That amounted to a lot of time spent cleaning things up, a process that will require a working knowledge of Excel.</p>\r\n<p>Nevertheless, Cometdocs accurately yielded our desired outcome once we did the required cleanup work. Not the worst option for this sort of task -- as long as you have some time and patience.</p>	t	2011-11-21 11:42:10-05	2012-01-31 19:13:13.418235-05	unwieldy-results-junk-data-hamper-cometdocs-performance-2011-11-21	6	9	3	Patience needed to parse junky output, but results usable, accurate	<p>The database-style formatting of these documents -- housing violations from Washington, D.C. -- was tricky for Cometdocs to figure out. Parsing through junk data, reorganizing entries and applying headings will take some time for users familiar with Excel.</p>	4	\N		If you're OK with manual cleanup, Cometdocs will do its job.	N/A	2011-11-21	
27	FineReader has little trouble with transcripts	<p>FineReader made this document set, a collection of transcripts from combatant tribunals, into searchable PDFs almost perfectly. A reporter searching for specific words would have no trouble using this product when converting such basic documents.</p>\r\n<p>Almost all words appeared correctly in the output, with proper spelling and punctuation. The software only got hung up on items such as "USS" as in the case of the ship, the USS Cole.</p>	t	2011-12-19 09:40:11-05	2012-01-31 19:14:27.298674-05	abbyy-fine-reader-converts-transcripts-beautifully-2011-12-19	7	14	4	Only a few minor words altered	<p>FineReader made this document set, a collection of transcripts from combatant tribunals, into searchable PDFs almost perfectly. A reporter searching for specific words would have no trouble using this product when converting such basic documents.</p>	6	4		Text comparison showed only minor changes in character capture.	11	2011-12-19	
9	Lack of download option leaves PDF database test half-finished	<p>Needlebase proves more than adequate in tagging and saving the metadata associated with these Obama transition team documents. But it wasn't able to download the PDFs and missed some information.</p>\r\n<p>The scraper's "guess" left off the last PDF link on the first search results page, threatening to make the resulting database incomplete without careful manual tagging.</p>\r\n<p>There's also no way to download the documents using Needlebase, although that's not surprising given its product description. Since it can output an Excel file or other structured data containing links to the PDFs, some other tool could easily be used to get the PDFs in a separate step.</p>	t	2011-10-03 11:07:10-04	2012-02-24 14:18:42.444774-05	needlebase-on-changegov-2011-10-03	3	2	3	Captures metadata, but can't download files	<p>Needlebase proves more than adequate in tagging and saving the metadata associated with these Obama transition team documents. But it wasn't able to download the PDFs and missed some information.</p>	1	4		Although it can tell you where the files are, it can't dowload them on its own.	--	2011-10-03	
56	DocumentCloud performs erratically when searching memos	<p class="MsoNormal">DocumentCloud only spotted about half the references of organizations mentioned in these memos from the Obama-Biden transition team -- although it performed better than our annotator on those it did catch.</p>\r\n<p class="MsoNormal">For three of the six government agencies and organizations, it spotted all of the references from the test criteria and then some, picking up others completely missed by our own test creators. For example, it accurately found 64 references to "Ducks Unlimited" -- the test required it find only 43.</p>\r\n<p class="MsoNormal">However, the other three groups it missed completely. Some, like the Global Privacy and Information Quality Working Group or its abbreviation, GPIQWG, are hidden in a muddle of acronyms. But it also completely missed "U.S. Department of Justice."</p>\r\n<p class="MsoNormal">According to developer Jeremy Ashkenas, DocumentCloud's entity analysis service, <a href="http://www.opencalais.com/">OpenCalais</a>, uses a complex set of lists and rules to identify names and organizations, and they may simply miss some entities.</p>\r\n<p class="MsoNormal">A second pass through the system produced identical results.</p>	t	2012-02-16 20:31:15-05	2012-03-22 11:29:53.327217-04	documentcloud-2012-02-16	20	17	3	Good for a first pass, not enough for rock-solid analysis	<p>DocumentCloud only spotted about half the references of organizations mentioned in these memos from the Obama-Biden transition team -- although it performed better than our annotator on those it did catch.</p>	7	4		Sometimes its entity analysis exceeds standard, other times it falls far short.	N/A	2012-02-16	
22	Able2Extract fails with embedded fonts	<p>While the formatting of this table of Gov. Jan Brewer's border fence contributors is perfect after running it through Able2Extract, the information contained within is not. The words are replaced with random characters for the whole spreadsheet.</p>\r\n<p>Given the fact that no actual numbers arrive in the spreadsheet because of the embedded font, calculating the total donations or any other task a reporter might want to perform is impossible.</p>	t	2011-12-16 09:07:23-05	2012-02-07 17:00:23.042402-05	able2extract-fails-with-embedded-fonts-2011-12-16	8	11	1	Converts unrecognized font to mishmash of unusable symbols	<p>While the formatting of this table of Gov. Jan Brewer's border fence contributors is perfect after running it through Able2Extract, the information contained within is not. The words are replaced with random characters for the whole spreadsheet.</p>	3	4		Formatting is perfect, but the text is gibberish.	7	2011-12-16	
55	DocumentCloud flaws hurt entity analysis of emails   	<p class="MsoNormal">Even after multiple passes, DocumentCloud was only able to catch a small fraction of the names we were looking to highlight in an analysis of emails related to the Deepwater Horizon oil spill.</p>\r\n<p class="MsoNormal">The first time we processed the PDF, DocumentCloud's entity extraction service skipped more than half of the pages we sampled in our test. On the remaining pages, it did pull out instances of three of the six names, but whiffed on the rest.</p>\r\n<p class="MsoNormal">Developer Jeremy Ashkenas said this may be an issue with <a href="http://www.opencalais.com/">OpenCalais</a>, which DocumentCloud uses to perform entity analysis. The service breaks large documents into chunks and processes them separately, which may cause uneven results across sections of the document.</p>\r\n<p class="MsoNormal">Per his suggestion, we reprocessed the document with somewhat better results.</p>\r\n<p class="MsoNormal">In the second run, DocumentCloud found about half of the total occurrences of one name. It found a few more appearances of four other names in the test group, but still completely missed one name.</p>	t	2012-02-16 17:38:53-05	2012-03-22 11:27:05.964322-04	documentcloud-flaws-hurt-entity-analysis-of-emails-2012-02-16	20	16	1	Provides useful first read, but not comprehensive	<p>Even after multiple passes, DocumentCloud was only able to catch a small fraction of the names we were looking to highlight in an analysis of emails related to the Deepwater Horizon oil spill.</p>	7	4		Uneven results meant we needed two tries to find names.	N/A	2012-02-16	
33	PDF2XL tackles embedded font, still fails	<p>Although PDF2XL's OCR feature appears to cleanly translate the tricky font in this list of contributors to Gov. Jan Brewer's border fence project, the document's size stops the conversion in its tracks.</p>\r\n<p>The program starts to read and convert the 1,052-page file, but bogs down after the first 53 pages. I allowed the program to run for 8 minutes and it had processed only 89 pages, or 4 percent of the file. Breaking the file in pieces didn't work. It converted the first 50 pages to Excel effortlessly. But when I tried to continue the conversion on pages 51 to 100, the process again bogged down. Possibly, that's because the program had already defined the entire document.</p>\r\n<p>I tried to find a way to define only portions of the document, but that's not easy in this program. Selecting a portion requires a click/drag of a page at a time, with lag on page jumps. Fiddling for 20 minutes produced no easy solution.&nbsp;</p>\r\n<p>The bottom line is that while the embedded font posed no problem for the program's OCR feature, file size was an issue, something to note if you're processing large files.</p>	t	2011-12-20 22:38:55-05	2012-03-22 12:28:51.474653-04	programs-ocr-feature-handles-text-cleanly-but-chokes-on-file-size-2011-12-20	10	11	2	OCR solves font problem, but large file proved too much	<p>Although PDF2XL's OCR feature appears to cleanly translate the tricky font in this list of contributors to Gov. Jan Brewer's border fence project, the document's size stops the conversion in its tracks.</p>	7	4		The program's OCR feature handles text cleanly, but chokes on the large file size.	4.14.2.253	2011-12-20	
66	Table2Clipboard no help in getting at form-based teacher data	<p>Table2Clipboard was not created to help query data on a&nbsp;form-based site, so the task of scraping this database of teachers was too complex -- and it was only able to copy some of the content we wanted after performing manual searches.</p>\r\n<p>To see how Table2Clipboard performs, I manually searched for "Smith" and copied the results table.&nbsp;The table pastes nicely into Excel, borders and shading included, but embedded links fail to copy since the table doesn't use traditional HTML tags (it uses JavaScript instead).</p>	t	2012-06-07 14:17:29-04	2012-06-19 11:46:59.501172-04	table2clipboard-no-help-in-getting-at-bc-teacher-data-2012-06-07	26	4	0	Can't navigate through form; manual results copy, but without links	<p>Table2Clipboard was not created to help query data on a&nbsp;form-based site, so the task of scraping this database of teachers was too complex -- and it was only able to copy some of the content we wanted after performing manual searches.</p>	3	4		The software fails to copy hyperlinks from results table.	1.5.3.1	2012-06-08	
8	Needlebase won't connect to site, preventing scrape	<p>Needlebase was simply not able to perform any part of this test, failing to connect to the page at all. But since it's a hosted solution, it's hard to figure out why.</p>\r\n<p>In this case, it simply never loads, returning a generic connection error.</p>	t	2011-10-03 10:58:02-04	2012-02-24 14:18:42.50385-05	needlebase-on-the-bc-physicians-website-2011-10-03	3	3	0	Fails to connect to site, returning no results	<p>Needlebase was simply not able to perform any part of this test, failing to connect to the page at all. But since it's a hosted solution, it's hard to figure out why.</p>	1	4		Since product is a hosted solution, it's hard to troubleshoot problems.	--	2011-10-03	
15	Nitro Pro can't handle tricky embedded font	<p>The font in this list of contributors to Arizona Gov. Jan Brewer's border fence project is too hard for Nitro Pro to handle, and it fails completely.</p>\r\n<p>The problem is noted by two error messages: "The file contains non-standard encoding and may not be processed correctly," and "PDF does not contain any tables. No output file was created." In short, the software is unable to handle some font embedded into the document.</p>	t	2011-11-10 13:44:28-05	2012-01-31 19:12:08.341578-05	nitro-pro-on-border-fence-contributors-2011-11-10	4	11	0	Embedded font stumps software	<p>The font in this list of contributors to Arizona Gov. Jan Brewer's border fence project is too hard for Nitro Pro to handle, and it fails completely.</p>	4	\N		This otherwise simple document creates problems for the conversion software.	7.0.1.5	2011-11-10	
67	Table2Clipboard can't page through large lobbyist database	<p>This is not the right software to help scroll though 406 pages of tables on South Dakota lobbyists.&nbsp;However, it will help to create a nicer looking spreadsheet if you want to copy and paste pages individually.</p>\r\n<p>If formatting, border, shading, etc. are important to you, this tool will help. But don't expect it to save time if your job has more than a handful of pages.</p>	t	2012-06-07 14:28:25-04	2012-06-19 11:47:33.492777-04	table2clipboard-cannot-page-through-the-lobbysists-2012-06-07	26	5	1	Can't scroll through pages; individual tables copy well	<p>This is not the right software to help scroll though 406 pages of tables on South Dakota lobbyists.&nbsp;However, it will help to create a nicer looking spreadsheet if you want to copy and paste pages individually.</p>	3	4		Individual tables copy nicely into Excel.	1.5.3.1	2012-06-08	
21	White space misinterpretation makes output unusable	<p>The formatting of this unlined table of Clinton political appointments proved too much for Cometdocs, which takes so many miscues from the document's white space that the output is too rough to be of use.</p>\r\n<p>The data is clearly there in the output, but too badly unorganized to perform any kind of sorting or filtering task. Any entries in the original file that skipped to the next line are interpreted as separate cells, meaning that many position titles are split up -- even into different rows.</p>\r\n<p>The time it would take to clean up the data would be unreasonable or would require far more knowledge of Excel than the&nbsp; average reporter should be expected to have.</p>	t	2011-11-21 16:17:34-05	2012-01-31 19:13:13.382432-05	white-space-misinterpretation-makes-output-unusable-2011-11-21	6	6	1	Output too messy to sort, filter	<p>The formatting of this unlined table of Clinton political appointments proved too much for Cometdocs, which takes so many miscues from the document's white space that the output is too rough to be of use.</p>	4	\N		Cometdocs' failure to format its resulting spreadsheet makes it useless.	N/A	2011-11-21	
68	Scraper not useful for sites without table formatting	<p>Because there are technically no tables on the&nbsp;Obama-Biden transition Web site, Scraper was useless for capturing the linked memos we wanted to save.</p>\r\n<p>The Your Seat at the Table site organizes these PDFs without using <a href="http://www.w3schools.com/html/html_tables.asp">HTML tables</a> (it uses <a href="http://www.w3schools.com/tags/tag_div.asp">&lt;div&gt; tags</a> instead), so the browser extension isn't able to recognize anything to scrape.&nbsp;Using the tool to scrape one of these pages produced only the text, and&nbsp;when we highlighted the hyperlinks to a few of the PDFs to narrow the results, it did not offer the option of scraping.</p>	t	2012-06-15 09:55:57-04	2012-07-10 09:27:24.12055-04	chrome-scraper-not-useful-for-sites-with-multiple-pdfs-2012-06-15	27	2	0	No HTML tables, no scraping	<p>Because there are technically no tables on the&nbsp;Obama-Biden transition Web site, Scraper was useless for capturing the linked memos we wanted to save.</p>	6	4		Browser extension was unable to capture links or underlying documents.	1.6	2012-06-15	
42	OmniPage not flexible enough to convert unlined table	<p>Although it does give users some ability to customize the results of the spreadsheets it outputs, OmniPage's options aren't much help when it comes to making sense of this unlined PDF of Clinton administration political appointments. Results would take a long time to clean up without programming knowledge.</p>\r\n<p>The software allows users to mark the separation of columns and rows, helpful with a document like this where lines don't exist to separate data. But to make it work, users would have to mark the tables throughout the entire 320-page document -- a task too daunting for most reporters on deadline.</p>\r\n<p>When converted to a spreadsheet without this extra work, OmniPage did make a few good guesses on some pages. In most cases though, dozens of rows were lumped together and other entries with wrapped text were split into separate rows altogether. In many cases, this would lead to mismatched data even if things were parsed out appropriately by hand or with macros.</p>\r\n<p>That mismatching could cause accuracy problems. Otherwise, a spot check through the document showed that OmniPage seemed to accurately capture entries without missing anything, although it was impossible to sort through the rubble to confirm that accuracy with our tests.</p>	t	2012-01-17 12:58:58-05	2012-03-26 09:20:47.594953-04	omnipage-not-flexible-enough-to-convert-unlined-table-2012-01-17	11	6	2	Only extensive manual labor and/or programming skills could clean-up this mishmash of messy data	<p>Although it does give users some ability to customize the results of the spreadsheets it outputs, OmniPage's options aren't much help when it comes to making sense of this unlined PDF of Clinton administration political appointments. Results would take a long time to clean up without programming knowledge.</p>	4	\N		The effort required to make this output usable would be too extensive for most users.	18	2012-01-17	
37	Weird font throws off Acrobat spreadsheet	<p>Acrobat's not the program you want to handle a tricky PDF with an embedded font, like this list of contributors to Gov. Jan Brewer's border fence project. It failed two different ways using two different methods.</p>\r\n<p>In our initial run-through, we ran the document through the normal spreadsheet conversion. The 1,052-page mammoth took about 15 minutes to process, but the result was nothing but garbled, random characters. Even the formatting was messy. Acrobat does have an OCR feature (which was enabled when we ran the conversion), but because the data is already technically text, it didn't do much good.</p>\r\n<p>That's why we tried splitting the task into pieces, first converting the document into separate images, combining them and running the PDF-to-spreadsheet conversion one more time. No go here either. After 30 minutes, the program threw a generic error proclaiming the "save as" function failed.</p>\r\n<p>The result was similar when we broke the size down to 50 pages. After 30 minutes, the document had still failed to process completely, and appeared hung up on one of the steps.</p>	t	2012-01-03 14:45:01-05	2012-02-06 12:33:03.590932-05	weird-font-throws-off-acrobat-spreadsheet-2012-01-03	9	11	1	Garbled text, formatting the only result of this conversion	<p>Acrobat's not the program you want to handle a tricky PDF with an embedded font, like this list of contributors to Gov. Jan Brewer's border fence project. It failed two different ways using two different methods.</p>	4	\N		OCR feature doesn't help the program get the job done.	10.1.1	2012-01-03	
23	Lined table an easy conversion for Able2Extract	<p>Conversion of this simple table of Bernie Madoff's customers is quick, easy and accurate with Able2Extract. Column alignment is perfect and the text conversion is perfect as well.</p>\r\n<p>After some easy cleaning -- removing the page number rows for example -- this spreadsheet was ready for some basic sorting and analysis.</p>\r\n<p>Because data in the original document wasn't perfectly organized, we did have to clean up the addresses spread across multiple lines. A few sorts across different columns cleared this up quickly, allowing us to accurately identify the 29 entries from the Shapiro family trusts we needed for our tests.</p>	t	2011-12-16 09:21:52-05	2012-02-07 17:00:22.979976-05	able2extract-easily-converts-this-lined-table-2011-12-16	8	10	5	Turns PDF into exact replica in Excel	<p>Conversion of this simple table of Bernie Madoff's customers is quick, easy and accurate with Able2Extract. Column alignment is perfect and the text conversion is perfect as well.</p>	3	4		Resulting spreadsheet is pretty much an exact copy of the test document.	7	2011-12-16	
31	PDF2XL quickly turns lined tables into spreadsheet	<p>PDF2XL OCR had no trouble with this document, a simple lined table of Bernie Madoff's customers and their addresses.</p>\r\n<p>Using the program's auto-detect feature, the 163-page document took only seconds to convert.</p>\r\n<p>The resulting spreadsheet was simple to filter for the 29 Shapiro family trusts we were looking to identify in our tests. An additional spot check of 20 random records found the translation to be error-free.</p>	t	2011-12-20 21:59:16-05	2012-03-22 12:28:51.612136-04	cogniview-pdf2xl-ocr-quickly-turns-lined-tables-into-spreadsheet-2011-12-20	10	10	5	Handles basic table perfectly	<p>PDF2XL OCR had no trouble with this document, a simple lined table of Bernie Madoff's customers and their addresses. Using the program's auto-detect feature, the 163-page document took only seconds to convert.</p>	7	4		Spreadsheet is a clean, flawless copy of the original PDF.	4.14.2.253	2011-12-20	
36	Acrobat produces almost perfect spreadsheet from simple PDF	<p>It takes less than a minute for Adobe Acrobat to transform this lined PDF table of Bernie Madoff's customers into an almost perfect spreadsheet reproduction. The resulting Excel file is clean and complete, requiring a little effort before journalists can dive into the data.</p>\r\n<p>The headers for each of the pages are preserved as well, but a simple sort and delete can take care of that quickly.</p>\r\n<p>In our tests for accuracy, Acrobat also performed perfectly, returning all the data entries we were looking for.</p>	t	2012-01-03 12:56:18-05	2012-02-06 12:33:03.650166-05	acrobat-produces-pitch-perfect-spreadsheet-from-simple-pdf-table-2012-01-03	9	10	4	Great accuracy, perfect formatting, almost no cleanup	<p>It takes less than a minute for Adobe Acrobat to transform this lined PDF table of Bernie Madoff's customers into an almost perfect spreadsheet reproduction. The resulting Excel file is clean and complete, requiring a little effort before journalists can dive into the data.</p>	4	\N		Straightforward PDFs appear well suited for Adobe's software.	10.1.1	2012-01-03	
35	Missing entries mar conversion of database-generated PDF	<p>The headers from the Microsoft Access database that generated this report of housing violations cause scores of missing data after Acrobat's done converting it into a spreadsheet. All those omissions throw the accuracy of the software's results into question.</p>\r\n<p>Acrobat rips through the almost 100 pages in seconds, but the resulting spreadsheets are riddled with blank cells that must be removed before analysis. This is particularly troublesome in the areas where the original report has null entries, throwing off the rows and requiring manual, tedious cleanup of hundreds of entries.</p>\r\n<p>A spot check of the records showed substantial problems in the accuracy of the conversion. Most likely due to the headers, Acrobat failed to convert anywhere from one to three entries on the top and bottom of almost every page, leaving that data out of the resulting spreadsheet altogether. That sort of fuzziness with data would make me uncomfortable if I was looking to use the results of this conversion in my reporting.</p>\r\n<p>Several cell values separated in the original document were also merged in the output, often hidden by multiple spaces and invisible unless users click on the cells to expand their contents. You can fix this problem using Excel's text-to-column feature, but that's another step that will hamper analysis, especially in the rightmost fields of the spreadsheet.</p>	t	2011-12-29 16:08:03-05	2012-02-06 12:33:03.718908-05	missing-entries-mar-conversion-of-database-generated-pdf-2011-12-29	9	9	2	Inccuracies drag down otherwise decent performance	<p>The headers from the Microsoft Access database that generated this report of housing violations cause scores of missing data after Acrobat's done converting it into a spreadsheet. All those omissions throw the accuracy of the software's results into question.</p>	4	\N		Acrobat's quick, but inaccurate with this Access report.	10.1.1	2011-12-29	
44	User-defined templates help OmniPage perfect results	<p>OmniPage did a poor job converting this list of Bernie Madoff's customers with the software's default setting. But because the document was so uniform, quickly defining and applying a template resulted in a spreadsheet that looked identical to the original PDF.</p>\r\n<p>Despite the test's one-star difficulty rating, OmniPage had trouble processing the document on both the automatic and spreadsheet settings, randomly splitting columns and merging cells. This would have made cleaning up the resulting spreadsheet difficult, given its length of 163 pages.</p>\r\n<p>The template approach fared much better. It took a few minutes to manually define the columns and rows on the first page and save this layout as a template. Because the document is uniform from page to page, the result was a flawless, accurate conversion that returned all the entries we were searching for in our tests.</p>\r\n<p>Using the template did take about twice as long to convert the document than automatic processing. In our case, it took about 20 minutes to complete both processing and saving.</p>	t	2012-01-23 18:26:25-05	2012-03-26 09:23:20.107675-04	user-defined-templates-help-perfect-spreadsheet-formatting-2012-01-23	11	10	5	Processing with template results in flawless spreadsheet	<p>OmniPage did a poor job converting this list of Bernie Madoff's customers with the software's default setting. But because the document was so uniform, quickly defining and applying a template resulted in a spreadsheet that looked identical to the original PDF.</p>	4	\N		The software's automatic function isn't much use, but its other processing options compensate.	18.0	2012-01-23	
25	Custom options help Able2Extract parse unlined table	<p>Although the result isn't perfect, Able2Extract's customization options help it turn this tricky unlined table of Clinton's political appointments into a sortable spreadsheet.</p>\r\n<p>The PDF is formatted with a lot of white space, text-wrapped fields and separate headings, but using the software's custom conversion feature, users can define column and row lines. Using these definitions as a key, Able2Extract does a good job formatting the resulting spreadsheet.</p>\r\n<p>The conversion isn't perfect. Headings occasionally get caught up in some of the fields, but cleaning this up seems fairly easy.</p>\r\n<p>Once this cleanup is complete, some simple sorts and counts will allow for quality and accurate analysis.</p>	t	2011-12-16 10:00:09-05	2012-02-07 17:00:22.85616-05	able2extract-does-an-excellent-job-with-this-unlined-table-2011-12-16	8	6	4	User-defined rows, columns help results	<p>Although the result isn't perfect, Able2Extract's customization options help it turn this tricky unlined table of Clinton's political appointments into a sortable spreadsheet.</p>	3	4		Some cleanup remains, but the custom conversion feature sets this software apart.	7	2011-12-16	
24	Able2Extract converts database report effectively	<p>Able2Extract quickly and accurately converts this PDF of housing violations from a database report to a spreadsheet, conserving rows and columns and perfectly transferring the text from the original document. It preserves some information we don't need too, meaning there was some cleanup required.</p>\r\n<p>The software got a bit confused by the "Violation Totals," which the source document separates onto rows for each type of violation. Able2Extract split this entry into multiple cells. The problem here is with the formatting of the PDF itself, not with Able2Extract. When a database -- in this case Microsoft Access -- spits out these reports, it sometimes gives us more than we want. So some work remains to turn this into a useful spreadsheet.</p>\r\n<p>Overall though, Able2Extract does its job -- and does it well -- in what I would call Step 1 in turning this PDF into a workable spreadsheet. Step 2 is cleanup, but the task at hand isn't that hard.</p>\r\n<p>Simple sorts and counts or the creation of <a href="http://oreilly.com/windows/archive/whatisapivottable.html">Pivot Tables</a> allowed us to accurately find all three types of violations required in our tests, as well as locations with multiple violations.</p>	t	2011-12-16 09:41:55-05	2012-02-07 17:00:22.923558-05	able2extract-converts-this-database-report-perfectly-2011-12-16	8	9	4	Clean spreadsheet conversion; some junk data needs culling	<p>Able2Extract quickly and accurately converts this PDF of housing violations from a database report to a spreadsheet, conserving rows and columns and perfectly transferring the text from the original document. It preserves some information we don't need too, meaning there was some cleanup required.</p>	3	4		Some work still remains before spreadsheet is spotless.	7	2011-12-16	
50	Aside from italics, DocumentCloud tackles scanned-in memos	<p>DocumentCloud recognized the text in three of four memos from the Obama-Biden transition team we tested with few problems. But the service did have a harder time with italicized text.</p>\r\n<p>In the majority of the documents, It made only minor errors -- reading "scientific" as "scientitic" and "modernize" as "modemize" -- but the mistakes didn't significantly hinder the readability of the document. In all three documents, the errors were 3 percent or less of the total words in the test sample.</p>\r\n<p>It does have an annoying habit of inserting additional paragraph marks, incorrectly breaking up the text. Tweaking the fonts and sizes of the original and processed copy didn't solve the problem.</p>\r\n<p>DocumentCloud's OCR struggled a little more with one of the four documents, which included large swaths of italicized text. It made 14 minor errors in the 134-word passage, though the mistakes ("infrastructure" became "iiumastructure" and "Pacific" became "Pac U'ic") didn't disrupt the readability of the document.&nbsp;</p>	t	2012-02-10 10:28:41-05	2012-03-22 11:14:47.015327-04	document-cloud-handles-most-scanned-in-pdfs-2012-02-10	20	15	3	Handles most documents easily; italics a problem 	<p>DocumentCloud recognized the text in three of four memos from the Obama-Biden transition team we tested with few problems. But the service did have a harder time with italicized text.</p>	7	4		Although special format increased its error rate, the results were still fairly readable. 	N/A	2012-02-10	
54	Low-resolution text stumps OmniPage's text recognition	<p>OmniPage completely ignores the relevant text in this PDF index of Congress reports containing partial text. Even with ample options for recognizing text, the software only manages to capture page numbers and annotations -- worthless in this context.</p>\r\n<p>Results were the same no matter which OCR options we selected. Some failed to recognize the text areas as text at all, choosing instead to interpret them as images. Even when we defined a custom template to tell OmniPage where to look for text, it returned only a blank page.</p>\r\n<p>The low resolution of the text on the page, the small type and the mixed format of this document all contributed to this failure to parse.</p>	t	2012-02-15 15:53:42-05	2012-03-26 09:26:21.189992-04	partial-text-pdf-stumps-omnipages-text-recognition-2012-02-15	11	12	1	Fails to recognize text; returns only headers, footers	<p>OmniPage completely ignores the relevant text in this low-resolution PDF index of Congress reports containing partial text. Even with ample options for recognizing text, the software only manages to capture page numbers and annotations -- worthless in this context.</p>	4	\N		Multiple conversion options all fail to spot and identify entire text areas.	18.0	2012-02-15	
6	Needlebase has no trouble with simple data table	<p>Needlebase effortlessly pulls down structured data from the South Dakota lobbyist database within minutes.</p>\r\n<p>Because the website's information is presented as a simple table, the software's guess about the formatting is perfect and it populates a new database easily.</p>	t	2011-09-28 13:02:23-04	2012-02-24 14:18:42.699263-05	needlebase-on-the-sd-lobbyists-database-2011-09-28	3	5	5	Effortlessly converts website into any format	<p>Needlebase effortlessly pulls down structured data from the South Dakota lobbyist database within minutes.</p>	1	4		Running the program yields a perfectly formatted database in minutes.	--	2011-09-27	
46	Able2Extract easily reads typed transcripts	<p>Able2Extract was nearly perfect in converting these scanned, typed transcripts of detainee interviews into searchable text.</p>\r\n<p>A few small exceptions include some missed hyphens, some added periods and some misread page numbers. These errors were mostly inconsequential to the testing though. The only meaningful error found in testing was the misreading of the "al" in "al Qaida." Able2Extract returned "at Qaida" in this instance.</p>\r\n<p>Overall, though, the results were excellent.</p>	t	2012-02-07 11:05:20-05	2012-02-07 17:00:22.804926-05	able2extract-easily-reads-typed-transcripts-2012-02-07	8	14	4	Transcripts converted with only minor errors	<p>Able2Extract was nearly perfect in converting these scanned, typed transcripts of detainee interviews into searchable text.</p>	3	4		Software returned very few errors after translating these high-quality scanned PDFs.	7.0	2012-02-06	
71	Scraper fails to capture information from layered database 	<p>Scraper was able to capture some data from result pages after we manually entered a name search in this teacher database, but it doesn't have the ability to navigate through multiple pages, making it unsuitable for this task.</p>\r\n<p>The site only returns results through narrow searches, an action Scraper can't automate. It's also unable to capture any data from linked detail pages, meaning anything the user gathers is incomplete.&nbsp;These limitations make Scraper a bad choice for tackling databases like this.</p>	t	2012-06-15 10:17:45-04	2012-07-10 09:27:24.058724-04	scraper-not-useful-for-databases-2012-06-15	27	4	0	Can't handle multiple pages, detail pages	<p>Scraper was able to capture some data from result pages after we manually entered a name search in this teacher database, but it doesn't have the ability to navigate through multiple pages, making it unsuitable for this task.</p>	6	4		Automation, navigation limitations pose a problem.	1.6	2012-06-15	
60	Google Drive flawless with scanned-in memos, but only if small files	<p>Due to its file size limit, Google Drive was only able to recognize text in half the memos we tested from the Obama administration's Your Seat at the Table site.</p>\r\n<p>We uploaded four documents. Drive rejected two because they were over its limit of 2 MB, a significant constraint for reporters working with large files (in this case, our files were 2.4 MB and 5.4 MB). The service also stops recognizing text after the 10th page of a file regardless of size, another constraint.</p>\r\n<p>In the two documents it accepted (1.7MB and 645KB), it recognized the text correctly. The test's sample passages were recognized word for word, though we did spot scattered mistakes in parts of the document beyond the test sample.</p>	t	2012-05-16 11:04:09-04	2012-05-21 15:46:37.962224-04	google-drive-flawless-with-scanned-in-pdfs-but-only-if-small-files-2012-05-16	25	15	3	Flawlessly converted small documents; didn't accept larger files	<p>Due to its file size limit, Google Drive was only able to recognize text in half the memos we tested from the Obama administration's Your Seat at the Table site.</p>	7	4		The cloud-based service can't handle files larger than 2 MB or more than 10 pages.	N/A	2012-05-16	
43	With help, OmniPage creates organized table from database report	<p>OmniPage's guesswork on the formatting of this PDF database report will only go so far toward converting the document into a sortable table. But a little manual help from the user before the conversion saves hours of data wrangling later and results in a perfect table.</p>\r\n<p>Although these PDFs of D.C. housing violations are uniformly formatted reports from an Access database, the table can sometimes go for pages with blank columns. Those blank spaces confuse OmniPage and result in merged columns and mashed-up data. But because the program allows users to correct these column and row locations after it makes its best guess, the data can be reorganized on the fly before saving. OmniPage also allows users to preview the document in a text editor to spot check the results.</p>\r\n<p>It took us about 30 to 40 minutes to correct the column and row locations for the 100 combined pages of the documents. That's manageable for this case, but less so for more bulky documents.</p>\r\n<p>&nbsp;The result was flawless. Our tests showed no missed entries and no junk data like headers or page numbers.</p>	t	2012-01-23 14:29:15-05	2012-03-26 09:22:11.20322-04	with-users-help-omnipage-creates-organized-table-from-database-report-2012-01-23	11	9	4	Time spent cleaning up program's guesses pays off with flawless table	<p>OmniPage's guesswork on the formatting of this PDF database report will only go so far toward converting the document into a sortable table. But a little manual help from the user before the conversion saves hours of data wrangling later and results in a perfect table.</p>	4	\N		Manual technique likely too time-intensive for larger documents, but useful for shorter ones.	18.0	2012-01-18	
29	Docs with partial text prove hit or miss for FineReader	<p>Although FineReader recognized much of the text on these congressional reports, the software had trouble with the poor scan quality and missed quite a bit.</p>\r\n<p>Complete phrases we were looking for turned up nothing, but FineReader did pick up bits and pieces, allowing us to search and return some keywords.</p>\r\n<p>The pattern seems to be the way the original document wrapped new lines within each text box, as the software failed to recognize these phrases as connected. It also seemed to get hung up on commas.</p>\r\n<p>This may mean reporters have to search more broadly and dig through many pages before returning the results they need.</p>	t	2011-12-19 11:15:56-05	2012-01-31 19:14:27.181906-05	search-terms-not-found-when-converting-partial-text-with-abbyy-2011-12-19	7	12	2	Some terms searchable; others not found	<p>Although FineReader recognized much of the text on these congressional reports, the software had trouble with the poor scan quality and missed quite a bit.</p>	6	4		Software found some terms, but struggled with connected long phrases.	11	2011-12-19	
47	Able2Extract converts scanned memos with few errors	<p>Able2Extract takes these scanned in memos and quickly and reliably makes them searchable.</p>\r\n<p>There were a few minor errors in translation. For example, "findings" was read as "fmdings." There were also some missing hyphens and some extra spaces added.</p>\r\n<p>However, overall Able2Extract was very successful in this test.</p>	t	2012-02-07 11:17:13-05	2012-02-07 17:00:22.757833-05	able2extract-converts-scanned-memos-into-searchable-text-2012-02-07	8	15	4	Effectively and accurately converts memos to text	<p>Able2Extract takes these scanned in memos and quickly and reliably makes them searchable.</p>	3	4		Software's translation of these memos is effective and accurate.	Able2Extract Professional 7	2012-02-06	
32	PDF2XL struggles with irregular table	<p>This table of Clinton Administration political appointments has rows of varying depths, and&nbsp;PDF2XL struggled with the format. Users would need to know the ins and outs of macros to work with a document like this after the conversion process.</p>\r\n<p>The program took its best guess at where the row boundaries were, but was often confused by entries repeated with shorthand down multiple rows and separate headings -- a so-called one-to-many relationship. Text wrapped down multiple lines also gave the program trouble.</p>\r\n<p>Although it read the document and produced a usable working version in preview mode, its row editing mode allowed cleanup at a clip of 1 to 2 minutes per page. This effort to perfect the docuement is fine for a 20-page document maybe, but not this 320-page epic.</p>\r\n<p>It's possible that a user with experience in Visual Basic macros could bypass the editing function and clean it more quickly in Excel, but clearly this program isn't the best tool for this job.&nbsp;</p>	t	2011-12-20 22:15:26-05	2012-03-22 12:28:51.527391-04	pdf2xl-ocr-struggles-with-irregular-table-2011-12-20	10	6	2	Significant cleanup required for usable result	<p>PDF2XL OCR can handle this table with separate headings and confusing white space, but only with major interaction from user after the conversion.</p>	7	4		Trouble with cell sizes mixes up data, meaning extensive cleanup.	4.14.2.253	2011-12-20	
48	Able2Extract fails to make partial text PDF searchable at all	<p>Able2Extract completely fails with this difficult document, a PDF already partially processed with OCR.</p>\r\n<p>Due mostly to the font size and clarity, Able2Extract simply does not process this document. Instead, it outputs a Word document with images of the PDF and is completely unsearchable.</p>	t	2012-02-07 12:01:58-05	2012-02-07 17:00:22.725206-05	able2extract-fails-to-make-partial-text-pdf-searchable-at-all-2012-02-07	8	12	0	Can't handle badly scanned report	<p>Able2Extract completely fails with this difficult document, a PDF already partially processed with OCR.</p>	3	4		Software cannot process this document.	Able2Extract Professional 7	2012-02-06	
45	OmniPage accurately converts massive, garbled PDF	<p>It took an hour or so, but OmniPage is the only software we've tested to date that converted this 1,000-page PDF of border fence contributors into a spreadsheet -- reproducing the original almost perfectly. Its OCR feature was even able to handle the weird font that's consistently foiled other programs.&nbsp;</p>\r\n<p>The size of the document managed to choke OmniPage up several times during the conversion and saving process, although this could be a result of running our tests on a virtual machine on a Mac, which means less processor resources.&nbsp;But we found success on the first try when saving our progress between steps and splitting the conversion up into 500-page pieces. This is time and processor intensive, but not so burdensome that you'd need to leave it running overnight.</p>\r\n<p>Because of a built-in system Nuance calls overlay matching, OmniPage&nbsp;didn't struggle at all with the embedded font that has thrown off so many other programs in our tests.</p>\r\n<p>OmniPage didn't omit junk data in the form of headers and footers for this document, meaning some basic cleanup is required with the resulting spreadsheet. But beyond that, the accuracy of the conversion was all but flawless. We found about 150 misaligned rows out of more than 45,000 -- which translates to about 99.7 percent accuracy.</p>	t	2012-01-25 00:30:41-05	2012-03-26 09:25:22.769809-04	omnipage-accurately-converts-massive-garbled-pdf-into-spreadsheet-2012-01-24	11	11	4	Translates garbled text, converts PDF into near-flawless spreadsheet with minimal cleanup	<p>It took an hour or so, but OmniPage is the only software we've tested to date that converted this 1,000-page PDF of border fence contributors into a spreadsheet -- reproducing the original almost perfectly. Its OCR feature was even able to handle the weird font that's consistently foiled other programs.</p>	4	\N		With a little time and cleanup, the program parses this hard-to-handle doc where others failed.	18.0	2012-01-25	
30	Acrobat can't separate data properly, preventing sort	<p>Acrobat Pro's lack of customization options mean an inability to parse line breaks properly in this long table of political appointments from the Clinton administration. That makes the data too messy and the spreadsheet impossible to sort and filter.</p>\r\n<p>The document features headers mixed throughout the table, a mix of lined and unlined entries and only subtle indications of new rows -- and that subtlety is lost on Acrobat. It lumped most data into single cells, and even within them, line breaks are relatively random. This complicates cleanup to an impossible degree.</p>\r\n<p>Because Acrobat features no options for customizing its interpretation of the tables in a given document, skip this program if your data is too complicated for a general conversion like this.</p>	t	2011-12-20 16:47:03-05	2012-02-06 12:33:03.781271-05	acrobat-not-able-separate-data-properly-preventing-sort-2011-12-20	9	6	1	Lumps entries together into inseperable rows, preventing sort	<p>Acrobat Pro's lack of customization options mean an inability to parse line breaks properly in this long table of political appointments from the Clinton administration. That makes the data too messy and the spreadsheet impossible to sort and filter.</p>	4	\N		Complicated formatting of document is too much for program with no customization options.	10.1.1	2011-12-20	
\.


--
-- Data for Name: core_producttask_os_used; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_producttask_os_used (id, producttask_id, operatingsystem_id) FROM stdin;
574	29	3
646	49	6
575	28	3
576	27	3
995	68	8
577	26	3
997	69	8
998	70	8
999	71	8
723	9	8
724	9	1
725	8	8
726	8	1
727	7	8
728	7	1
729	6	8
730	6	1
530	5	1
531	4	1
532	3	1
533	2	1
805	50	8
807	51	8
808	52	8
809	53	8
880	60	8
813	55	8
881	61	8
607	41	1
815	56	8
608	40	1
609	39	1
610	38	1
816	34	3
611	37	1
612	36	1
817	33	3
613	35	1
614	30	1
818	32	3
819	31	3
820	42	2
821	43	2
822	44	1
823	45	2
824	54	2
825	57	2
826	58	2
882	62	8
883	63	8
827	59	2
963	64	8
965	65	8
966	66	8
566	15	2
967	67	8
567	14	2
568	13	2
569	10	2
570	21	8
571	18	8
572	17	8
573	16	8
638	48	6
639	47	6
640	46	6
641	25	6
642	24	6
643	23	6
644	22	6
\.


--
-- Data for Name: core_review; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_review (id, creation_time, update_time, version_tested, slug, user_rating_votes, user_rating_score, reviewer_id, product_id, rating, published, name, description, teaser, kicker, subtitle, review_done, editor_id, community, documentation, performance, usability, image, community_text, documentation_text, performance_text, usability_text, rating_text, programming, programming_text) FROM stdin;
10	2012-02-16 23:07:28-05	2012-03-22 11:49:42.310595-04	N/A	documentcloud-offers-useful-but-flawed-features-2012-02-16	0	0	7	20	3	t	Despite flaws, DocumentCloud a good start to reporting projects	<p class="MsoNormal"><em>[FULL DISCLOSURE: DocumentCloud is a project by Investigative Reporters and Editors, where Reporters' Lab Director Sarah Cohen serves as a member of the <a href="http://www.ire.org/about/board-directors/">board of directors</a>.]</em></p>\r\n<p class="MsoNormal">DocumentCloud is invaluable for reporters who want a free, Web-based service to share and mark up documents, or even publish them. Although its optical character recognition and entity extraction functions are far from perfect, they're suitable in most cases for a first pass at tricky documents.</p>\r\n<p class="MsoNormal">DocumentCloud's core is a suite of tools for document sharing, markup and publication. It allows users to define a set of colleagues allowed to view and annotate a document. Notes are easily accessible by collaborators through the document or direct links, and private annotations also allow for personal notes.</p>\r\n<p class="MsoNormal">Other features allow users to insert or reorder pages, create sections and edit document data. Reporters can also use DocumentCloud to publish or embed a document, and redact portions of it before publication. So far, users cannot break or divide a document into multiple documents, though a developer said that feature was under consideration.&nbsp;</p>\r\n<h2>OCR SPOTTY, BUT USEFUL</h2>\r\n<p class="MsoNormal">DocumentCloud's optical character recognition feature, which uses open-source <a href="http://code.google.com/p/tesseract-ocr">Tesseract</a>, performed decently in our tests. It didn't do as well as industry standard <a href="/review/good-option-for-tackling-pdf-problems-but-cheaper-alternatives-abound-2012-01-11">Adobe Acrobat</a> or other <a href="/review/abbyy-fine-reader-a-solid-option-for-searching-data-2011-12-19">cheaper options</a>, but provided useful results in more than half the cases. In our tests, it did very well with clean and regularly-formatted documents.</p>\r\n<p class="MsoNormal">But it struggles noticeably when dealing with unusual font styles, <a href="/testresult/document-cloud-handles-most-scanned-in-pdfs-2012-02-10">like italics</a>, or smaller font sizes. It also has trouble with dense blocks of text, like long paragraphs with no breaks, and <a href="/testresult/documentclouds-ocr-hit-and-miss-with-typed-transcripts-2012-02-10">irregular formats</a> with expanses of white space seem to stump it.</p>\r\n<p class="MsoNormal">However, it does allow easy switching between the OCR text and original document. That lets users cast a wide net with a search in the OCR version, then get the accurate translation from the original. Basic users can correct text recognized via OCR through an interactive window. Advanced users can work with <a href="https://www.documentcloud.org/help/api">DocumentCloud's API</a> to "train" it to recognize and replace terms.</p>\r\n<h2 class="MsoNormal">ENTITY EXTRACTION ERRATIC</h2>\r\n<p class="MsoNormal">DocumentCloud features include entity analysis -- in effect an automated index of all the organizations, people, places and terms in the document. It uses Thomson Reuters' <a href="http://www.opencalais.com/">OpenCalais</a>, which is lightning-fast and useful, as long as you recognize the limitations.</p>\r\n<p class="MsoNormal">First, OpenCalais struggles with larger documents; a DocumentCloud developer said it probably breaks such files into sections and processes them separately. That may have led to the poor result in <a href="/testresult/documentcloud-flaws-hurt-entity-analysis-of-emails-2012-02-16">our test of a large document set</a>, where the entity analysis appeared to simply skip over and ignore dozens of pages of the document. It <a href="/testresult/documentcloud-2012-02-16">performed much better</a> on a smaller file, but ignored an obvious entity, the U.S. Department of Justice.&nbsp;</p>\r\n<p class="MsoNormal">While that's not good enough for a publishable analysis, it could be useful for reporters making a first pass at a document and looking for terms that are clearly included. That could form the basis for a more thorough look via DocumentCloud's search functions. The feature does have a slick display, producing a "timeline" of the document with hashmarks indicating where the entity name appears. Hover on a hashmark and you get the text where the term appears.&nbsp;</p>\r\n<p class="MsoNormal">That said, the entity extraction has some annoying restrictions.You can only analyze one document at a time, not a set of related documents. Analyzing a portion of a document requires a manual scan of the full-document results. DocumentCloud doesn't allow you to merge or split documents, which would make those tasks simpler.</p>\r\n<p class="MsoNormal">Still, DocumentCloud puts a slew of tools in the hands of journalists and gives them a terrific primer in what's possible and what they can attempt to do. For the price (free), there's no reason not to use it for every project.</p>	<p>DocumentCloud is invaluable for reporters who want a free, Web-based service to share and mark up documents, or even publish them. Although its optical character recognition and entity extraction functions are far from perfect, they're suitable in most cases for a first pass at tricky documents.</p>		OCR and entity analysis struggle with complex files, but document management features are great.	2012-02-10	4	3	4	2	4		Forum discusses bugs, fixes, dream features; responsive staff	No manual, video, but help section includes guides, how-tos; API available	Fast; handles basic jobs, but hard-to-explain gaps and flaws in OCR, entity extraction, not quite as good as proprietary competitors 	Easy to grasp, learn; lots of useful features	Great for the price; doc management stellar; OCR, entity extraction need refinement	0	
4	2011-11-21 16:59:50-05	2012-01-31 19:13:13.538781-05	N/A	cometdocs-not-a-bad-option-for-free-quick-and-easy-solution-2011-11-21	0	0	4	6	3	t	Cometdocs a decent option for quick, simple conversion	<p>Cometdocs won't get every PDF-to-spreadsheet job done, but it performs reasonably well for a fast, free Web app with no learning curve and is a good first stop if you don't already have a go-to PDF tool in your arsenal.</p>\r\n<p>The program worked best on well-formatted documents, like a lined table and a database-generated report. The more straightforward, the better, so don't waste your time with Cometdocs if you've tried your document elsewhere to no avail.</p>\r\n<p>There aren't a ton of extras here. After selecting the document you want to convert, it automatically selects the compatible actions. That makes things easy, but that simplicity also extends to areas where a few extra options could be helpful. No community support and very little documentation, for example, make finding an answer you're looking for much more difficult.</p>\r\n<p>In our tests, the standout challenge for Cometdocs was white space in the table structures. In many cases, the program interpreted this space as other empty cells, throwing off the format of the spreadsheet and making sorting and filtering difficult. This resulted in either <a href="/testresult/unwieldy-results-junk-data-hamper-cometdocs-performance-2011-11-21">extensive cleanup</a> or an <a href="/testresult/white-space-misinterpretation-makes-output-unusable-2011-11-21">unusable output altogether</a>.</p>\r\n<p>The application also has a tendency to let in junk information that you'll have to sift out. Page numbers and repeated headers litter its results, so users have to watch its performance carefully with more complex documents. Smart sorting should narrow this down and allow users to eliminate unneeded information quickly.</p>\r\n<p>A Cometdocs representative says these are known issues, some of which its development team is looking to improve in an updated version due out in 2012.</p>\r\n<p>The big sell here is the price (free) and ease of use. It's pretty fast too. Even without a premium account, which the site says will prioritize your products over others, the longest conversions took less than a few minutes.</p>	<p>Cometdocs won't get every PDF-to-spreadsheet job done, but it performs reasonably well for a fast, free Web app with no learning curve and is a good first stop if you don't already have a go-to PDF tool in your arsenal.</p>		Tough tasks are an issue, but this Web app is fine for everyday tasks.	2011-11-21	\N	1	1	3	4		Has blog and Facebook page, not much user engagment on either	No manual or additional info, aside from FAQ	Had trouble with white space, complex formatting	Very easy to use; Web app means no installation	Worth a try for quick, dirty projects	5	Uses a basic file upload interface most users should be familiar with.
12	2012-03-13 17:26:19-04	2012-03-26 09:38:15.774947-04	18.0	omnipage-can-tackle-tougher-documents-for-a-price-2012-03-13	0	0	4	11	4	t	OmniPage tackles tougher documents, unlocking text and spreadsheets	<p>If you're a reporter who regularly deals with tricky documents that need text recognition or conversion into sortable spreadsheets, OmniPage is worth the investment of money and time to conquer its quirks. But despite great performance on many of our toughest tests, it's not as ideal for time-strapped journalists looking for a quick solution.</p>\r\n<p>The software presents users with a myriad of options for defining the type of document you're looking to convert, with a particular bend toward optical character recognition. Although this gives OmniPage the flexibility to <a href="/testresult/omnipage-accurately-converts-massive-garbled-pdf-into-spreadsheet-2012-01-24">handle tests</a> no other program could, the added complexity takes time to master.</p>\r\n<p>It's worth noting that OmniPage's performance on our&nbsp;<a href="/testresult/software-crashes-bring-down-passable-performance-on-scanned-forms-2012-03-12">largest test documents</a>&nbsp;was glitchy at times. More than once, the software crashed or hung up in the middle of processing. Nuance representatives said this could be a result of running our tests on a virtual machine on a Mac, which means less processor resources.</p>\r\n<p>There are several ways around this though. The software makes it easy to split conversion into chunks without reloading or splitting your PDF just by selecting the pages you want to process - probably a good idea when your document exceeds 500 pages. Another way&nbsp;is to save work between steps, which allows users to pick up where they left off. Crashes still mean lost time, but not starting from scratch.</p>\r\n<h2>Custom options help tackle tables</h2>\r\n<p>As a PDF tool, OmniPage matched or exceeded the performance of every other product we've tested, save one document with <a href="/testresult/omnipage-not-flexible-enough-to-convert-unlined-table-2012-01-17">particularly hard-to-parse table headings</a>. It takes a few tries, however, to get the hang of what works best in different scenarios.</p>\r\n<p>These high marks are a result of an option that allows users to define the document's formatting. In addition to a few pre-defined formats (like "single column, no table" and "spreadsheet"), users can also create templates and set rows and columns while viewing the document. That's particularly helpful when the <a href="/testresult/omnipage-not-flexible-enough-to-convert-unlined-table-2012-01-17">document is uniform</a>.</p>\r\n<p>With a little upfront work, reporters can use OmniPage's fine-grain control to <a href="/testresult/with-users-help-omnipage-creates-organized-table-from-database-report-2012-01-23">all but eliminate clean-up in Excel</a>, although this does take some time.</p>\r\n<p>Even after processing the document, OmniPage allows users to browse the result in a split-pane text editor, then make changes and reprocess on the fly -- even by individual pages or selections of pages.</p>\r\n<p>Another one of its built-in capabilities -- overlay matching -- came in handy&nbsp;in another test, where it ignored the garbled, embedded font and instead&nbsp;<a href="/testresult/omnipage-accurately-converts-massive-garbled-pdf-into-spreadsheet-2012-01-24">accurately translated the tabular entries</a>. When users upload documents, OmniPage automatically checks the appearance of the text with the recognized font. If things don't match up, the software disregards the recognized fonts and runs its own OCR to fix it.&nbsp;No other product we've tested has been able to&nbsp;<a href="/test/convert-border-fence-contributors-to-spreadsheet-2011-11-10/">handle this test</a>, meaning OmniPage is ideal for dealing with documents with corrupted or weird embedded fonts.</p>\r\n<h2>OCR performance solid</h2>\r\n<p>Given its focus on OCR, it's not surprising that OmniPage's accuracy in text recognition is one of the highest we've tested. Our PDF with <a href="/testresult/partial-text-pdf-stumps-omnipages-text-recognition-2012-02-15">low-resolution text</a>&nbsp;however, did give the software trouble.</p>\r\n<p>It was at or near flawless in many of our tests for accuracy, and seemed to have trouble only in areas where the scanned material was lower quality.</p>\r\n<p>Much like its ability as a spreadsheet converter, OmniPage also allows users to edit the text it recognizes in a split pane, then save the corrections into the resulting searchable PDF. That's particularly helpful for on-the-fly fixes.</p>\r\n<p>Its&nbsp;OCR proofreader, which pops up automatically during the recognition process, allows users to be a little more methodical about these corrections. Much like a spell checker, it skips to every point where it's not confident about the text it recognized. Users can then manually fix the error, ignore it if it's correct or select a change from a list of suggestions.</p>\r\n<p>With a price point marginally higher than its competitors (at least for the standard version), OmniPage offers an extremely capable product for dealing with documents. Its learning curve makes it less suitable for one-off projects, but if you plan on handling tricky records routinely, OmniPage is the way to go.</p>\r\n<p><em>NOTE: Although we worked with the professional version of OmniPage ($499.99), the much-cheaper standard version ($149.99) has the&nbsp;<a href="http://www.nuance.com/ucmprod/groups/imaging/@web-enus/documents/collateral/nc_016052.pdf">same capabilities&nbsp;</a>we tested.</em></p>	<p>If you're a reporter who regularly deals with tricky documents that need text recognition or conversion into sortable spreadsheets, OmniPage is worth the investment of money and time to conquer its quirks. But despite great performance on many of our toughest tests, it's not as ideal for time-strapped journalists looking for a quick solution.</p>		Mastering the learning curve yields largely stellar performance.	2012-03-13	\N	3	3	4	3		Knowledgebase allows registered users to submit questions, track requests	How-to, user's guides available in program; release notes dated	Glitchy with larger documents; robust enough to handle most challenging conversions	Takes time, experimentation to learn best practices	Excels at PDF conversion, OCR; slight learning curve 	0	
1	2011-09-07 12:10:29-04	2012-02-01 17:49:08.3595-05	2.0.1.15	outwit-performs-well-on-basic-tasks-2011-09-07	0	0	1	2	3	t	Outwit OK for basic scraping, but struggles with complexity	<p>Outwit is well suited for simple tasks like pulling down images, PDFs, links and email addresses. But the Firefox extension is rough around the edges and unable to handle more complex databases.</p>\r\n<p>The interface itself is bare-bones, which would be fine if it was obvious what you were supposed to do. Tooltip explanations would go a long way here. You can find some answers in the documentation, but it's not always as robust as you'd hope.</p>\r\n<p>Outwit was stumped in several tests by <a href="/testresult/outwit-on-bc-physicians-site">multilevel databases</a>, unable to drill down and capture detail pages for records.</p>\r\n<p>Although it can scrape sites using search terms submitted in the URL, the version of Outwit we tested couldn't fill out search forms embedded in pages. That eliminated it as a tool from <a href="/testresult/outwit-on-bc-teachers-site">many databases that use these POST variables</a> to access information. An Outwit representative said there's a fix for this in a newer release, but that's it's still pretty rough and needs additional work.</p>\r\n<p>Its basic data views also yield messy results that require some tweaking and/or cleanup to get things right. Extending some of these options, like being able to select certain tables, could improve accuracy for future editions.</p>\r\n<p>Building custom scrapers helps in most cases. The process is pretty easy, allowing users to view and select HTML tags from the source code to show the program what they want to collect.</p>\r\n<p>Outwit also performs well at downloading content. It grabs all of the images and PDFs on the page and can save them wherever you want. It also finds page navigation and almost always guesses correctly how to go from page to page in a result set. The macro functionality is nice in that it can export the various content types to CSVs, Excel files, HTML or even SQL.</p>\r\n<p>After speaking with a representative from Outwit, it appears the company does have a big update coming in the second or third quarter of 2012. On the to-do list for version 2.5 are updates to the interface, more data view options and even some jQuery integration. We'll make sure to review this version as soon as it's released.</p>\r\n<p>For now, the Outwit team says its working to creatie more tutorials and wizards to guide users through the program, which should be a big help.</p>\r\n<p>With some improvements in the future, Outwit could be a more-than-average performer. But unless your task is straightforward, look for other more well-equipped scrapers for now.</p>	<p>Outwit is well suited for simple tasks like pulling down images, PDFs, links and email addresses. But the Firefox extension is rough around the edges and unable to handle more complex databases.</p>		Nabbing multimedia content is no sweat, even though results are often messy.	2011-09-07	4	2	2	3	3		No users forums; community created tutorials available	Tutorials, in-app help system available, but somewhat technical; seems dated	As fast as Firefox, scraping pages as quickly as they load; can't handle complex databases; results often messy	Utilitarian interface, but easy enough to navigate	Functionality limited to simple tasks, so skip it if your task is daunting	2	The installation is as simple as using any other Firefox plugin. Where it may become difficult is in building a scraper to actually harvest content. The documentation is not as helpful as it should be.
13	2012-05-17 14:28:43-04	2012-05-21 15:55:24.549841-04		google-drive-shows-promise-but-file-size-limits-hinder-usefulness-2012-05-17	0	0	7	25	2	t	Google Drive text recognition promising, but file size limits a problem	<p>Google Drive is fast and simple to use, with precise searches and abundant memory for projects. But for all that storage capacity, the Web-based service has severe file size restrictions that pose significant problems for reporters who often work with large documents.&nbsp;</p>\r\n<p>Drive, working in sync with Google Docs, imposes a 2 MB limit for documents requiring optical character recognition (although users can store larger documents in their original formats). It also stops recognizing text at 10 pages, regardless of file size. As for whether this limit may expand in the future, a&nbsp;Google Drive representative said the company had no pending improvements to announce.</p>\r\n<p>And that's a shame, because when Google Drive does accept files, it handles them almost flawlessly. When we tested it on converting <a href="/testresult/google-drive-flawless-with-scanned-in-pdfs-but-only-if-small-files-2012-05-16">scanned-in memos</a>, it reproduced the text verbatim in two files. But it rejected two other files outright, because they exceeded the service's 2MB limit.</p>\r\n<p>Those limits were more vexing in our test of PDF files of <a href="/testresult/google-drive-chokes-on-large-pdf-transcript-files-2012-05-16">typed transcripts</a>. Drive failed to import three of five files, and in the two files it converted, it stopped at 10 pages, foiling our test parameters. File-size limits also caused it to fail our test of a tricky <a href="/testresult/google-drive-fails-to-convert-large-partial-text-pdf-2012-05-16">partial-text PDF</a>. It did much better in a test of converting <a href="/testresult/google-drive-quickly-finds-text-in-scanned-forms-2012-05-16">form-based PDFs</a>, quickly accepting and converting the 174 small files and rendering the text well enough that a search found nearly all of the required terms.</p>\r\n<p>Google Drive shows promise for reporters with certain tasks, such as managing a slew of letters, emails or government forms. Reporters can expect quick uploads, easy file-sharing and generally accurate searching, given the usual caveats. However, the file-size issue is a major constraint for reporters dealing with large files and tight deadlines; <a href="/search?q=&amp;type=products&amp;category=ocr-2011-11-28">other programs and services</a> we tested have no such limits.</p>\r\n<p>It might be possible to use those programs to split the documents into manageable pieces, and then upload to Drive. But if you have to use another program for document parsing, it would be simpler to use it for the conversion and analysis as well.&nbsp;</p>	<p>Google Drive is fast and simple to use, with precise searches and abundant memory for projects. But for all that storage capacity, the web-based service has severe file-size restrictions that pose significant problems for reporters, who often work with large documents.&nbsp;</p>		Although it chokes at 2 MB or 10 pages, Drive works well for small files.	2012-05-17	4	4	4	2	5		After only a month, has active moderated forum with hundreds of threads	Google maintains help files, online guides, blog, brief online documentation; staff responded to an email questions within a day	Great on small files, useless on large ones	Extremely simple to use, especially for anyone accustomed to Google interfaces	OCR limits present significant constraints; useful for document sharing, management	0	
5	2011-12-16 10:38:22-05	2012-02-07 17:32:21.298826-05	Able2Extract Professional	able2extract-pdf-converter-7-is-a-great-tool-for-data-journalism-2011-12-16	0	0	3	8	4	t	Able2Extract a top pick for capturing tabular PDF data; OCR OK	<p class="MsoNormal">Thanks to its ability to define custom tables, Able2Extract is one of the best options we've found for converting PDFs to spreadsheets - especially for the price. It can even handle tricky documents that stump other programs and comes complete with decent OCR.</p>\r\n<p class="MsoNormal">The OCR technology used by Able2Extract is both reliable and effective on simple tasks, although it was <a href="/testresult/form-based-pdf-provides-a-challenge-for-able2extract-2012-02-07">quite slow</a> processing larger collections of PDFs. Our toughest document, <a href="/testresult/able2extract-fails-to-make-partial-text-pdf-searchable-at-all-2012-02-07">a PDF with some converted text</a>, also stumped the software completely.</p>\r\n<p class="MsoNormal">It's ability to convert PDFs to Excel, however, is Able2Extract's standout feature. It's even easy to use (<a href="/tutorial/using-able2extract-pdf-converter-to-convert-a-pdf-into-a-spreadsheet-2012-01-10">see our tutorial</a>). Simply open the PDF, select what you want to convert and click on the Excel button to complete the process. There's even great documentation and options to get additional help from the company via social media.</p>\r\n<p class="MsoNormal">While the automatic options works for <a href="/testresult/able2extract-easily-converts-this-lined-table-2011-12-16">simpler, straightforward PDFs</a>, the custom option is what sets Able2Extract apart.</p>\r\n<p class="MsoNormal">Users can draw and move their own row and column lines or use specific table areas as a key. The option helps tackle tables with tricky formatting, <a href="/testresult/able2extract-does-an-excellent-job-with-this-unlined-table-2011-12-16">like wrapped text and separated headings</a>.</p>\r\n<p class="MsoNormal">No other PDF tool we've tested has this custom feature for this price point, which keeps it at the low end of the product range (and even some <a href="/review/good-option-for-tackling-pdf-problems-but-cheaper-alternatives-abound-2012-01-11">higher-end software</a> doesn't have it).</p>\r\n<p class="MsoNormal">Able2Extract won't do it all though, as our <a href="/testresult/able2extract-fails-with-embedded-fonts-2011-12-16">embedded font document</a> showed.</p>\r\n<p class="MsoNormal">While it doesn't completely eliminate the need for data cleanup, it certainly will minimize such work. The time you'll save not having to play around on free converter websites is worth the price tag alone.</p>	<p>Thanks to its ability to define custom tables, Able2Extract is one of the best options we've found for converting PDFs to spreadsheets - especially for the price. It can even handle tricky documents that stump other programs and comes complete with decent OCR.</p>		Quick and accurate, this software handles most PDF-to-spreadsheet conversions and has fair OCR.	2011-12-16	4	4	4	4	5		Help files, FAQs and video tutorials on website; active Facebook page, available Twitter feed and blog	Great online support and documentation	Successfully converted all PDFs, except for the pesky embedded font; tested fair in the OCR categories	Easy to use; advanced features very intuitive	For the money, best tool we've tested for converting spreadsheets; OCR not bad	4	Easy to install and launch. Very inutitive interface.
15	2012-06-15 10:23:52-04	2012-07-10 09:27:35.268126-04	1.6	chrome-scrapers-use-limited-to-single-web-page-2012-06-15	0	0	6	27	1	t	Scraper's use limited to single, well-formatted Web pages	<p>Although Scraper perfectly grabs information from a single, well-formatted Web page&nbsp;and produces a spreadsheet ready for export, the&nbsp;free Chrome extension&nbsp;isn't helpful for reporters looking to scrape more complicated databases that would require any sort of automation.</p>\r\n<p>For its intended purpose -- single-page scraping -- it's simple enough to use: highlight the text you want to scrape, right click and select "scrape similar" from the menu. Provided the page contains actual tables,&nbsp;the tool functions beautifully from there, funneling the highlighted text and the rest of the page's tabular data into a clear chart in a new tab.&nbsp;The "Export to Google Docs" button then enables reporters to take the data elsewhere.</p>\r\n<p>But if the database isn't formatted just right, don't expect much. We had issues with a site <a href="/testresult/chrome-scraper-not-useful-for-sites-with-multiple-pdfs-2012-06-15">organized without HTML tables</a> and got an error message on a database that <a href="/testresult/chrome-scraper-unable-to-scrape-database-2012-06-15">displayed its results in an iFrame</a>.</p>\r\n<p>The browser extension is also a little finicky:&nbsp;when you highlight the data you want to scrape, do not highlight the column names or it won't work.&nbsp;If you grab plain text, you will either end up with a blank page result or a tab with the text you highlighted.</p>\r\n<p>Scraper's also not designed for sites with more complex structures, like <a href="/testresult/scraper-not-useful-for-databases-2012-06-15">those with detail pages</a> or even <a href="/testresult/chrome-scraper-enabled-easy-export-of-page-data-2012-06-15">just multiple pages</a> that would be too tedious for a journalist to click through. The developer was quick to point out these limitations, however, in an email response.</p>\r\n<p>Because it's free and easy to use, Scraper can be a great way to grab one-off data, performing a copy-paste-export job without losing the table formatting. However, it's best for reporters working with more complicated data sets to use another tool with more functionality.</p>	<p>Although Scraper perfectly grabs information from a single Web page&nbsp;and produces a spreadsheet ready for export, the&nbsp;free Chrome extension&nbsp;isn't helpful for reporters looking to scrape more complicated databases that would require any sort of automation.</p>		Browser extension not designed for more complicated scraping tasks.	2012-06-15	4	0	1	2	3		No community exists, but developer responded quickly to email inquiry	Very little documentation	Performs copy-paste function well in certain circumstances; can't handle complex jobs	Easy to use for simple jobs; buggy at times	Scrapes single pages well; can't handle detail, multiple pages	0	
3	2011-11-10 14:00:56-05	2012-01-31 19:12:08.542128-05	7.0.1.5	besides-a-few-staples-nitro-pro-comes-up-short-2011-11-10	0	0	4	4	2	t	Nitro comes up short on PDF conversion	<p>Although it's fast and simple, Nitro Pro does a messy job of converting PDFs to spreadsheets. With documents common in most newsrooms, it's not likely to save reporters time.</p>\r\n<p>The software's ease of use, good documentation and robust community aren't much help when the things <a href="/testresult/nitro-pro-on-border-fence-contributors-2011-11-10">just won't work</a>, and its lack of customization for data input and output means users must clean up their spreadsheet data manually or have the Excel expertise to automate it.</p>\r\n<p>When Nitro does output data, it's not always very helpful. Many entries are<a href="/test/convert-political-appointments-pdf-into-spreadsheet-2011-11-09"> lumped into the same cells</a>, preventing filtering and sorting. Other entries are <a href="/test/convert-dc-housing-violations-pdfs-into-spreadsheet-2011-11-09">left out of the output file altogether</a>, making me a bit nervous about reliability.</p>\r\n<p>The software did perform well with our <a href="/test/convert-madoff-customers-into-spreadsheet-2011-11-10">simplest task</a>. But even that case wasn't without some difficulty.</p>\r\n<p>That's because in every test, Nitro separated its Excel results over multiple sheets -- sometimes numbering in the hundreds -- making comparison impossible. Proper data analysis would require reporters to combine the sheets, which requires a working knowledge of <a href="http://www.vbaexpress.com/kb/getarticle.php?kb_id=151">macros and Visual Basic</a>.</p>\r\n<p>However, a Nitro representative said the company is aware of the problem and is working on a fix for the first half of 2012.</p>\r\n<p>Some sort of input or output options could help here, but aside from the ability to specify page numbers in selected documents, Nitro has none.</p>\r\n<p>Nitro Pro does have other common functions to help users create and edit PDFs. But for PDF-to-spreadsheet conversion, Nitro Pro could stand to trade speed and simplicity for customization and functionality.</p>	<p>Although it's fast and simple, Nitro Pro does a messy job of converting PDFs to spreadsheets. With documents common in most newsrooms, it's not likely to save reporters time.</p>		Don't count on converting complex or obscure documents - or be prepared for cleanup.	2011-11-10	\N	4	4	2	2		Active community support forum available through software's help menu	Manual, release notes downloadable from website or through software	Tackles ordinary tasks OK, but splits spreadsheet data across multiple pages	Relatively plug-and-play; no advanced options for recognizing data	Can't handle PDFs of even moderate complexity; too much cleanup required	5	Installation and operation are about as intuitive as any other Microsoft Office product. Documentation is complete and aimed at consumers, so there's a quick learning curve.
8	2012-01-11 15:33:08-05	2012-02-06 12:33:03.843626-05	10.1.1	good-option-for-tackling-pdf-problems-but-cheaper-alternatives-abound-2012-01-11	0	0	4	9	3	t	Acrobat decent for tackling PDFs, OCR but cheaper choices abound	<p>Adobe may have created the PDF, but its Acrobat Pro software is far from a newsroom workhorse -- at least when it comes to OCR and converting PDFs into spreadsheets. If it's not already installed on your office computer, it's not worth the investment for these tasks alone.</p>\r\n<p>While it's useful for simple converting and OCR problems, cheaper alternatives such as <a href="/review/able2extract-pdf-converter-7-is-a-great-tool-for-data-journalism-2011-12-16">Able2Extract</a> fared better in our tests. Others, like <a href="/review/cometdocs-not-a-bad-option-for-free-quick-and-easy-solution-2011-11-21">Cometdocs</a>, will even take a crack at your issue for free.</p>\r\n<h4>Spreadsheet conversion inflexible</h4>\r\n<p>Our toughest documents <a href="/testresult/acrobat-not-able-separate-data-properly-preventing-sort-2011-12-20">foiled Acrobat's attempts</a> to convert them into spreadsheets, even though <a href="/testresult/able2extract-does-an-excellent-job-with-this-unlined-table-2011-12-16">much cheaper software</a> was able to handle them. That's not surprising given the software's one-size-fits-all approach. Users get no advanced options when carrying out a conversion, saving the file as an Excel spreadsheet to set Acrobat on its way. This cuts down on complexity, but makes Adobe's product unable to adapt to more nuanced documents.</p>\r\n<p>Inaccuracy was also an issue even in the case of a <a href="/testresult/missing-entries-mar-conversion-of-database-generated-pdf-2011-12-29">simpler test</a> using the output of a Microsoft Access database, where Acrobat omitted multiple entries throughout a massive document set. In this case, the results were so inaccurate that it would have created more work for any journalist looking to avoid deeply flawed reporting.</p>\r\n<h4>OCR function a good starting point</h4>\r\n<p>Acrobat fared better in our tests as a tool for optical character recognition, although the results were still mediocre.</p>\r\n<p>The software worked where image PDFs were high quality and neatly scanned. Some common hangups with other programs, like complicated Arabic names and italics, weren't a problem for Acrobat. But every once in a while, omitted names and phrases threw a wrench in search attempts.</p>\r\n<p>In particular, Acrobat <a href="/testresult/acrobats-ocr-falters-on-partial-text-pdf-2012-01-03">struggled with a sloppy partial-text PDF</a>, ignoring whole sections of text, botching numbers and making search impossible.</p>\r\n<p>Acrobat does have some bright spots. Features like the ability to merge and split PDFs are convenient, especially if Acrobat is your default PDF viewer (although there are <a href="http://www.pdfsam.org/">open-source tools</a> for that).</p>\r\n<p>The support community is also superb. Staff and users partner to operate an <a href="http://acrobatusers.com/">active, dedicated community site</a> geared at solving problems and tackling hangups. Scores of multimedia tutorials can get users up to speed on additional functionality in a flash.</p>\r\n<p>There's also the fact that Acrobat is often included with other popular Adobe software common in newsrooms, making it a likely part of many a reporter's tech toolbelt.</p>\r\n<p>But at almost $500 retail, it's not a worthy standalone option for these two common tasks.</p>	<p>Adobe may have created the PDF, but its Acrobat Pro software is far from a newsroom workhorse -- at least when it comes to OCR and converting PDFs into spreadsheets. If it's not already installed on your office computer, it's not worth the investment for these tasks alone.</p>		OCR and spreadsheet conversions are capable of common tasks.	2012-01-11	\N	5	5	3	4		Active, dedicated user community site; company regularly interacts with users via Facebook, Twitter, YouTube	Online access to training, user manuals, tutorials, other detailed documentation	Mid-grade performance on both OCR, spreadsheet conversion tasks; less usable results with tougher challenges	One-size-fits-all functionality means simplicity when working with PDF documents	Good tool if pre-installed or bundled with other software; not worth it on its own	4	
6	2011-12-19 11:24:24-05	2012-01-31 19:14:27.402384-05	11	abbyy-fine-reader-a-solid-option-for-searching-data-2011-12-19	0	0	6	7	4	t	ABBYY FineReader a solid option for recognizing text in PDFs	<p class="MsoNormal">ABBYY FineReader is a fast and accurate solution for recognizing text in a wide range of PDF documents. While it's not perfect at OCR, it's pretty close.</p>\r\n<p class="MsoNormal">The software performed well in most of our tests, creating very accurate documents with only a few glitches in wording.</p>\r\n<p class="MsoNormal">One standout feature was FineReader's impressive speed. In most cases, it converted small documents in a few seconds and others in less than a minute. It took only several minutes to convert a document with more than 200 pages.</p>\r\n<p class="MsoNormal">FineReader's biggest challenge was a PDF that began <a href="/testresult/search-terms-not-found-when-converting-partial-text-with-abbyy-2011-12-19">with only partial searchable text</a>. Although the software did recognize more text than in the original document, the result was far from perfect, with many words omited altogether.</p>\r\n<p class="MsoNormal">The program's menu location was also slightly confusing. The software launches with a menu of "common" tasks, and running OCR isn't one of them. You can find the others off to the left. It wasn't a huge obstacle, but it slowed me down.</p>\r\n<p class="MsoNormal">The price is a bit high, given the abundance of OCR tools bundled with other programs. But given FineReader's performance, it may be worth the cost for newsrooms that commonly deal with this sort of document.</p>	<p>ABBYY FineReader is a fast and accurate solution for recognizing text in a wide range of PDF documents. While it's not perfect at OCR, it's pretty close.</p>		Software creates nearly accurate, searchable documents.	2011-12-19	4	4	5	4	3		Includes full technical support; company active on Facebook, Twitter	Manual, read me text provide guidance	Performed tasks well, with most typed information converting	Fairly easy and intuitive	High level of accuracy in recognizing text	5	Functions like many other software programs average users know well.
14	2012-06-10 17:58:21-04	2012-06-19 11:49:30.458552-04	1.5.3.1	table2clipboard-will-not-help-with-the-heavy-lifting-2012-06-10	0	0	3	26	1	t	Table2Clipboard won't help with heavy lifting	<p>This free Firefox extension does a nice job copying and pasting HTML tables into spreadsheets, but it wasn't designed to&nbsp;help with more difficult&nbsp;Web scraping&nbsp;tasks that require navigating through multiple pages or searchable forms.</p>\r\n<p>After a point-and-click installation, Table2Clipboard adds an option in Firefox's Edit menu to "Copy All Tables." You can then simply paste the content into your spreadsheet of choice.&nbsp;You can also right-mouse click on the HTML table and select Table2Clipboard from the menu, then copy the whole table or select specific rows or columns to copy and paste.</p>\r\n<p>Formatting like borders, shading and even hyperlinks copy and paste perfectly, but only when the page uses specific HTML tags. The extension <a href="/testresult/table2clipboard-doesnt-find-any-tables-to-copy-2012-06-07">won't recognize some pages</a> that use other tags (like &lt;div&gt;, for example) to mimic the look and feel of a table, rendering Table2Clipboard useless. Other elements the extension is typically able to grab, like links, <a href="/testresult/table2clipboard-no-help-in-getting-at-bc-teacher-data-2012-06-07">won't be copied</a> if they use JavaScript or anything other than HTML.</p>\r\n<p>These limitations mean it's important to know the structure of the data before giving Table2Clipboard a try.</p>\r\n<p>Although the software was last updated in August 2011, developer Davide Ficano says he continues to support the project, which is still compatible with newer versions of Firefox released since the last update.</p>\r\n<p>As a data geek, I rarely care about the color, borders and shading, but there have been many times when I wanted to copy and paste a table containing HTML links. I used to have launch Internet Explorer to accomplish this job. Not anymore.</p>	<p>This free Firefox extension does a nice job copying and pasting HTML tables into spreadsheets, but it wasn't designed to&nbsp;help with more difficult&nbsp;Web scraping&nbsp;tasks that require navigating through multiple pages or searchable forms.</p>		Add-on does enhance Firefox's ability to copy and paste tables from websites into spreadsheets.	2012-06-11	4	3	1	1	3		Many positive reviews from Firefox users; news, forum available	Sparse documentation information	Copies and pastes, but not much else; can't handle javascript, div tags	Super easy to install, use	Useful for copying, pasting individual HTML tables only; not designed for complexity	0	
7	2011-12-21 10:42:35-05	2012-03-22 12:29:37.632571-04	4.14.2.253	cogniviews-pdf2xl-a-versatile-tool-for-most-situations-2011-12-21	0	0	7	10	3	t	PDF2XL a versatile tool for small spreadsheet conversions	<p>There are several things to like about Cogniview's PDF2XL OCR, including a simple interface, an idiot-proof walkthrough feature, some customization options and a built-in optical character recognition feature for scanned documents. But while it performed flawlessly on two easy tests, it flopped on the more difficult problems.</p>\r\n<p>It failed on a difficult 1,500-page scanned document, <a href="/producttask/programs-ocr-feature-handles-text-cleanly-but-chokes-on-file-size-2011-12-20">choking after about 50 pages</a>. There was no apparent way to break down the file into bite-size, digestible pieces save for tedious clicking and dragging, unacceptable when working with such large documents.</p>\r\n<p>It also <a href="/producttask/pdf2xl-ocr-struggles-with-irregular-table-2011-12-20">stumbled with a report </a>marred by abundant white space and irregular cell depths. The program's simple layout editor -- which will look familiar to anyone who has used Excel's text-to-columns feature or Access's import wizard -- allows the user to tweak the conversion and fix misplaced rows and columns. But these changes are made page by page, making anything but short documents unacceptable if its automatic conversion settings need help.</p>\r\n<p>For large documents, Cogniview just isn't flexible enough. Users can define tables manually or choose to automatically detect them, but there are no choices in between.</p>\r\n<p>The inclusion of the OCR feature justifies this program's price ($129.97 for a full version), which is somewhat more costly than other converters. There is a free evaluation version, but that it limits users to converting just 10 pages of any given document at a time. That may be enough, though, for someone with a deadline and a smallish one-time project.</p>	<p>There are several things to like about Cogniview's PDF2XL OCR, including a simple interface, an idiot-proof walkthrough feature, some customization options and a built-in optical character recognition feature for scanned documents. But while it performed flawlessly on two easy tests, it flopped on the more difficult problems.</p>		OCR is a bonus, but massive files will give the program trouble.	2011-12-21	4	2	5	3	5	review_lab/contrib/img/reviews/Capture.PNG	No user forums to seek help, but company support has free, paid support options	Excellent walkthrough and tutorial; videos, detailed help section solve common issues	When it works, it works great; needs more selection options, improved performance on large files	Easy and intuitive; most tasks take minutes without intstructions	Flexible for small projects; too difficult for large documents [OCR feature untested]	5	No programming skill needed to run the program; May need some Excel tricks or Visual Basic to clean some results
2	2011-10-03 11:48:02-04	2012-02-27 13:24:42.937108-05	--	needlebase-is-expensive-but-superb-2011-10-03	0	0	1	3	4	t	Needlebase effective, expensive scraping solution	<p><em>[Editor's note: The Needlebase team announced its <a href="http://www.needlebase.com/blog/243-needlebase-to-be-retired">technology would be retired</a> June 1, 2012, as team members work to integrate it with Google. Read more on the future of Needlebase and the state of Web scraping solutions <a href="http://www.reporterslab.org/needlebase-and-the-future-of-scrapers/">here</a>. -TD]</em></p>\r\n<p>If you can afford the cost and the time to handle the learning curve, Needlebase can solve most common scraping problems in the newsroom, aside from gathering and downloading files.</p>\r\n<p>This isn't the type of product you can just pick up and play. It takes a little time to figure out how to set up models for data, which are oriented around loosely connected tags.</p>\r\n<p>Mediocre documentation doesn't really speed up that learning curve. Its video tutorial is helpful, but features an older version with a slightly different interface. Several text tutorials appear to be more up-to-date and helpful. There's not much of a user community to go to for help either -- the forum only had about 80 posts at the time of this review.</p>\r\n<p>After users master the basics though, Needlebase becomes a powerful tool. Its real power comes from building a custom scraper with its visual interface. Just provide the URL of the page you want to scrape and let it load. You can then begin tagging.</p>\r\n<p>The interface is mostly intuitive. It can handle form fields and links for pagination with simple clicks, and Needlebase almost always guesses what users need correctly.</p>\r\n<p>It also handles detail pages well. After telling it what links to follow, the application gets a good idea of what to scrape.</p>\r\n<p>Needlebase performed well on our scraping tasks, although it was unable to handle a <a href="/testresult/needlebase-on-the-bc-physicians-website-2011-10-03">site that required browser cookies</a>. This is an unfortunate side effect of a hosted solution, and is hard to troubleshoot.</p>\r\n<p>While the system isn't designed to <a href="/testresult/outwit-on-changegov">gather files like PDFs or images</a>, Needlebase will collect links to these files, making it easier to use another tool to download what you need.</p>\r\n<p>Despite its strengths, many news organizations may find Needlebase too expensive. Users are charged on a per-cell basis, so larger databases mean larger fees. The free version will let users collect 100,000 cells from 5,000 pages a month, but data must be made public. Costs peak at $999 a month.</p>	<p>If you can afford the cost and the time to handle the learning curve, Needlebase can solve most common scraping problems in the newsroom, aside from gathering and downloading files.</p>		When it comes to scraping websites, Needlebase is hard to beat.	2011-10-03	4	1	3	4	4		Only forum fairly small; company tweets infrequently	Adequate documentation with some tutorials; some material dated	Fast, gathering data in the background; accomplished most scraping tasks	Straightforward, but moderate learning curve	Versatile and effective if users can afford it	2	You have to understand databases and how to create a data model. Knowledge of Excel is probably good enough. It is browser-based and visual, so navigation makes sense.
11	2012-03-12 10:04:37-04	2012-03-16 15:28:33.068354-04	4.5.3	evernote-a-solid-option-for-reporting-2012-03-12	0	0	6	21	5	t	Evernote a solid option for organizing story-related notes, documents	<p class="MsoNormal">From taking meeting notes to recording audio for interviews, Evernote is a great option for reporters looking to keep their data accessible from any device. Space limitations mean you can't keep six years' worth of notes, but considering its ease of use, search functionality and ability to share information, it's a worthwhile addition to any reporters' toolbox.</p>\r\n<p class="MsoNormal">A basic text editor allows users to keep notes and create to-do lists and simple tables, then organize them into notebooks and tag them with related terms for fast searching.</p>\r\n<p class="MsoNormal">The main convenience of Evernote is that the data is backed up in the cloud and accessible across all your devices with a downloadable application or a Web-based version.</p>\r\n<p class="MsoNormal">While you can access Evernote through its standalone application offline, any changes you make won't be synced and found on other devices unless you are connected to the Internet.</p>\r\n<p class="MsoNormal">There are size limitations, so if you're looking for a place to keep huge PDFs, you'll either have to go premium ($45/year) or find another solution. All notes entered from a computer are saved both locally (on your machine) and in the cloud&nbsp;</p>\r\n<p class="MsoNormal">A few other restrictions:</p>\r\n<ul>\r\n<li>100,000 total notes</li>\r\n<li>25 MB maximum for each note for free users, 50 MB for premium users.</li>\r\n<li>250 synchronized notebooks</li>\r\n<li>10,000 tags</li>\r\n<li>100 saved searches</li>\r\n<li>Maximum upload of 10 documents at a time</li>\r\n</ul>\r\n<p class="MsoNormal">Although files you store in Evernote can be opened with separate programs like Word or Excel, they're stored as attachments to notes. That makes organizing a little more complicated. The program also forces users to browse for each attachment separately when uploading, but you can also highlight several documents at once and drag them over instead.</p>\r\n<p class="MsoNormal">One of the other major perks of Evernote is that it allows users to share synced information with others -- editors or other reporters, for example -- whether they have Evernote or not. The share options include Facebook, Twitter, email, a link or a direct share of the full notebook with other Evernote users. Shared notes can be editable or read-only.</p>\r\n<p class="MsoNormal">Storing all this information in the cloud might raise privacy and security concerns for some reporters. Evernote says they use the same basic security as email, and users have the option of <a href="http://blog.evernote.com/2008/04/15/evernote-privacy-and-security/">encrypting their notes</a> if they're storing sensitive information.</p>\r\n<p class="MsoNormal">Evernote also keeps audio files and images, attaching them to new or existing notes. From its smartphone app, users can record interviews right into Evernote and tag them for future searching. The audio can be played through Evernote or saved elsewhere as a WAV file. Photos taken with a smartphone work the same way, and you can later download them from Evernote to post elsewhere.</p>\r\n<p class="MsoNormal">Users can also grab images and info from the Web and save them directly to Evernote with a browser add-on, which requires users to be logged in. Using the add-on, I was able to clip the entire whitehouse.gov front page, which Evernote turned into a note on its own with a summary and date. It's basically a screenshot, which means you can't use the page once you've clipped it. Some of the words appear jumbled, so it's not a perfect tool for that purpose, but it's a good way to archive websites. You also have the option of grabbing just highlighted text or the URL. Both functions were smooth and seamless. If you grab some highlighted text, all URLs still function and both those and the text remain searchable within your note.</p>\r\n<p class="MsoNormal">Given all its features, Evernote is a great way to keep track of notes, audio, photos and documents for day-to-day reporting. The cloud storage means accessing it from anywhere with an Internet or smartphone connection and you can't beat the (free) price.</p>	<p>From taking meeting notes to recording audio for interviews, Evernote is a great option for reporters looking to keep their data accessible from any device. Space limitations mean you can't keep six years' worth of notes, but considering its ease of use, search functionality and ability to share information, it's a worthwhile addition to any reporters' toolbox.</p>		Sharing and sync functions help users access information wherever it's needed.	2012-03-12	4	5	5	5	5	review_lab/contrib/img/reviews/evernoteLogo.png	Active on Facebook, Twitter, etc.; "ambassadors" provide targeted help for users	FAQ page answers a lot of questions; forum and video tips available, but no manual	Performed every task without fail, struggle	Simple user interface; Easy to create, find and search entries	Great tool for saving and organizing notes, audio, images and data in the cloud	0	
\.


--
-- Data for Name: core_review_os_used; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_review_os_used (id, review_id, operatingsystem_id) FROM stdin;
214	3	2
215	4	8
216	6	3
445	14	6
224	1	1
225	8	1
395	10	8
397	7	3
398	12	2
458	15	8
242	5	6
415	13	8
256	2	8
370	11	1
371	11	2
372	11	3
373	11	4
374	11	5
375	11	6
376	11	8
\.


--
-- Data for Name: core_task; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_task (id, creation_time, update_time, name, description, slug, published, document_id, difficulty, difficulty_text, teaser) FROM stdin;
10	2011-11-10 10:00:29.534442-05	2012-01-26 13:50:48.920637-05	Convert PDF with lined tables into spreadsheet	<p>A fairly straightforward task for PDF tools, this list of customers of disgraced financier Bernie Madoff must be converted into a sortable spreadsheet. As the data is already presented in spreadsheet format, most tools should be able to handle it.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Sort and filter the resulting spreadsheet to find all of 29 entries of the Shapiro family's trusts run out of Palm Beach, Fla.</p>	convert-madoff-customers-into-spreadsheet-2011-11-10	t	11	1	Good formatting, lined tables make things simple	<p>A fairly straightforward task for PDF tools, this list of customers of disgraced financier Bernie Madoff must be converted into a sortable spreadsheet. As the data is already presented in spreadsheet format, most tools should be able to handle it.</p>
14	2011-12-09 14:59:36.381229-05	2012-01-26 14:06:39.274484-05	Use OCR to make typed transcripts searchable	<p>These transcripts from Combat Status Review Tribunals for high-value detainees, which appear as image PDFs, should be relatively easy for most optical character recognition software, since the scans are high-quality and the material is typed.</p>\r\n<p>Use OCR software to process the documents and produce results with searchable text that are accurate and complete enough to dig for important names, events and other key phrases.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Samples from the output should match five pre-selected samples that have already been transcribed into text.</p>\r\n<p>To test the accuracy of your output, first download the <a href="http://media.reporterslab.org/documents/combatant-scripts/compare.txt">comparison sample file</a>, where you'll find the locations of the five selections. Copy these selections from your results and paste them directly into a new text document. Then run "Compare Documents" (available in most word processors) using the file and your results.</p>\r\n<p>The OCR software's performance on this task should be judged based on how much the two documents match up.</p>	use-ocr-to-make-typed-transcripts-searchable-2011-12-09	t	14	1	High-quality, typed scans should be easy processing test	<p>These transcripts from Combat Status Review Tribunals for high-value detainees, which appear as image PDFs, should be relatively easy for most optical character recognition software, since the scans are high-quality and the material is typed.</p>
4	2011-08-15 11:06:48.889853-04	2012-01-27 10:44:53.299197-05	Scrape database with form-based search	<p>Build a listing of all certified teachers in British Columbia by scraping the province's searchable online database.</p>\r\n<p>There's no way to list all the records at once, so a scraper should be able to search using an array of terms entered through the search form -- not through the URL. This may be a challenge for some scrapers unable to <a href="http://www.diffen.com/difference/Get_vs_Post">enter terms through POST</a>.</p>\r\n<p>Scrapers must then navigate through multiple levels to return data from main pages and detail pages by triggering javascript.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Create a database of all teachers in British Columbia, including contact information and other details.</p>	scrape-the-bc-teachers-document-set	t	4	3	Multiple levels of data may challenge some scrapers	<p>Build a listing of all certified teachers in British Columbia by scraping the province's searchable online database, which can only be searched using a form.</p>
11	2011-11-10 13:16:53.340524-05	2012-01-26 14:04:02.268219-05	Convert PDF with embedded font to spreadsheet	<p>Convert this PDF of contributors to Arizona Gov. Jan Brewer's border fence -- complete with dates, names, locations and dollar amounts -- into a sortable spreadsheet.</p>\r\n<p>This won't be easy. The document has stumped every PDF conversion system because of what appears to be an embedded font.<strong></strong></p>\r\n<p><strong>DESIRED OUTCOME:</strong> Calculate the total donations as $3,796,729.99, the total amount donated from Wyoming as $1,553,730.02 and correctly show the Mellon family from Wyoming as the largest contributor.</p>	convert-border-fence-contributors-to-spreadsheet-2011-11-10	t	12	5	Many PDF tools won't handle embedded font	<p>Convert this PDF of contributors to Arizona Gov. Jan Brewer's border fence -- complete with dates, names, locations and dollar amounts -- into a sortable spreadsheet. This document has stumped every PDF conversion system because of what appears to be an embedded font.</p>
12	2011-12-05 16:08:39.019394-05	2012-01-26 14:04:06.460243-05	Use OCR to make partial text PDF completely searchable	<p>This document, a list of reports due to Congress from the executive branch, is a challenge for optical character recognition because only pieces of it appear as searchable text.</p>\r\n<p>Page numbers, annotations and other fields in a different orientation than most of the data (portrait vs. landscape) may also complicate the conversion.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Make text completely searchable. For each of the following, search the output to connect a given report with the corresponding law or policy that authorizes it.</p>\r\n<ul>\r\n<li>Certification that a shrimp harvesting nation has adopted a regulatory program governing the incidental taking of certain sea turtles.<br /><em>Answer (on page 23): Pub. L. 101-162, Sec. 609(b)(2) (103 Sat. 1038)</em></li>\r\n<li>Library of Congress Register of Copyrights: Balance achieved between the rights of creators and the needs of users when copies are made by libraries<br /><em>Answer (on page 13): 17 U.S.C. 108(i)</em></li>\r\n<li>An evaluation of the financial impact of the CCA program, of changes in access to physicians and other health care providers and beneficiary satisfaction<br /><em>Answer (on page 97): 42 U.S.C. 1395w-29 Pub. L. 108-173, Sec. 241(a)</em></li>\r\n<li>A report on Federal Trade Commission's experience with authority to regulate spam and spyware<br /><em>Answer (on page 188): 15 U.S.C.&nbsp; 44 Pub. L. 109-455, Sec. 14</em></li>\r\n</ul>\r\n<p>For each of the following, search your output to find when these reports are due to Congress.</p>\r\n<ul>\r\n<li>Expenditures incurred by the U.S. Government directly attributable to the exercise of emergency war powers or authorities<br /><em>Answer (on page 34): During each emergency; final report within 9 days after its termination.</em></li>\r\n<li>A report on the established procedure for expeditiously clearing individuals whose names have been mistakenly placed on a terrorist list or who may have names identical or similar to individuals on a terrorist database list<br /><em>Answer (on page 111): Not later than 6 months after the date of enactment of this section</em></li>\r\n</ul>\r\n<p>For each of the following, search your output to connect a given law or policy with the report it authorizes.</p>\r\n<ul>\r\n<li>10 U.S.C. 1071 Pub. L. 106-65, Sec. 723<br /><em>Answer (on page 62): Report on the quality of health care furnished under the health care programs of the Department of Defense</em></li>\r\n<li>Pub. L 108-199, Sec. Div. D, Title II (118 Stat. 160)<br /><em>Answer (on page 143): A determination that Israel is not being denied its right to participate in the activities of the IAEA</em></li>\r\n</ul>	use-ocr-to-make-partial-text-pdf-completely-searchable-2011-12-05	t	9	3	Partially searchable text may gum up some software	<p>This document, a list of reports due to Congress from the executive branch, is a challenge for optical character recognition because only pieces of it appear as searchable text.</p>
13	2011-12-05 17:02:54.150932-05	2012-01-26 14:04:21.15034-05	Use OCR to make form-based PDF searchable	<p>PDFs from the state ethics commission aren't much good to reporters unless they can search for the companies that might pose conflicts of interest for legislators. To do that, convert these scanned statements of economic interest into PDFs with searchable text.</p>\r\n<p>It's only necessary to convert the documents from 2011.</p>\r\n<p>Because the forms are consistently structured and scanned at a decent quality, discerning text from them shouldn't be too hard. Some type is tiny though, and some forms are sloppily scanned.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Successfully search for the following public companies to find which candidates and their families held stock in them in 2011 (include stock symbol in your search):</p>\r\n<p><em>BB&amp;T</em><br />Bill Faison, Linda Garrou, Michael Walters, William Brent Jackson, Diane Parfitt, Timothy Spear</p>\r\n<p><em>Pfizer</em><br />William Brent Jackson, James Crawford Jr.</p>\r\n<p><em>IBM</em><br />William Brent Jackson, Diane Parfitt, Charles McGrady, David Martin, Thomas Tillis</p>	use-ocr-to-make-form-based-pdf-searchable-2011-12-05	t	13	3	Form structure shouldn't cause problems; some scans sloppy	<p>PDFs from the state ethics commission aren't much good to reporters unless they can search for the companies that might pose conflicts of interest for legislators. To do that, convert these scanned statements of economic interest into PDFs with searchable text.</p>
5	2011-09-06 12:17:41.062645-04	2012-01-26 14:03:22.560761-05	Scrape database in table format	<p>The South Dakota Lobbyists' database provides a simple task that any scraper should be able to cope with. The results are in a table with each cell representing a piece of data.</p>\r\n<p>There are search options, but they aren't necessary to get all of the data.</p>\r\n<p>The only difficulty with the data structure itself is that the table also contains the search form. This may provide a challenge for some tools as the HTML structure doesn't provide clean separation of navigation and content.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Create a database or spreadsheet containing all the information on lobbyists in South Dakota.</p>	scrape-the-sd-lobbyists-website-2011-09-06	t	5	1	Full dataset displayed as simple table; quirk in HTML structure may confuse some products 	<p>The South Dakota Lobbyists' database provides a simple task that any scraper should be able to cope with. The results are in a table with each cell representing a piece of data.</p>
3	2011-08-15 11:03:55.495406-04	2012-01-26 14:02:45.993527-05	Scrape database requiring browser cookies	<p>Scrape this searchable database of doctors and surgeons to create a listing of all physicians in British Columbia.</p>\r\n<p>Since the URLs are generated based on a browser cookie, scrapers must be able to maintain this cookie to return information. Products also have to handle multiple levels of data, starting at the search results page and drilling down into the detail pages.</p>\r\n<p>Search can only return 200 results at a time, which may be a challenge for some scrapers.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Generate a database or spreadsheet of all doctors and surgeons, including details for each.</p>	scrape-the-bc-physicians-document-set	t	3	4	Lack of consistent URLs and multiple levels will throw off most scrapers	<p>Scrape this searchable database of doctors and surgeons to create a listing of all physicians in British Columbia.</p>
6	2011-11-09 12:38:38.220035-05	2012-01-26 14:03:43.336174-05	Convert PDF with unlined tables, headings to spreadsheet	<p>Converting the Clinton political appointments PDF into a spreadsheet may be a difficult task for many PDF tools, given the separated headings splitting up sections of the document. Entries do appear as text, so optical character recognition isn't necessary.</p>\r\n<p>After converting the document into a spreadsheet, you'll need to use Excel to apply headings to the appropriate entries to allow for sorting.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Sort the resulting spreadsheet by appointment type to narrow down the list to confidential secretaries, press secretaries and other positions classified as "SC" and "SC Appt." This should return 1,287 entries.</p>\r\n<p>Sort by title to find that the following cities had no U.S. attorney confirmed and in place at the end of the Clinton administration.</p>\r\n<ul>\r\n<li>San Diego</li>\r\n<li>Miami</li>\r\n<li>Macon, Ga.</li>\r\n<li>Dyer, Ind.</li>\r\n<li>Indianapolis</li>\r\n<li>Wichita</li>\r\n<li>Shreveport, La.</li>\r\n<li>Newark</li>\r\n<li>Albuquerque, N.M.</li>\r\n<li>Brooklyn</li>\r\n<li>Sioux Falls, S.D.</li>\r\n<li>Nashville</li>\r\n<li>Spokane, Wash.</li>\r\n<li>Agana, Guam</li>\r\n<li>San Juan, Puerto Rico</li>\r\n</ul>	convert-political-appointments-pdf-into-spreadsheet-2011-11-09	t	7	4	Separated headings, formatting may pose hurdle	<p>Converting the Clinton political appointments PDF into a spreadsheet may be a difficult task for many PDF tools, given the separated headings splitting up sections of the document. Entries do appear as text, so optical character recognition isn't necessary.</p>
9	2011-11-09 16:55:30.167634-05	2012-01-26 14:03:52.79215-05	Convert PDF generated from database into spreadsheet	<p>In this list of housing violations in Washington D.C., spit out from a Microsoft Access database, the headings must be applied to the individual records in a two-step process to create a sortable spreadsheet.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> Identify the top-three types of violations for Columbia Road in Washington, D.C., in 2005 and 2006 as trash violations, repair violations and grass violations. Identify property owners with repeat violations.</p>	convert-dc-housing-violations-pdfs-into-spreadsheet-2011-11-09	t	10	2	Headings applied in seperate step may confuse converter; missing data may misalign columns	<p>In this list of housing violations in Washington D.C., spit out from a Microsoft Access database, the headings must be applied to the individual records in a two-step process to create a sortable spreadsheet.</p>
15	2011-12-09 16:42:27.506048-05	2012-01-26 14:09:04.019838-05	Use OCR to make scanned-in memos searchable	<p>The Your Seat at the Table documents provide a treasure trove of information supplied to the Obama-Biden transition team from lobbyists, governmental organizations, citizens and other sources. All of these documents are available in PDF format, but not of all of them appear as searchable text, which reporters would need if they were looking for specific information contained in reams of pages.</p>\r\n<p>Download the following specific documents from the overall set and run them through OCR software to make the text searchable. All documents are typed, and aside from a few basic formatting challenges (italics, for example), should be a relatively easy task for most software.</p>\r\n<ul>\r\n<li><a href="http://change.gov/page/-/open%20government/yourseatatthetable/20090106_Womens1_NWHN.pdf">"A New Day for Women's Health at the Food and Drug Administration"</a> - National Women's Health Network</li>\r\n<li><a href="http://change.gov/page/-/open%20government/yourseatatthetable/20090113_ITACPA3%20.pdf">"Reclaiming Trade Policy for America"</a> - Coalition For a Prosperous America</li>\r\n<li><a href="http://change.gov/page/-/open%20government/yourseatatthetable/20081219_TWC.pdf">"Waterfront Coalition Mission Statement"</a> - Waterfront Coalition</li>\r\n<li><a href="http://change.gov/page/-/open%20government/yourseatatthetable/20081219_SS_challenges.pdf">"Policy Proposals on the Social Security Administration"</a> - Social Security Advisory Board</li>\r\n</ul>\r\n<p><strong>DESIRED OUTCOME:</strong> Samples from the output should match four pre-selected samples that have already been transcribed into text.</p>\r\n<p>To test the accuracy of your output, first download the <a href="http://media.reporterslab.org/documents/yourseat/yourseatCompare.txt">comparison sample file</a>, where you'll find the locations of the selections in the documents above. Copy these selections from your results and paste them directly into a new text document. Then run "Compare Documents" (available in most word processors) using the sample file and your results file.</p>\r\n<p>The OCR software's performance on this task should be judged based on how well the two documents match up.</p>	use-ocr-on-your-seat-document-set-2011-12-09	t	2	2	Few minor formatting challenges, such as italics	<p>The Your Seat at the Table documents provide a treasure trove of information supplied to the Obama-Biden transition team from lobbyists, governmental organizations, citizens and other sources. All of these documents are available in PDF format, but not of all of them appear as searchable text, which reporters would need if they were looking for specific information contained in reams of pages.</p>
2	2011-08-10 11:28:49.309113-04	2012-01-26 14:10:44.141186-05	Scrape database of PDF files	<p>Scrape the Obama-Biden transition team's <a href="http://change.gov/open_government/yourseatatthetable">Your Seat at the Table database</a> of more than 2,000 PDF files and associated metadata for easy analysis.</p>\r\n<p>A straightforward file structure and Web page format should make this test relatively easy for most scrapers.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> The end result should either be a database or spreadsheet containing links to the pages, documents, a title, the summary and the date. All 2,418 PDFs should be included as entries.</p>	scrape-the-your-seat-at-the-table-document-set	t	2	2	Organized file structure, consistent format make test manageable	<p>Scrape the Obama-Biden transition team's <a href="http://change.gov/open_government/yourseatatthetable">Your Seat at the Table database</a> of more than 2,000 PDF files and associated metadata for easy analysis.</p>
17	2012-02-02 13:54:05.982543-05	2012-02-09 13:57:48.905972-05	Use entity extraction to identify organizations in memos	<p>The documents submitted to the Obama-Biden transition team are filled with the names of organizations, individuals, places and other important terms. Use entity extraction to identify the organizations to make it easier for reporters to find potential stories spread across this vast quantity of documents.</p>\r\n<p>This is a difficult test, since the documents are riddled with varied types of references to organizations, especially acronyms. To be successful, products must also separate junk data in the form of laws, policies and programs that software could mistake for organization names.</p>\r\n<p>To test, download <a href="http://media.reporterslab.org/documents/yourseat/your-seat-sample.pdf">this selection of the documents</a> and run entity extraction on them.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> For a perfect score, the program should match or exceed human annotation of the organizations contained in the sample set, specifically the highlighted statistics below (<a href="http://media.reporterslab.org/documents/test-specs/your-seat-key.xls">download the full list of annotated organizations</a>). Note in the test results whether the software is able to catch abbreviated forms of names and other iterations.</p>\r\n<table style="border: 1px solid #CCC; font-family: Arial,Helvetica,sans-serif; font-size: 12px;">\r\n<tbody>\r\n<tr><th style="background-color: #cad7a7; color: #fff; font-weight: bold;">Organization</th><th style="background-color: #cad7a7; color: #fff; font-weight: bold;">Entity</th><th style="background-color: #cad7a7; color: #fff; font-weight: bold;">Count</th></tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Ducks Unlimited</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">43</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">DU</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">37</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Ducks Unlimited</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">5</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Ducks Unlimited's</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Global Advisory Committee</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">39</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Committee</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">DOJ's GAC</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">GAC</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">27</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Global Advisory Committee</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">8</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">U.S. Department of Justice's Global Advisory Committee</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">U.S. DOJ's Global Advisory Committee</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">U.S. Department of Justice</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">32</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Departments of Commerce and Justice</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Departments of Commerce, Transportation, and State</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">DOJ</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">6</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">DOJ's</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">U.S. Department of Justice</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">3</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">U.S. Department of Justice's</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">18</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">United States Department of Justice</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">2</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">NASA</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">27</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">NASA</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">27</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">School Nutrition Association</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">21</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">School Nutrition Association</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">2</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">SNA</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">19</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Global Privacy and Information Quality Working Group</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">20</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Global Privacy and Information Quality Working Group</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">5</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">GPIQWG</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">15</td>\r\n</tr>\r\n</tbody>\r\n</table>	use-entity-extraction-on-mixed-quality-memos-2012-02-02	t	2	4	Acronyms, junk data will be tough to parse	<p>The documents submitted to the Obama-Biden transition team are filled with the names of organizations, individuals, places and other important terms. Use entity extraction to identify the organizations to make it easier for reporters to find potential stories spread across this vast quantity of documents.</p>
16	2012-02-02 13:40:33.307716-05	2012-02-09 13:58:32.154687-05	Use entity extraction to capture names from FOIA request docs	<p>This collection of documents from the Interior Department's Mineral Management Service on the Deepwater Horizon oil spill in the Gulf consists of more than 2,000 pages. Entity extraction can highlight people, places and other terms that might help orient a reporter to the collection and catch names a quick review might miss.</p>\r\n<p>Text in the PDFs has already been recognized, so there's no need for OCR.</p>\r\n<p>To test, download<a href="http://media.reporterslab.org/documents/oil-spill/mms-for-test.pdf"> this subset of the documents</a> and run entity extraction on pages 14-64.</p>\r\n<p><strong>DESIRED OUTCOME:</strong> For a perfect score, the program should match or exceed human annotation of the names contained in the sample set, specifically the highlighted statistics below (<a href="http://media.reporterslab.org/documents/test-specs/mms-ie-key.xls">download the full list of annotated names</a>). Note in the test results whether the software is able to catch names that appear in last name, first name format, second reference (last name only) and email addresses (lyn.herdt, Patricia_Beneke).</p>\r\n<table style="border: 1px solid #CCC; font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n<tbody>\r\n<tr class="tableizer-firstrow"><th style="background-color: #cad7a7; color: #fff; font-weight: bold;">Name</th><th style="background-color: #cad7a7; color: #fff; font-weight: bold;">Entity</th><th style="background-color: #cad7a7; color: #fff; font-weight: bold;">Count</th></tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Lyn Herdt</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">74</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Herdt, Lyn</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">40</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Lyn</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">12</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Lyn Herdt</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">14</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">lyn.herdt</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">7</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Lynn</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Steve Feldgus</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">66</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Feldgus</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Feldgus, Steve</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">24</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Felgus, Steve</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Steve</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">23</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Steve Feldgus</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">3</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Steve.Feldgus</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">14</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Lesley Haenny</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">45</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Haenny, Lesley</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">36</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Lesley</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">2</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Lesley Haenny</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">6</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Lesley.Haenny</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Cheri Hunter</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">32</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Cheri</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">6</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Cheri Hunter</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">4</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Cheri.hunter</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">4</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Hunter, Cheri</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">18</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Anita Gonzales-Evans</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">24</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Anita</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">2</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Gonzales-Evans, Anita</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">22</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">Patricia Beneke</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc; font-weight: bold;">13</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Beneke, Patricia</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">5</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Beneke, Patty</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Patricia_Beneke</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">4</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Patty</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">2</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">&nbsp;</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">Patty Beneke</td>\r\n<td style="padding: 4px; margin: 3px; border: 1px solid #ccc;">1</td>\r\n</tr>\r\n</tbody>\r\n</table>	use-entity-extraction-on-emails-from-foia-request-2012-02-02	t	15	4	Names appear in multiple formats, including second reference	<p>This collection of documents from the Interior Department's Mineral Management Service on the Deepwater Horizon oil spill in the Gulf consists of more than 2,000 pages. Entity extraction can highlight people, places and other terms that might help orient a reporter to the collection and catch names a quick review might miss.</p>
\.


--
-- Data for Name: core_tutorial; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_tutorial (id, name, description, published, creation_time, update_time, slug, product_id, url, writer_id, writer_external, editor_id, kicker, subtitle, teaser, image, embed, repo_link, files, version) FROM stdin;
1	Using Able2Extract to convert a PDF into Excel	<p>This tutorial is designed to assist you in using Able2Extract PDF Converter to turn a PDF table into a usable Excel spreadsheet.</p>\r\n<p>After opening your document, the next step is to select the data you want to convert. Depending on the situation, you may want to convert the whole PDF or only a portion of it, say a table hidden in some text or an appendix chart.</p>\r\n<p>There are a few different ways to select the data. First, you can just highlight the text you want with the mouse cursor. This option works best for small tables in the middle of text reports.</p>\r\n<p>Another way to select the data is using the Edit menu. On the main menu, click on Edit and choose "Select All Pages," "Select All On Page" or "Select Page Range." The latter will prompt you to enter the page numbers you want to select.</p>\r\n<p>Also, you can click on the "Select All" or "Select Area" button on the toolbar.</p>\r\n<p>Once an area is selected, convert the data by clicking on the "Excel" button on the toolbar or, from the main menu, choose "File" and "Convert to Excel." Able2Extract will prompt you to select between two options, Automatic or Custom.</p>\r\n<p>The Automatic option works great if the table is very clean and has the same simple structure throughout, much like the <a href="/producttask/able2extract-easily-converts-this-lined-table-2011-12-16">list of Bernie Madoff customers</a> we tested.</p>\r\n<p>Click the Automatic radio button and then the "Convert" button. After a few seconds of processing, Excel should automatically launch with your data ready to go. Make sure to save your file and get cracking on sorting and calculating.</p>\r\n<h4>Going custom</h4>\r\n<p>When I typically use Able2Extract, the Automatic option isn't ideal. If you are converting different tables across pages, like we did with the<a href="/producttask/able2extract-converts-this-database-report-perfectly-2011-12-16"> list of D.C. housing violations</a>, or if your table is a bit complex, the Custom option is the better choice. If you are unsure, give the Automatic option a quick try first. Conversion is quick enough to leave time for a second attempt.</p>\r\n<p>With "Custom" selected, click "Convert." You will be prompted to choose between "Per Document" or "Per page/Section." The Per Document option sets up a consistent structure for all the highlighted text. The "Per Page" option allows you to set up different structures for different pages, which works best if you have completely different tables in the same PDF. Again, if you're unsure, start with the simpler "Per Document" option.</p>\r\n<p>Either way, clicking the Calculate button will display vertical lines in the highlighted selection where Excel will create columns. A new toolbar also opens up to help with this process. Notice that "Columns" is highlighted under Active Mode on this new toolbar.</p>\r\n<p>You can now manipulate these lines. Click the left mouse button to add a vertical line. Click and hold the left mouse button on a vertical line and you can slide the line left or right, or double click the line to remove it.</p>\r\n<p>The horizontal lines indicate headers and footers. They can moved (right mouse click and hold) or deleted (double right mouse click), but no others can be added.</p>\r\n<p>You can also manipulate row settings. That might be necessary if your table has rows with wrapped text, as in our test case with <a href="/producttask/able2extract-does-an-excellent-job-with-this-unlined-table-2011-12-16">political appointments during the Clinton administration</a>.</p>\r\n<p>Click the "Enable" radio box under the Row heading on the new toolbar, then click the Calculate button. You will be prompted to select a column on which to base the rows. After you pick the column you want to use as a key, in this case preferably a non-wrapped text column, row lines will be added.</p>\r\n<p>Now you can click "Rows" under "Active Mode" on the toolbar and manipulate the row lines the same way you did column lines. Click the left mouse button to add a horizontal line, click and hold on a horizontal line to slide the line up or down and double-click the line to remove it.</p>\r\n<p>Once you have all the rows and columns lined up the way you want, click on the Excel button on the toolbar. You can also click the Convert button. After some quick processing, Excel should automatically launch with your data entered.</p>	t	2012-01-10 10:27:10.640707-05	2012-01-13 16:52:08.976526-05	using-able2extract-pdf-converter-to-convert-a-pdf-into-a-spreadsheet-2012-01-10	8		3		4		A few simple steps will get that PDF table into a usuable spreadsheet.	<p>This tutorial is designed to assist you in using Able2Extract PDF Converter, specifically, to turn a PDF table into a usable Excel spreadsheet.</p>					
\.


--
-- Data for Name: core_tutorial_os_used; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_tutorial_os_used (id, tutorial_id, operatingsystem_id) FROM stdin;
\.


--
-- Data for Name: core_tutorial_tasks; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY core_tutorial_tasks (id, tutorial_id, task_id) FROM stdin;
29	1	9
30	1	10
31	1	11
32	1	6
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2011-08-04 14:03:37.289798-04	1	21	1	Some Category	1	
2	2011-08-04 14:04:55.870436-04	1	20	1	A Document Set	1	
3	2011-08-04 14:05:06.214422-04	1	18	1	Task: A Task, For Document: A Document Set	1	
4	2011-08-04 14:05:21.152953-04	1	17	1	This is the FIrst Product (http://www.charlieszymanski.com/)	1	
5	2011-08-04 16:31:45.194303-04	1	3	2	sarah	1	
6	2011-08-04 16:32:00.126567-04	1	3	2	sarah	2	Changed is_staff and is_superuser.
7	2011-08-10 11:13:54.336526-04	1	22	1	Mac OSX 'Snow Leopard'	1	
8	2011-08-10 11:14:23.819173-04	1	22	2	Microsoft WIndows 7 x64	1	
9	2011-08-10 11:14:36.565008-04	1	22	3	Microsoft Windows 7 x32	1	
10	2011-08-10 11:15:13.142816-04	1	22	4	Microsoft WIndows Vista x64	1	
11	2011-08-10 11:15:25.139704-04	1	22	5	Microsoft Windows Vista x32	1	
12	2011-08-10 11:15:51.413665-04	1	22	6	Microsoft Windows XP	1	
13	2011-08-10 11:16:25.894882-04	1	22	7	Ubuntu Linux 11.04	1	
14	2011-08-10 11:19:57.128059-04	1	20	2	Your Seat at the Table	1	
15	2011-08-10 11:20:17.410598-04	1	20	1	A Document Set	3	
16	2011-08-10 11:28:49.324285-04	1	18	2	Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	1	
17	2011-08-11 14:17:07.67297-04	1	17	1	This is the FIrst Product (http://www.charlieszymanski.com/)	2	Changed description, tags, image and programming_required_description.
18	2011-08-15 10:12:02.548653-04	1	20	3	College of Physicians and Surgeons of British Columbia	1	
19	2011-08-15 10:16:09.947017-04	1	20	3	College of Physicians and Surgeons of British Columbia	2	Changed description, published and tags.
20	2011-08-15 10:17:54.116092-04	1	20	3	College of Physicians and Surgeons of British Columbia	2	Changed tags.
21	2011-08-15 10:18:21.822351-04	1	10	9	Enter Tag Here	3	
22	2011-08-15 10:18:21.828609-04	1	10	8	Something More FUn	3	
23	2011-08-15 10:18:21.837799-04	1	10	7	Something Fun	3	
24	2011-08-15 10:18:21.840232-04	1	10	6	Test	3	
25	2011-08-15 10:18:21.842728-04	1	10	4	difficulr	3	
26	2011-08-15 10:18:33.023206-04	1	10	14	Request	2	Changed name and slug.
27	2011-08-15 10:34:10.155713-04	1	20	4	BC College of Teachers	1	
28	2011-08-15 10:34:16.343393-04	1	20	4	BC College of Teachers	2	Changed tags.
29	2011-08-15 10:34:32.863382-04	1	20	3	College of Physicians and Surgeons of British Columbia	2	Changed description and tags.
30	2011-08-15 11:03:55.50155-04	1	18	3	Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	1	
31	2011-08-15 11:06:48.907376-04	1	18	4	Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	1	
32	2011-08-15 11:07:45.168445-04	1	18	3	Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed description and tags.
33	2011-08-15 11:08:17.797584-04	1	17	1	This is the FIrst Product (http://www.charlieszymanski.com/)	3	
34	2011-08-15 11:16:20.801619-04	1	17	2	Outwit Hub (http://www.outwit.com/products/hub/)	1	
35	2011-08-15 17:07:26.338413-04	1	19	2	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	1	
36	2011-08-15 17:20:48.030911-04	1	19	2	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed description and tags.
37	2011-08-15 17:23:49.890056-04	1	19	2	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed description and tags.
38	2011-08-16 10:36:27.171437-04	1	19	2	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed tags.
39	2011-08-16 10:36:33.982249-04	1	19	2	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed tags.
40	2011-08-16 11:13:22.326456-04	1	19	3	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	1	
41	2011-08-16 11:14:47.135678-04	1	19	3	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	2	Changed tags.
42	2011-08-16 11:20:48.050539-04	1	19	4	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	1	
43	2011-08-16 11:36:05.318227-04	1	19	4	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	2	Changed description and tags.
44	2011-08-16 11:36:17.288116-04	1	19	4	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	2	Changed tags.
45	2011-08-29 16:58:40.184733-04	1	3	3	andy.bailey	1	
46	2011-08-29 16:59:22.328009-04	1	3	3	andy.bailey	2	Changed first_name, last_name, email, is_staff and user_permissions.
47	2011-09-06 12:14:36.901249-04	1	20	5	South Dakota Lobbyist Information	1	
48	2011-09-06 12:17:41.079409-04	1	18	5	Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	1	
49	2011-09-06 12:36:46.399359-04	1	19	5	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	1	
50	2011-09-06 12:36:53.263502-04	1	19	5	Task Review of Outwit Hub (http://www.outwit.com/products/hub/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	2	Changed tags.
51	2011-09-06 12:44:06.984112-04	1	17	2	Outwit Hub (http://www.reporterslab.org/)	2	Changed url, description and tags. Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia".
583	2012-01-06 14:23:26.669044-05	4	21	2	Scraper	2	Changed tags.
52	2011-09-06 12:44:11.696072-04	1	17	2	Outwit Hub (http://www.reporterslab.org/)	2	Changed tags. Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia".
53	2011-09-06 12:50:27.034755-04	1	17	2	Outwit Hub (http://www.reporterslab.org/)	2	Changed tags. Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.reporterslab.org/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia".
54	2011-09-07 12:10:29.640176-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	1	
55	2011-09-07 12:59:52.111342-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker, tags, teaser and description.
56	2011-09-08 12:21:41.251721-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker, tags and description.
57	2011-09-08 12:22:15.336461-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
58	2011-09-08 12:22:31.244792-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
59	2011-09-08 12:30:30.762834-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
60	2011-09-08 12:31:10.865664-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
61	2011-09-08 12:31:31.754959-04	1	3	1	charlie	2	Changed first_name and last_name.
62	2011-09-08 12:33:09.912182-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
63	2011-09-08 12:44:16.80644-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
64	2011-09-08 12:44:30.777275-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
65	2011-09-08 12:44:44.687321-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
66	2011-09-08 13:03:25.394761-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
67	2011-09-08 13:03:42.330151-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
68	2011-09-08 13:03:50.695793-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
69	2011-09-08 13:05:06.416379-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags.
70	2011-09-08 13:11:09.526293-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
71	2011-09-08 13:57:54.318693-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
72	2011-09-08 13:58:07.967547-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed kicker and tags.
73	2011-09-28 12:38:56.152754-04	1	21	2	Scraper	1	
74	2011-09-28 12:39:43.848756-04	1	22	8	Web Based	1	
75	2011-09-28 12:40:08.742665-04	1	17	3	Needlebase (http://www.needlebase.com/)	1	
76	2011-09-28 12:45:30.636269-04	1	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags.
77	2011-09-28 12:47:05.980345-04	1	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags and cost.
78	2011-09-28 12:47:25.279825-04	1	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags and cost.
79	2011-09-28 12:47:35.495949-04	1	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags.
80	2011-09-28 12:49:16.45454-04	1	17	3	Needlebase (http://www.needlebase.com/)	2	Changed published and tags.
81	2011-09-28 13:02:23.665508-04	1	19	6	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	1	
82	2011-09-28 13:02:44.941195-04	1	22	8	Web Based	2	Changed published and tags.
83	2011-09-28 13:03:16.299845-04	1	19	6	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	2	Changed tags and os_used.
84	2011-09-28 13:03:27.421836-04	1	19	6	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	2	Changed published and tags.
85	2011-10-03 10:40:58.118471-04	1	19	7	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	1	
86	2011-10-03 10:49:09.968782-04	1	19	7	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	2	Changed tags and description.
87	2011-10-03 10:49:25.941034-04	1	19	7	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	2	Changed tags.
88	2011-10-03 10:58:02.899681-04	1	19	8	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	1	
89	2011-10-03 10:58:11.945263-04	1	19	8	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Physicians" Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed tags.
90	2011-10-03 10:58:25.046109-04	1	18	3	Task: Scrape the 'BC Physicians' Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed name and tags.
91	2011-10-03 11:07:10.583932-04	1	19	9	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	1	
92	2011-10-03 11:18:04.167017-04	1	19	9	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	2	Changed tags and description.
93	2011-10-03 11:18:11.035565-04	1	19	9	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	2	Changed tags.
94	2011-10-03 11:18:19.050822-04	1	19	6	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information	2	Changed published and tags.
95	2011-10-03 11:48:02.716266-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	1	
96	2011-10-03 14:13:07.616945-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed subtitle, tags and description.
97	2011-10-03 14:35:10.250281-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
98	2011-10-03 14:48:51.206158-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
99	2011-10-03 14:54:48.372823-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
100	2011-10-03 15:11:46.553196-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags.
101	2011-10-03 15:12:22.034048-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
102	2011-10-03 15:12:45.027501-04	1	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags and description.
103	2011-10-03 15:19:43.615778-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags, description and community.
104	2011-10-03 15:20:06.365059-04	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and teaser.
105	2011-10-03 15:55:03.529988-04	1	19	7	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	2	Changed tags and description.
106	2011-10-03 15:55:44.337111-04	1	19	9	Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table	2	Changed tags and description.
107	2011-10-12 11:15:11.936663-04	1	21	2	Scraper	2	Changed published and tags.
108	2011-11-07 14:43:13.866485-05	1	3	4	mtdukes	1	
109	2011-11-07 14:43:38.908968-05	1	3	4	mtdukes	2	Changed first_name, last_name, email, is_staff and is_superuser.
110	2011-11-07 14:45:22.951616-05	4	2	1	Creators	1	
111	2011-11-07 16:35:51.597218-05	4	20	3	College of Physicians and Surgeons of British Columbia	2	Changed tags.
112	2011-11-09 11:35:48.290961-05	4	21	3	PDF tools	1	
113	2011-11-09 11:37:47.39975-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	1	
114	2011-11-09 11:39:23.752953-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed tags, company, cost and demo_available.
115	2011-11-09 12:12:45.365573-05	4	20	6	Test document set	1	
116	2011-11-09 12:23:29.75659-05	4	20	6	Test document set	3	
117	2011-11-09 12:25:17.620002-05	4	20	7	Clinton political appointments	1	
118	2011-11-09 12:25:38.440529-05	4	20	7	Clinton political appointments	2	Changed published and tags.
119	2011-11-09 12:28:25.29196-05	4	20	8	2011 Q2 House dispursement accounts	1	
120	2011-11-09 12:31:51.160705-05	4	20	9	Executive branch congressional reports	1	
121	2011-11-09 12:38:38.226515-05	4	18	6	Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	1	
122	2011-11-09 13:07:29.011923-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed published and tags.
123	2011-11-09 13:07:34.504729-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	1	
124	2011-11-09 13:12:10.849629-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
125	2011-11-09 13:13:06.234293-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed tags.
126	2011-11-09 13:14:53.837306-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed published.
127	2011-11-09 13:17:24.711434-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed published and tags.
128	2011-11-09 13:17:37.879433-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed tags.
129	2011-11-09 13:36:37.183767-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed tags, description and rating_text.
130	2011-11-09 13:37:41.026758-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed published.
131	2011-11-09 13:39:23.593382-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed published.
132	2011-11-09 13:39:40.618229-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed tags.
133	2011-11-09 13:39:57.492001-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed published.
134	2011-11-09 13:49:05.495495-05	4	18	7	Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts	1	
135	2011-11-09 14:46:38.692187-05	4	19	11	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts	1	
136	2011-11-09 14:46:48.173031-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed published.
137	2011-11-09 15:13:52.114507-05	4	18	8	Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports	1	
138	2011-11-09 15:14:00.64718-05	4	18	6	Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed published.
139	2011-11-09 15:28:02.310522-05	4	7	1	reviews.beta.reporterslab.org	2	Changed domain and name.
140	2011-11-09 15:51:03.507878-05	4	19	12	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports	1	
141	2011-11-09 15:51:41.27937-05	4	19	12	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed tags.
142	2011-11-09 16:42:09.041931-05	4	20	10	D.C. Housing violations	1	
143	2011-11-09 16:51:02.671297-05	4	20	10	D.C. Housing violations	2	Changed description, tags and url.
144	2011-11-09 16:54:05.589235-05	4	20	10	D.C. Housing violations	2	Changed tags and kind.
145	2011-11-09 16:54:13.018578-05	4	20	9	Executive branch congressional reports	2	Changed tags and kind.
146	2011-11-09 16:54:18.576234-05	4	20	8	2011 Q2 House dispursement accounts	2	Changed tags and kind.
147	2011-11-09 16:54:25.419073-05	4	20	7	Clinton political appointments	2	Changed tags and kind.
148	2011-11-09 16:55:30.1737-05	4	18	9	Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations	1	
149	2011-11-09 16:58:05.594478-05	4	18	9	Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations	2	Changed description, published and tags.
150	2011-11-09 18:17:52.042732-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations	1	
151	2011-11-09 18:18:19.913708-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations	2	Changed tags.
152	2011-11-09 18:18:38.7239-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed tags and cost. Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments".
153	2011-11-10 09:54:16.958526-05	4	20	11	Madoff customers	1	
154	2011-11-10 09:54:23.84786-05	4	20	10	D.C. Housing violations	2	Changed published.
155	2011-11-10 09:56:11.457593-05	4	18	8	Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed published.
156	2011-11-10 09:56:11.476991-05	4	18	7	Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed published.
157	2011-11-10 09:56:11.493341-05	4	18	6	Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed published.
158	2011-11-10 10:00:29.540992-05	4	18	10	Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	1	
159	2011-11-10 12:43:27.997755-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	1	
160	2011-11-10 12:45:37.925842-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	2	Changed tags, rating_text and version_tested.
161	2011-11-10 12:49:00.335749-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	2	Changed tags, review_done, teaser and description.
162	2011-11-10 12:56:19.935132-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
163	2011-11-10 13:01:59.754749-05	4	20	12	Border fence contributors	1	
164	2011-11-10 13:16:53.348574-05	4	18	11	Task: Convert "Border fence contributors" to spreadsheet, For Document: Border fence contributors	1	
165	2011-11-10 13:44:28.790729-05	4	19	15	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Border fence contributors" to spreadsheet, For Document: Border fence contributors	1	
166	2011-11-10 13:44:44.825444-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations	2	Changed name and tags.
167	2011-11-10 13:44:55.500816-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	2	Changed name and tags.
168	2011-11-10 13:45:04.912288-05	4	19	15	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Border fence contributors" to spreadsheet, For Document: Border fence contributors	2	Changed name and tags.
169	2011-11-10 13:49:15.55611-05	4	19	11	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed tags.
170	2011-11-10 13:49:30.707139-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments	2	Changed tags.
171	2011-11-10 13:49:39.279543-05	4	19	11	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed tags.
172	2011-11-10 13:51:02.549035-05	4	19	12	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed tags and review_done.
173	2011-11-10 13:51:21.054607-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations	2	Changed tags.
174	2011-11-10 13:51:48.841827-05	4	19	15	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Border fence contributors" to spreadsheet, For Document: Border fence contributors	2	Changed tags.
175	2011-11-10 14:00:56.386314-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	1	
176	2011-11-10 14:07:52.846856-05	4	3	4	mtdukes	2	Changed email.
177	2011-11-10 14:12:43.503816-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags, usability, usability_text, rating and rating_text.
584	2012-01-10 10:27:10.659538-05	3	23	1	Tutorial object	1	
178	2011-11-10 14:26:15.743109-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed description, tags, programming_required_rating, programming_required_description, categories, release_date and operating_systems. Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Border fence contributors" to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "D.C. housing violations" PDFs into spreadsheet, For Document: D.C. Housing violations". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Congress reports" PDF into spreadsheet, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "House disbursements" PDF into spreadsheet, For Document: 2011 Q2 House dispursement accounts". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "political appointments" PDF into spreadsheet, For Document: Clinton political appointments". Changed tags for review "Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))".
179	2011-11-10 15:00:04.144734-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed subtitle, tags, community, community_text, documentation, documentation_text and performance.
180	2011-11-10 15:02:25.495996-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags, documentation_text and performance_text.
181	2011-11-10 15:31:06.3429-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags, description, usability and usability_text.
182	2011-11-10 15:36:07.922693-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and description.
183	2011-11-10 15:39:38.420251-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and description.
184	2011-11-10 15:44:15.668997-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags, teaser and description.
185	2011-11-10 15:49:22.364884-05	4	16	3	Besides a few staples, Nitro Pro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags.
186	2011-11-10 15:50:08.057018-05	4	16	3	Aside from a few staples, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed name and tags.
187	2011-11-10 16:09:37.703598-05	4	16	3	Aside from a few staples, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and description.
188	2011-11-10 17:25:12.987668-05	2	3	2	sarah	2	Changed first_name, last_name and email.
189	2011-11-10 17:25:15.511695-05	2	3	2	sarah	2	No fields changed.
190	2011-11-11 17:04:36.500773-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert "Madoff customers" into spreadsheet, For Document: Madoff customers	2	Changed tags and rating.
191	2011-11-12 19:36:15.4982-05	1	20	12	Border fence contributors	2	Changed tags.
192	2011-11-14 10:59:35.064924-05	4	17	5	deskUNPDF Professional (http://www.docudesk.com/deskUNPDF_product_home.shtml)	1	
193	2011-11-14 14:39:07.337571-05	4	2	2	Freelancers	1	
194	2011-11-14 14:39:35.957921-05	4	3	3	andy.bailey	2	Changed user_permissions and groups.
195	2011-11-15 16:19:41.051935-05	4	18	6	Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed name and tags.
196	2011-11-15 16:32:42.370769-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed name, description and tags.
197	2011-11-15 16:40:47.858081-05	4	18	8	Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed name, description and tags.
198	2011-11-15 16:45:53.347426-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed name, description and tags.
199	2011-11-15 16:47:35.171522-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, description and tags.
200	2011-11-15 16:48:08.025943-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed name and tags.
201	2011-11-15 19:00:01.117053-05	1	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
202	2011-11-16 11:37:07.027739-05	4	19	15	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed name, subtitle, tags and teaser.
203	2011-11-16 11:44:35.871083-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags and rating.
204	2011-11-16 11:50:25.533464-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, subtitle, tags, teaser and rating_text.
205	2011-11-16 11:54:49.126548-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed name, subtitle, tags, teaser, rating and rating_text.
206	2011-11-16 11:57:01.781589-05	4	19	12	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed name, subtitle and tags.
207	2011-11-16 11:57:09.725031-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed tags.
208	2011-11-16 11:57:13.612389-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
209	2011-11-16 12:01:43.430168-05	4	19	12	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed tags and teaser.
210	2011-11-16 12:02:08.192763-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed tags.
211	2011-11-16 12:02:18.847367-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
349	2011-12-09 14:59:36.395435-05	4	18	14	Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	1	
212	2011-11-16 12:02:27.473306-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
213	2011-11-16 12:02:39.087779-05	4	19	15	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
214	2011-11-16 12:08:53.26792-05	4	19	11	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed name, subtitle, tags and teaser.
215	2011-11-16 12:14:39.974805-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed name, subtitle, tags, teaser and rating_text.
216	2011-11-16 12:22:09.608543-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, difficulty and difficulty_text.
217	2011-11-16 12:49:21.646906-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed name and tags.
218	2011-11-17 13:07:45.367407-05	4	17	5	deskUNPDF Professional (http://www.docudesk.com/deskUNPDF_product_home.shtml)	3	
219	2011-11-17 13:49:31.813147-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
220	2011-11-17 13:54:05.51906-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
221	2011-11-17 13:54:38.53817-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
222	2011-11-17 13:54:39.865643-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
223	2011-11-17 13:55:02.462988-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
224	2011-11-17 13:55:42.955678-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, difficulty and difficulty_text.
225	2011-11-17 18:16:07.483828-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed description and tags.
226	2011-11-18 09:20:07.290661-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed description, tags, difficulty and difficulty_text.
227	2011-11-18 09:40:02.874566-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed description and tags.
228	2011-11-18 09:40:40.324537-05	4	18	8	Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed tags, difficulty and difficulty_text.
229	2011-11-18 09:42:24.041208-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed tags, difficulty and difficulty_text.
230	2011-11-18 09:44:41.914172-05	4	18	6	Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed description, tags, difficulty and difficulty_text.
231	2011-11-18 09:44:48.749112-05	4	18	6	Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
232	2011-11-18 09:45:00.915976-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed description and tags.
233	2011-11-18 09:45:11.631868-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
234	2011-11-18 09:45:20.736821-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
235	2011-11-18 09:45:30.472563-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed tags.
236	2011-11-18 09:45:56.472331-05	4	18	8	Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed description and tags.
237	2011-11-18 09:46:02.164195-05	4	18	8	Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed description and tags.
238	2011-11-18 09:46:06.121486-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. Housing violations	2	Changed tags.
239	2011-11-18 09:46:09.826001-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
240	2011-11-18 09:46:16.797783-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed description and tags.
241	2011-11-18 09:46:23.208564-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed tags.
242	2011-11-18 09:46:27.496587-05	4	18	6	Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
243	2011-11-18 10:15:12.606372-05	4	20	9	Executive branch congressional reports	2	Changed tags.
244	2011-11-18 10:30:36.018281-05	4	20	10	D.C. housing violations	2	Changed name, tags and url.
245	2011-11-18 10:31:18.933547-05	4	20	11	Madoff customers	2	Changed tags and url.
246	2011-11-18 10:31:53.044342-05	4	20	12	Border fence contributors	2	Changed tags and url.
247	2011-11-18 12:38:38.156344-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	1	
248	2011-11-18 12:46:40.650476-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed description, published, tags, programming_required_rating and programming_required_description.
249	2011-11-18 12:52:48.122425-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed tags.
250	2011-11-18 13:02:48.810333-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed tags.
251	2011-11-18 13:12:38.616649-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed description and tags.
252	2011-11-18 13:30:11.429204-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	1	
253	2011-11-18 13:32:19.737871-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed published.
254	2011-11-18 13:32:27.143489-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed published and tags.
255	2011-11-18 13:32:33.189194-05	4	18	8	Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed published and tags.
256	2011-11-18 13:32:39.358141-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed published and tags.
257	2011-11-18 13:32:44.479189-05	4	18	6	Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed published and tags.
258	2011-11-18 13:41:17.535352-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags and description.
259	2011-11-18 13:53:36.476869-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags and description.
260	2011-11-18 13:54:27.62757-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed description and tags.
261	2011-11-18 14:21:04.111239-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed subtitle, tags, teaser, description, rating, rating_text and version_tested.
262	2011-11-18 14:22:20.141474-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and rating_text.
263	2011-11-18 15:14:45.897345-05	4	19	17	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	1	
264	2011-11-21 10:56:26.082077-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed description, published and tags.
265	2011-11-21 11:42:11.010515-05	4	19	18	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	1	
266	2011-11-21 11:59:42.55347-05	4	19	18	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser, description and rating.
267	2011-11-21 14:14:54.615685-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
268	2011-11-21 14:28:27.500901-05	4	19	18	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed subtitle, tags, description and rating_text.
269	2011-11-21 14:29:53.301428-05	4	19	18	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
270	2011-11-21 14:30:16.586891-05	4	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed description and tags.
271	2011-11-21 14:55:47.345536-05	4	19	19	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	1	
272	2011-11-21 15:06:29.102709-05	4	19	19	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed subtitle, tags, teaser and description.
273	2011-11-21 15:07:33.031784-05	1	7	1	reviews.reporterslab.org	2	Changed domain.
274	2011-11-21 15:07:38.849591-05	1	7	1	reviews.reporterslab.org	2	Changed name.
275	2011-11-21 15:11:44.735568-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed description and tags.
276	2011-11-21 15:19:58.09729-05	4	19	20	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	1	
277	2011-11-21 16:17:34.947065-05	4	19	21	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	1	
278	2011-11-21 16:18:27.440511-05	4	19	21	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
279	2011-11-21 16:59:50.873493-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	1	
280	2011-11-21 17:00:10.835786-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags, teaser and description.
281	2011-11-21 17:01:04.002077-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and version_tested.
282	2011-11-21 17:01:18.652245-05	4	19	21	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with unlined tables to spreadsheet, For Document: Clinton political appointments	2	Changed tags and version_tested.
283	2011-11-21 17:01:25.004552-05	4	19	20	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	2	Changed tags and version_tested.
284	2011-11-21 17:01:33.545556-05	4	19	19	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed tags and version_tested.
285	2011-11-21 17:01:52.361579-05	4	19	18	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and version_tested.
286	2011-11-21 17:02:04.039266-05	4	19	17	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and version_tested.
287	2011-11-21 17:17:12.968153-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags, description and os_used.
288	2011-11-21 17:23:57.11212-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and description.
289	2011-11-21 17:24:18.233332-05	4	19	19	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed tags and rating.
290	2011-11-21 17:41:59.575784-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and description.
291	2011-11-21 17:44:27.339103-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and description.
292	2011-11-28 10:41:35.253985-05	4	21	4	OCR	1	
293	2011-11-28 10:41:45.502594-05	4	21	3	PDF tools	2	Changed tags.
294	2011-11-28 10:42:45.755727-05	4	21	4	OCR	2	Changed description and tags.
295	2011-11-28 10:42:52.722287-05	4	21	3	PDF tools	2	Changed tags.
296	2011-11-28 10:44:59.190313-05	4	21	5	Document management	1	
297	2011-11-29 16:18:03.032855-05	4	3	5	rochelle	1	
298	2011-11-29 16:21:49.876733-05	4	3	5	rochelle	3	
299	2011-12-01 08:51:31.172485-05	2	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
300	2011-12-01 08:52:04.572376-05	2	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed description and tags.
301	2011-12-01 08:52:38.786515-05	2	18	9	Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed description and tags.
302	2011-12-01 08:53:58.392573-05	2	18	8	Task: Convert image PDF into spreadsheet, For Document: Executive branch congressional reports	2	Changed description and tags.
303	2011-12-01 17:59:12.953417-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
304	2011-12-02 11:35:06.569777-05	4	3	6	jennifer.wig	1	
305	2011-12-02 11:35:40.126634-05	4	3	6	jennifer.wig	2	Changed first_name, last_name, email, is_staff and groups.
306	2011-12-02 11:37:45.663554-05	4	3	7	david.gulliver	1	
307	2011-12-02 11:38:09.598872-05	4	3	7	david.gulliver	2	Changed first_name, last_name, email, is_staff and groups.
308	2011-12-02 11:38:50.786373-05	4	3	8	aaron.kessler	1	
309	2011-12-02 11:39:03.096686-05	4	3	8	aaron.kessler	2	Changed first_name, last_name, email, is_staff and groups.
310	2011-12-02 17:47:26.302827-05	4	18	10	Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed description and tags.
311	2011-12-05 15:49:48.443792-05	4	18	8	Task: Convert PDF with some searchable text into spreadsheet, For Document: Executive branch congressional reports	2	Changed name and tags.
312	2011-12-05 16:08:39.036164-05	4	18	12	Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	1	
313	2011-12-05 16:35:13.502333-05	4	20	13	N.C. legislature's statements of economic interest	1	
314	2011-12-05 16:40:50.542022-05	4	20	13	N.C. legislature's statements of economic interest	2	Changed published.
315	2011-12-05 17:02:54.158398-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	1	
316	2011-12-05 17:08:10.598027-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
317	2011-12-08 07:52:21.348705-05	1	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags, programming and programming_text.
318	2011-12-08 12:41:35.744407-05	4	20	13	N.C. legislature's statements of economic interest	2	Changed description, tags and url.
319	2011-12-08 13:12:26.676221-05	4	19	20	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	3	
320	2011-12-08 13:12:26.684472-05	4	19	11	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	3	
321	2011-12-08 13:14:35.725486-05	4	18	7	Task: Convert PDF in book format into spreadsheet, For Document: 2011 Q2 House dispursement accounts	3	
322	2011-12-08 15:08:45.543504-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
323	2011-12-08 15:09:33.659652-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags, programming and programming_text.
324	2011-12-08 15:09:53.862737-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags, programming and programming_text.
325	2011-12-08 15:13:48.421473-05	4	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and programming_text.
326	2011-12-08 15:13:56.730003-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and programming.
327	2011-12-08 15:14:22.412459-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and programming.
328	2011-12-08 15:15:01.677212-05	4	16	2	Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags.
329	2011-12-08 15:15:21.154171-05	4	16	1	Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.reporterslab.org/))	2	Changed tags, programming and programming_text.
330	2011-12-08 16:10:44.63897-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
331	2011-12-08 16:38:34.524207-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
332	2011-12-08 16:44:35.000094-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
333	2011-12-08 16:45:25.462507-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
334	2011-12-08 16:45:39.615855-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
335	2011-12-08 16:46:42.533388-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed description and tags.
336	2011-12-08 16:47:07.606024-05	4	3	4	mtdukes	2	Changed groups.
337	2011-12-08 17:00:08.438419-05	1	2	3	Editors	1	
338	2011-12-08 17:00:20.342562-05	1	3	4	mtdukes	2	Changed groups.
339	2011-12-08 17:00:27.198817-05	1	3	1	charlie	2	Changed groups.
340	2011-12-08 17:00:33.320104-05	1	3	2	sarah	2	Changed groups.
341	2011-12-09 09:58:15.188659-05	4	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and published.
342	2011-12-09 10:03:25.611455-05	4	20	8	2011 Q2 House dispursement accounts	2	Changed description and tags.
343	2011-12-09 12:27:00.599162-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
344	2011-12-09 12:46:24.330294-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
345	2011-12-09 13:02:40.290338-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed description and tags.
346	2011-12-09 13:02:46.830087-05	4	18	11	Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed published.
347	2011-12-09 13:50:26.021208-05	4	20	8	2011 Q2 House dispursement accounts	2	Changed description, tags and url.
348	2011-12-09 14:56:22.378697-05	4	20	14	Combatant tribunal transcripts	1	
350	2011-12-09 16:30:07.778676-05	4	18	14	Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed description, tags and published.
351	2011-12-09 16:31:53.859934-05	4	18	14	Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed description and tags.
352	2011-12-09 16:42:27.512433-05	4	18	15	Task: Use OCR on Your Seat document set, For Document: Your Seat at the Table	1	
353	2011-12-12 19:08:29.857932-05	4	18	12	Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed description, tags and published.
354	2011-12-12 19:09:54.491689-05	4	18	12	Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed description and tags.
355	2011-12-12 19:10:53.665489-05	4	18	8	Task: Convert PDF with some searchable text into spreadsheet, For Document: Executive branch congressional reports	3	
356	2011-12-13 14:17:25.706877-05	4	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, description, tags and difficulty.
357	2011-12-13 14:19:02.932642-05	4	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed description and tags.
358	2011-12-13 14:19:09.732841-05	4	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
359	2011-12-13 14:22:11.062554-05	4	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags, published and difficulty_text.
360	2011-12-13 14:38:31.24296-05	4	18	6	Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed name, description and tags.
361	2011-12-13 14:47:31.613572-05	1	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
362	2011-12-13 14:47:42.054083-05	1	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
363	2011-12-13 14:47:48.788981-05	1	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
364	2011-12-13 14:48:57.008113-05	1	25	49	ocr	3	
365	2011-12-13 14:48:57.013281-05	1	25	45	ocr	3	
366	2011-12-13 14:48:57.017977-05	1	25	42	ocr	3	
367	2011-12-13 14:49:07.138435-05	1	18	15	Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
368	2011-12-13 14:49:11.307407-05	1	18	14	Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
369	2011-12-13 14:49:19.645543-05	1	18	13	Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
370	2011-12-13 14:49:25.781609-05	1	18	12	Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
371	2011-12-13 15:19:29.156541-05	4	18	6	Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed description and tags.
372	2011-12-13 15:20:37.169656-05	4	18	6	Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags, published, difficulty and difficulty_text.
373	2011-12-13 15:20:49.247068-05	4	18	6	Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed description and tags.
374	2011-12-13 15:21:52.628238-05	4	18	6	Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
375	2011-12-14 15:47:59.562155-05	4	2	2	Freelancers	2	Changed permissions.
376	2011-12-15 08:08:33.720296-05	4	2	2	Freelancers	2	Changed permissions.
377	2011-12-15 12:08:33.672921-05	6	17	7	ABBYY Fine Reader (http://finereader.abbyy.com/)	1	
378	2011-12-15 12:31:44.10544-05	6	17	7	ABBYY Fine Reader (http://finereader.abbyy.com/)	2	Changed tags.
379	2011-12-15 12:35:47.187115-05	6	17	7	ABBYY Fine Reader (http://finereader.abbyy.com/)	2	Changed description and tags.
380	2011-12-15 12:38:00.173014-05	6	17	7	ABBYY Fine Reader (http://finereader.abbyy.com/)	2	Changed tags and image.
381	2011-12-16 08:16:29.241477-05	3	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	1	
382	2011-12-16 08:47:51.514453-05	3	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed description, tags, demo_available, obsolete, categories and operating_systems.
383	2011-12-16 09:07:23.68482-05	3	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	1	
384	2011-12-16 09:09:32.014431-05	3	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, teaser, description and rating.
385	2011-12-16 09:21:52.867916-05	3	19	23	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	1	
386	2011-12-16 09:41:56.002502-05	3	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	1	
387	2011-12-16 10:00:09.464085-05	3	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	1	
388	2011-12-16 10:38:22.945316-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	1	
389	2011-12-16 10:39:41.999808-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags.
390	2011-12-16 10:53:50.321859-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
391	2011-12-16 10:54:18.460689-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed kicker and tags.
392	2011-12-16 10:56:16.722901-05	4	19	10	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed kicker, name, tags, published and description.
494	2011-12-21 12:20:16.579366-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags, performance and rating.
393	2011-12-16 11:05:59.99925-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed subtitle, tags, teaser, community, community_text, performance_text, usability_text and rating_text.
394	2011-12-16 11:11:40.025452-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags, teaser, description, documentation, documentation_text, programming and programming_text.
395	2011-12-16 11:31:12.288463-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and description.
396	2011-12-16 11:39:23.75772-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and description.
397	2011-12-16 11:41:38.261255-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and description.
398	2011-12-16 11:41:59.630687-05	3	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed tags and obsolete. Changed description and tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for review "Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
399	2011-12-16 11:48:29.49668-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and description.
400	2011-12-16 14:41:17.520364-05	4	19	13	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name, tags, published and description.
401	2011-12-16 14:42:24.551835-05	4	19	14	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, published and os_used.
402	2011-12-16 14:43:15.909307-05	4	19	15	Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, published and description.
403	2011-12-16 14:49:59.134873-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and description.
404	2011-12-16 14:59:32.912457-05	4	17	2	Outwit Hub (http://www.outwit.com/)	2	Changed url, tags and categories. Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'BC Physicians' Document Set, For Document: College of Physicians and Surgeons of British Columbia". Changed tags for review "Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.outwit.com/))".
405	2011-12-16 15:07:59.596139-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, published and description.
406	2011-12-16 15:10:19.206203-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
407	2011-12-16 15:22:36.43347-05	4	19	17	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and published.
408	2011-12-16 15:26:11.431554-05	4	19	18	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name, subtitle, tags and published.
409	2011-12-16 15:28:02.767966-05	4	19	21	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and published.
410	2011-12-19 09:04:57.721959-05	6	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	1	
411	2011-12-19 09:40:11.240267-05	6	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	1	
412	2011-12-19 10:27:13.340337-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	1	
413	2011-12-19 10:31:19.951353-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, tags, teaser and description.
414	2011-12-19 11:15:57.0336-05	6	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	1	
415	2011-12-19 11:19:41.831874-05	6	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, teaser and description.
416	2011-12-19 11:24:24.024299-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	1	
417	2011-12-19 11:24:57.841776-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name and tags.
579	2012-01-06 14:23:07.249771-05	4	21	4	OCR	2	Changed tags.
418	2011-12-19 11:28:38.19473-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name and tags.
419	2011-12-19 12:05:43.864983-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, tags, teaser, description and rating.
420	2011-12-19 12:22:49.338763-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed tags, teaser, description, version_tested, os_used, community, community_text, documentation, documentation_text, performance, performance_text, usability, usability_text, rating, rating_text and programming.
421	2011-12-19 13:13:06.713533-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and description.
422	2011-12-19 13:31:09.634417-05	4	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed description, tags and release_date. Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for review "Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
423	2011-12-19 13:32:04.624461-05	4	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed description, tags and published. Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for review "Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
424	2011-12-19 13:50:06.046134-05	4	17	7	ABBYY Fine Reader (http://finereader.abbyy.com/)	2	Changed description, tags and published. Changed tags for Product Task Review "Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Product Task Review "Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Product Task Review "Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for review "ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))".
425	2011-12-19 14:04:27.45204-05	4	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, review_done and description.
426	2011-12-19 14:04:49.808405-05	4	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed editor and tags.
427	2011-12-19 14:09:33.2765-05	4	19	23	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, subtitle, editor, tags, review_done, description and rating_text.
428	2011-12-19 14:15:58.250741-05	4	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed subtitle, editor, tags, review_done, teaser and description.
429	2011-12-19 14:38:12.334856-05	4	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed name, subtitle, editor, tags, review_done, teaser and description.
430	2011-12-19 14:59:05.904203-05	4	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed editor, tags, review_done, description, community_text, documentation_text, performance_text, usability_text and rating_text.
431	2011-12-19 15:43:00.063093-05	4	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed editor, tags and description.
432	2011-12-19 15:43:12.473227-05	4	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name and tags.
433	2011-12-19 15:43:36.982938-05	4	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed name, editor and tags.
434	2011-12-19 15:48:09.787978-05	4	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, review_done, teaser and description.
435	2011-12-19 15:49:24.817134-05	4	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, editor and tags.
580	2012-01-06 14:23:15.981567-05	4	21	5	Document management	2	Changed tags.
436	2011-12-19 15:52:17.898324-05	4	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, teaser and description.
437	2011-12-19 15:54:38.499759-05	4	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed name, editor and tags.
438	2011-12-19 17:24:13.676018-05	6	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, tags, teaser and description.
439	2011-12-19 17:27:52.622332-05	6	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags, teaser, description, rating and rating_text.
440	2011-12-19 17:42:01.327885-05	6	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed subtitle, tags, description and rating_text.
441	2011-12-19 17:42:22.837308-05	6	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name and tags.
442	2011-12-19 17:43:19.128376-05	6	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed subtitle and tags.
443	2011-12-19 17:52:21.106308-05	6	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser, description and rating_text.
444	2011-12-19 18:25:12.129563-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, subtitle, tags, teaser, description and rating_text.
445	2011-12-19 18:43:41.136605-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed subtitle, tags, teaser, description, community, community_text, usability, usability_text, rating and programming_text.
446	2011-12-19 18:49:03.14138-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed tags and description.
447	2011-12-19 18:56:04.97442-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed tags and description.
448	2011-12-19 19:14:04.420218-05	6	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed name, tags, teaser, description, rating and rating_text.
449	2011-12-19 19:15:17.482698-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed tags and description.
450	2011-12-19 19:16:17.323685-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed subtitle and tags.
451	2011-12-19 19:16:51.251018-05	6	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed subtitle and tags.
452	2011-12-19 19:16:58.73517-05	6	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
453	2011-12-19 19:17:06.629699-05	6	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
454	2011-12-19 19:17:19.016815-05	6	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed subtitle and tags.
455	2011-12-19 19:18:25.287764-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed tags and programming_text.
456	2011-12-19 19:21:52.005614-05	6	16	6	ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY Fine Reader (http://finereader.abbyy.com/))	2	Changed tags and community_text.
457	2011-12-20 10:46:43.833949-05	4	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, subtitle, tags, published, teaser and description.
458	2011-12-20 10:48:36.756154-05	4	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, tags, teaser and description.
459	2011-12-20 10:50:02.877076-05	4	19	26	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and rating_text.
460	2011-12-20 10:54:21.970724-05	4	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, published, teaser, description and version_tested.
461	2011-12-20 10:56:12.272349-05	4	19	27	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and description.
462	2011-12-20 11:07:05.989604-05	4	19	28	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, subtitle, tags, teaser, description and rating_text.
463	2011-12-20 11:11:49.856527-05	4	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed name, subtitle, tags, teaser, description and rating_text.
464	2011-12-20 11:13:26.767476-05	4	19	29	Task Review of ABBYY Fine Reader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and published.
493	2011-12-21 12:18:23.945198-05	3	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and description.
581	2012-01-06 14:23:19.697473-05	4	21	4	OCR	2	Changed tags.
465	2011-12-20 11:25:04.751992-05	4	17	7	ABBYY FineReader (http://finereader.abbyy.com/)	2	Changed name and tags. Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for review "ABBYY Fine Reader A Solid Option for Searching Data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))".
466	2011-12-20 11:38:10.914811-05	4	16	6	ABBYY FineReader a solid option for searching data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed name, subtitle, editor, tags, teaser, description, version_tested, community_text, documentation_text, performance_text, usability_text and programming_text.
467	2011-12-20 11:51:34.932334-05	4	20	7	Clinton political appointments	2	Changed description and tags.
468	2011-12-20 12:10:01.641951-05	4	20	7	Clinton political appointments	2	Changed tags.
469	2011-12-20 13:01:05.717925-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	1	
470	2011-12-20 13:03:35.397442-05	6	19	28	Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and description.
471	2011-12-20 13:06:19.356472-05	6	16	6	ABBYY FineReader a solid option for searching data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags and usability_text.
472	2011-12-20 13:08:13.263566-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed description, tags, published and operating_systems.
473	2011-12-20 13:08:34.466701-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed tags.
474	2011-12-20 16:47:03.427118-05	4	19	30	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political ap	1	
475	2011-12-20 16:50:32.835853-05	4	19	30	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political ap	2	Changed name and tags.
476	2011-12-20 21:53:06.966784-05	7	17	10	Cogniview PDF2XL OCR ()	1	
477	2011-12-20 21:59:16.541002-05	7	19	31	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	1	
478	2011-12-20 22:15:26.085642-05	7	19	32	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	1	
479	2011-12-20 22:38:55.130185-05	7	19	33	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	1	
480	2011-12-20 22:58:43.045679-05	7	19	34	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	1	
481	2011-12-20 23:02:14.87721-05	7	19	31	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags, description and version_tested.
482	2011-12-20 23:02:48.93261-05	7	19	33	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and description.
483	2011-12-20 23:03:08.7377-05	7	19	32	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags, version_tested and os_used.
484	2011-12-20 23:04:45.25593-05	7	19	33	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed kicker, name, subtitle and tags.
485	2011-12-20 23:13:25.331239-05	7	19	32	Task Review of Cogniview PDF2XL OCR () for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
486	2011-12-21 10:06:40.911815-05	7	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed url, tags, company, cost, demo_available and categories. Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers".
487	2011-12-21 10:42:35.717944-05	7	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	1	
488	2011-12-21 10:47:47.003566-05	7	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags and image.
489	2011-12-21 11:38:57.13386-05	3	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags and description.
490	2011-12-21 11:43:33.333588-05	3	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags and description.
491	2011-12-21 11:55:51.297845-05	3	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
492	2011-12-21 12:16:26.315964-05	3	19	23	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
582	2012-01-06 14:23:22.943862-05	4	21	3	PDF tools	2	Changed tags.
495	2011-12-21 12:21:32.524856-05	3	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags.
496	2011-12-21 12:56:03.65201-05	4	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, published and description.
497	2011-12-21 13:21:30.394568-05	4	19	23	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
498	2011-12-21 13:22:20.537869-05	4	19	23	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags and published.
499	2011-12-21 13:22:45.522227-05	4	19	23	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
500	2011-12-21 13:27:07.09602-05	4	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name, tags and description.
501	2011-12-21 13:36:47.550284-05	4	19	16	Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
502	2011-12-21 13:38:30.30846-05	4	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags.
503	2011-12-21 13:40:17.433849-05	4	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and published.
504	2011-12-21 13:58:11.149722-05	4	19	28	Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, tags and description.
505	2011-12-21 13:59:06.343585-05	4	19	28	Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, published and description.
506	2011-12-21 14:02:56.639415-05	4	16	6	ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed name, tags and description.
507	2011-12-21 14:03:43.472988-05	4	16	6	ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags.
508	2011-12-21 14:35:09.734782-05	6	16	6	ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags, description and usability_text.
509	2011-12-21 15:01:11.33765-05	4	16	6	ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags and description.
510	2011-12-21 15:03:31.837637-05	4	16	6	ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags and published.
511	2011-12-21 17:13:40.242533-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and description.
512	2011-12-21 17:33:57.454186-05	4	16	4	Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and published.
513	2011-12-21 21:06:15.705059-05	7	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed description, tags and image. Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for review "Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
514	2011-12-22 09:20:22.262702-05	3	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
515	2011-12-22 09:22:35.829161-05	3	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags and description.
516	2011-12-22 09:25:17.138882-05	3	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags and description.
517	2011-12-22 09:27:00.799079-05	3	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags and description.
518	2011-12-22 09:27:52.184994-05	3	19	22	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
519	2011-12-22 11:05:24.304067-05	4	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
520	2011-12-22 11:10:11.086155-05	4	19	24	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, published and description.
521	2011-12-22 11:12:36.066973-05	4	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags, teaser and description.
522	2011-12-22 11:13:20.896984-05	4	19	25	Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointmen	2	Changed tags and published.
523	2011-12-22 11:28:38.443344-05	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed description, tags, cost and operating_systems. Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for review "Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
524	2011-12-22 11:29:38.577817-05	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed tags and published. Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for review "Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
525	2011-12-22 11:32:47.453275-05	4	19	31	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed editor, tags and description.
526	2011-12-22 11:36:48.806246-05	4	19	31	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, review_done and teaser.
527	2011-12-22 11:42:39.446936-05	4	19	32	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appoi	2	Changed reviewer, editor, tags, review_done, description and rating_text.
528	2011-12-22 11:45:12.055023-05	4	19	32	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appoi	2	Changed subtitle, tags and teaser.
529	2011-12-22 11:48:54.232691-05	4	19	32	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appoi	2	Changed tags, published and description.
530	2011-12-22 11:56:27.52324-05	4	19	33	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed editor, tags, review_done, description and rating_text.
531	2011-12-22 12:12:03.935466-05	4	19	34	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed editor, tags, teaser and description.
532	2011-12-22 12:22:54.79487-05	4	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed editor, tags, description, community_text, performance_text and programming_text.
533	2011-12-22 21:01:46.209233-05	7	19	31	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
534	2011-12-22 21:04:28.540589-05	7	19	33	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and description.
535	2011-12-22 21:19:49.374719-05	7	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags, description and rating_text.
536	2011-12-22 21:20:58.658809-05	7	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags, rating and rating_text.
537	2011-12-22 21:34:22.917543-05	7	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags, description and rating_text.
538	2011-12-28 12:32:15.967554-05	4	19	31	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed subtitle, tags, description and rating_text.
539	2011-12-28 12:35:16.012809-05	4	19	31	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, published and description.
540	2011-12-28 12:39:49.743754-05	4	19	33	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed subtitle, tags and description.
541	2011-12-28 12:40:47.55591-05	4	19	33	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed name, tags and teaser.
542	2011-12-28 12:41:52.652674-05	4	19	33	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and published.
543	2011-12-28 12:43:49.541431-05	4	19	34	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, description and rating_text.
544	2011-12-28 12:45:15.890311-05	4	19	34	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, published and description.
545	2011-12-28 12:52:50.895922-05	4	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed subtitle, tags, teaser, description, community_text, documentation_text, performance_text, usability_text and rating_text.
546	2011-12-28 12:56:20.687157-05	4	16	7	Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags, published, description, rating_text and programming_text.
547	2011-12-28 12:57:21.446475-05	4	19	34	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and teaser.
548	2011-12-28 12:57:35.084631-05	4	19	33	Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and teaser.
549	2011-12-28 15:32:27.887834-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and description.
550	2011-12-28 15:35:12.923527-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed subtitle, tags, published, description and performance_text.
551	2011-12-29 16:08:03.275668-05	4	19	35	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	1	
552	2011-12-29 16:44:11.318108-05	4	19	35	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed subtitle, tags, description and rating_text.
553	2011-12-29 16:52:27.691863-05	4	19	35	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, description and rating_text.
554	2012-01-03 12:56:18.879299-05	4	19	36	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	1	
555	2012-01-03 13:05:58.850654-05	4	19	36	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
556	2012-01-03 13:06:59.521859-05	4	19	36	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, teaser and description.
557	2012-01-03 13:10:19.650491-05	4	19	36	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, teaser and description.
558	2012-01-03 14:45:01.860155-05	4	19	37	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	1	
559	2012-01-03 14:45:33.511206-05	4	19	36	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed subtitle and tags.
560	2012-01-03 14:55:28.423111-05	4	19	37	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and description.
561	2012-01-03 16:21:40.062485-05	4	19	37	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed subtitle, tags, teaser and description.
562	2012-01-03 16:23:34.915452-05	4	19	37	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed subtitle, tags and description.
563	2012-01-03 18:08:43.357136-05	4	19	38	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional rep	1	
564	2012-01-04 13:46:22.97558-05	4	19	38	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional rep	2	Changed tags.
565	2012-01-04 15:25:04.700067-05	4	19	38	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional rep	2	Changed name, subtitle, tags, teaser, description and rating_text.
566	2012-01-04 15:30:56.040406-05	4	19	38	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional rep	2	Changed tags, teaser and description.
567	2012-01-05 15:27:50.18996-05	4	19	39	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inter	1	
568	2012-01-06 14:03:06.54759-05	4	19	39	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inter	2	Changed tags and description.
569	2012-01-06 14:03:30.48084-05	4	19	39	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inter	2	Changed tags, teaser and description.
570	2012-01-06 14:07:23.028198-05	4	19	39	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inter	2	Changed subtitle and tags.
571	2012-01-06 14:16:06.287224-05	4	19	39	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inter	2	Changed tags, teaser and description.
572	2012-01-06 14:18:23.836155-05	4	21	1	Some Category	3	
573	2012-01-06 14:19:26.085395-05	4	21	5	Document management	2	Changed description and tags.
574	2012-01-06 14:19:52.036836-05	4	21	5	Document management	2	Changed description and tags.
575	2012-01-06 14:20:27.783031-05	4	21	4	OCR	2	Changed description and tags.
576	2012-01-06 14:21:17.73389-05	4	21	3	PDF tools	2	Changed description and tags.
577	2012-01-06 14:22:54.537109-05	4	21	2	Scraper	2	Changed description and tags.
578	2012-01-06 14:23:01.569255-05	4	21	3	PDF tools	2	Changed tags.
585	2012-01-10 10:42:21.867927-05	3	23	1	Tutorial object	2	Changed name, subtitle, tags, teaser and description.
586	2012-01-10 10:48:55.113077-05	3	23	1	Tutorial object	2	Changed tags and description.
587	2012-01-10 11:16:35.569282-05	3	23	1	Tutorial object	2	Changed tags and description.
588	2012-01-10 11:47:53.694537-05	3	23	1	Tutorial object	2	Changed tags and description.
589	2012-01-10 12:06:08.279626-05	3	23	1	Tutorial object	2	Changed tags and description.
590	2012-01-10 12:07:20.332398-05	3	23	1	Tutorial object	2	Changed tags and description.
591	2012-01-10 12:10:36.591178-05	3	23	1	Tutorial object	2	Changed tags and description.
592	2012-01-10 12:13:12.076623-05	3	23	1	Tutorial object	2	Changed tags and description.
593	2012-01-10 12:14:33.293633-05	3	23	1	Tutorial object	2	Changed tags and description.
594	2012-01-10 12:49:41.525324-05	4	19	40	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	1	
595	2012-01-10 12:53:10.679562-05	4	19	40	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser and description.
596	2012-01-10 13:12:04.470128-05	4	19	40	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser, description and rating.
597	2012-01-10 13:15:49.579649-05	4	19	40	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed subtitle and tags.
598	2012-01-11 13:50:12.509582-05	4	19	40	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
599	2012-01-11 14:03:25.661848-05	4	19	41	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	1	
600	2012-01-11 14:25:21.644553-05	4	19	41	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and description.
601	2012-01-11 14:27:25.677487-05	4	19	41	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed subtitle, tags, teaser and description.
602	2012-01-11 14:28:25.54093-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed tags, teaser and categories. Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments".
603	2012-01-11 14:34:09.7507-05	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed tags, teaser and description. Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
610	2012-01-11 14:36:40.4975-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags, teaser and description. Changed tags for Product Task Review "Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Physicians' Document Set, For Document: College of Physicians and Surgeons of British Columbia". Changed tags for Product Task Review "Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Product Task Review "Task Review of Needlebase (http://www.needlebase.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Review "Needlebase is Expensive but Superb. (Review of: Needlebase (http://www.needlebase.com/))".
614	2012-01-11 15:33:32.834911-05	4	16	8	Good option for tackling PDF problems, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
615	2012-01-11 15:33:51.209432-05	4	16	8	Good option for tackling PDF problems, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
1053	2012-02-07 16:57:30.979075-05	4	18	17	Test: Use entity extraction on mixed-quality memos, For Document: Your Seat at the Table	2	Changed tags.
604	2012-01-11 14:34:16.271973-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed tags. Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments".
605	2012-01-11 14:34:37.35568-05	4	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed tags and teaser. Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Able2Extract PDF Converter (http://www.investintech.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Review "Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
606	2012-01-11 14:35:13.863581-05	4	17	7	ABBYY FineReader (http://finereader.abbyy.com/)	2	Changed tags, teaser and description. Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Product Task Review "Task Review of ABBYY FineReader (http://finereader.abbyy.com/) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))".
607	2012-01-11 14:35:29.73964-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed tags and teaser. Changed tags for Product Task Review "Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Product Task Review "Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Cometdocs (http://www.cometdocs.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))".
608	2012-01-11 14:35:45.169772-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed tags and teaser. Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Product Task Review "Task Review of Nitro Pro (http://www.nitropdf.com/) for Task Task: Convert PDF with unlined tables and seperate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))".
609	2012-01-11 14:36:13.858065-05	4	17	2	Outwit Hub (http://www.outwit.com/)	2	Changed tags, teaser and description. Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Product Task Review "Task Review of Outwit Hub (http://www.outwit.com/) for Task Task: Scrape the 'BC Physicians' Document Set, For Document: College of Physicians and Surgeons of British Columbia". Changed tags for Review "Outwit Performs Well on Basic Tasks (Review of: Outwit Hub (http://www.outwit.com/))".
611	2012-01-11 14:37:01.031398-05	4	16	2	Needlebase is expensive but superb (Review of: Needlebase (http://www.needlebase.com/))	2	Changed name and tags.
612	2012-01-11 14:37:20.013377-05	4	16	1	Outwit performs well on basic tasks (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed name and tags.
613	2012-01-11 15:33:08.404807-05	4	16	8	Good option for tackling PDF problems, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	1	
616	2012-01-11 15:34:12.82051-05	4	16	8	Good option for tackling PDF problems, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
617	2012-01-11 15:34:42.11177-05	4	16	8	Good option for tackling PDF problems, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
618	2012-01-11 15:35:18.513293-05	4	16	8	Good option for tackling PDF problems, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
619	2012-01-11 15:36:26.317387-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed name and tags.
620	2012-01-11 15:52:34.491776-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags, community, community_text, documentation, documentation_text, performance, usability and programming.
621	2012-01-11 15:52:51.768104-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and rating.
622	2012-01-11 15:54:20.767249-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags.
623	2012-01-11 16:03:33.122258-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags.
624	2012-01-11 16:15:44.601349-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags.
625	2012-01-11 16:16:31.797224-05	4	25	75	adobe	3	
626	2012-01-11 16:16:37.266386-05	4	25	83	adobe	3	
627	2012-01-11 16:16:49.028826-05	4	25	80	ocr	3	
628	2012-01-11 16:16:58.421668-05	4	25	76	acr	3	
629	2012-01-11 16:17:04.389377-05	4	25	69	ocr	3	
630	2012-01-11 16:17:14.370423-05	4	25	40	ocr	2	No fields changed.
631	2012-01-11 16:17:21.11838-05	4	25	50	pdf	2	No fields changed.
632	2012-01-11 16:17:26.492025-05	4	25	50	pdf	2	No fields changed.
633	2012-01-11 16:17:34.461703-05	4	25	40	ocr	2	No fields changed.
634	2012-01-11 16:26:44.380649-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags, description, performance_text, usability_text and rating_text.
635	2012-01-11 16:35:52.646243-05	4	18	6	Task: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments	2	Changed name and tags.
636	2012-01-11 16:47:09.019901-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
637	2012-01-11 16:53:18.906455-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
638	2012-01-11 16:54:31.220378-05	4	19	41	Task Review of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Task Task: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags, teaser and description.
639	2012-01-11 17:19:36.075498-05	4	16	8	Good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
640	2012-01-11 17:31:16.864796-05	4	16	8	Acrobat a good option for tackling PDFs, but cheaper alternatives abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed name and tags.
641	2012-01-11 17:31:46.592771-05	4	16	8	Acrobat a good option for tackling PDFs, but cheaper options abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed name, tags and description.
642	2012-01-11 17:34:04.037243-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed name and tags.
643	2012-01-11 17:36:05.471127-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed subtitle and tags.
644	2012-01-11 17:41:57.53122-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags, description and community_text.
645	2012-01-12 13:34:55.73947-05	4	23	1	Tutorial object	2	Changed editor, tags and description.
646	2012-01-12 13:42:10.635328-05	4	23	1	Tutorial object	2	Changed name, subtitle, tags and tasks.
647	2012-01-12 13:48:48.460366-05	4	23	1	Tutorial object	2	Changed tags and description.
648	2012-01-12 14:24:51.103075-05	3	23	1	Tutorial object	2	Changed tags and description.
649	2012-01-13 09:55:19.376291-05	3	23	1	Tutorial object	2	Changed tags and description.
650	2012-01-13 11:08:53.790118-05	4	17	11	OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm)	1	
651	2012-01-13 11:13:44.661158-05	4	17	11	OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm)	2	Changed tags and description.
652	2012-01-13 11:16:10.174061-05	4	17	11	OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm)	2	Changed published.
653	2012-01-13 16:40:03.750611-05	4	23	1	Tutorial object	2	Changed tags and description.
654	2012-01-13 16:45:19.039573-05	4	23	1	Tutorial object	2	Changed tags.
655	2012-01-13 16:51:47.203322-05	4	23	1	Tutorial object	2	Changed tags, published and description.
656	2012-01-13 16:52:09.016291-05	4	23	1	Tutorial object	2	Changed tags.
657	2012-01-17 09:30:30.835281-05	4	17	11	OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm)	2	Changed tags, teaser and description.
692	2012-01-24 11:36:30.897613-05	4	19	44	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madof	2	Changed name, subtitle, tags, teaser, description and rating_text.
694	2012-01-24 11:40:34.167286-05	4	19	44	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madof	2	Changed tags, teaser and description.
696	2012-01-25 00:30:41.115653-05	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	1	
658	2012-01-17 09:30:40.579128-05	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed tags and os_availability. Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "Cogniview's PDF2XL a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
659	2012-01-17 09:30:54.011125-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed tags and os_availability. Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))".
660	2012-01-17 09:31:00.267899-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed tags. Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))".
661	2012-01-17 09:31:10.662529-05	4	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed tags and os_availability. Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Review "Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
662	2012-01-17 09:32:52.268287-05	4	17	7	ABBYY FineReader (http://finereader.abbyy.com/)	2	Changed tags, operating_systems and os_availability. Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))".
663	2012-01-17 09:33:06.587386-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed tags and os_availability. Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "Cometdocs not a bad option for free, quick and easy solution (Review of: Cometdocs (http://www.cometdocs.com/))".
664	2012-01-17 09:33:17.577164-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed tags and os_availability. Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))".
693	2012-01-24 11:37:04.682275-05	4	19	44	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madof	2	Changed name and tags.
695	2012-01-24 23:59:16.264197-05	4	18	11	Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, teaser and description.
697	2012-01-25 00:31:37.743797-05	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	2	Changed tags.
665	2012-01-17 09:33:29.946953-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags. Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape the 'Your Seat at the Table' Document Set, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape the 'BC Physicians' Document Set, For Document: College of Physicians and Surgeons of British Columbia". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape the 'SD Lobbyists' Website, For Document: South Dakota Lobbyist Information". Changed tags for Review "Needlebase is expensive but superb (Review of: Needlebase (http://www.needlebase.com/))".
666	2012-01-17 11:03:34.027161-05	4	17	11	OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm)	2	Changed tags and release_date.
667	2012-01-17 12:55:22.645041-05	4	19	21	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags, teaser and description.
668	2012-01-17 12:58:58.84388-05	4	19	42	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables and separate headings to spreadshee	1	
669	2012-01-17 13:29:04.207991-05	4	19	42	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables and separate headings to spreadshee	2	Changed tags, teaser and description.
670	2012-01-17 13:29:57.60186-05	4	19	42	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables and separate headings to spreadshee	2	Changed subtitle and tags.
671	2012-01-17 13:32:34.145488-05	4	19	42	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables and separate headings to spreadshee	2	Changed tags.
672	2012-01-17 13:34:19.946014-05	4	19	42	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables and separate headings to spreadshee	2	Changed tags and description.
673	2012-01-17 13:34:25.303925-05	4	19	42	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables and separate headings to spreadshee	2	Changed tags.
674	2012-01-17 13:36:12.166684-05	4	19	35	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and teaser.
675	2012-01-17 16:30:32.118726-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
676	2012-01-17 16:44:15.054319-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
677	2012-01-17 16:45:07.399086-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
678	2012-01-17 16:55:28.128043-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
679	2012-01-17 16:55:33.935519-05	4	16	8	Acrobat decent for tackling PDFs, but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags.
680	2012-01-17 16:56:10.557736-05	4	19	41	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and rating_text.
681	2012-01-17 16:57:17.288583-05	4	19	39	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inte	2	Changed name and tags.
682	2012-01-17 17:01:00.792822-05	4	19	39	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inte	2	Changed tags.
683	2012-01-17 17:01:31.418072-05	4	19	36	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name and tags.
684	2012-01-23 14:29:15.694312-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	1	
685	2012-01-23 14:29:53.175328-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	2	Changed tags.
686	2012-01-23 14:48:25.70298-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	2	Changed tags and description.
687	2012-01-23 14:52:31.630707-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	2	Changed tags and description.
688	2012-01-23 14:56:08.364386-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	2	Changed subtitle, tags, teaser and description.
689	2012-01-23 14:56:38.4726-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	2	Changed name and tags.
690	2012-01-23 15:00:09.917553-05	4	19	43	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document:	2	Changed tags and description.
691	2012-01-23 18:26:25.963272-05	4	19	44	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madof	1	
698	2012-01-25 00:31:57.451041-05	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	2	Changed name and tags.
699	2012-01-25 00:32:38.23292-05	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	2	Changed tags, teaser and description.
700	2012-01-25 00:34:10.96492-05	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	2	Changed tags and description.
701	2012-01-25 18:01:08.893105-05	4	16	7	Cogniview a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed name, tags and description.
702	2012-01-25 18:05:26.807389-05	4	16	7	Cogniview a versatile tool for most situations (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags, community_text, documentation_text, performance_text, usability_text and rating_text.
703	2012-01-25 18:11:13.791694-05	4	16	7	Cogniview a versatile tool for small jobs (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed name, subtitle, tags, teaser and description.
704	2012-01-25 18:13:05.844097-05	4	16	7	Cogniview a versatile tool for small jobs (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags and description.
705	2012-01-25 18:13:58.941018-05	4	16	7	Cogniview a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed name and tags.
706	2012-01-25 18:14:39.559655-05	4	16	7	Cogniview PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed name and tags.
707	2012-01-25 18:14:57.972349-05	4	16	7	PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed name and tags.
708	2012-01-25 18:32:47.915624-05	4	19	34	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name, subtitle, tags, teaser, description and rating_text.
709	2012-01-25 18:33:44.949546-05	4	19	34	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
710	2012-01-26 09:56:28.325545-05	4	20	2	Your Seat at the Table	2	Changed tags, teaser, description and kind.
711	2012-01-26 09:57:50.135336-05	4	20	2	Your Seat at the Table	2	Changed tags.
712	2012-01-26 10:02:25.182292-05	4	18	3	Test: Scrape the 'BC Physicians' Document Set, For Document: College of Physicians and Surgeons of British Columbia	2	Changed tags and description.
713	2012-01-26 10:04:25.249054-05	4	20	3	College of Physicians and Surgeons of British Columbia	2	Changed tags, teaser and description.
714	2012-01-26 10:09:02.618061-05	4	18	4	Test: Scrape the 'BC Teachers' document set, For Document: BC College of Teachers	2	Changed tags and description.
715	2012-01-26 10:12:20.984142-05	4	20	4	British Columbia teacher database	2	Changed name, tags, teaser, description and url.
716	2012-01-26 10:13:05.22979-05	4	20	4	British Columbia teacher database	2	Changed tags.
717	2012-01-26 10:14:03.534566-05	4	20	3	British Columbia physician and surgeons database	2	Changed name, tags and description.
718	2012-01-26 10:15:55.682597-05	4	20	5	South Dakota lobbyist database	2	Changed name, tags, teaser and description.
719	2012-01-26 10:16:12.347262-05	4	20	5	South Dakota lobbyist database	2	Changed tags.
720	2012-01-26 10:17:08.042717-05	4	20	7	Clinton political appointments	2	Changed tags and teaser.
721	2012-01-26 10:19:11.123085-05	4	20	8	House dispursement accounts	2	Changed name, tags, teaser and description.
722	2012-01-26 10:19:35.15715-05	4	20	8	House dispursement accounts	2	Changed tags.
723	2012-01-26 10:22:43.596407-05	4	20	8	House dispursement accounts	2	Changed tags, teaser and description.
724	2012-01-26 10:23:43.997361-05	4	18	3	Test: Scrape the 'BC Physicians' Document Set, For Document: British Columbia physician and surgeons database	2	Changed tags and description.
725	2012-01-26 10:26:07.031404-05	4	20	3	British Columbia physician and surgeons database	2	Changed tags and description.
726	2012-01-26 10:27:36.565829-05	4	20	3	British Columbia physician and surgeons database	2	Changed tags and description.
727	2012-01-26 10:28:06.285681-05	4	18	4	Test: Scrape the 'BC Teachers' document set, For Document: British Columbia teacher database	2	Changed tags and description.
728	2012-01-26 10:31:18.258377-05	4	20	4	British Columbia teacher database	2	Changed tags and description.
729	2012-01-26 10:31:45.365856-05	4	20	4	British Columbia teacher database	2	Changed tags.
730	2012-01-26 10:32:34.190871-05	4	20	8	House dispursement accounts	2	Changed tags.
731	2012-01-26 10:35:06.046663-05	4	20	10	D.C. housing violations	2	Changed tags, teaser and description.
732	2012-01-26 10:35:26.030194-05	4	20	10	D.C. housing violations	2	Changed tags.
733	2012-01-26 10:36:47.178473-05	4	20	11	Madoff customers	2	Changed tags, teaser and description.
734	2012-01-26 10:38:34.71001-05	4	20	11	Madoff customers	2	Changed tags.
735	2012-01-26 10:39:25.697902-05	4	20	12	Border fence contributors	2	Changed tags, teaser and description.
736	2012-01-26 10:39:45.009857-05	4	20	12	Border fence contributors	2	Changed tags.
737	2012-01-26 10:41:53.374971-05	4	20	13	N.C. legislature's statements of economic interest	2	Changed tags, teaser and description.
738	2012-01-26 10:42:28.005187-05	4	20	13	N.C. legislature's statements of economic interest	2	Changed tags and description.
739	2012-01-26 10:43:32.602551-05	4	20	14	Combatant tribunal transcripts	2	Changed tags, teaser and description.
740	2012-01-26 10:50:54.385174-05	4	20	14	Combatant tribunal transcripts	2	Changed tags.
741	2012-01-26 11:20:48.866805-05	4	18	2	Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name, tags, teaser, description, difficulty and difficulty_text.
742	2012-01-26 11:25:29.417461-05	4	18	2	Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags.
743	2012-01-26 11:46:57.828207-05	4	18	3	Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed name, tags and description.
744	2012-01-26 11:53:38.804889-05	4	18	3	Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags, teaser, description, difficulty and difficulty_text.
745	2012-01-26 11:54:56.642099-05	4	18	3	Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags.
746	2012-01-26 11:57:20.066089-05	4	18	2	Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags, teaser and description.
747	2012-01-26 13:21:55.661235-05	4	18	4	Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed name, tags, teaser, description, difficulty and difficulty_text.
748	2012-01-26 13:22:35.426041-05	4	18	4	Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed tags and description.
749	2012-01-26 13:30:54.87402-05	4	18	5	Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, tags, teaser, description, difficulty and difficulty_text.
750	2012-01-26 13:31:39.938045-05	4	18	5	Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
751	2012-01-26 13:34:16.950042-05	4	18	3	Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags and difficulty_text.
752	2012-01-26 13:35:18.572718-05	4	18	5	Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags and difficulty.
753	2012-01-26 13:40:36.60086-05	4	18	6	Test: Convert PDF with unlined tables and separate headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags, teaser, description and difficulty_text.
754	2012-01-26 13:40:54.618986-05	4	18	6	Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed name and tags.
755	2012-01-26 13:42:17.328899-05	4	18	6	Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and difficulty_text.
756	2012-01-26 13:42:49.481258-05	4	18	6	Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
757	2012-01-26 13:44:52.04534-05	4	18	9	Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser, description and difficulty_text.
758	2012-01-26 13:46:09.092899-05	4	18	9	Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
759	2012-01-26 13:48:59.471541-05	4	18	9	Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
760	2012-01-26 13:50:32.122587-05	4	18	10	Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, teaser, description and difficulty_text.
761	2012-01-26 13:50:48.962406-05	4	18	10	Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
762	2012-01-26 13:52:50.65576-05	4	18	11	Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, teaser, description and difficulty_text.
763	2012-01-26 13:53:37.723198-05	4	18	11	Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
764	2012-01-26 13:55:59.522915-05	4	18	12	Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, teaser, description and difficulty_text.
765	2012-01-26 13:56:56.083209-05	4	18	12	Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
766	2012-01-26 14:00:33.964667-05	4	18	13	Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, teaser, description and difficulty_text.
767	2012-01-26 14:01:58.736964-05	4	18	13	Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, teaser and description.
768	2012-01-26 14:02:34.082959-05	4	18	13	Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and difficulty_text.
769	2012-01-26 14:02:40.560175-05	4	18	2	Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags.
770	2012-01-26 14:02:46.033548-05	4	18	3	Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags.
771	2012-01-26 14:02:51.226415-05	4	18	4	Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed tags.
772	2012-01-26 14:02:58.910942-05	4	18	5	Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags and difficulty_text.
773	2012-01-26 14:03:03.898516-05	4	18	6	Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
774	2012-01-26 14:03:22.587204-05	4	18	5	Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
775	2012-01-26 14:03:27.579433-05	4	18	4	Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed tags.
776	2012-01-26 14:03:43.37271-05	4	18	6	Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and difficulty_text.
777	2012-01-26 14:03:52.823998-05	4	18	9	Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and difficulty_text.
778	2012-01-26 14:04:02.315242-05	4	18	11	Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
779	2012-01-26 14:04:06.504994-05	4	18	12	Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
780	2012-01-26 14:04:21.195421-05	4	18	13	Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
781	2012-01-26 14:06:05.881876-05	4	18	14	Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser, description and difficulty_text.
782	2012-01-26 14:06:39.318163-05	4	18	14	Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
783	2012-01-26 14:08:28.266008-05	4	18	15	Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags, teaser, description and difficulty_text.
784	2012-01-26 14:09:04.057791-05	4	18	15	Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
785	2012-01-26 14:10:44.169993-05	4	18	2	Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and description.
786	2012-01-26 14:41:26.83714-05	4	19	2	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed reviewer, editor, tags, version_tested and os_used.
787	2012-01-26 17:14:33.634988-05	4	19	2	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed name, tags, teaser and description.
788	2012-01-26 17:16:51.42896-05	4	19	2	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags and rating_text.
789	2012-01-26 17:19:10.248182-05	4	19	2	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed subtitle and tags.
790	2012-01-26 17:21:48.920219-05	4	17	2	Outwit Hub (http://www.outwit.com/)	2	Changed tags, cost, operating_systems and os_availability. Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with multiple levels, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Outwit performs well on basic tasks (Review of: Outwit Hub (http://www.outwit.com/))".
791	2012-01-26 17:23:05.19485-05	4	19	2	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags and description.
792	2012-01-27 10:33:14.636278-05	4	19	3	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed name, subtitle, reviewer, editor, tags, teaser, description, version_tested and os_used.
793	2012-01-27 10:37:57.544627-05	4	19	3	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed tags and rating_text.
794	2012-01-27 10:38:58.312806-05	4	19	3	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with multiple levels, For Document: British Columbia teacher database	2	Changed tags.
795	2012-01-27 10:44:53.331327-05	4	18	4	Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed name, tags, teaser and description.
796	2012-01-27 11:11:06.645741-05	4	19	4	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name, subtitle, reviewer, editor, tags, teaser, description, rating_text, version_tested and os_used.
797	2012-01-27 11:11:42.61377-05	4	19	4	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags.
798	2012-01-27 11:12:46.165561-05	4	19	4	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and description.
799	2012-01-27 11:30:59.653439-05	4	19	5	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed editor, tags, teaser, description and version_tested.
800	2012-01-27 11:34:30.446875-05	4	19	5	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, subtitle and tags.
801	2012-01-27 11:40:53.613124-05	4	19	5	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags and rating_text.
802	2012-01-27 11:41:52.176308-05	4	19	5	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
803	2012-01-27 11:48:42.563587-05	4	16	1	Outwit performs well on basic scraping tasks (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed kicker, name, subtitle, editor, tags, version_tested, community_text, documentation_text, performance_text, usability_text and rating_text.
804	2012-01-27 11:49:03.812074-05	4	19	2	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags and review_done.
805	2012-01-27 11:49:23.178685-05	4	19	3	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed tags and review_done.
806	2012-01-27 11:49:34.031728-05	4	19	4	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and review_done.
807	2012-01-27 11:49:43.171397-05	4	19	5	Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
808	2012-01-27 14:02:45.381042-05	4	16	1	Outwit performs well on basic scraping tasks (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags.
809	2012-01-27 14:39:48.18325-05	4	16	1	Outwit performs well on basic scraping tasks (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags, teaser and description.
810	2012-01-27 14:41:20.774295-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed name, subtitle and tags.
811	2012-01-27 14:43:43.04467-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags, performance, performance_text and rating_text.
812	2012-01-27 14:46:15.953647-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags and rating_text.
813	2012-01-27 14:48:53.81655-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags and description.
814	2012-01-27 14:49:20.03039-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags.
815	2012-01-27 15:49:16.786053-05	4	19	6	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, subtitle, editor, tags, published, teaser, description and rating_text.
816	2012-01-27 15:58:16.736961-05	4	19	6	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
817	2012-01-27 16:35:33.452776-05	4	19	7	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed name, subtitle, editor, tags, teaser, description, rating_text, version_tested and os_used.
818	2012-01-27 16:36:00.601039-05	4	19	7	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed tags.
819	2012-01-27 16:38:30.142992-05	4	19	7	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed tags, teaser, description and rating_text.
820	2012-01-27 16:38:34.973118-05	4	19	7	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed tags.
821	2012-01-27 16:38:40.306094-05	4	19	7	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	2	Changed published.
822	2012-01-27 16:47:41.126998-05	4	19	8	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed name, subtitle, editor, tags, teaser, description, rating_text, version_tested and os_used.
823	2012-01-27 16:48:01.503754-05	4	19	8	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	2	Changed tags and published.
824	2012-01-27 17:14:50.647987-05	4	19	9	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name, subtitle, editor, tags, teaser, description, rating_text, version_tested and os_used.
825	2012-01-27 17:15:09.871488-05	4	19	9	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name and tags.
826	2012-01-27 17:15:58.018765-05	4	19	9	Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and published.
827	2012-01-27 17:23:01.974987-05	4	16	2	Needlebase is expensive but superb (Review of: Needlebase (http://www.needlebase.com/))	2	Changed editor and tags.
828	2012-01-30 14:08:12.530518-05	4	16	2	Needlebase is expensive but superb (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags.
829	2012-01-30 15:32:46.753821-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed name, tags, version_tested, community_text, documentation_text, performance_text, usability_text and rating_text.
830	2012-01-30 15:39:43.393158-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
831	2012-01-30 15:40:04.676278-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and teaser.
832	2012-01-30 15:41:00.228312-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
833	2012-01-30 15:44:09.041484-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags, published, description and rating_text.
834	2012-01-30 16:11:41.382211-05	4	19	10	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed kicker, tags, description and rating_text.
835	2012-01-30 16:12:07.292513-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed tags and cost. Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))".
836	2012-01-30 16:12:15.478908-05	4	19	10	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
837	2012-01-30 16:13:10.056702-05	4	19	10	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
838	2012-01-30 16:15:12.844905-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed subtitle, tags and rating_text.
839	2012-01-30 16:20:17.998099-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
840	2012-01-30 16:20:58.450146-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name and tags.
841	2012-01-30 16:21:36.2977-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name and tags.
842	2012-01-30 16:23:18.247667-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
843	2012-01-30 16:24:33.908381-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
844	2012-01-30 16:31:44.128551-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
845	2012-01-30 16:32:17.46583-05	4	19	13	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
846	2012-01-30 16:53:11.749767-05	4	19	14	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed subtitle, tags, teaser, description and rating_text.
847	2012-01-30 16:54:03.413344-05	4	19	14	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name and tags.
848	2012-01-30 16:55:19.230451-05	4	19	14	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags and description.
849	2012-01-30 16:56:17.687153-05	4	19	15	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and rating_text.
850	2012-01-30 16:58:20.642735-05	4	19	15	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed subtitle, tags, teaser and description.
851	2012-01-30 16:58:42.96911-05	4	19	15	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed subtitle and tags.
852	2012-01-30 16:59:56.553825-05	4	19	15	Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and description.
853	2012-01-30 17:26:17.06371-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed subtitle and tags.
854	2012-01-30 19:45:11.538495-05	4	16	3	Aside from a few basics, Nitro comes up short (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags and description.
855	2012-01-30 19:53:58.052061-05	4	16	3	Nitro comes up short on PDF conversion (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed name, subtitle, tags, teaser, community_text, documentation_text, performance_text, usability_text and rating_text.
856	2012-01-30 19:59:01.580874-05	4	16	3	Nitro comes up short on PDF conversion (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags.
857	2012-01-30 20:06:32.964924-05	4	16	3	Nitro comes up short on PDF conversion (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags.
858	2012-01-30 20:07:09.843779-05	4	16	3	Nitro comes up short on PDF conversion (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed subtitle and tags.
859	2012-01-30 20:10:59.973868-05	4	16	3	Nitro comes up short on PDF conversion (Review of: Nitro Pro (http://www.nitropdf.com/))	2	Changed tags, description and community_text.
860	2012-01-30 20:12:44.095717-05	4	19	16	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed subtitle, tags and rating_text.
861	2012-01-30 20:17:28.122218-05	4	19	16	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
862	2012-01-30 20:17:52.975339-05	4	19	16	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags, teaser and description.
863	2012-01-30 20:19:36.588604-05	4	19	16	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
864	2012-01-30 20:20:43.413634-05	4	19	17	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and rating_text.
865	2012-01-30 20:20:59.261975-05	4	19	17	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
866	2012-01-30 20:28:48.980781-05	4	19	18	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed subtitle, tags, teaser, description and rating_text.
867	2012-01-30 20:30:01.012084-05	4	19	18	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
868	2012-01-30 20:40:57.170245-05	4	19	18	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
869	2012-01-30 20:42:13.416809-05	4	19	18	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and description.
870	2012-01-30 20:51:21.331632-05	4	19	21	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed subtitle, tags, teaser and description.
871	2012-01-30 20:52:31.60166-05	4	19	21	Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags, description and rating_text.
872	2012-01-30 21:15:28.387806-05	4	16	4	Cometdocs decent option for quick, easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed name, tags, description, community_text, documentation_text, performance_text and usability_text.
873	2012-01-30 21:16:46.394319-05	4	16	4	Cometdocs decent option for quick, easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and teaser.
874	2012-01-30 21:17:45.19387-05	4	16	4	Cometdocs decent option for quick, easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags, performance_text and rating_text.
875	2012-01-30 21:18:34.84512-05	4	16	4	Cometdocs a decent option for quick, easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed name and tags.
876	2012-01-30 21:20:58.855738-05	4	16	4	Cometdocs a decent option for quick, easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags and description.
877	2012-01-30 21:21:48.850176-05	4	16	4	Cometdocs a decent option for quick, easy solution (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed tags, community_text, documentation_text and performance_text.
878	2012-01-30 21:22:22.702683-05	4	16	4	Cometdocs a decent option for quick, simple conversion (Review of: Cometdocs (http://www.cometdocs.com/))	2	Changed name and tags.
879	2012-01-30 21:37:49.913905-05	4	19	22	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed subtitle, tags, teaser, description and rating_text.
880	2012-01-30 21:38:22.037566-05	4	19	22	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags and rating_text.
881	2012-01-30 21:39:07.592605-05	4	19	22	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
882	2012-01-30 21:39:50.648276-05	4	19	22	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
883	2012-01-30 21:40:54.078109-05	4	19	23	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags and rating_text.
884	2012-01-30 21:42:06.956598-05	4	19	23	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
885	2012-01-30 21:42:44.852271-05	4	19	23	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and description.
886	2012-01-30 21:43:22.963445-05	4	19	23	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
887	2012-01-30 21:43:48.467427-05	4	19	23	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and teaser.
888	2012-01-30 21:58:01.511238-05	4	19	24	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
889	2012-01-31 11:25:35.585494-05	4	19	24	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, description and rating_text.
890	2012-01-31 11:35:31.659003-05	4	19	24	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
891	2012-01-31 11:39:36.7559-05	4	19	24	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed name and tags.
892	2012-01-31 11:40:32.442557-05	4	19	24	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
893	2012-01-31 11:54:37.978212-05	4	19	25	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed subtitle, tags, teaser and description.
894	2012-01-31 11:55:17.680814-05	4	19	25	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed name and tags.
895	2012-01-31 11:56:08.774807-05	4	19	25	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and rating_text.
896	2012-01-31 11:56:51.454134-05	4	19	25	Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
897	2012-01-31 12:01:06.894332-05	4	19	26	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, tags, description, rating and rating_text.
898	2012-01-31 12:01:48.063525-05	4	19	26	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name and tags.
899	2012-01-31 12:01:58.892592-05	4	19	26	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and teaser.
900	2012-01-31 12:02:26.727463-05	4	19	26	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
901	2012-01-31 12:02:50.823725-05	4	17	7	ABBYY FineReader (http://finereader.abbyy.com/)	2	Changed tags and cost. Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))".
902	2012-01-31 12:03:21.060987-05	4	17	7	ABBYY FineReader (http://finereader.abbyy.com/)	2	Changed tags and cost. Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "ABBYY FineReader a solid option for creating searchable data (Review of: ABBYY FineReader (http://finereader.abbyy.com/))".
903	2012-01-31 12:41:33.982651-05	4	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and description.
904	2012-01-31 12:43:01.051818-05	4	16	5	Able2Extract PDF Converter 7 is a great tool for data journalism (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags, teaser, community_text, performance_text, usability_text and rating_text.
905	2012-01-31 12:45:01.693468-05	4	16	5	Able2Extract an adaptable, effective choice for capturing tabular PDF data (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed name, subtitle and tags.
906	2012-01-31 12:45:17.27761-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed name and tags.
907	2012-01-31 12:45:38.235044-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed subtitle and tags.
908	2012-01-31 12:46:56.458564-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags.
909	2012-01-31 12:50:01.805259-05	4	19	27	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and description.
910	2012-01-31 12:51:11.9791-05	4	19	27	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser, description, rating and rating_text.
911	2012-01-31 12:52:44.687917-05	4	19	27	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed name, subtitle and tags.
912	2012-01-31 12:53:07.970915-05	4	19	27	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
913	2012-01-31 13:00:10.230317-05	4	19	28	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, tags, teaser, description and rating_text.
914	2012-01-31 13:07:30.640016-05	4	19	29	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, teaser, description, rating and rating_text.
915	2012-01-31 13:07:57.948813-05	4	19	29	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed subtitle and tags.
916	2012-01-31 13:08:15.73774-05	4	19	29	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and rating_text.
917	2012-01-31 13:08:51.782277-05	4	19	29	Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and description.
918	2012-01-31 14:03:31.380317-05	4	16	6	ABBYY FineReader a solid option for recognizing text in PDFs (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed name, subtitle, tags, teaser, description, community_text, documentation_text, performance_text, usability_text, rating and rating_text.
919	2012-01-31 14:06:09.29398-05	4	16	6	ABBYY FineReader a solid option for recognizing text in PDFs (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags.
920	2012-01-31 14:06:50.593641-05	4	16	6	ABBYY FineReader a solid option for recognizing text in PDFs (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags and description.
921	2012-01-31 14:08:06.332759-05	4	16	6	ABBYY FineReader a solid option for recognizing text in PDFs (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags.
922	2012-01-31 14:10:56.635133-05	4	16	6	ABBYY FineReader a solid option for recognizing text in PDFs (Review of: ABBYY FineReader (http://finereader.abbyy.com/))	2	Changed tags and description.
923	2012-01-31 17:31:10.222147-05	4	19	31	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, tags, teaser, description and rating_text.
924	2012-01-31 17:31:27.21925-05	4	19	31	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
925	2012-01-31 17:32:01.175275-05	4	19	31	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and rating_text.
926	2012-01-31 17:45:50.090054-05	4	19	32	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed subtitle, tags, description and rating_text.
927	2012-01-31 17:48:41.093729-05	4	19	32	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags.
928	2012-01-31 17:51:37.754755-05	4	19	33	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed name, tags and description.
929	2012-01-31 17:51:56.626938-05	4	19	32	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
930	2012-01-31 17:57:15.210912-05	4	19	33	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, teaser, description and rating_text.
931	2012-01-31 17:58:18.353885-05	4	19	33	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags.
932	2012-01-31 17:59:06.741159-05	4	19	34	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and rating_text.
933	2012-01-31 17:59:17.838877-05	4	19	34	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
934	2012-01-31 18:02:03.256223-05	4	16	7	PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags, community_text, documentation_text, performance_text, usability_text and rating_text.
935	2012-01-31 18:02:07.342891-05	4	16	7	PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags.
1024	2012-02-07 10:43:53.023791-05	3	16	9	Able2Extract easily reads typed transcripts (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	1	
936	2012-01-31 18:06:07.443849-05	4	19	30	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags, teaser and description.
937	2012-01-31 18:08:08.991002-05	4	19	30	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and description.
938	2012-01-31 18:08:43.258294-05	4	19	30	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed tags and published.
939	2012-01-31 18:12:58.9921-05	4	19	35	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags, teaser and description.
940	2012-01-31 18:14:33.644516-05	4	19	35	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags and rating_text.
941	2012-01-31 18:14:43.610945-05	4	19	35	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
942	2012-01-31 18:14:53.839951-05	4	19	35	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed published.
943	2012-01-31 18:16:27.842893-05	4	19	35	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations	2	Changed tags.
944	2012-01-31 18:21:32.729466-05	4	19	36	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed name, subtitle, tags, teaser, description, rating and rating_text.
945	2012-01-31 18:23:13.302275-05	4	19	36	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags.
946	2012-01-31 18:23:55.549154-05	4	19	36	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers	2	Changed tags and published.
947	2012-01-31 18:33:30.504305-05	4	19	37	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, teaser and description.
948	2012-01-31 18:36:08.877938-05	4	19	37	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors	2	Changed tags, published, teaser and description.
949	2012-01-31 18:42:03.57601-05	4	19	38	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional re	2	Changed subtitle, tags, teaser, description and rating_text.
950	2012-01-31 18:42:16.099435-05	4	19	38	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional re	2	Changed tags and teaser.
951	2012-01-31 18:42:22.754567-05	4	19	38	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional re	2	Changed tags and description.
952	2012-01-31 18:43:12.806181-05	4	19	38	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional re	2	Changed tags, teaser and description.
953	2012-01-31 18:43:21.968966-05	4	19	38	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional re	2	Changed tags.
954	2012-01-31 18:43:28.140163-05	4	19	38	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional re	2	Changed published.
955	2012-01-31 18:43:59.600379-05	4	19	39	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inte	2	Changed tags and rating_text.
956	2012-01-31 18:45:19.677384-05	4	19	39	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inte	2	Changed tags.
957	2012-01-31 18:46:37.884788-05	4	19	39	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic inte	2	Changed tags, published and description.
958	2012-01-31 18:48:41.231568-05	4	19	40	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser, description and rating_text.
959	2012-01-31 18:49:11.780817-05	4	19	40	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and published.
960	2012-01-31 18:50:52.491892-05	4	19	41	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, tags and description.
961	2012-01-31 18:51:11.040989-05	4	19	41	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed subtitle and tags.
962	2012-01-31 18:51:48.547725-05	4	19	41	Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and published.
963	2012-01-31 18:58:28.894028-05	4	16	8	Acrobat decent for tackling PDFs, OCR but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed name, tags, teaser, description, community_text, documentation_text and performance_text.
964	2012-01-31 19:02:10.223122-05	4	16	8	Acrobat decent for tackling PDFs, OCR but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and description.
965	2012-01-31 19:03:49.460196-05	4	16	8	Acrobat decent for tackling PDFs, OCR but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))	2	Changed tags and published.
966	2012-01-31 19:06:43.063928-05	4	17	2	Outwit Hub (http://www.outwit.com/)	2	Changed tags and teaser. Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))".
967	2012-01-31 19:07:23.611793-05	4	17	2	Outwit Hub (http://www.outwit.com/)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))".
968	2012-01-31 19:07:44.579614-05	4	17	2	Outwit Hub (http://www.outwit.com/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Outwit Hub (http://www.outwit.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))".
969	2012-01-31 19:08:47.012818-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Review "Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))".
970	2012-01-31 19:10:35.797302-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags, description and obsolete. Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Review "Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))".
971	2012-01-31 19:11:16.239367-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Review "Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))".
972	2012-01-31 19:11:30.089957-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags. Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Review "Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))".
1025	2012-02-07 10:44:23.452924-05	3	16	9	Able2Extract easily reads typed transcripts (Review of: Able2Extract PDF Converter (http://www.investintech.com/))	2	Changed tags and rating.
1085	2012-02-09 13:56:18.201518-05	4	18	17	Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags, description and difficulty_text.
1087	2012-02-09 13:57:48.938861-05	4	18	17	Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags, published and description.
973	2012-01-31 19:12:08.613404-05	4	17	4	Nitro Pro (http://www.nitropdf.com/)	2	Changed tags. Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Nitro Pro (http://www.nitropdf.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Nitro comes up short on PDF conversion (Review of: Nitro Pro (http://www.nitropdf.com/))".
974	2012-01-31 19:13:13.576118-05	4	17	6	Cometdocs (http://www.cometdocs.com/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Cometdocs (http://www.cometdocs.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "Cometdocs a decent option for quick, simple conversion (Review of: Cometdocs (http://www.cometdocs.com/))".
975	2012-01-31 19:14:27.440055-05	4	17	7	ABBYY FineReader (http://finereader.abbyy.com/)	2	Changed tags, description and cost. Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of ABBYY FineReader (http://finereader.abbyy.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "ABBYY FineReader a solid option for recognizing text in PDFs (Review of: ABBYY FineReader (http://finereader.abbyy.com/))".
976	2012-01-31 19:15:49.106261-05	4	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed tags, teaser, description and categories. Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Review "Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
977	2012-01-31 19:16:51.841303-05	4	19	32	Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments	2	Changed name and tags.
978	2012-01-31 19:17:17.159449-05	4	17	8	Able2Extract PDF Converter (http://www.investintech.com/)	2	Changed tags. Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Able2Extract PDF Converter (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Review "Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract PDF Converter (http://www.investintech.com/))".
979	2012-01-31 19:17:58.772055-05	4	17	9	Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed tags and description. Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Acrobat decent for tackling PDFs, OCR but cheaper choices abound (Review of: Adobe Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))".
980	2012-01-31 19:19:07.278027-05	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
1052	2012-02-07 16:56:31.888876-05	3	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags.
1086	2012-02-09 13:56:31.12237-05	4	18	17	Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags and teaser.
981	2012-01-31 19:19:39.222717-05	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed tags. Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
982	2012-01-31 19:20:13.209791-05	4	17	11	OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm)	2	Changed tags. Changed tags for Test Result "Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments".
983	2012-02-01 17:41:04.224814-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags and description.
984	2012-02-01 17:45:54.181758-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags and description.
985	2012-02-01 17:49:08.431905-05	4	16	1	Outwit OK for basic scraping, but struggles with complexity (Review of: Outwit Hub (http://www.outwit.com/))	2	Changed tags.
986	2012-02-02 12:59:33.332934-05	4	20	15	Deepwater Horizon correspondence	1	
987	2012-02-02 12:59:42.482457-05	4	20	15	Deepwater Horizon correspondence	2	Changed tags and published.
988	2012-02-02 13:00:08.965417-05	4	20	15	Deepwater Horizon correspondence	2	Changed tags, teaser and description.
989	2012-02-02 13:40:33.330554-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	1	
990	2012-02-02 13:40:52.87102-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
991	2012-02-02 13:44:23.257685-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and teaser.
992	2012-02-02 13:45:53.618736-05	4	20	15	Deepwater Horizon correspondence	2	Changed tags, teaser and description.
993	2012-02-02 13:54:05.999607-05	4	18	17	Test: Use entity extraction on mixed-quality memos, For Document: Your Seat at the Table	1	
994	2012-02-02 16:24:57.252697-05	4	21	6	Entity extraction	1	
995	2012-02-03 21:12:57.102641-05	1	27	1	/how-we-rate/ -- How We Rate	1	
996	2012-02-03 21:13:39.810501-05	1	27	1	/how-we-rate/ -- How We Rate	2	Changed content.
997	2012-02-06 11:56:32.187121-05	4	21	2	Scrapers	2	Changed name, tags and teaser.
998	2012-02-06 11:57:13.682035-05	4	21	3	PDF tools	2	Changed tags, teaser and description.
999	2012-02-06 11:57:13.921429-05	4	21	3	PDF tools	2	Changed tags.
1000	2012-02-06 11:57:28.512219-05	4	21	2	Scrapers	2	Changed tags and teaser.
1001	2012-02-06 11:57:35.086887-05	4	21	2	Scrapers	2	Changed tags and description.
1002	2012-02-06 11:57:50.507338-05	4	21	4	OCR	2	Changed tags and teaser.
1003	2012-02-06 11:59:32.427811-05	4	21	5	Project/document management	2	Changed name, tags, teaser and description.
1004	2012-02-06 11:59:43.994157-05	4	21	6	Entity extraction	2	Changed tags.
1005	2012-02-06 12:01:52.435404-05	4	21	7	Speech recognition	1	
1006	2012-02-06 12:01:55.584527-05	4	21	7	Speech recognition	2	Changed published.
1007	2012-02-06 12:32:37.525457-05	4	17	12	Dragon (http://www.nuance.com/)	1	
1008	2012-02-06 12:33:03.894229-05	4	17	9	Acrobat Pro (http://www.adobe.com/products/acrobatpro.html)	2	Changed name and tags. Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Acrobat Pro (http://www.adobe.com/products/acrobatpro.html) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "Acrobat decent for tackling PDFs, OCR but cheaper choices abound (Review of: Acrobat Pro (http://www.adobe.com/products/acrobatpro.html))".
1009	2012-02-06 13:06:42.27773-05	4	17	13	GATE (http://gate.ac.uk/)	1	
1010	2012-02-06 13:07:05.153328-05	4	17	13	GATE (http://gate.ac.uk/)	2	Changed tags and published.
1011	2012-02-06 13:52:08.436755-05	4	17	14	TimeFlow (http://reporterslab.org/timeflow/)	1	
1012	2012-02-06 13:56:24.859842-05	4	17	14	TimeFlow (http://reporterslab.org/timeflow/)	2	Changed tags and published.
1013	2012-02-06 14:11:07.003901-05	4	17	15	Basecamp (http://basecamphq.com/)	1	
1014	2012-02-06 14:14:12.201355-05	4	17	15	Basecamp (http://basecamphq.com/)	2	Changed tags, teaser and description.
1015	2012-02-06 14:14:43.28908-05	4	17	15	Basecamp (http://basecamphq.com/)	2	Changed tags and published.
1016	2012-02-06 14:30:41.918064-05	4	17	16	OpenNLP (http://incubator.apache.org/opennlp/)	1	
1017	2012-02-06 14:31:10.422365-05	4	17	16	OpenNLP (http://incubator.apache.org/opennlp/)	2	Changed tags and published.
1018	2012-02-06 15:23:57.793531-05	4	17	17	Mendeley (http://www.mendeley.com/)	1	
1019	2012-02-06 15:24:20.324174-05	4	17	17	Mendeley (http://www.mendeley.com/)	2	Changed tags and published.
1020	2012-02-06 17:04:42.879353-05	4	17	18	Scrivener (http://www.literatureandlatte.com/scrivener.php)	1	
1021	2012-02-06 17:06:01.516773-05	4	17	18	Scrivener (http://www.literatureandlatte.com/scrivener.php)	2	Changed tags and published.
1022	2012-02-06 18:08:19.40875-05	4	17	19	DEVONthink Pro (http://www.devontechnologies.com/products/devonthink/overview.html)	1	
1023	2012-02-06 18:09:12.527978-05	4	17	19	DEVONthink Pro (http://www.devontechnologies.com/products/devonthink/overview.html)	2	Changed tags, published and description.
1026	2012-02-07 10:50:12.816609-05	3	17	8	Able2Extract Professional (http://www.investintech.com/)	2	Changed name, tags, teaser, description, cost and categories. Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Review "Able2Extract easily reads typed transcripts (Review of: Able2Extract Professional (http://www.investintech.com/))". Changed tags for Review "Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))".
1027	2012-02-07 10:57:53.474227-05	3	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags, description, version_tested and performance_text.
1028	2012-02-07 10:58:11.970029-05	3	16	9	Able2Extract easily reads typed transcripts (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags, teaser and description.
1029	2012-02-07 11:05:20.61543-05	3	19	46	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	1	
1030	2012-02-07 11:17:13.781775-05	3	19	47	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	1	
1031	2012-02-07 12:01:58.580075-05	3	19	48	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	1	
1032	2012-02-07 12:04:56.283353-05	3	19	48	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and description.
1033	2012-02-07 12:56:28.36242-05	3	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	1	
1034	2012-02-07 13:00:10.080202-05	3	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, teaser and description.
1035	2012-02-07 13:01:25.766167-05	3	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
1036	2012-02-07 15:41:14.46713-05	4	19	46	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed subtitle, editor, tags, review_done, teaser and description.
1037	2012-02-07 15:43:30.064926-05	4	19	46	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, published, description, rating_text and version_tested.
1038	2012-02-07 15:54:08.804387-05	4	19	47	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, subtitle, editor, tags, review_done, teaser, description and rating_text.
1039	2012-02-07 15:54:25.654056-05	4	19	47	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and published.
1040	2012-02-07 15:57:05.681261-05	4	19	48	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed subtitle, editor, tags, review_done, published, teaser, description and rating_text.
1041	2012-02-07 15:57:53.988932-05	4	19	48	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
1042	2012-02-07 16:06:16.452765-05	4	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, subtitle, editor, tags, review_done and description.
1043	2012-02-07 16:14:59.296414-05	4	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, teaser, description and rating_text.
1044	2012-02-07 16:15:26.986348-05	4	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed subtitle and tags.
1045	2012-02-07 16:18:16.226358-05	4	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and rating_text.
1046	2012-02-07 16:23:30.783846-05	4	16	9	Able2Extract easily reads typed transcripts (Review of: Able2Extract Professional (http://www.investintech.com/))	3	
1047	2012-02-07 16:25:15.267751-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags and description.
1048	2012-02-07 16:37:05.458054-05	3	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags and description.
1049	2012-02-07 16:43:19.667597-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags.
1050	2012-02-07 16:54:11.875854-05	3	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and description.
1051	2012-02-07 16:55:36.055155-05	3	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags and description.
1054	2012-02-07 17:00:23.143675-05	4	17	8	Able2Extract Professional (http://www.investintech.com/)	2	Changed tags and teaser. Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Review "Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))".
1055	2012-02-07 17:00:58.902634-05	4	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, published, teaser and description.
1056	2012-02-07 17:02:22.599227-05	4	19	49	Test Results of Able2Extract Professional (http://www.investintech.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
1057	2012-02-07 17:09:55.041766-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags and description.
1058	2012-02-07 17:14:40.035485-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data; OCR OK (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed name, subtitle, tags, teaser and description.
1059	2012-02-07 17:15:46.74386-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data; OCR OK (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed subtitle, tags, performance_text and rating_text.
1060	2012-02-07 17:18:52.989302-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data; OCR OK (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags.
1061	2012-02-07 17:32:21.346621-05	4	16	5	Able2Extract a top pick for capturing tabular PDF data; OCR OK (Review of: Able2Extract Professional (http://www.investintech.com/))	2	Changed tags.
1062	2012-02-08 12:47:04.432098-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1063	2012-02-08 12:47:27.146021-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1064	2012-02-08 12:49:42.752211-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1065	2012-02-08 12:50:33.57194-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
1066	2012-02-08 12:51:45.635752-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
1067	2012-02-08 12:55:36.71674-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1068	2012-02-08 13:02:28.055041-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
1069	2012-02-08 13:06:10.838818-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1070	2012-02-08 13:08:38.107122-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1071	2012-02-08 13:10:35.910387-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1072	2012-02-08 13:12:55.703817-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
1073	2012-02-08 13:21:51.211216-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1074	2012-02-08 13:22:23.234348-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
1075	2012-02-08 13:51:00.745678-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags.
1076	2012-02-08 13:52:27.065124-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags, description, difficulty and difficulty_text.
1077	2012-02-08 13:52:57.279245-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags, published, teaser and description.
1078	2012-02-08 14:07:54.105783-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags, teaser and description.
1079	2012-02-08 14:21:03.42865-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1080	2012-02-08 14:32:07.506254-05	4	18	16	Test: Use entity extraction on emails from FOIA request, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1081	2012-02-09 13:42:24.037522-05	4	18	17	Test: Use entity extraction on mixed-quality memos, For Document: Your Seat at the Table	2	Changed tags, description and difficulty.
1082	2012-02-09 13:44:11.75605-05	4	18	17	Test: Use entity extraction on mixed-quality memos, For Document: Your Seat at the Table	2	Changed tags and description.
1083	2012-02-09 13:55:22.053116-05	4	18	17	Test: Use entity extraction on mixed-quality memos, For Document: Your Seat at the Table	2	Changed tags and description.
1084	2012-02-09 13:55:37.785536-05	4	18	17	Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed name and tags.
1088	2012-02-09 13:58:02.723782-05	4	18	16	Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed name and tags.
1089	2012-02-09 13:58:10.687937-05	4	18	16	Test: Use entity extraction to capture names from FOIA request documents, For Document: Deepwater Horizon correspondence	2	Changed name and tags.
1090	2012-02-09 13:58:21.856768-05	4	18	16	Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed name and tags.
1091	2012-02-09 13:58:32.210702-05	4	18	16	Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags.
1092	2012-02-10 10:26:23.123849-05	7	17	20	DocumentCloud (http://www.documentcloud.org/)	1	
1093	2012-02-10 10:28:41.956622-05	7	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	1	
1094	2012-02-10 10:45:50.646951-05	7	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags, review_done, description, rating, rating_text, version_tested and os_used.
1095	2012-02-10 11:17:02.123075-05	7	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	1	
1096	2012-02-10 11:56:53.049378-05	7	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	1	
1097	2012-02-10 12:36:33.121679-05	7	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	1	
1098	2012-02-10 12:36:48.649061-05	7	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and os_used.
1099	2012-02-10 12:36:59.112218-05	7	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and os_used.
1100	2012-02-10 12:37:08.433158-05	7	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and os_used.
1101	2012-02-10 12:37:16.596701-05	7	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and os_used.
1102	2012-02-10 17:21:36.865986-05	2	20	8	House disbersement accounts	2	Changed name and tags.
1103	2012-02-15 15:53:42.324149-05	4	19	54	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make partial text PDF completely searchable, For Documen	1	
1104	2012-02-15 16:14:36.525003-05	4	19	54	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make partial text PDF completely searchable, For Documen	2	Changed subtitle, tags, teaser, description and rating_text.
1105	2012-02-15 16:14:47.358029-05	4	19	54	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make partial text PDF completely searchable, For Documen	2	Changed subtitle and tags.
1106	2012-02-15 16:15:39.962301-05	4	19	54	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make partial text PDF completely searchable, For Documen	2	Changed tags.
1107	2012-02-16 17:38:53.664681-05	7	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	1	
1108	2012-02-16 20:15:56.653911-05	7	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags and rating.
1109	2012-02-16 20:17:59.902782-05	7	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1110	2012-02-16 20:31:15.145253-05	7	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	1	
1111	2012-02-16 20:43:52.507535-05	7	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags and description.
1112	2012-02-16 20:48:37.787311-05	7	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed name, subtitle, tags, description and rating_text.
1113	2012-02-16 22:08:55.869164-05	7	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed name and tags.
1114	2012-02-16 23:07:28.099926-05	7	16	10	DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))	1	
1115	2012-02-16 23:08:48.126566-05	7	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and description.
1116	2012-02-16 23:09:49.045678-05	7	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed subtitle and tags.
1117	2012-02-16 23:14:10.044185-05	7	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and description.
1155	2012-02-29 12:49:56.1005-05	4	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed editor, tags and description.
1158	2012-02-29 13:34:46.341856-05	4	16	10	DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags, review_done, description and version_tested.
1160	2012-02-29 13:39:42.074087-05	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags.
1118	2012-02-21 10:59:23.231307-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags, teaser, description and categories. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1119	2012-02-21 12:12:46.929152-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags, teaser, description, company, release_date and operating_systems. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1120	2012-02-21 12:36:49.457465-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1121	2012-02-21 12:37:36.132246-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags and description. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1122	2012-02-21 12:38:35.733255-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags and description. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1156	2012-02-29 12:53:09.399692-05	4	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags.
1161	2012-02-29 13:50:26.165577-05	4	20	8	House disbursement accounts	2	Changed name and tags.
1123	2012-02-21 12:40:47.412592-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags and published. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1124	2012-02-21 14:00:48.530329-05	1	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1125	2012-02-21 14:02:32.081632-05	1	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1126	2012-02-21 14:04:51.923382-05	1	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1127	2012-02-24 14:18:42.836465-05	4	17	3	Needlebase (http://www.needlebase.com/)	2	Changed tags and categories. Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Needlebase (http://www.needlebase.com/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Review "Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))".
1157	2012-02-29 13:03:50.843081-05	4	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags and description.
1159	2012-02-29 13:39:29.598152-05	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed name, subtitle, editor, tags, teaser, description, community_text, documentation_text, performance_text, usability_text and rating_text.
1162	2012-03-07 11:35:37.714307-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed subtitle, tags, teaser, description and rating_text.
1196	2012-03-16 12:58:56.084441-04	6	16	11	Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1128	2012-02-24 14:18:52.708263-05	4	17	20	DocumentCloud (http://www.documentcloud.org/)	2	Changed tags. Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "DocumentCloud offers useful but flawed features (Review of: DocumentCloud (http://www.documentcloud.org/))".
1129	2012-02-24 14:26:27.835629-05	1	21	4	OCR	2	Changed tags.
1130	2012-02-27 13:24:31.354085-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags and description.
1131	2012-02-27 13:24:43.018387-05	4	16	2	Needlebase effective, expensive scraping solution (Review of: Needlebase (http://www.needlebase.com/))	2	Changed tags.
1132	2012-02-28 15:44:16.447925-05	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, editor, tags, teaser and description.
1133	2012-02-28 15:46:37.969246-05	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, tags, teaser and description.
1134	2012-02-28 15:48:26.285289-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed editor, tags, description and version_tested.
1135	2012-02-28 15:49:42.920368-05	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed subtitle and tags.
1136	2012-02-28 16:13:25.034523-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed name, subtitle, tags, description and rating_text.
1137	2012-02-28 16:15:01.710255-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
1138	2012-02-28 18:23:19.217617-05	2	20	16	NC Stars site	1	
1139	2012-02-29 11:49:00.859331-05	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and description.
1140	2012-02-29 11:49:45.713588-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and description.
1141	2012-02-29 11:51:06.646319-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed name, subtitle and tags.
1142	2012-02-29 11:53:30.074413-05	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser and description.
1143	2012-02-29 12:06:49.257233-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, description and rating_text.
1144	2012-02-29 12:07:25.919062-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, teaser, description and version_tested.
1145	2012-02-29 12:07:53.337111-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed name and tags.
1146	2012-02-29 12:07:57.966209-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed editor and tags.
1147	2012-02-29 12:08:16.768196-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
1148	2012-02-29 12:08:41.650098-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and description.
1149	2012-02-29 12:09:18.575622-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, teaser and description.
1150	2012-02-29 12:11:00.0912-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed subtitle and tags.
1151	2012-02-29 12:11:44.806291-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
1152	2012-02-29 12:16:59.753045-05	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed editor, tags, description and version_tested.
1153	2012-02-29 12:17:15.946406-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
1154	2012-02-29 12:34:04.014934-05	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, subtitle, tags, teaser, description and rating_text.
1163	2012-03-07 11:38:16.225846-05	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, description and rating.
1164	2012-03-07 11:41:12.976593-05	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
1165	2012-03-07 11:45:36.492192-05	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and description.
1166	2012-03-07 12:03:09.589782-05	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
1167	2012-03-07 16:22:05.528514-05	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags and description.
1168	2012-03-12 09:35:48.050374-04	6	17	21	Evernote (http://evernote.com/)	1	
1169	2012-03-12 10:04:37.567891-04	6	16	11	Evernote a Solid Option for Reporting  (Review of: Evernote (http://evernote.com/))	1	
1170	2012-03-12 10:12:52.002669-04	6	16	11	Evernote a Solid Option for Reporting  (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1171	2012-03-12 10:32:43.986475-04	6	16	11	Evernote a Solid Option for Reporting  (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1172	2012-03-12 10:57:19.58604-04	6	16	11	Evernote a Solid Option for Reporting  (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1173	2012-03-12 12:01:39.757831-04	6	16	11	Evernote a Solid Option for Reporting  (Review of: Evernote (http://evernote.com/))	2	Changed tags, description, version_tested, os_used, community, community_text, performance, usability and usability_text.
1174	2012-03-12 12:08:12.761639-04	6	16	11	Evernote a Solid Option for Reporting  (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1175	2012-03-12 12:29:01.040889-04	6	16	11	Evernote a Solid Option for Reporting on the Go (Review of: Evernote (http://evernote.com/))	2	Changed name, tags, teaser, description, performance, performance_text, rating and rating_text.
1176	2012-03-12 14:33:20.955991-04	6	16	11	Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))	2	Changed name, tags, teaser, description, community_text, documentation, documentation_text and performance_text.
1177	2012-03-12 14:34:12.99442-04	6	16	11	Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1178	2012-03-12 14:58:26.152862-04	4	19	57	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legis	1	
1179	2012-03-12 15:08:13.686064-04	4	19	57	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legis	2	Changed tags and description.
1180	2012-03-12 15:14:51.833782-04	4	19	57	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legis	2	Changed tags and description.
1181	2012-03-12 16:55:51.828791-04	4	19	58	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combata	1	
1182	2012-03-12 16:56:40.3166-04	4	19	58	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combata	2	Changed tags.
1183	2012-03-13 11:08:39.395832-04	4	17	21	Evernote (http://evernote.com/)	2	Changed tags, teaser and description. Changed tags for Review "Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))".
1184	2012-03-13 13:30:06.517166-04	4	16	11	Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))	2	Changed editor, tags, review_done, description and os_used.
1185	2012-03-13 16:24:02.125579-04	4	19	59	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Sea	1	
1186	2012-03-13 16:30:27.90522-04	4	19	59	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Sea	2	Changed name, tags and description.
1187	2012-03-13 17:26:19.132107-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	1	
1188	2012-03-13 17:37:04.321281-04	4	19	44	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madof	2	Changed tags, teaser and description.
1189	2012-03-13 18:02:12.052816-04	4	19	57	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legis	2	Changed tags and description.
1190	2012-03-13 18:03:39.157039-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags and description.
1191	2012-03-13 18:07:28.646654-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags and description.
1192	2012-03-13 18:18:15.830944-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags and description.
1193	2012-03-13 18:21:52.182555-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags, teaser and description.
1194	2012-03-13 18:25:09.85288-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags, description and usability_text.
1195	2012-03-14 13:05:21.036723-04	6	16	11	Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1197	2012-03-16 13:49:14.584543-04	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	2	Changed tags and description.
1198	2012-03-16 13:59:32.060496-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags and description.
1199	2012-03-16 14:27:01.224814-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags and description.
1200	2012-03-16 14:27:47.494392-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm))	2	Changed tags.
1201	2012-03-16 14:33:09.411129-04	4	19	45	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border	2	Changed tags and description.
1202	2012-03-16 14:36:23.790495-04	4	19	57	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legis	2	Changed tags, teaser, description, rating and rating_text.
1203	2012-03-16 14:46:24.151454-04	4	19	54	Test Results of OmniPage Professional (http://www.nuance.com/for-business/by-product/omnipage/professional/index.htm) for Test Test: Use OCR to make partial text PDF completely searchable, For Documen	2	Changed name, tags, teaser and description.
1204	2012-03-16 14:59:09.441804-04	4	16	11	Evernote a Solid Option for Organizing Notes and Docs (Review of: Evernote (http://evernote.com/))	2	Changed tags, teaser and description.
1205	2012-03-16 15:08:07.265896-04	4	16	11	Evernote a solid option for organizing notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed name, tags, community_text, documentation and documentation_text.
1206	2012-03-16 15:09:37.546099-04	4	16	11	Evernote a solid option for organizing notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed tags, performance_text, usability_text and rating_text.
1207	2012-03-16 15:17:45.904005-04	4	16	11	Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed name, subtitle, tags and documentation.
1208	2012-03-16 15:20:29.044436-04	4	16	11	Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1209	2012-03-16 15:21:45.113722-04	4	16	11	Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed tags and description.
1210	2012-03-16 15:24:22.854564-04	4	16	11	Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed tags, documentation_text and usability_text.
1211	2012-03-16 15:25:25.867776-04	4	17	21	Evernote (http://evernote.com/)	2	Changed tags, teaser and operating_systems. Changed tags for Review "Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))".
1212	2012-03-16 15:25:43.21372-04	4	17	21	Evernote (http://evernote.com/)	2	Changed tags and published. Changed tags for Review "Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))".
1213	2012-03-16 15:28:33.153064-04	4	16	11	Evernote a solid option for organizing story-related notes, documents (Review of: Evernote (http://evernote.com/))	2	Changed tags and published.
1214	2012-03-19 11:43:00.160702-04	4	17	11	OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600)	2	Changed name, url, tags, teaser, description and cost. Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Review "OmniPage can tackle tougher documents - for a price (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))".
1215	2012-03-19 11:53:41.783259-04	4	16	12	OmniPage can tackle tougher documents - for a price (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed tags, description, documentation, performance, usability and rating_text.
1216	2012-03-19 11:56:26.474453-04	4	19	42	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For D	2	Changed tags.
1217	2012-03-19 11:57:56.610949-04	4	19	43	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF generated from database into spreadsheet, For Docum	2	Changed subtitle and tags.
1218	2012-03-19 11:58:51.224573-04	4	19	44	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: M	2	Changed tags.
1219	2012-03-19 11:59:32.225671-04	4	19	45	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Bo	2	Changed subtitle and tags.
1220	2012-03-19 12:00:27.296705-04	4	19	45	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Bo	2	Changed tags.
1221	2012-03-19 12:01:48.834462-04	4	19	54	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make partial text PDF completely searchable, For Doc	2	Changed name, tags, rating_text and os_used.
1222	2012-03-19 12:02:45.318689-04	4	19	57	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. l	2	Changed tags.
1223	2012-03-19 12:03:52.950409-04	4	19	58	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make typed transcripts searchable, For Document: Com	2	Changed tags.
1224	2012-03-19 12:04:28.572944-04	4	19	59	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your	2	Changed tags.
1225	2012-03-19 12:06:17.364264-04	4	16	12	OmniPage tackles tougher documents, unlocking text and spreadsheets (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed name, subtitle and tags.
1226	2012-03-19 12:10:14.92579-04	4	16	12	OmniPage tackles tougher documents, unlocking text and spreadsheets (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed tags and description.
1227	2012-03-19 22:34:38.075519-04	7	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1228	2012-03-19 22:40:01.85298-04	7	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags and description.
1229	2012-03-19 23:04:14.623211-04	7	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed subtitle, tags and description.
1230	2012-03-20 11:25:30.065235-04	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags.
1231	2012-03-20 13:53:45.31958-04	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
1232	2012-03-20 13:58:06.571625-04	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
1233	2012-03-20 13:58:44.988127-04	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags.
1234	2012-03-20 16:04:08.857575-04	4	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed editor, tags, description, rating_text and version_tested.
1235	2012-03-20 16:07:39.862473-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags and description.
1236	2012-03-20 16:17:08.656329-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags, description, community_text, performance_text and rating_text.
1237	2012-03-20 16:17:18.882318-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed subtitle and tags.
1238	2012-03-20 16:32:36.412492-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags.
1239	2012-03-21 18:08:58.952461-04	4	16	12	OmniPage tackles tougher documents, unlocking text and spreadsheets (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed tags and description.
1240	2012-03-21 18:10:46.041148-04	4	16	12	OmniPage tackles tougher documents, unlocking text and spreadsheets (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed tags and description.
1241	2012-03-21 18:17:04.616042-04	4	16	12	OmniPage tackles tougher documents, unlocking text and spreadsheets (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed tags and description.
1242	2012-03-22 11:13:56.305605-04	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, tags, teaser and description.
1243	2012-03-22 11:14:47.071605-04	4	19	50	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and published.
1244	2012-03-22 11:15:33.940034-04	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, teaser and description.
1245	2012-03-22 11:16:39.640805-04	4	19	51	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and published.
1246	2012-03-22 11:18:55.354401-04	4	19	52	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags, published and description.
1247	2012-03-22 11:21:01.990894-04	4	19	53	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, published, teaser and description.
1248	2012-03-22 11:22:49.751234-04	4	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags, teaser and description.
1249	2012-03-22 11:25:07.599684-04	4	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed subtitle, tags, rating_text and version_tested.
1250	2012-03-22 11:26:33.570706-04	4	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags and description.
1251	2012-03-22 11:27:06.026242-04	4	19	55	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to capture names from FOIA request docs, For Document: Deepwater Horizon correspondence	2	Changed tags and published.
1252	2012-03-22 11:28:43.500274-04	4	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed subtitle, tags, teaser and description.
1253	2012-03-22 11:29:53.36482-04	4	19	56	Test Results of DocumentCloud (http://www.documentcloud.org/) for Test Test: Use entity extraction to identify organizations in memos, For Document: Your Seat at the Table	2	Changed tags and published.
1254	2012-03-22 11:31:20.622202-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed subtitle and tags.
1255	2012-03-22 11:31:35.166086-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed subtitle and tags.
1256	2012-03-22 11:32:04.912764-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags.
1257	2012-03-22 11:33:31.195247-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags and rating_text.
1258	2012-03-22 11:38:22.708531-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags, description and community_text.
1259	2012-03-22 11:38:50.821536-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags and performance_text.
1260	2012-03-22 11:49:42.354705-04	4	16	10	Despite flaws, DocumentCloud a good start to reporting projects (Review of: DocumentCloud (http://www.documentcloud.org/))	2	Changed tags, published, description and performance_text.
1261	2012-03-22 12:05:47.485151-04	4	17	22	Tesseract (http://code.google.com/p/tesseract-ocr/)	1	
1262	2012-03-22 12:06:22.547504-04	4	17	22	Tesseract (http://code.google.com/p/tesseract-ocr/)	2	Changed tags, teaser and description.
1263	2012-03-22 12:07:38.03326-04	4	17	22	Tesseract (http://code.google.com/p/tesseract-ocr/)	2	Changed tags and description.
1264	2012-03-22 12:08:04.032424-04	4	17	22	Tesseract (http://code.google.com/p/tesseract-ocr/)	2	Changed tags and published.
1265	2012-03-22 12:24:16.81151-04	4	17	23	OpenCalais (http://www.opencalais.com/)	1	
1266	2012-03-22 12:25:08.197851-04	4	17	23	OpenCalais (http://www.opencalais.com/)	2	Changed tags, teaser and description.
1267	2012-03-22 12:27:31.346927-04	4	17	23	OpenCalais (http://www.opencalais.com/)	2	Changed tags, published and release_date.
1268	2012-03-22 12:28:51.705834-04	4	17	10	Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php)	2	Changed tags and teaser. Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF generated from database into spreadsheet, For Document: D.C. housing violations". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Border fence contributors". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For Document: Clinton political appointments". Changed tags for Test Result "Test Results of Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: Madoff customers". Changed tags for Review "PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))".
1269	2012-03-22 12:29:37.695856-04	4	16	7	PDF2XL a versatile tool for small spreadsheet conversions (Review of: Cogniview PDF2XL OCR (http://www.cogniview.com/pdf2xl-ocr.php))	2	Changed tags and rating_text.
1270	2012-03-26 09:20:47.654241-04	4	19	42	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with unlined tables, headings to spreadsheet, For D	2	Changed tags, published, teaser and description.
1271	2012-03-26 09:22:11.254258-04	4	19	43	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF generated from database into spreadsheet, For Docum	2	Changed tags, published and description.
1272	2012-03-26 09:23:20.18589-04	4	19	44	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with lined tables into spreadsheet, For Document: M	2	Changed tags, published and rating_text.
1273	2012-03-26 09:25:22.874191-04	4	19	45	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Convert PDF with embedded font to spreadsheet, For Document: Bo	2	Changed subtitle, tags, published, description and rating_text.
1274	2012-03-26 09:26:21.259053-04	4	19	54	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make partial text PDF completely searchable, For Doc	2	Changed tags and published.
1275	2012-03-26 09:27:43.697842-04	4	19	57	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. l	2	Changed tags, published and teaser.
1276	2012-03-26 09:29:02.129627-04	4	19	58	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make typed transcripts searchable, For Document: Com	2	Changed tags and published.
1277	2012-03-26 09:29:58.388445-04	4	19	59	Test Results of OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your	2	Changed tags, published, teaser and description.
1278	2012-03-26 09:38:15.815447-04	4	16	12	OmniPage tackles tougher documents, unlocking text and spreadsheets (Review of: OmniPage (http://shop.nuance.com/store/nuanceus/ContentTheme/pbPage.imaging-comparison3/ThemeID.23275600))	2	Changed tags and published.
1279	2012-04-17 12:25:28.491636-04	4	21	8	Transcription tools	1	
1280	2012-04-17 12:26:07.252564-04	4	17	18	Scrivener (http://www.literatureandlatte.com/scrivener.php)	2	Changed tags, teaser and categories.
1281	2012-04-17 12:41:54.223552-04	4	17	24	f4/f5 (http://www.audiotranskription.de/english/f4.htm)	1	
1282	2012-04-17 12:42:15.579503-04	4	17	24	f4/f5 (http://www.audiotranskription.de/english/f4.htm)	2	Changed tags and published.
1283	2012-05-16 11:03:02.481156-04	7	17	25	Google Drive (http://drive.google.com/)	1	
1284	2012-05-16 11:04:09.725108-04	7	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	1	
1285	2012-05-16 11:18:10.854725-04	7	19	61	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	1	
1286	2012-05-16 11:58:06.325936-04	7	19	62	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	1	
1287	2012-05-16 12:03:58.222527-04	7	19	63	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	1	
1288	2012-05-17 11:23:44.963689-04	4	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed name, subtitle, editor, tags, description, rating_text and version_tested.
1289	2012-05-17 11:56:36.790625-04	4	19	61	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed name, subtitle, editor, tags, teaser, description and rating_text.
1290	2012-05-17 11:56:51.74-04	4	19	61	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags.
1291	2012-05-17 12:07:18.113652-04	4	19	62	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed name, editor, tags, description and rating_text.
1292	2012-05-17 12:09:25.470804-04	4	19	62	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed subtitle, tags and teaser.
1293	2012-05-17 12:15:36.768115-04	4	19	63	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed subtitle, editor, tags, teaser and description.
1294	2012-05-17 12:15:45.07783-04	4	19	63	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and rating_text.
1295	2012-05-17 12:21:04.845636-04	4	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags, teaser and description.
1296	2012-05-17 13:46:16.671234-04	7	17	25	Google Drive (http://drive.google.com/)	2	Changed tags, description, company, categories, operating_systems and os_availability. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table".
1297	2012-05-17 14:28:43.149056-04	7	16	13	Google Drive shows promise but file-size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	1	
1298	2012-05-17 14:32:49.413591-04	7	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and description.
1299	2012-05-17 14:35:28.419443-04	7	19	61	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and description.
1300	2012-05-18 05:57:49.951788-04	7	19	62	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, description and rating.
1301	2012-05-18 06:06:00.977697-04	7	16	13	Google Drive shows promise but file-size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	2	Changed tags, description and documentation_text.
1302	2012-05-18 10:52:06.471441-04	4	17	25	Google Drive (http://drive.google.com/)	2	Changed tags, teaser, description and categories. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise but file-size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1303	2012-05-18 10:54:24.501071-04	4	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed subtitle, tags, description and rating_text.
1304	2012-05-18 10:56:37.807624-04	4	19	61	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags, description and rating_text.
1305	2012-05-18 10:59:30.586999-04	4	19	62	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags, teaser, description and rating_text.
1306	2012-05-18 10:59:57.987955-04	4	19	63	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags.
1307	2012-05-18 11:27:37.678091-04	4	16	13	Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	2	Changed name, subtitle, editor, tags, description, community_text, documentation_text, performance_text, usability_text and rating_text.
1308	2012-05-18 11:27:48.284079-04	4	16	13	Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	2	Changed tags.
1309	2012-05-18 14:05:06.549978-04	7	17	25	Google Drive (http://drive.google.com/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1310	2012-05-20 20:57:08.719361-04	7	17	25	Google Drive (http://drive.google.com/)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1311	2012-05-21 13:17:09.990798-04	4	17	25	Google Drive (http://drive.google.com/)	2	Changed tags, teaser, description and cost. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1312	2012-05-21 13:18:28.217388-04	4	17	25	Google Drive (http://drive.google.com/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1313	2012-05-21 13:21:11.861272-04	4	17	25	Google Drive (http://drive.google.com/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1314	2012-05-21 13:21:59.516911-04	4	17	25	Google Drive (http://drive.google.com/)	2	Changed tags, published and description. Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts". Changed tags for Test Result "Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table". Changed tags for Review "Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))".
1315	2012-05-21 13:22:36.248199-04	4	16	13	Google Drive shows promise for text recognition, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	2	Changed tags and rating.
1316	2012-05-21 15:45:52.361662-04	4	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and description.
1317	2012-05-21 15:46:38.010502-04	4	19	60	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make scanned-in memos searchable, For Document: Your Seat at the Table	2	Changed tags and published.
1318	2012-05-21 15:47:21.495861-04	4	19	61	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make typed transcripts searchable, For Document: Combatant tribunal transcripts	2	Changed tags and published.
1319	2012-05-21 15:48:32.201258-04	4	19	62	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make form-based PDF searchable, For Document: N.C. legislature's statements of economic interest	2	Changed tags and published.
1320	2012-05-21 15:49:04.10774-04	4	19	63	Test Results of Google Drive (http://drive.google.com/) for Test Test: Use OCR to make partial text PDF completely searchable, For Document: Executive branch congressional reports	2	Changed tags and published.
1321	2012-05-21 15:49:55.107375-04	4	16	13	Google Drive text recognition shows promise, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	2	Changed name and tags.
1322	2012-05-21 15:51:25.105175-04	4	16	13	Google Drive text recognition promising, but file size limits hinder usefulness (Review of: Google Drive (http://drive.google.com/))	2	Changed name, subtitle and tags.
1323	2012-05-21 15:51:44.782761-04	4	16	13	Google Drive text recognition promising, but file size limits a problem (Review of: Google Drive (http://drive.google.com/))	2	Changed name and tags.
1324	2012-05-21 15:54:12.241191-04	4	16	13	Google Drive text recognition promising, but file size limits a problem (Review of: Google Drive (http://drive.google.com/))	2	Changed tags, published and documentation_text.
1325	2012-05-21 15:55:24.601557-04	4	16	13	Google Drive text recognition promising, but file size limits a problem (Review of: Google Drive (http://drive.google.com/))	2	Changed tags and description.
1326	2012-06-07 11:19:17.596681-04	3	17	26	Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	1	
1327	2012-06-07 11:25:49.744876-04	3	17	26	Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description.
1328	2012-06-07 13:28:38.23846-04	3	17	26	Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description.
1329	2012-06-07 13:32:27.878343-04	3	19	64	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Docum	1	
1330	2012-06-07 13:40:30.275281-04	3	19	64	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Docum	2	Changed tags, teaser and description.
1331	2012-06-07 13:41:19.585623-04	3	19	64	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Docum	2	Changed subtitle and tags.
1332	2012-06-07 13:48:19.135041-04	3	19	65	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Sea	1	
1333	2012-06-07 13:48:53.252572-04	3	19	64	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Docum	2	Changed name, subtitle and tags.
1334	2012-06-07 13:55:15.557293-04	3	19	65	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Sea	2	Changed name, tags and description.
1335	2012-06-07 13:55:32.064118-04	3	19	65	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Sea	2	Changed tags and os_used.
1336	2012-06-07 14:17:29.817892-04	3	19	66	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document	1	
1337	2012-06-07 14:28:25.815103-04	3	19	67	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South	1	
1338	2012-06-10 17:58:21.73948-04	3	16	14	Table2Clipboard will not help with the heavy lifting (Review of: Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	1	
1339	2012-06-10 18:13:35.540249-04	3	16	14	Table2Clipboard will not help with the heavy lifting (Review of: Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags, description, community, community_text, documentation, documentation_text, performance, performance_text, usability, rating and rating_text.
1340	2012-06-10 18:14:41.259947-04	3	16	14	Table2Clipboard will not help with the heavy lifting (Review of: Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and description.
1341	2012-06-10 18:15:40.595844-04	3	16	14	Table2Clipboard will not help with the heavy lifting (Review of: Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags.
1342	2012-06-10 18:17:30.748439-04	3	19	67	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South	2	Changed subtitle, tags and description.
1343	2012-06-10 18:18:01.860758-04	3	19	67	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South	2	Changed subtitle and tags.
1344	2012-06-10 18:20:02.151845-04	3	19	66	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document	2	Changed subtitle, tags and description.
1345	2012-06-10 18:21:34.799103-04	3	19	65	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Sea	2	Changed tags.
1346	2012-06-10 18:22:29.29982-04	3	19	64	Test Results of Table2Clipboard by Dafizilla for Firefox (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Docum	2	Changed tags.
1347	2012-06-11 10:19:22.510543-04	4	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed name, tags, release_date, operating_systems and os_availability. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard will not help with the heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1348	2012-06-11 10:31:09.946066-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed name, subtitle, editor, tags, review_done, teaser, description, rating_text and os_used.
1349	2012-06-11 10:31:40.654949-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed subtitle and tags.
1350	2012-06-11 10:31:52.477394-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed subtitle and tags.
1351	2012-06-11 10:32:17.632427-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed tags.
1352	2012-06-11 10:32:40.77723-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed tags and rating.
1353	2012-06-11 10:46:04.95173-04	4	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name, subtitle, editor, tags, review_done, teaser, description, rating_text and os_used.
1354	2012-06-11 10:46:52.521441-04	4	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and description.
1355	2012-06-11 10:47:19.173707-04	4	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags.
1356	2012-06-11 10:50:02.951985-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed editor, tags, review_done, description and rating_text.
1357	2012-06-11 10:51:27.391889-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed tags, teaser, description and os_used.
1358	2012-06-11 10:51:46.620525-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed tags.
1359	2012-06-11 10:52:24.235854-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed name, subtitle and tags.
1360	2012-06-11 10:54:56.88429-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed tags, teaser and description.
1361	2012-06-11 10:56:53.586036-04	4	19	67	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed editor, tags, review_done, description, rating, rating_text and os_used.
1362	2012-06-11 10:57:33.624203-04	4	19	67	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, subtitle, tags, teaser and description.
1363	2012-06-11 10:58:45.278489-04	4	19	67	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, subtitle, tags, description and rating_text.
1364	2012-06-11 11:10:44.479068-04	4	16	14	Table2Clipboard won't help with the heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed name, subtitle, editor, tags, review_done, teaser, description, community_text, documentation_text, performance, performance_text, usability_text, rating and rating_text.
1365	2012-06-11 11:10:55.08497-04	4	16	14	Table2Clipboard won't help with the heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and description.
1366	2012-06-11 11:11:47.570098-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed name, tags, teaser and description.
1367	2012-06-11 11:12:34.958576-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags, teaser and description.
1368	2012-06-11 11:15:26.082565-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags.
1369	2012-06-11 11:18:42.392889-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and rating.
1370	2012-06-11 16:39:22.088515-04	3	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1405	2012-06-19 11:45:58.135093-04	4	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags.
1407	2012-06-19 11:47:33.525386-04	4	19	67	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags and published.
1432	2012-07-09 13:56:33.523721-04	6	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags and description.
1371	2012-06-11 16:42:15.660665-04	3	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1372	2012-06-11 16:55:18.357414-04	3	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and description.
1373	2012-06-11 16:56:15.841352-04	3	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags.
1374	2012-06-11 16:57:06.389544-04	3	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags.
1375	2012-06-11 16:57:56.388529-04	3	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1376	2012-06-11 17:02:27.223353-04	3	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed tags.
1377	2012-06-11 17:03:43.5196-04	3	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and description.
1378	2012-06-11 17:04:13.298215-04	3	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed tags.
1379	2012-06-12 10:24:51.718092-04	4	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1380	2012-06-12 10:28:26.796809-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed tags.
1381	2012-06-13 14:25:42.181084-04	6	17	27	Google Chrome Scraper ()	1	
1382	2012-06-13 14:38:28.334016-04	6	17	27	Google Chrome Scraper ()	2	Changed tags, teaser, description, company, categories, operating_systems and os_availability.
1383	2012-06-15 09:55:57.468595-04	6	19	68	Test Results of Google Chrome Scraper () for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	1	
1384	2012-06-15 10:07:17.163244-04	6	19	69	Test Results of Google Chrome Scraper () for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	1	
1385	2012-06-15 10:12:36.583849-04	6	19	70	Test Results of Google Chrome Scraper () for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database	1	
1386	2012-06-15 10:17:45.714444-04	6	19	71	Test Results of Google Chrome Scraper () for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database	1	
1387	2012-06-15 10:23:52.784931-04	6	16	15	Chrome Scraper's Use Limited to Single Web Page (Review of: Google Chrome Scraper ())	1	
1388	2012-06-15 10:26:37.979276-04	6	16	15	Chrome Scraper's Use Limited to Single Web Page (Review of: Google Chrome Scraper ())	2	Changed tags, description, community, community_text, performance, usability and rating.
1389	2012-06-15 13:53:29.068973-04	6	16	15	Chrome Scraper's Use Limited to Single Web Pages (Review of: Google Chrome Scraper ())	2	Changed name, tags, description, documentation, documentation_text, performance, performance_text, usability_text and rating_text.
1406	2012-06-19 11:46:59.5457-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed tags and published.
1408	2012-06-19 11:49:30.496337-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and published.
1390	2012-06-19 10:27:05.082646-04	4	17	27	Google Chrome Scraper ()	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Google Chrome Scraper () for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Google Chrome Scraper () for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed description and tags for Test Result "Test Results of Google Chrome Scraper () for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed description, teaser and tags for Test Result "Test Results of Google Chrome Scraper () for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed description and tags for Review "Chrome Scraper's Use Limited to Single Web Pages (Review of: Google Chrome Scraper ())".
1391	2012-06-19 10:29:16.076958-04	4	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1392	2012-06-19 10:30:12.7882-04	4	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and description. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1393	2012-06-19 10:30:34.285155-04	4	17	26	Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/)	2	Changed tags and published. Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Test Result "Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Review "Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))".
1394	2012-06-19 10:32:39.005461-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed tags.
1395	2012-06-19 10:32:42.746793-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed tags.
1396	2012-06-19 10:42:51.80361-04	4	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and description.
1397	2012-06-19 11:13:31.031374-04	4	19	66	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database with form-based search, For Document: British Columbia teache	2	Changed subtitle, tags and description.
1398	2012-06-19 11:20:32.05299-04	4	19	67	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
1399	2012-06-19 11:21:55.836793-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and description.
1400	2012-06-19 11:34:57.864872-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and description.
1401	2012-06-19 11:36:56.250116-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags, community_text, performance_text and rating_text.
1402	2012-06-19 11:38:58.074672-04	4	16	14	Table2Clipboard won't help with heavy lifting (Review of: Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/))	2	Changed tags and description.
1403	2012-06-19 11:42:39.225749-04	4	19	64	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia phy	2	Changed tags and published.
1404	2012-06-19 11:45:46.426142-04	4	19	65	Test Results of Table2Clipboard (https://addons.mozilla.org/en-US/firefox/addon/dafizilla-table2clipboard/) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and published.
1409	2012-07-02 10:57:03.948148-04	4	17	27	Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd)	2	Changed name, url, tags, teaser, company, open_source and release_date. Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Review "Chrome Scraper's Use Limited to Single Web Pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))".
1410	2012-07-03 12:50:18.078918-04	4	17	27	Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd)	2	Changed tags, teaser and description. Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Review "Chrome Scraper's Use Limited to Single Web Pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))".
1411	2012-07-03 12:51:17.839219-04	4	17	27	Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd)	2	Changed tags, published and description. Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician and surgeons database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database". Changed tags for Test Result "Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table". Changed tags for Review "Chrome Scraper's Use Limited to Single Web Pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))".
1412	2012-07-03 13:03:57.894315-04	4	19	68	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name, subtitle, editor, tags, teaser, description and rating_text.
1413	2012-07-03 13:12:30.153197-04	4	19	69	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, subtitle, editor, tags, teaser, description and rating_text.
1414	2012-07-03 13:14:04.432783-04	4	19	69	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name, tags, teaser and description.
1415	2012-07-03 13:18:33.476969-04	4	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed name, editor, tags and description.
1416	2012-07-03 13:46:11.229-04	4	19	71	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher datab	2	Changed name, subtitle, editor, tags, teaser, description, rating_text and version_tested.
1417	2012-07-03 13:46:14.862279-04	4	19	71	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher datab	2	Changed tags.
1418	2012-07-03 14:20:28.543481-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed name, subtitle, editor, tags, review_done, teaser and description.
1419	2012-07-03 14:23:06.748552-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags, community_text, documentation_text, performance_text, usability_text, rating and rating_text.
1420	2012-07-09 10:50:54.148478-04	4	17	28	Table Capture (https://chrome.google.com/webstore/detail/iebpjdmgckacbodjpijphcplhebcmeop)	1	
1421	2012-07-09 10:52:09.155005-04	4	17	28	Table Capture (https://chrome.google.com/webstore/detail/iebpjdmgckacbodjpijphcplhebcmeop)	2	Changed tags, teaser and description.
1422	2012-07-09 10:53:05.997577-04	4	17	28	Table Capture (https://chrome.google.com/webstore/detail/iebpjdmgckacbodjpijphcplhebcmeop)	2	Changed tags, teaser and description.
1423	2012-07-09 10:54:04.508124-04	4	17	28	Table Capture (https://chrome.google.com/webstore/detail/iebpjdmgckacbodjpijphcplhebcmeop)	2	Changed tags, published and description.
1424	2012-07-09 11:16:06.473919-04	4	17	29	Data Toolbar (http://datatoolbar.com/)	1	
1425	2012-07-09 11:20:45.505939-04	4	17	29	Data Toolbar (http://datatoolbar.com/)	2	Changed tags, published and description.
1426	2012-07-09 11:32:11.034521-04	4	20	17	Interview with Jane Mayer	1	
1427	2012-07-09 11:32:37.387175-04	4	20	17	Interview with Jane Mayer	2	Changed tags, teaser and description.
1428	2012-07-09 11:33:17.785839-04	4	20	17	Interview with Jane Mayer	2	Changed tags and description.
1429	2012-07-09 11:33:50.252435-04	4	20	17	Interview with Jane Mayer	2	Changed tags and published.
1430	2012-07-09 11:37:33.322533-04	4	20	18	Interview with Dana Priest	1	
1431	2012-07-09 11:38:07.733478-04	4	20	18	Interview with Dana Priest	2	Changed tags and published.
1433	2012-07-09 14:00:11.381257-04	6	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags and description.
1434	2012-07-09 15:13:03.234135-04	6	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed tags, description and rating_text.
1435	2012-07-09 15:13:48.816738-04	6	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags and description.
1436	2012-07-09 15:45:06.61587-04	4	19	68	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed name, tags, teaser, description and rating_text.
1437	2012-07-09 15:46:00.593954-04	4	19	68	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags and description.
1438	2012-07-09 15:46:23.51204-04	4	19	68	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed tags.
1439	2012-07-09 15:47:40.803869-04	4	19	69	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags and description.
1440	2012-07-09 15:48:47.945064-04	4	19	71	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher datab	2	Changed tags, description and rating_text.
1441	2012-07-09 16:12:35.567187-04	4	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed tags and description.
1442	2012-07-09 16:15:39.180853-04	4	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed name, subtitle, tags, teaser, description and rating_text.
1443	2012-07-09 16:16:31.544061-04	4	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed tags, rating_text and version_tested.
1444	2012-07-09 16:39:37.073009-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags, description, performance_text, usability, usability_text and rating_text.
1445	2012-07-09 16:39:52.528249-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags.
1446	2012-07-09 16:41:18.544954-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags.
1447	2012-07-10 09:12:19.629486-04	4	19	68	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed subtitle and tags.
1448	2012-07-10 09:15:26.274852-04	6	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags.
1449	2012-07-10 09:21:27.289352-04	4	19	69	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed name and tags.
1450	2012-07-10 09:22:03.033996-04	4	19	69	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed tags.
1451	2012-07-10 09:23:30.787094-04	4	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed tags and description.
1452	2012-07-10 09:24:15.346507-04	4	19	71	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher datab	2	Changed tags.
1453	2012-07-10 09:27:12.739352-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed tags and description.
1454	2012-07-10 09:27:24.077163-04	4	19	71	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database with form-based search, For Document: British Columbia teacher datab	2	Changed published.
1455	2012-07-10 09:27:24.099494-04	4	19	70	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database requiring browser cookies, For Document: British Columbia physician 	2	Changed published.
1456	2012-07-10 09:27:24.116954-04	4	19	69	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database in table format, For Document: South Dakota lobbyist database	2	Changed published.
1457	2012-07-10 09:27:24.131445-04	4	19	68	Test Results of Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd) for Test Test: Scrape database of PDF files, For Document: Your Seat at the Table	2	Changed published.
1458	2012-07-10 09:27:35.28632-04	4	16	15	Scraper's use limited to single, well-formatted Web pages (Review of: Scraper (https://chrome.google.com/webstore/detail/mbigbapnjcgaffohmbkdlecaccepngjd))	2	Changed published.
1459	2012-07-10 14:20:55.078415-04	4	20	19	N.C. House Judiciary Committee eugenics meeting audio	1	
1460	2012-07-10 14:22:02.994494-04	4	20	19	N.C. House Judiciary Committee eugenics meeting audio	2	Changed tags and description.
1461	2012-07-10 14:23:07.730279-04	4	20	19	N.C. House Judiciary Committee eugenics meeting audio	2	Changed tags.
1462	2012-07-10 14:23:35.134463-04	4	20	19	N.C. House Judiciary Committee eugenics meeting audio	2	Changed tags and published.
1463	2012-07-31 10:14:59.03719-04	1	3	9	admin	1	
1464	2012-07-31 10:15:14.101469-04	1	3	9	admin	2	Changed first_name, email, is_staff and is_superuser.
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	message	auth	message
5	session	sessions	session
6	content type	contenttypes	contenttype
7	site	sites	site
8	log entry	admin	logentry
9	migration history	south	migrationhistory
10	Tag	taggit	tag
11	Tagged Item	taggit	taggeditem
12	vote	djangoratings	vote
13	score	djangoratings	score
14	similar user	djangoratings	similaruser
15	ignored object	djangoratings	ignoredobject
16	review	core	review
17	product	core	product
18	task	core	task
19	Product Task Review	core	producttask
20	Document Set	core	documentset
21	category	core	category
22	Operating System	core	operatingsystem
23	tutorial	core	tutorial
24	challenge	core	challenge
25	Kitchen Tag	core	customtag
26	custom tag item	core	customtagitem
27	flat page	flatpages	flatpage
\.


--
-- Data for Name: django_flatpage; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
1	/how-we-rate/	How We Rate	<div id="left_rail">\r\n<h1 id="flatpage_title">How We Rate</h1>\r\n<div id="body_content">\r\n<p>The Review Lab is a feåature developed by the Reporters’ Lab to test, rate and make sense of tools that can help journalists find stories in public records and data.</p>\r\n\r\n<p>The site is designed to point reporters in the right direction quickly so they can decide what they need to make their jobs easier and get <a href="http://google.com">back to work faster</a>.</p>\r\n\r\n<h2>Code of Conduct</h2>\r\n\r\n<p>The Reporters’ Lab is out to produce reviews that are rigorous, independent, fair and, above all, useful for a busy reporter with little patience and even less time. We’ll use full versions of products against a consistent set of documents and tests, so users can compare apples to apples and figure out what’s worth the money and the time. Whenever we can, the Lab will contact companies to address specific product critiques and will include their responses if they’re useful to users. Companies aren’t allowed to read the reviews in full or approve or reject content.</p>\r\n</div>\r\n</div>\r\n\r\n<div id="right_rail">\r\n   <p>Put some right rail content here</p>\r\n</div>	f		f
\.


--
-- Data for Name: django_flatpage_sites; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
2	1	1
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
b1b75f2dcac9f3bed5cdf83a70e2316e	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-08-18 21:15:06.973806-04
f54ae199eaf209382d7af3f0dbeecd4d	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2011-11-23 13:14:36.025917-05
adfdb39555d2b1c8619bcf81dd85bca3	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-08-26 11:14:37.167875-04
67f20a6a6c86748839ee1b04be64c414	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-11-24 17:22:51.902366-05
63b57fb187c2c116a192c906e87620c4	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-09-12 17:00:42.042618-04
163eaec9f1591abc721644ac7ec73d10	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2011-11-24 17:24:22.197948-05
8fe434960ee40c9ac918be60b4bf4d98	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-10-06 14:50:11.676953-04
38064119590b1fb4bf01ab786566fa71	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2011-10-06 14:51:45.326804-04
f05fcefabebe64706ce8b081ca16e85a	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2011-10-06 15:55:26.559046-04
618a538ac35bb392cf7784d96487866d	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-10-26 11:14:38.202192-04
c30d5ebe93593405ff61e832c0b2dbd4	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-12-04 19:53:59.032554-05
8881d910674d7ef1c2825bdac17dad88	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2011-12-29 08:08:14.419549-05
1aeab8c9dea85ccd8b55166795a52e91	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2011-12-05 09:08:33.979086-05
379aa45c489796cc16ceb8de306b88de	NzI2OTQyMzM4N2M4NmE2NDE5ZTE2NzllZmVjMDk3Mzk5NDYwN2M2ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBnUu\n	2011-12-29 08:18:56.476045-05
e6fe7420999a102bd06057a1c38908fa	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2011-12-13 12:06:38.034698-05
4a8c11360b5bd93bbb37b8baec92d62d	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2011-12-15 08:48:47.963472-05
5aa76081bd43450c310213c266104366	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2011-12-19 10:40:20.247624-05
fe4d72b3d3abc8337577e570f302a5f1	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-01-14 17:21:27.163594-05
a84f4af49d9df19b19d23863fad14b49	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2011-12-19 12:31:19.498406-05
568c2e433902cef7468fec5d24a60cac	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-01-17 11:55:58.382366-05
ed329e4ad3bf05df36619f79fbe6549e	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-12-22 07:51:42.739285-05
7018e7ab08dfcedea63dd60b4138353a	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-12-22 16:59:43.633926-05
cb323d7339e09721096018b09a1dd79c	NWQ2YWQ2ZTI2OGM3YThkN2Q4YzY0M2U4ZTQ1MDZkMGRkYmRiYWFmOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLA3Uu\n	2012-01-24 10:04:40.78301-05
d7678a4cee945b59024ad097531d81d5	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2011-12-27 14:47:14.548198-05
c4a0aaab5c51d047693f7f6e8b50381e	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-01-31 12:11:15.208565-05
a4429d536c19cb6f756e4fc9146ebc56	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-01-31 14:13:53.43732-05
7e63f57b1a4acb085504c2c821d5b51e	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2012-01-31 14:17:26.099618-05
4273c3a4796da4925c8b96b394ed8052	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-02-14 12:29:01.923996-05
1cf2d831d8ee6b9706e362a80fa09d55	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-02-17 21:12:31.161216-05
3718171fc6a0c466710641bce7514fce	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-01-02 11:45:23.695897-05
ae66936acb5a6c007eb2c049f52cfeb6	NWQ2YWQ2ZTI2OGM3YThkN2Q4YzY0M2U4ZTQ1MDZkMGRkYmRiYWFmOTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLA3Uu\n	2012-02-20 10:14:33.18362-05
fd449735e44d466ccd686d006ba12152	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-02-21 12:07:50.427758-05
2913977d9da3d7587ee15698c1ee3a66	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-07-11 18:50:55.933761-04
c238c3234261106354d861f04d061506	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-04-02 23:08:56.996868-04
4341dd80f7f923f2e30fe2e37d52ef8e	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-04-03 09:23:10.932393-04
a13858aff0a97a16e0e48bb21a4abe0a	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-02-22 10:38:48.399021-05
dd766ffe3e0818fd6a21c0799ea586e1	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-02-22 13:00:23.12192-05
bd056592f30de3448c19185a20cedc97	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2012-04-04 13:05:43.392293-04
a7194d5daed6df7cb16562cd310f1dfb	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-04-15 07:39:23.366548-04
5d81fe77273823761dc0c06de38f6f08	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-04-16 05:06:38.965487-04
16ea89b06fb7bcb1a560505f0c02d713	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2012-02-24 17:20:41.353093-05
a600428a1014797abe0b5b64e4ba207c	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-02-28 14:38:10.054408-05
67b4c50adaa9ce69cae264f8c7fff3d4	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-02 11:50:54.823398-05
388e9055ea1ba1a6a2fe3d80a6f2e87c	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-02 14:25:44.99721-05
661981218027a19de913ae60c99c87b6	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-03 23:18:42.185596-05
4ced72620272fb7d7f5fe4179083a5df	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-04-17 11:00:39.509683-04
d5b82dac916c71d095b8d83f493c0f55	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-04 23:39:58.486613-05
b09f5603b69ceea35fbb93cb3b49d57e	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-04-18 07:49:25.461273-04
e719df918b356b39353a9ab9ad77ae40	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-03-06 12:39:50.854724-05
b20a4b3623cf3a402c87fb4e06ca62eb	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-05-01 12:21:47.033081-04
8a52b3c2ffb527ba04101fb2cd1139bf	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-05-02 12:47:48.443374-04
6359b63b286304e18c3a98eb1582a210	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-05-05 14:26:33.696247-04
10800ace6525b9d4ba5e859898aaebf5	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-05-17 12:22:38.84017-04
5b0b3f240a82bac54c43e3f63d08ac4e	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-05-18 17:26:32.991488-04
acedb15e89b7489ed51f8f6aa073dbb6	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-07 17:47:01.468488-05
6e3bede0d4ab355d0eb187a9f12d9c5d	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-05-25 21:30:42.99214-04
df70ba2c64dbfd9f88111aaaf1f65e0a	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-03-09 14:26:15.662696-05
2a159da110f7772195fe6d51580687b6	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-13 02:07:29.796004-04
9c327229b3cadf9d9d626e3f164497a5	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-05-28 10:45:02.701276-04
74342d76f7f4cfa2f0364941321f771b	ZGY4YjE0ZGRiNGFhNzUxMGI4ZGM2NmMxODFkZDE4ZTE1NjY4NzYxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAnUu\n	2012-03-13 18:20:12.402965-04
c4ff44395aa2f97d8fc37837a321a3dc	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-14 12:19:15.644696-04
da08004d5ec943e84e0bf9cdeea94d98	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-05-29 23:31:15.980178-04
d5ffcf08e9945a078dc4312c071c0bea	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-05-31 11:08:23.540421-04
1f103547eadf810ddbd3bef566ecc04d	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-03-21 11:12:36.788333-04
cef73e9c0f36b99359e57d0c83a77147	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-06-03 20:57:16.52639-04
ed2588e85847f635ec35cff49cefa651	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-06-12 11:19:19.949173-04
ebb41bc7909150fb32362702e7248ffd	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-03-26 11:35:46.126991-04
c12ffb0416d719841be630454a480495	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-03-30 11:39:59.998161-04
d3358d67aedba9173937b40a39401cd4	NzI2OTQyMzM4N2M4NmE2NDE5ZTE2NzllZmVjMDk3Mzk5NDYwN2M2ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBnUu\n	2012-03-30 12:48:50.830808-04
8826d6db1f044ec7206e9a6daf296f09	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-06-24 21:33:57.775372-04
4f2d6a27d95ee6aefb96aed50feef959	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-06-25 10:08:20.824361-04
aff40d7fcb7c4c2d08b482c1b2a067ef	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-06-25 17:04:32.188192-04
5ace1c1dfb2c656b3fd4a51327e81018	NWY3YmJkNWE2NmFiMmVkZGUwYzU0MGVhN2MyZmNiMGM2ZjZhMWZmZDqAAn1xAS4=\n	2012-07-02 17:20:01.58611-04
056c08f303197dd64c6f432a95d9f408	NzI2OTQyMzM4N2M4NmE2NDE5ZTE2NzllZmVjMDk3Mzk5NDYwN2M2ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBnUu\n	2012-06-27 13:36:56.924843-04
3e2b829d30477cc266943a78b9fcbefd	MTFkNWJmMDM0ZDEwOTQyMDUzNjk5ODIyY2VlYzVkYmNiZGYxYTBiMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBHUu\n	2012-07-16 10:38:33.448417-04
846e86caaee34f7194187c6d563ad006	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-07-17 00:17:56.245219-04
ac35306358214f310a0f7f556cdba066	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-07-17 23:08:22.131735-04
ddf438cef214e6dc5a63721a437012b0	NzI2OTQyMzM4N2M4NmE2NDE5ZTE2NzllZmVjMDk3Mzk5NDYwN2M2ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLBnUu\n	2012-07-19 12:08:13.394039-04
22d5373db845cb5f76cea3b475d90137	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-08-03 23:26:50.398012-04
d27a1b196df56316717b7b2c1822789b	Y2MxYThkZmVjNTI3MTNlYTFiYjVmNTNmNzg1NTI1YjY0OGM2NjE5ZjqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n	2012-08-04 12:13:54.507672-04
f2f6456e31fa09da9e08794884cf4451	MmI5NDNiYTFkMjg1YjU5YWIzODI4Yjk1YzkyYTJkZWQ2NmZlMTk1ZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-08-14 10:13:01.16425-04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY django_site (id, domain, name) FROM stdin;
1	reviews.reporterslab.org	Reviews
\.


--
-- Data for Name: djangoratings_ignoredobject; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY djangoratings_ignoredobject (object_id, id, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: djangoratings_score; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY djangoratings_score (id, content_type_id, object_id, key, score, votes) FROM stdin;
\.


--
-- Data for Name: djangoratings_similaruser; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY djangoratings_similaruser (to_user_id, agrees, id, disagrees, from_user_id, exclude) FROM stdin;
\.


--
-- Data for Name: djangoratings_vote; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY djangoratings_vote (id, content_type_id, object_id, key, score, user_id, ip_address, date_added, date_changed, cookie) FROM stdin;
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	djangoratings	0001_initial	2011-08-04 18:31:06.829251-04
2	djangoratings	0002_add_mean_and_stddev	2011-08-04 18:31:07.058103-04
3	djangoratings	0003_add_correlations	2011-08-04 18:31:07.110306-04
4	djangoratings	0004_rethink_recommendations	2011-08-04 18:31:07.180947-04
5	djangoratings	0005_add_exclusions	2011-08-04 18:31:07.345206-04
6	djangoratings	0006_add_cookies	2011-08-04 18:31:07.480424-04
7	core	0001_initial	2011-08-04 18:31:07.896976-04
8	core	0002_auto__add_field_review_reviewer	2011-08-04 18:31:08.086069-04
9	core	0003_auto__add_field_review_product	2011-08-04 18:31:08.306111-04
10	core	0004_auto__del_field_review_rating_votes__del_field_review_rating_score__ad	2011-08-04 18:31:08.659321-04
11	core	0005_auto__add_category__add_operatingsystem__del_field_review_os_used__chg	2011-08-04 18:31:09.314332-04
12	core	0006_auto__add_field_category_published__add_field_product_published__add_f	2011-08-04 18:31:09.934404-04
13	core	0007_auto__add_documentset__add_producttask__chg_field_product_cost__add_fi	2011-08-04 18:31:10.987727-04
14	core	0008_auto__add_field_product_open_source__add_field_product_demo_available_	2011-08-04 18:31:12.09163-04
15	core	0009_auto__add_field_product_release_date__add_field_review_review_done	2011-08-04 18:31:12.342392-04
16	core	0010_auto__add_field_product_obsolete	2011-08-04 18:31:12.570278-04
17	core	0011_auto__add_field_review_editor__add_field_review_community__add_field_r	2011-08-04 18:31:13.644242-04
18	core	0012_auto__add_field_product_image	2011-08-11 19:15:19.356169-04
19	core	0013_auto__add_tutorial__add_field_documentset_image__add_field_review_imag	2011-08-11 19:15:19.659542-04
20	core	0014_auto__add_challenge__chg_field_tutorial_writer_external	2011-08-16 18:19:05.091148-04
21	core	0015_auto__add_field_challenge_award	2011-08-16 18:19:05.220688-04
22	core	0016_auto__chg_field_category_update_time__chg_field_category_creation_time	2011-08-24 21:53:49.783411-04
23	core	0017_auto__add_field_producttask_rating_text	2011-08-24 21:53:49.976101-04
24	core	0018_auto__add_field_producttask_teaser	2011-08-24 21:53:50.193526-04
25	core	0019_auto__add_field_producttask_reviewer__add_field_producttask_editor__ad	2011-08-24 21:53:50.959883-04
26	core	0020_auto__add_field_tutorial_version	2011-08-29 20:37:12.070936-04
27	core	0021_auto__chg_field_product_release_date	2011-08-29 22:18:31.064933-04
28	core	0022_auto__chg_field_product_release_date	2011-08-29 22:18:31.205357-04
29	core	0023_auto__chg_field_product_release_date	2011-08-29 22:18:31.365001-04
30	core	0024_auto__add_customtagitem__add_customtag	2011-08-31 19:07:04.028888-04
31	core	0025_auto	2011-09-12 19:45:46.325883-04
32	core	0026_auto__chg_field_product_cost	2011-09-28 17:46:57.14209-04
33	core	0027_auto__add_field_task_difficulty__add_field_task_difficulty_text	2011-11-16 00:54:13.573884-05
34	core	0028_auto__chg_field_product_release_date	2011-11-21 01:54:40.649965-05
35	core	0029_auto__del_field_product_programming_required_description__del_field_pr	2011-12-08 13:50:51.560737-05
36	core	0030_auto__chg_field_review_programming_text	2011-12-08 13:50:51.695464-05
37	core	0031_auto__add_field_product_os_availability	2012-01-04 19:47:03.331958-05
38	core	0032_auto__del_challenge__add_field_category_teaser__add_field_product_teas	2012-01-08 19:57:29.96573-05
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY taggit_tag (id, name, slug) FROM stdin;
1	Category Tag	category-tag
2	detailed	detailed
3	complex	complex
5	difficult	difficult
10	Obama Administration	obama-administration
11	US Government	us-government
12	PDFs	pdfs
13	Scraping	scraping
14	Request	Request
15	Search	search
16	JavaScript	javascript
17	Hidden Content	hidden-content
18	Cookies	cookies
19	Searching	searching
20	Crippleware	crippleware
21	Outwit	outwit
22	Firefox Extension	firefox-extension
23	good:Export Options	goodexport-options
24	bad:Documentation	baddocumentation
25	Master/Detail	masterdetail
26	good:URL Handling	goodurl-handling
27	good:Scraper Creation	goodscraper-creation
28	bad:Complicated UI	badcomplicated-ui
29	bad:No POST	badno-post
30	good:PDF Download	goodpdf-download
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: cs280
--

COPY taggit_taggeditem (id, tag_id, object_id, content_type_id) FROM stdin;
1	1	1	21
10	10	2	20
11	11	2	20
12	10	2	18
13	11	2	18
14	12	2	18
15	13	2	18
27	13	4	20
28	14	4	20
29	13	3	20
30	14	3	20
32	16	4	18
33	17	4	18
34	13	4	18
35	15	4	18
36	18	3	18
37	19	3	18
38	13	3	18
39	20	2	17
40	13	2	17
41	22	2	17
42	21	2	17
57	21	2	19
58	23	2	19
59	24	2	19
60	25	2	19
61	26	2	19
62	27	2	19
63	28	2	19
66	21	3	19
67	29	3	19
72	21	4	19
73	30	4	19
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_message_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: core_category_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_category
    ADD CONSTRAINT core_category_name_key UNIQUE (name);


--
-- Name: core_category_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_category
    ADD CONSTRAINT core_category_pkey PRIMARY KEY (id);


--
-- Name: core_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_category
    ADD CONSTRAINT core_category_slug_key UNIQUE (slug);


--
-- Name: core_customtag_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_customtag
    ADD CONSTRAINT core_customtag_pkey PRIMARY KEY (id);


--
-- Name: core_customtag_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_customtag
    ADD CONSTRAINT core_customtag_slug_key UNIQUE (slug);


--
-- Name: core_customtagitem_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_customtagitem
    ADD CONSTRAINT core_customtagitem_pkey PRIMARY KEY (id);


--
-- Name: core_documentset_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_documentset
    ADD CONSTRAINT core_documentset_name_key UNIQUE (name);


--
-- Name: core_documentset_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_documentset
    ADD CONSTRAINT core_documentset_pkey PRIMARY KEY (id);


--
-- Name: core_documentset_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_documentset
    ADD CONSTRAINT core_documentset_slug_key UNIQUE (slug);


--
-- Name: core_operatingsystem_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_operatingsystem
    ADD CONSTRAINT core_operatingsystem_name_key UNIQUE (name);


--
-- Name: core_operatingsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_operatingsystem
    ADD CONSTRAINT core_operatingsystem_pkey PRIMARY KEY (id);


--
-- Name: core_operatingsystem_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_operatingsystem
    ADD CONSTRAINT core_operatingsystem_slug_key UNIQUE (slug);


--
-- Name: core_product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product_categories
    ADD CONSTRAINT core_product_categories_pkey PRIMARY KEY (id);


--
-- Name: core_product_categories_product_id_6b7289a291f0b825_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product_categories
    ADD CONSTRAINT core_product_categories_product_id_6b7289a291f0b825_uniq UNIQUE (product_id, category_id);


--
-- Name: core_product_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product
    ADD CONSTRAINT core_product_name_key UNIQUE (name);


--
-- Name: core_product_operating_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product_operating_systems
    ADD CONSTRAINT core_product_operating_systems_pkey PRIMARY KEY (id);


--
-- Name: core_product_operating_systems_product_id_5562b78f7414ba5_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product_operating_systems
    ADD CONSTRAINT core_product_operating_systems_product_id_5562b78f7414ba5_uniq UNIQUE (product_id, operatingsystem_id);


--
-- Name: core_product_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product
    ADD CONSTRAINT core_product_pkey PRIMARY KEY (id);


--
-- Name: core_product_slug_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_product
    ADD CONSTRAINT core_product_slug_uniq UNIQUE (slug);


--
-- Name: core_producttask_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT core_producttask_name_key UNIQUE (name);


--
-- Name: core_producttask_os_used_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_producttask_os_used
    ADD CONSTRAINT core_producttask_os_used_pkey PRIMARY KEY (id);


--
-- Name: core_producttask_os_used_producttask_id_2979bda9b0ffdb17_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_producttask_os_used
    ADD CONSTRAINT core_producttask_os_used_producttask_id_2979bda9b0ffdb17_uniq UNIQUE (producttask_id, operatingsystem_id);


--
-- Name: core_producttask_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT core_producttask_pkey PRIMARY KEY (id);


--
-- Name: core_producttask_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT core_producttask_slug_key UNIQUE (slug);


--
-- Name: core_review_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_review
    ADD CONSTRAINT core_review_name_key UNIQUE (name);


--
-- Name: core_review_os_used_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_review_os_used
    ADD CONSTRAINT core_review_os_used_pkey PRIMARY KEY (id);


--
-- Name: core_review_os_used_review_id_15f757eb409e8b81_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_review_os_used
    ADD CONSTRAINT core_review_os_used_review_id_15f757eb409e8b81_uniq UNIQUE (review_id, operatingsystem_id);


--
-- Name: core_review_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_review
    ADD CONSTRAINT core_review_pkey PRIMARY KEY (id);


--
-- Name: core_review_slug_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_review
    ADD CONSTRAINT core_review_slug_uniq UNIQUE (slug);


--
-- Name: core_task_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_task
    ADD CONSTRAINT core_task_name_key UNIQUE (name);


--
-- Name: core_task_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_task
    ADD CONSTRAINT core_task_pkey PRIMARY KEY (id);


--
-- Name: core_task_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_task
    ADD CONSTRAINT core_task_slug_key UNIQUE (slug);


--
-- Name: core_tutorial_name_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial
    ADD CONSTRAINT core_tutorial_name_key UNIQUE (name);


--
-- Name: core_tutorial_os_used_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial_os_used
    ADD CONSTRAINT core_tutorial_os_used_pkey PRIMARY KEY (id);


--
-- Name: core_tutorial_os_used_tutorial_id_1edcef827ccce2d9_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial_os_used
    ADD CONSTRAINT core_tutorial_os_used_tutorial_id_1edcef827ccce2d9_uniq UNIQUE (tutorial_id, operatingsystem_id);


--
-- Name: core_tutorial_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial
    ADD CONSTRAINT core_tutorial_pkey PRIMARY KEY (id);


--
-- Name: core_tutorial_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial
    ADD CONSTRAINT core_tutorial_slug_key UNIQUE (slug);


--
-- Name: core_tutorial_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial_tasks
    ADD CONSTRAINT core_tutorial_tasks_pkey PRIMARY KEY (id);


--
-- Name: core_tutorial_tasks_tutorial_id_353c3ec2a765613f_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY core_tutorial_tasks
    ADD CONSTRAINT core_tutorial_tasks_tutorial_id_353c3ec2a765613f_uniq UNIQUE (tutorial_id, task_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_flatpage
    ADD CONSTRAINT django_flatpage_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage_sites_flatpage_id_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_flatpage_id_key UNIQUE (flatpage_id, site_id);


--
-- Name: django_flatpage_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_ignoredobject_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT djangoratings_ignoredobject_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_score_content_type_id_34080b82db03891b_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT djangoratings_score_content_type_id_34080b82db03891b_uniq UNIQUE (content_type_id, object_id, key);


--
-- Name: djangoratings_score_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT djangoratings_score_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_similaruser_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT djangoratings_similaruser_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_vote_content_type_id_69d497af3324806f_uniq; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT djangoratings_vote_content_type_id_69d497af3324806f_uniq UNIQUE (content_type_id, object_id, cookie, user_id, key, ip_address);


--
-- Name: djangoratings_vote_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT djangoratings_vote_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: cs280; Tablespace: 
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_message_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_message_user_id ON auth_message USING btree (user_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: core_customtagitem_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_customtagitem_content_type_id ON core_customtagitem USING btree (content_type_id);


--
-- Name: core_customtagitem_object_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_customtagitem_object_id ON core_customtagitem USING btree (object_id);


--
-- Name: core_customtagitem_tag_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_customtagitem_tag_id ON core_customtagitem USING btree (tag_id);


--
-- Name: core_product_categories_category_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_product_categories_category_id ON core_product_categories USING btree (category_id);


--
-- Name: core_product_categories_product_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_product_categories_product_id ON core_product_categories USING btree (product_id);


--
-- Name: core_product_operating_systems_operatingsystem_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_product_operating_systems_operatingsystem_id ON core_product_operating_systems USING btree (operatingsystem_id);


--
-- Name: core_product_operating_systems_product_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_product_operating_systems_product_id ON core_product_operating_systems USING btree (product_id);


--
-- Name: core_product_slug; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_product_slug ON core_product USING btree (slug);


--
-- Name: core_product_slug_like; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_product_slug_like ON core_product USING btree (slug varchar_pattern_ops);


--
-- Name: core_producttask_editor_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_producttask_editor_id ON core_producttask USING btree (editor_id);


--
-- Name: core_producttask_os_used_operatingsystem_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_producttask_os_used_operatingsystem_id ON core_producttask_os_used USING btree (operatingsystem_id);


--
-- Name: core_producttask_os_used_producttask_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_producttask_os_used_producttask_id ON core_producttask_os_used USING btree (producttask_id);


--
-- Name: core_producttask_product_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_producttask_product_id ON core_producttask USING btree (product_id);


--
-- Name: core_producttask_reviewer_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_producttask_reviewer_id ON core_producttask USING btree (reviewer_id);


--
-- Name: core_producttask_task_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_producttask_task_id ON core_producttask USING btree (task_id);


--
-- Name: core_review_editor_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_editor_id ON core_review USING btree (editor_id);


--
-- Name: core_review_os_used_operatingsystem_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_os_used_operatingsystem_id ON core_review_os_used USING btree (operatingsystem_id);


--
-- Name: core_review_os_used_review_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_os_used_review_id ON core_review_os_used USING btree (review_id);


--
-- Name: core_review_product_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_product_id ON core_review USING btree (product_id);


--
-- Name: core_review_reviewer_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_reviewer_id ON core_review USING btree (reviewer_id);


--
-- Name: core_review_slug; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_slug ON core_review USING btree (slug);


--
-- Name: core_review_slug_like; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_review_slug_like ON core_review USING btree (slug varchar_pattern_ops);


--
-- Name: core_task_document_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_task_document_id ON core_task USING btree (document_id);


--
-- Name: core_tutorial_editor_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_editor_id ON core_tutorial USING btree (editor_id);


--
-- Name: core_tutorial_os_used_operatingsystem_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_os_used_operatingsystem_id ON core_tutorial_os_used USING btree (operatingsystem_id);


--
-- Name: core_tutorial_os_used_tutorial_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_os_used_tutorial_id ON core_tutorial_os_used USING btree (tutorial_id);


--
-- Name: core_tutorial_product_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_product_id ON core_tutorial USING btree (product_id);


--
-- Name: core_tutorial_tasks_task_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_tasks_task_id ON core_tutorial_tasks USING btree (task_id);


--
-- Name: core_tutorial_tasks_tutorial_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_tasks_tutorial_id ON core_tutorial_tasks USING btree (tutorial_id);


--
-- Name: core_tutorial_writer_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX core_tutorial_writer_id ON core_tutorial USING btree (writer_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_flatpage_sites_flatpage_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_flatpage_sites_flatpage_id ON django_flatpage_sites USING btree (flatpage_id);


--
-- Name: django_flatpage_sites_site_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_flatpage_sites_site_id ON django_flatpage_sites USING btree (site_id);


--
-- Name: django_flatpage_url; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_flatpage_url ON django_flatpage USING btree (url);


--
-- Name: django_flatpage_url_like; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_flatpage_url_like ON django_flatpage USING btree (url varchar_pattern_ops);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: djangoratings_ignoredobject_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_ignoredobject_content_type_id ON djangoratings_ignoredobject USING btree (content_type_id);


--
-- Name: djangoratings_ignoredobject_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_ignoredobject_user_id ON djangoratings_ignoredobject USING btree (user_id);


--
-- Name: djangoratings_score_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_score_content_type_id ON djangoratings_score USING btree (content_type_id);


--
-- Name: djangoratings_similaruser_from_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_similaruser_from_user_id ON djangoratings_similaruser USING btree (from_user_id);


--
-- Name: djangoratings_similaruser_to_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_similaruser_to_user_id ON djangoratings_similaruser USING btree (to_user_id);


--
-- Name: djangoratings_vote_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_vote_content_type_id ON djangoratings_vote USING btree (content_type_id);


--
-- Name: djangoratings_vote_user_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX djangoratings_vote_user_id ON djangoratings_vote USING btree (user_id);


--
-- Name: taggit_taggeditem_content_type_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX taggit_taggeditem_content_type_id ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_object_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX taggit_taggeditem_object_id ON taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id; Type: INDEX; Schema: public; Owner: cs280; Tablespace: 
--

CREATE INDEX taggit_taggeditem_tag_id ON taggit_taggeditem USING btree (tag_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_message_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_d6bc27698c49b1; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_product_categories
    ADD CONSTRAINT category_id_refs_id_d6bc27698c49b1 FOREIGN KEY (category_id) REFERENCES core_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_10c1fe6aa543e918; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_customtagitem
    ADD CONSTRAINT content_type_id_refs_id_10c1fe6aa543e918 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_187ce6e691a4590; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT content_type_id_refs_id_187ce6e691a4590 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_32633093024c37e; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT content_type_id_refs_id_32633093024c37e FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_3459ebb7192ce917; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT content_type_id_refs_id_3459ebb7192ce917 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_flatpage_sites_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: document_id_refs_id_13abed088d35f756; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_task
    ADD CONSTRAINT document_id_refs_id_13abed088d35f756 FOREIGN KEY (document_id) REFERENCES core_documentset(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_id_refs_id_503eb9c8458eb6a; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT editor_id_refs_id_503eb9c8458eb6a FOREIGN KEY (editor_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_id_refs_id_5935fe6dda8d81e1; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_review
    ADD CONSTRAINT editor_id_refs_id_5935fe6dda8d81e1 FOREIGN KEY (editor_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: editor_id_refs_id_8b5553f3c37d045; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial
    ADD CONSTRAINT editor_id_refs_id_8b5553f3c37d045 FOREIGN KEY (editor_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flatpage_id_refs_id_c0e84f5a; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY django_flatpage_sites
    ADD CONSTRAINT flatpage_id_refs_id_c0e84f5a FOREIGN KEY (flatpage_id) REFERENCES django_flatpage(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_user_id_refs_id_350b2128558f360f; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT from_user_id_refs_id_350b2128558f360f FOREIGN KEY (from_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: operatingsystem_id_refs_id_27fb2f97b1fe49b0; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_producttask_os_used
    ADD CONSTRAINT operatingsystem_id_refs_id_27fb2f97b1fe49b0 FOREIGN KEY (operatingsystem_id) REFERENCES core_operatingsystem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: operatingsystem_id_refs_id_4472cff134669d81; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_review_os_used
    ADD CONSTRAINT operatingsystem_id_refs_id_4472cff134669d81 FOREIGN KEY (operatingsystem_id) REFERENCES core_operatingsystem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: operatingsystem_id_refs_id_58bb94853d6ce77b; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_product_operating_systems
    ADD CONSTRAINT operatingsystem_id_refs_id_58bb94853d6ce77b FOREIGN KEY (operatingsystem_id) REFERENCES core_operatingsystem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: operatingsystem_id_refs_id_7a6add93775e83d; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial_os_used
    ADD CONSTRAINT operatingsystem_id_refs_id_7a6add93775e83d FOREIGN KEY (operatingsystem_id) REFERENCES core_operatingsystem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_id_refs_id_1478ef4eaee4d0c4; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_product_operating_systems
    ADD CONSTRAINT product_id_refs_id_1478ef4eaee4d0c4 FOREIGN KEY (product_id) REFERENCES core_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_id_refs_id_223218c96b2fc721; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_review
    ADD CONSTRAINT product_id_refs_id_223218c96b2fc721 FOREIGN KEY (product_id) REFERENCES core_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_id_refs_id_31452ad871668e23; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_product_categories
    ADD CONSTRAINT product_id_refs_id_31452ad871668e23 FOREIGN KEY (product_id) REFERENCES core_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_id_refs_id_412447049a6de7b; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial
    ADD CONSTRAINT product_id_refs_id_412447049a6de7b FOREIGN KEY (product_id) REFERENCES core_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_id_refs_id_478855c25d4bcdd6; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT product_id_refs_id_478855c25d4bcdd6 FOREIGN KEY (product_id) REFERENCES core_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: producttask_id_refs_id_d30d948d53eb1cc; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_producttask_os_used
    ADD CONSTRAINT producttask_id_refs_id_d30d948d53eb1cc FOREIGN KEY (producttask_id) REFERENCES core_producttask(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: review_id_refs_id_35cbac166a1d3a02; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_review_os_used
    ADD CONSTRAINT review_id_refs_id_35cbac166a1d3a02 FOREIGN KEY (review_id) REFERENCES core_review(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reviewer_id_refs_id_503eb9c8458eb6a; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT reviewer_id_refs_id_503eb9c8458eb6a FOREIGN KEY (reviewer_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reviewer_id_refs_id_5935fe6dda8d81e1; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_review
    ADD CONSTRAINT reviewer_id_refs_id_5935fe6dda8d81e1 FOREIGN KEY (reviewer_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tag_id_refs_id_68bc859553e41e20; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_customtagitem
    ADD CONSTRAINT tag_id_refs_id_68bc859553e41e20 FOREIGN KEY (tag_id) REFERENCES core_customtag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: task_id_refs_id_3edc3d918fb2ef27; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial_tasks
    ADD CONSTRAINT task_id_refs_id_3edc3d918fb2ef27 FOREIGN KEY (task_id) REFERENCES core_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: task_id_refs_id_4fba009ace184775; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_producttask
    ADD CONSTRAINT task_id_refs_id_4fba009ace184775 FOREIGN KEY (task_id) REFERENCES core_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_user_id_refs_id_350b2128558f360f; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT to_user_id_refs_id_350b2128558f360f FOREIGN KEY (to_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorial_id_refs_id_146a43853f3d95b6; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial_os_used
    ADD CONSTRAINT tutorial_id_refs_id_146a43853f3d95b6 FOREIGN KEY (tutorial_id) REFERENCES core_tutorial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorial_id_refs_id_5468958f11508e80; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial_tasks
    ADD CONSTRAINT tutorial_id_refs_id_5468958f11508e80 FOREIGN KEY (tutorial_id) REFERENCES core_tutorial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_6509d1160f013c12; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT user_id_refs_id_6509d1160f013c12 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_65cfc33f43b80394; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT user_id_refs_id_65cfc33f43b80394 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: writer_id_refs_id_8b5553f3c37d045; Type: FK CONSTRAINT; Schema: public; Owner: cs280
--

ALTER TABLE ONLY core_tutorial
    ADD CONSTRAINT writer_id_refs_id_8b5553f3c37d045 FOREIGN KEY (writer_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: cs280
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM cs280;
GRANT ALL ON SCHEMA public TO cs280;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

