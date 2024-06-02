CREATE TABLE music.profile(
    item_id SERIAL PRIMARY KEY,
    author_id INT NOT NULL,
    cover_id INT NOT NULL DEFAULT 3,
    title VARCHAR(40) NOT NULL,
    genre VARCHAR(15) NOT NULL,
    econtent BOOLEAN NOT NULL DEFAULT false,
    
    FOREIGN KEY (author_id) REFERENCES users.security(item_id) ON DELETE SET NULL,
    FOREIGN KEY (genre) REFERENCES music.genres(genre_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (cover_id) REFERENCES images.images(image_id) ON DELETE SET DEFAULT
);