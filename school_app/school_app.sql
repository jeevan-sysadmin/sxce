
CREATE DATABASE IF NOT EXISTS school_app;
USE school_app;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(100),
  photo VARCHAR(255),
  role VARCHAR(50),
  college_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  roll_number VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS attendance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  hour INT NOT NULL,
  status ENUM('P', 'A') NOT NULL,
  date DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO users (username, password, name, photo, role, college_name)
VALUES ('admin', 'admin123', 'Admin User', 'admin_photo.jpg', 'Administrator', 'ABC College');

INSERT INTO students (name, roll_number) VALUES
('Student One', 'S001'),
('Student Two', 'S002'),
('Student Three', 'S003');
