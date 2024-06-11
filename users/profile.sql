CREATE TABLE users.profile(
    item_id SERIAL PRIMARY KEY,
    cover_id INT NOT NULL DEFAULT 1,
    header_id INT NOT NULL DEFAULT 2,
    username VARCHAR(20) NOT NULL,
    
    FOREIGN KEY (cover_id) REFERENCES images.images(image_id) ON DELETE SET DEFAULT,
    FOREIGN KEY (header_id) REFERENCES images.images(image_id) ON DELETE SET DEFAULT
);