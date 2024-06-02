CREATE TABLE actions.listened_music(
    user_id INT NOT NULL,
    item_id INT NOT NULL,
    added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users.profile(item_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES music.profile(item_id) ON DELETE CASCADE
);

CREATE OR REPLACE FUNCTION check_user_limit() RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT COUNT(*) FROM actions.listened_music WHERE user_id = NEW.user_id) >= 100 THEN
        DELETE FROM actions.listened_music
        WHERE user_id = NEW.user_id AND added = (
            SELECT MIN(added) FROM actions.listened_music WHERE user_id = NEW.user_id
        );
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER user_limit_trigger
BEFORE INSERT ON actions.listened_music
FOR EACH ROW
EXECUTE PROCEDURE check_user_limit();