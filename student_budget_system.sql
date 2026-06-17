CREATE DATABASE student_budget_system;

USE student_budget_system;

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE allowances(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    allowance_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE expenses(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    category VARCHAR(100),
    description VARCHAR(255),
    amount DECIMAL(10,2),
    expense_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE savings_goals(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    goal_name VARCHAR(255),
    target_amount DECIMAL(10,2),
    current_amount DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY(user_id) REFERENCES users(id)
);