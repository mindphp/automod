#
# $Id$
#


# Table: 'phpbb_mods'
CREATE TABLE phpbb_mods (
	mod_id INTEGER NOT NULL,
	mod_active INTEGER DEFAULT 1 NOT NULL,
	mod_time INTEGER DEFAULT 0 NOT NULL,
	mod_dependencies BLOB SUB_TYPE TEXT CHARACTER SET UTF8 DEFAULT '' NOT NULL,
	mod_name VARCHAR(255) CHARACTER SET NONE DEFAULT '' NOT NULL,
	mod_description BLOB SUB_TYPE TEXT CHARACTER SET UTF8 DEFAULT '' NOT NULL,
	mod_version VARCHAR(100) CHARACTER SET NONE DEFAULT '' NOT NULL,
	mod_author_notes BLOB SUB_TYPE TEXT CHARACTER SET UTF8 DEFAULT '' NOT NULL,
	mod_author_name VARCHAR(255) CHARACTER SET NONE DEFAULT '' NOT NULL,
	mod_author_email VARCHAR(255) CHARACTER SET NONE DEFAULT '' NOT NULL,
	mod_author_url VARCHAR(255) CHARACTER SET NONE DEFAULT '' NOT NULL,
	mod_actions BLOB SUB_TYPE TEXT CHARACTER SET UTF8 DEFAULT '' NOT NULL,
	mod_languages VARCHAR(255) CHARACTER SET NONE DEFAULT '' NOT NULL,
	mod_templates VARCHAR(255) CHARACTER SET NONE DEFAULT '' NOT NULL
);;


CREATE GENERATOR phpbb_mods_gen;;
SET GENERATOR phpbb_mods_gen TO 0;;

CREATE TRIGGER t_phpbb_mods FOR phpbb_mods
BEFORE INSERT
AS
BEGIN
	NEW.mod_id = GEN_ID(phpbb_mods_gen, 1);
END;;


