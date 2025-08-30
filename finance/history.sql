-- Create a table for save every user movment/

CREATE TABLE history (
                id INTEGER,
                account TEXT NOT NULL,
                time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                type TEXT NOT NULL,
                symbol TEXT NOT NULL,
                name TEXT NOT NULL,
                shares INTEGER NOT NULL,
                price REAL,
                PRIMARY KEY(id),
                FOREIGN KEY(account) REFERENCES users(username)
            );