CREATE KEYSPACE findadoc
   WITH REPLICATION = {'class':'SimpleStrategy', 'replication_factor': 1}
USE findadoc
CREATE TABLE doctors(doc_id uuid, full_name text, category text, practice_name text, street_address text, city text, state text, new patients boolean, graduation_year int, PRIMARY KEY(doc_id, full_name, category, city, state));

CREATE INDEX on doctors (state);
CREATE TABLE categories(cat_id uuid PRIMARY KEY);

INSERT INTO doctors(doc_id, full_name, category, practice_name, street_adress, city, state, new_patients, graduation_year)
VALUES(now(), 'william k samson md', 'neurologist', 'family medical', '30 congress st', 'boston', 'ma', true, 1997);
SELECT * FROM doctors;
INSERT INTO doctors(doc_id, full_name, category, practice_name, street_adress, city, state, new_patients, graduation_year)
VALUES(now(), 'tom k sammy md', 'general', 'private practice', '31 congress st', 'boston', 'ma', true, 1997);
DROP TABLE findadoc.categories;
CREATE TABLE categories(cat_id uuid, name text, PRIMARY KEY(cat_id));
INSERT INTO categories(cat_id, name) VALUES(now(), 'Neurologist');
INSERT INTO categories(cat_id, name) VALUES(now(), 'General');
