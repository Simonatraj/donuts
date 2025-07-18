CREATE TABLE ingredients (
    "id",
    "item_name" TEXT NOT NULL,
    "measure_unit" TEXT NOT NULL,
    "price_per_unit" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE donuts (
    "id",
    "donut_name" TEXT NOT NULL,
    "gluten_free" TEXT CHECK("gluten_free" IN ('yes','no')),
    "price_per_donut" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE orders (
    "id",
    "costumer_id",
    "donut_id",
    "order_number" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("costumer_id") REFERENCES costumers("id"),
    FOREIGN KEY("donut_id") REFERENCES donuts("id")
);

CREATE TABLE costumers (
    "id",
    "order_id",
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES orders("id")
);
