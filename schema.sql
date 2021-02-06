
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT NOT NULL,
    user_level INTEGER NOT NULL
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    content TEXT,
    from_id INTEGER REFERENCES users,
    to_id INTEGER REFERENCES users,
    sent_at TIMESTAMP
);

CREATE TABLE ad (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users,
    cat_id INTEGER REFERENCES category,
    ad_type INTEGER,
    sent_at TIMESTAMP,
    valid INTEGER,
    item TEXT,
    ad_text TEXT,
    img INTEGER REFERENCES images
);

CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    parent_id INTEGER,
    dep INTEGER,
    cat_name TEXT UNIQUE
);

CREATE TABLE images (
    id SERIAL PRIMARY KEY,
    data BYTEA
);