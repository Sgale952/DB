CREATE TABLE albums.security(
    item_id INT NOT NULL UNIQUE,
    access BOOLEAN NOT NULL,

    FOREIGN KEY (item_id) REFERENCES albums.profile(item_id) ON DELETE CASCADE
);