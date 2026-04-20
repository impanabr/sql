CREATE DATABASE instagram_db;
USE instagram_db;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) UNIQUE,
    password VARCHAR(50) NOT NULL,
    phone VARCHAR(15) UNIQUE,
    gender VARCHAR(10) CHECK (gender IN ('Male','Female')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    bio VARCHAR(100)
);
INSERT INTO users VALUES
(1,'user1','u1@gmail.com','pass12345','9000000001','Male',NOW(),'Hello'),
(2,'user2','u2@gmail.com','pass12345','9000000002','Female',NOW(),'Hi'),
(3,'user3','u3@gmail.com','pass12345','9000000003','Male',NOW(),'Hey'),
(4,'user4','u4@gmail.com','pass12345','9000000004','Female',NOW(),'Bio'),
(5,'user5','u5@gmail.com','pass12345','9000000005','Male',NOW(),'Text'),
(6,'user6','u6@gmail.com','pass12345','9000000006','Female',NOW(),'Info'),
(7,'user7','u7@gmail.com','pass12345','9000000007','Male',NOW(),'Hello'),
(8,'user8','u8@gmail.com','pass12345','9000000008','Female',NOW(),'Hi'),
(9,'user9','u9@gmail.com','pass12345','9000000009','Male',NOW(),'Hey'),
(10,'user10','u10@gmail.com','pass12345','9000000010','Female',NOW(),'Bio'),
(11,'user11','u11@gmail.com','pass12345','9000000011','Male',NOW(),'Text'),
(12,'user12','u12@gmail.com','pass12345','9000000012','Female',NOW(),'Info'),
(13,'user13','u13@gmail.com','pass12345','9000000013','Male',NOW(),'Hello'),
(14,'user14','u14@gmail.com','pass12345','9000000014','Female',NOW(),'Hi'),
(15,'user15','u15@gmail.com','pass12345','9000000015','Male',NOW(),'Hey');
select*from users;

