 create TABLE review( id INT AUTO_INCREMENT PRIMARY KEY, author VARCHAR(255) NOT NULL, headline VARCHAR(255), review_text TEXT(5000), album_id INT NOT NULL, FOREIGN KEY (album_id) REFERENCES album(id));