CREATE TABLE actions.liked_authors(
    user_id INT NOT NULL,
    item_id INT NOT NULL,
    added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users.profile(item_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES users.profile(item_id) ON DELETE CASCADE,
    CONSTRAINT chk_different_users CHECK (user_id != item_id),
    UNIQUE (item_id, music_id)
);