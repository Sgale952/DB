CREATE TABLE actions.liked_albums(
    user_id INT NOT NULL,
    item_id INT NOT NULL,
    added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users.profile(item_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES albums.profile(item_id) ON DELETE CASCADE
);