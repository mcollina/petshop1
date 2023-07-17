CREATE TABLE pet_stuff (
    id INTEGER PRIMARY KEY,
    item_name TEXT NOT NULL,
    item_description TEXT,
    item_price REAL NOT NULL
);

CREATE TABLE tracking_info (
    id INTEGER PRIMARY KEY,
    pet_stuff_id INTEGER NOT NULL,
    tracking_number TEXT NOT NULL,
    FOREIGN KEY (pet_stuff_id) REFERENCES pet_stuff(id)
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    pet_stuff_id INTEGER NOT NULL,
    customer_name TEXT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (pet_stuff_id) REFERENCES pet_stuff(id)
);

CREATE TABLE logistics (
    id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    tracking_info_id INTEGER NOT NULL,
    delivery_date DATE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (tracking_info_id) REFERENCES tracking_info(id)
);