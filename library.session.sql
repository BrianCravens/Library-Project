INSERT INTO libraryapp_library
(title, address)
VALUES
('Bellview Library', '500 Main Street');

INSERT INTO libraryapp_book
(title, isbn, year_published, location_id, author, librarian_id)
VALUES
('Lamb', '59359409490', 2004, 1, 'Christopher Moore', 1);

INSERT INTO libraryapp_book
(title, isbn, year_published, location_id, author, librarian_id)
VALUES
('Taiko', '04275747474873', 2001, 1, 'Eiji Yoshikawa', 1);

INSERT INTO libraryapp_book
(title, isbn, year_published, location_id, author, librarian_id)
VALUES
('The Golem and the Jinni', '8592475822', 2013, 1, 'Helene Wecker', 2);
INSERT INTO libraryapp_book
(title, isbn, year_published, location_id, author, librarian_id)
VALUES
('Wrestlin101', '1011011010101', 2019, 1, 'The Rock', 3);

INSERT INTO libraryapp_library
(title, address)
VALUES
('Lebanon-Wilson County Library', '108 S Hatton Ave, Lebanon, TN 37087');
INSERT INTO libraryapp_library
(title, address)
VALUES
('Mt. Juliet - Wilson County Library', '2765 N Mt Juliet Rd, Mt. Juliet, TN 37122');

SELECT
    l.id,
    l.title,
    l.address,
    b.id book_id,
    b.title book_title,
    b.author,
    b.year_published,
    b.isbn
                
FROM libraryapp_library l
JOIN libraryapp_book b ON l.id = b.location_id