CREATE TABLE comments (
    comment_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    comment_text VARCHAR(255),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO comments VALUES
(1,1,2,'Nice'),
(2,2,3,'Good'),
(3,3,4,'Awesome'),
(4,4,5,'Cool'),
(5,5,6,'Great');
select*from comments;

CREATE TABLE posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    caption VARCHAR(255),
    post_date DATE,
    likes_count INT DEFAULT 0,
    comments_count INT DEFAULT 0,
    location VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO posts VALUES
(1,1,'Post 1','2023-01-01',10,2,'Bangalore'),
(2,2,'Post 2','2023-01-02',20,3,'Mumbai'),
(3,3,'Post 3','2023-01-03',15,1,'Delhi'),
(4,4,'Post 4','2023-01-04',25,4,'Chennai'),
(5,5,'Post 5','2023-01-05',30,5,'Pune'),
(6,6,'Post 6','2023-01-06',12,2,'Hyderabad'),
(7,7,'Post 7','2023-01-07',18,3,'Kolkata'),
(8,8,'Post 8','2023-01-08',22,2,'Goa'),
(9,9,'Post 9','2023-01-09',28,4,'Jaipur'),
(10,10,'Post 10','2023-01-10',35,6,'Nagpur'),
(11,11,'Post 11','2023-01-11',40,5,'Surat'),
(12,12,'Post 12','2023-01-12',16,2,'Lucknow'),
(13,13,'Post 13','2023-01-13',19,3,'Indore'),
(14,14,'Post 14','2023-01-14',23,4,'Bhopal'),
(15,15,'Post 15','2023-01-15',27,3,'Mysore');
INSERT INTO users VALUES(16,'user16','u16@gmail.com','pass12345','9000000016','Female',NOW(),'New user');
UPDATE posts SET likes_count = 100 WHERE posts_id = 1;
DELETE FROM posts WHERE user_id = 16 ;
select*from Post;

CREATE TABLE likes (
    like_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    like_date DATE,
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO likes VALUES
(1,1,2,'2023-01-01'),
(2,2,3,'2023-01-02'),
(3,3,4,'2023-01-03'),
(4,4,5,'2023-01-04'),
(5,5,6,'2023-01-05');
select*from likes;

CREATE TABLE reels (
    reel_id INT PRIMARY KEY,
    user_id INT,
    title VARCHAR(100),
    duration INT,
    views INT,
    likes INT,
    upload_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO reels VALUES
(1,1,'Reel1',30,100,10,'2023-01-01'),
(2,2,'Reel2',25,200,20,'2023-01-02'),
(3,3,'Reel3',40,150,15,'2023-01-03'),
(4,4,'Reel4',35,180,18,'2023-01-04'),
(5,5,'Reel5',20,220,25,'2023-01-05'),
(6,6,'Reel6',28,160,12,'2023-01-06'),
(7,7,'Reel7',32,140,11,'2023-01-07'),
(8,8,'Reel8',27,170,14,'2023-01-08'),
(9,9,'Reel9',29,190,16,'2023-01-09'),
(10,10,'Reel10',33,210,19,'2023-01-10'),
(11,11,'Reel11',26,130,9,'2023-01-11'),
(12,12,'Reel12',31,120,8,'2023-01-12'),
(13,13,'Reel13',34,175,13,'2023-01-13'),
(14,14,'Reel14',22,165,12,'2023-01-14'),
(15,15,'Reel15',36,185,17,'2023-01-15');
select*from reels;

CREATE TABLE followers (
    follow_id INT PRIMARY KEY,
    follower_id INT,
    following_id INT,
    follow_date DATE,
    FOREIGN KEY (follower_id) REFERENCES users(user_id),
    FOREIGN KEY (following_id) REFERENCES users(user_id)
);
INSERT INTO followers VALUES
(1,2,1,'2023-01-01'),
(2,3,2,'2023-01-02'),
(3,4,3,'2023-01-03'),
(4,5,4,'2023-01-04'),
(5,6,5,'2023-01-05');
select*from followers;

CREATE TABLE messages (
    message_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    message_text VARCHAR(255),
    sent_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20),
    type VARCHAR(20),
    FOREIGN KEY (sender_id) REFERENCES users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES users(user_id)
);
INSERT INTO messages VALUES
(1,1,2,'Hi','2023-01-01 10:00:00','Seen','Text'),
(2,2,3,'Hello','2023-01-02 11:00:00','Seen','Text'),
(3,3,4,'Hey','2023-01-03 12:00:00','Delivered','Text'),
(4,4,5,'Yo','2023-01-04 01:00:00','Seen','Text'),
(5,5,6,'Hi','2023-01-05 02:00:00','Delivered','Text'),
(6,6,7,'Hello','2023-01-06 03:00:00','Seen','Text'),
(7,7,8,'Hey','2023-01-07 04:00:00','Seen','Text'),
(8,8,9,'Yo','2023-01-08 05:00:00','Delivered','Text'),
(9,9,10,'Hi','2023-01-09 06:00:00','Seen','Text'),
(10,10,11,'Hello','2023-01-10 07:00:00','Seen','Text'),
(11,11,12,'Hey','2023-01-11 08:00:00','Delivered','Text'),
(12,12,13,'Yo','2023-01-12 09:00:00','Seen','Text'),
(13,13,14,'Hi','2023-01-13 10:00:00','Seen','Text'),
(14,14,15,'Hello','2023-01-14 11:00:00','Delivered','Text'),
(15,15,1,'Hey','2023-01-15 12:00:00','Seen','Text');
select * from messages;

CREATE TABLE reel_likes (
    id INT PRIMARY KEY,
    reel_id INT,
    user_id INT,
    like_date DATE,
    FOREIGN KEY (reel_id) REFERENCES reels(reel_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO reel_likes VALUES
(1,1,2,'2023-01-01'),
(2,2,3,'2023-01-02'),
(3,3,4,'2023-01-03'),
(4,4,5,'2023-01-04'),
(5,5,6,'2023-01-05');
select * from reel_likes;

