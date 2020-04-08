DROP TABLE IF EXISTS BOOK;
DROP TABLE IF EXISTS CATEGORY;

CREATE TABLE CATEGORY (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL
);


CREATE TABLE BOOK (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  autor VARCHAR(250) NOT NULL,
  category_id BIGINT DEFAULT NULL
);

ALTER TABLE BOOK ADD FOREIGN KEY (category_id) REFERENCES PUBLIC.CATEGORY(id);

INSERT INTO CATEGORY(id, name) VALUES (1, 'Libros de texto');
INSERT INTO CATEGORY(id, name) VALUES (2, 'Libros de economía');

INSERT INTO BOOK(id, name, autor, category_id) VALUES (1, 'Liberalismo', 'Juan Ramón Rallo', 2);
INSERT INTO BOOK(id, name, autor, category_id) VALUES (2, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 1);
