CREATE TABLE movies (
    id      BIGSERIAL PRIMARY KEY NOT NULL,
    count   BIGINT,
    image   VARCHAR(255),
    score   DECIMAL(9,2),
    title   VARCHAR(255)
);