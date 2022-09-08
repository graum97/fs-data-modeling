CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  email VARCHAR(255),
  password VARCHAR(255)
  );

  CREATE TABLE chefs (
  chef_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id)
  );

  CREATE TABLE ingredients (
  ingredient_id SERIAL PRIMARY KEY
  );

  CREATE TABLE grocery_lists (
  grocery_list_id SERIAL PRIMARY KEY,
  ingredient_id INT NOT NULL REFERENCES ingredients(ingredient_id)
  );

CREATE TABLE comments (
  comment_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  rating INTEGER,
  review VARCHAR(255),
  questions VARCHAR(255)
  );

  CREATE TABLE recipes (
  recipe_id SERIAL PRIMARY KEY,
  ingredient_id INT NOT NULL REFERENCES ingredients(ingredient_id),
  comment_id INT NOT NULL REFERENCES comments(comment_id),
  image_id SERIAL,
  instruction VARCHAR(255),
  private BOOLEAN
  );

CREATE TABLE occasions (
  occasion_id SERIAL PRIMARY KEY,
  recipe_id INT NOT NULL REFERENCES recipes(recipe_id)
  );
  
INSERT INTO users (email, password)
VALUES ('happycamper@funmail.com', 'jrn435nwer');

