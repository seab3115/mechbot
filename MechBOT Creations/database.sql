-- SQL TABLES (Example) --
CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255),
  password VARCHAR(255),
  name VARCHAR(255),
  login_provider ENUM('google', 'apple', 'email')
);

CREATE TABLE JobApplications (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(20),
  education TEXT,
  skills TEXT,
  experience TEXT,
  resume_link VARCHAR(255),
  photo_link VARCHAR(255),
  submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
