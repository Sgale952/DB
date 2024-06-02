CREATE TABLE playlists.filling(
    item_id INT NOT NULL,
    music_id INT NOT NULL,
    added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (item_id) REFERENCES playlists.profile(item_id) ON DELETE CASCADE,
    FOREIGN KEY (music_id) REFERENCES music.profile(item_id) ON DELETE CASCADE,
    
    UNIQUE (item_id, music_id)
);