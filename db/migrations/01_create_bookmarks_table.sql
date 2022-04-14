# Bookmark Manager

CREATE DATABASE bookmark_manager;

CREATE TABLE bookmarks(
  id SERIAL PRIMARY KEY,
  url VARCHAR(60) NOT NULL
);

# Bookmark Manager Test

CREATE DATABASE bookmark_manager_test

CREATE TABLE bookmarks(
  id SERIAL PRIMARY KEY,
  url VARCHAR(60) NOT NULL
);