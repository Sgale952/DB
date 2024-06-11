CREATE TABLE actions.liked_playlists(
    user_id INT NOT NULL,
    item_id INT NOT NULL,
    added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users.profile(item_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES playlists.profile(item_id) ON DELETE CASCADE,

    UNIQUE (user_id, item_id)
);