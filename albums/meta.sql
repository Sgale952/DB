CREATE TABLE albums.meta(
    item_id INT NOT NULL UNIQUE,
    tale TEXT,
    likes INT NOT NULL DEFAULT 0,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (item_id) REFERENCES albums.profile(item_id) ON DELETE CASCADE
);