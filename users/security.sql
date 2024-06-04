CREATE TYPE user_role AS ENUM ('USER', 'AUTHOR', 'ADMIN');

CREATE TABLE users.security(
    item_id INT NOT NULL UNIQUE,
    email VARCHAR(30) NOT NULL UNIQUE,
    password VARCHAR(64) NOT NULL,
    access BOOLEAN NOT NULL DEFAULT true,
    access_role user_role NOT NULL DEFAULT 'USER'

    FOREIGN KEY (item_id) REFERENCES users.profile(item_id) ON DELETE CASCADE
);