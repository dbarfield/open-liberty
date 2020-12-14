CREATE TABLE ${schemaname}.EmbedIDMOEntityA (id INTEGER NOT NULL, password VARCHAR(255), userName VARCHAR(255), identity_id INTEGER, identity_country VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.EmbedIDMOEntityB (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, name VARCHAR(255), salary INTEGER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.IDClassMOEntityA (id INTEGER NOT NULL, password VARCHAR(255), userName VARCHAR(255), identity_id INTEGER, identity_country VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.IDClassMOEntityB (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, name VARCHAR(255), salary INTEGER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.MOBiEntA (id INTEGER NOT NULL, name VARCHAR(255), DEFAULTRELATIONSHIP_ID INTEGER, CASCADEALL_ID INTEGER, CASCADEMERGE_ID INTEGER, CASCADEPERSIST_ID INTEGER, CASCADEREFRESH_ID INTEGER, CASCADEREMOVE_ID INTEGER, LAZY_ID INTEGER, MANYTOONE_ENTB INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_CA (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_CM (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_CP (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_CRF (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_CRM (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_DR (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_JC (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOBiEntB_LZ (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MONoOptBiEntityA (id INTEGER NOT NULL, name VARCHAR(255), NOOPTIONAL_ID INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MONoOptBiEntityB (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MONoOptEntityA (id INTEGER NOT NULL, name VARCHAR(255), NOOPTIONAL_ID INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MONoOptEntityB (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOUniEntityA (id INTEGER NOT NULL, name VARCHAR(255), CASCADEALL_ID INTEGER, CASCADEMERGE_ID INTEGER, CASCADEPERSIST_ID INTEGER, CASCADEREFRESH_ID INTEGER, CASCADEREMOVE_ID INTEGER, DEFAULTRELATIONSHIP_ID INTEGER, LAZY_ID INTEGER, MANYTOONE_ENTB INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.MOUniEntityB (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLEmbedIDMOEntityA (id INTEGER NOT NULL, password VARCHAR(255), userName VARCHAR(255), identity_id INTEGER, identity_country VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLEmbedIDMOEntityB (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, name VARCHAR(255), salary INTEGER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.XMLIDClassMOEntityA (id INTEGER NOT NULL, password VARCHAR(255), userName VARCHAR(255), identity_id INTEGER, identity_country VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLIDClassMOEntityB (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, name VARCHAR(255), salary INTEGER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.XMLMOBiEntA (id INTEGER NOT NULL, name VARCHAR(255), MANYTOONE_ENTB INTEGER, CASCADEALL_ID INTEGER, CASCADEMERGE_ID INTEGER, CASCADEPERSIST_ID INTEGER, CASCADEREFRESH_ID INTEGER, CASCADEREMOVE_ID INTEGER, DEFAULTRELATIONSHIP_ID INTEGER, LAZY_ID INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_CA (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_CM (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_CP (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_CRF (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_CRM (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_DR (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_JC (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOBiEntB_LZ (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMONoOptBiEntityA (id INTEGER NOT NULL, name VARCHAR(255), NOOPTIONAL_ID INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMONoOptBiEntityB (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMONoOptEntityA (id INTEGER NOT NULL, name VARCHAR(255), NOOPTIONAL_ID INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMONoOptEntityB (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOUniEntityA (id INTEGER NOT NULL, name VARCHAR(255), CASCADEALL_ID INTEGER, CASCADEMERGE_ID INTEGER, CASCADEPERSIST_ID INTEGER, CASCADEREFRESH_ID INTEGER, CASCADEREMOVE_ID INTEGER, DEFAULTRELATIONSHIP_ID INTEGER, LAZY_ID INTEGER, MANYTOONE_ENTB INTEGER, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLMOUniEntityB (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE INDEX ${schemaname}.I_MBDDTTY_IDENTITY ON ${schemaname}.EmbedIDMOEntityA (identity_id, identity_country);
CREATE INDEX ${schemaname}.I_DCLSTTY_IDENTITY ON ${schemaname}.IDClassMOEntityA (identity_id, identity_country);
CREATE INDEX ${schemaname}.I_MOBIENT_CASCADEALL ON ${schemaname}.MOBiEntA (CASCADEALL_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_CASCADEMERGE ON ${schemaname}.MOBiEntA (CASCADEMERGE_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_CASCADEPERSIST ON ${schemaname}.MOBiEntA (CASCADEPERSIST_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_CASCADEREFRESH ON ${schemaname}.MOBiEntA (CASCADEREFRESH_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_CASCADEREMOVE ON ${schemaname}.MOBiEntA (CASCADEREMOVE_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_DEFAULTRELATIONSHIP ON ${schemaname}.MOBiEntA (DEFAULTRELATIONSHIP_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_LAZY ON ${schemaname}.MOBiEntA (LAZY_ID);
CREATE INDEX ${schemaname}.I_MOBIENT_OVERRIDECOLUMNNAMERELATIONSHIP ON ${schemaname}.MOBiEntA (MANYTOONE_ENTB);
CREATE INDEX ${schemaname}.I_MNPTTTY_NOOPTIONAL ON ${schemaname}.MONoOptBiEntityA (NOOPTIONAL_ID);
CREATE INDEX ${schemaname}.I_MNPTTTY_NOOPTIONAL1 ON ${schemaname}.MONoOptEntityA (NOOPTIONAL_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_CASCADEALL ON ${schemaname}.MOUniEntityA (CASCADEALL_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_CASCADEMERGE ON ${schemaname}.MOUniEntityA (CASCADEMERGE_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_CASCADEPERSIST ON ${schemaname}.MOUniEntityA (CASCADEPERSIST_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_CASCADEREFRESH ON ${schemaname}.MOUniEntityA (CASCADEREFRESH_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_CASCADEREMOVE ON ${schemaname}.MOUniEntityA (CASCADEREMOVE_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_DEFAULTRELATIONSHIP ON ${schemaname}.MOUniEntityA (DEFAULTRELATIONSHIP_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_LAZY ON ${schemaname}.MOUniEntityA (LAZY_ID);
CREATE INDEX ${schemaname}.I_MUNNTTY_OVERRIDECOLUMNNAMERELATIONSHIP ON ${schemaname}.MOUniEntityA (MANYTOONE_ENTB);
CREATE INDEX ${schemaname}.I_XMLMTTY_IDENTITY ON ${schemaname}.XMLEmbedIDMOEntityA (identity_id, identity_country);
CREATE INDEX ${schemaname}.I_XMLDTTY_IDENTITY ON ${schemaname}.XMLIDClassMOEntityA (identity_id, identity_country);
CREATE INDEX ${schemaname}.I_XMLMBNT_CASCADEALL ON ${schemaname}.XMLMOBiEntA (CASCADEALL_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_CASCADEMERGE ON ${schemaname}.XMLMOBiEntA (CASCADEMERGE_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_CASCADEPERSIST ON ${schemaname}.XMLMOBiEntA (CASCADEPERSIST_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_CASCADEREFRESH ON ${schemaname}.XMLMOBiEntA (CASCADEREFRESH_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_CASCADEREMOVE ON ${schemaname}.XMLMOBiEntA (CASCADEREMOVE_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_DEFAULTRELATIONSHIP ON ${schemaname}.XMLMOBiEntA (DEFAULTRELATIONSHIP_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_LAZY ON ${schemaname}.XMLMOBiEntA (LAZY_ID);
CREATE INDEX ${schemaname}.I_XMLMBNT_OVERRIDECOLUMNNAMERELATIONSHIP ON ${schemaname}.XMLMOBiEntA (MANYTOONE_ENTB);
CREATE INDEX ${schemaname}.I_XMLMTTY_NOOPTIONAL1 ON ${schemaname}.XMLMONoOptBiEntityA (NOOPTIONAL_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_NOOPTIONAL ON ${schemaname}.XMLMONoOptEntityA (NOOPTIONAL_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_CASCADEALL ON ${schemaname}.XMLMOUniEntityA (CASCADEALL_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_CASCADEMERGE ON ${schemaname}.XMLMOUniEntityA (CASCADEMERGE_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_CASCADEPERSIST ON ${schemaname}.XMLMOUniEntityA (CASCADEPERSIST_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_CASCADEREFRESH ON ${schemaname}.XMLMOUniEntityA (CASCADEREFRESH_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_CASCADEREMOVE ON ${schemaname}.XMLMOUniEntityA (CASCADEREMOVE_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_DEFAULTRELATIONSHIP ON ${schemaname}.XMLMOUniEntityA (DEFAULTRELATIONSHIP_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_LAZY ON ${schemaname}.XMLMOUniEntityA (LAZY_ID);
CREATE INDEX ${schemaname}.I_XMLMTTY_OVERRIDECOLUMNNAMERELATIONSHIP ON ${schemaname}.XMLMOUniEntityA (MANYTOONE_ENTB);