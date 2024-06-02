CREATE TABLE playlists.security(
    item_id INT NOT NULL UNIQUE,
    access BOOLEAN NOT NULL

        FOREIGN KEY (item_id) REFERENCES playlists.profile(item_id) ON DELETE CASCADE
);