DROP DATABASE IF EXISTS financials;

CREATE DATABASE financials;

USE financials;

CREATE TABLE scores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  ticker STR,
  score FLOAT,
  date DATE,
  price FLOAT,
);
