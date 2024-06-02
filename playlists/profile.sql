CREATE TABLE playlists.profile(
    item_id SERIAL PRIMARY KEY,
    creator_id INT NOT NULL,
    cover_id INT NOT NULL DEFAULT 4,
    title VARCHAR(40) NOT NULL,
    genre VARCHAR(15),
    econtent BOOLEAN DEFAULT false,

    FOREIGN KEY (creator_id) REFERENCES users.profile(item_id) ON DELETE CASCADE,
    FOREIGN KEY (cover_id) REFERENCES images.images(image_id) ON DELETE SET DEFAULT,
    FOREIGN KEY (genre) REFERENCES music.genres(genre_id) ON DELETE RESTRICT ON UPDATE CASCADE
);