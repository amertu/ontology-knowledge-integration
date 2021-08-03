CREATE TABLE IF NOT EXISTS Restaurant
(
id	INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
description VARCHAR(500),
price_category VARCHAR(255),
breakfast BOOLEAN,
lunch BOOLEAN,
sandwiches BOOLEAN,
city VARCHAR(255),
post_code VARCHAR(255) NOT NULL,
street VARCHAR(255) NOT NULL,
number VARCHAR(255) NOT NULL,
number_addon INT,
phone INT NOT NULL,
url VARCHAR(255) NOT NULL,
latitude REAL NOT NULL,
longitude REAL NOT NULL,
delivery_charge REAL NOT NULL,
min_order REAL NOT NULL,
payment_cash VARCHAR(255) NOT NULL,
payment_card VARCHAR(255) NOT NULL,
waiting_time INT,
delivery_time INT,
delivery_postcode VARCHAR(255),
rating_value REAL,
rating_count INT,
data_source VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Cuisine
(
id	INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS RestaurantCuisine
(
id	INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
cuisine_id INT NOT NULL,
restaurant_id INT NOT NULL,
foreign key (restaurant_id) references restaurant(id),
foreign key (cuisine_id) references cuisine(id)	
);


CREATE TABLE IF NOT EXISTS Menu
(
id	INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
description VARCHAR(500),
price REAL NOT NULL,
restaurant_id INT NOT NULL,
foreign key (restaurant_id) references restaurant(id)
);
