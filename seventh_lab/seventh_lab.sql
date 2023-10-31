CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    category_id INT,
    date_published DATE,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    news_id INT,
    comment TEXT,
    user_ip VARCHAR(45),
    date_posted DATETIME,
    FOREIGN KEY (news_id) REFERENCES news(id)
);

CREATE TABLE ratings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    news_id INT,
    user_ip VARCHAR(45),
    rating INT,
    FOREIGN KEY (news_id) REFERENCES news(id)
);