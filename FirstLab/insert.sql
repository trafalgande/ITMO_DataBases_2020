INSERT INTO public.cities (id, name, population, alive)
VALUES (1, 'Tolyatty', 700, true);
INSERT INTO public.cities (id, name, population, alive)
VALUES (2, 'Moscow', 5000, true);
INSERT INTO public.cities (id, name, population, alive)
VALUES (3, 'Saint-Petersburg', 4000, true);
INSERT INTO public.cities (id, name, population, alive)
VALUES (4, 'Ekaterinburg', 1200, true);
INSERT INTO public.cities (id, name, population, alive)
VALUES (5, 'Koryazhma', 0, false);
INSERT INTO public.cities (id, name, population, alive)
VALUES (6, 'Kyzyl', 1, true);

INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (1, 1, false, 260);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (2, 2, true, 125);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (3, 4, true, 67);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (4, 4, false, 34);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (5, 5, true, 58);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (6, 3, true, 121);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (7, 2, false, 90);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (8, 6, true, 94);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (9, 1, true, 59);
INSERT INTO public.headquarters (id, city_id, classified, headcount)
VALUES (10, 1, false, 420);

INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (1, 'Bogdan', 1, 540000, true, 'Government');
INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (2, 'Igor', 2, 1200000, true, 'Ordinary');
INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (3, 'Kyle', 1, 10000, false, 'Ordinary');
INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (4, 'Tyson', 1, 40000, true, 'Government');
INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (5, 'Dude', 1, 50000, false, 'Ordinary');
INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (6, 'Ignat', 1, 990000, false, 'Government');
INSERT INTO public.investors (id, name, headquarters_of_interest, amount, privileges, origin)
VALUES (7, 'Luka', 1, 870000, true, 'Government');

INSERT INTO public.stock (id)
VALUES (1);
INSERT INTO public.stock (id)
VALUES (2);
INSERT INTO public.stock (id)
VALUES (3);
INSERT INTO public.stock (id)
VALUES (4);
INSERT INTO public.stock (id)
VALUES (5);

INSERT INTO public.guns (id, gun_type) VALUES (0, 'Not allowed');
INSERT INTO public.guns (id, gun_type) VALUES (1, 'M4');
INSERT INTO public.guns (id, gun_type) VALUES (2, 'AK47');
INSERT INTO public.guns (id, gun_type) VALUES (3, 'GLOCK');
INSERT INTO public.guns (id, gun_type) VALUES (4, 'RPG');

INSERT INTO public.gun_stock (stock_id, gun_id, amount)
VALUES (1, 1, 500);
INSERT INTO public.gun_stock (stock_id, gun_id, amount)
VALUES (1, 2, 400);
INSERT INTO public.gun_stock (stock_id, gun_id, amount)
VALUES (1, 3, 800);
INSERT INTO public.gun_stock (stock_id, gun_id, amount)
VALUES (2, 4, 50);
INSERT INTO public.gun_stock (stock_id, gun_id, amount)
VALUES (2, 4, 50);

INSERT INTO public.foods (id, food_type) VALUES (1, 'Banana');
INSERT INTO public.foods (id, food_type) VALUES (2, 'Apple');
INSERT INTO public.foods (id, food_type) VALUES (3, 'Grapes');

INSERT INTO public.food_stock (stock_id, food_id, amount)
VALUES (3, 1, 15000);
INSERT INTO public.food_stock (stock_id, food_id, amount)
VALUES (3, 2, 12000);
INSERT INTO public.food_stock (stock_id, food_id, amount)
VALUES (4, 3, 2);

INSERT INTO public.drugs (id, drug_name) VALUES (1, 'Tranquility');
INSERT INTO public.drugs (id, drug_name) VALUES (2, 'Adrenaline');

INSERT INTO public.drug_stock (stock_id, drug_id, amount)
VALUES (5, 1, 5000);
INSERT INTO public.drug_stock (stock_id, drug_id, amount)
VALUES (5, 2, 5001);

INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (1, 1, 6);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (2, 1, 9);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (3, 2, 2);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (4, 2, 10);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (5, 3, 1);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (6, 4, 3);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (8, 4, 5);
INSERT INTO public.suppliers (id, stock_id, trust)
VALUES (7, 5, 7);

INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (1, 'Power', 'Pech', 5, true, 2);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (2, 'Rower', 'Rech', 4, false, 0);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (3, 'Tower', 'Tech', 3, false, 0);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (4, 'Yower', 'Yech', 2, true, 4);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (5, 'Wower', 'Wech', 7, true, 4);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (6, 'Lower', 'Lech', 8, true, 1);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (7, 'Fower', 'Fech', 9, true, 3);
INSERT INTO public.employees (id, callsign, sphere, headquarters_id, gun_allowance, gun_id)
VALUES (8, 'Gower', 'Gech', 10, true, 1);
