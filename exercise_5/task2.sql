CREATE ROLE "author_role";

CREATE ROLE "commenter_role";


GRANT UPDATE ON entry_update to "author_role";
GRANT UPDATE ON entry_tag to "author_role";
GRANT UPDATE ON Entry to "author_role";
GRANT UPDATE ON updating to "author_role";

GRANT UPDATE ON entry_comment to "commenter_role";

GRANT UPDATE ON comment to "commenter_role";

CREATE USER author_app@localhost IDENTIFIED BY "veryunsecurepassword";

CREATE USER commenter_app@localhost IDENTIFIED BY "unsecurepassword";

GRANT author_role to author_app@localhost;
grant commenter_role to commenter_app@localhost;

-- REVOKE ALL PRIVILEGES, GRANT OPTION FROM author_app@localhost;
-- delete user commenter_app;
-- drop user author_app@localhost;

