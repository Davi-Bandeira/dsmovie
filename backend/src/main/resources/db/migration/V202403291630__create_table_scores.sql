CREATE TABLE scores (
    value       DECIMAL(9,2) NOT NULL,
    movie_id    BIGINT NOT NULL,
    user_id     BIGINT NOT NULL,
    PRIMARY KEY (movie_id, user_id),
    CONSTRAINT movie_id_fk FOREIGN KEY (movie_id)
        REFERENCES movies (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT user_id_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);