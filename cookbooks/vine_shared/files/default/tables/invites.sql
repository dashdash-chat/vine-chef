CREATE TABLE invites (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(22) NOT NULL,
    sender INT DEFAULT NULL,
    FOREIGN KEY (sender) REFERENCES users(id),
    max_uses SMALLINT UNSIGNED DEFAULT 1,
    UNIQUE (code),
    visible BOOLEAN NOT NULL DEFAULT TRUE,
    created TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
) ENGINE = InnoDB;
