CREATE TABLE IF NOT EXISTS public.User(
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
surname VARCHAR(40) NOT NULL,
b_date DATE NOT NULL DEFAULT CURRENT_DATE,
gender VARCHAR(20) NOT NULL,
city VARCHAR(20),
profile_link VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS public.UserFoto(
id SERIAL PRIMARY KEY,
user_id INTEGER NOT NULL REFERENCES public.User(id),
foto_link VARCHAR(60) NOT NULL UNIQUE,
likes INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS public.PossiblePair(
id SERIAL PRIMARY KEY,
user_id INTEGER NOT NULL REFERENCES public.User(id),
pair_id INTEGER NOT NULL REFERENCES public.User(id)
);


CREATE TABLE IF NOT EXISTS public.UserFavouritList(
id SERIAL PRIMARY KEY,
user_id INTEGER NOT NULL REFERENCES public.User(id),
favourite_id INTEGER NOT NULL REFERENCES public.User(id)
);


CREATE TABLE IF NOT EXISTS public.UserBlackList(
id SERIAL PRIMARY KEY,
user_id INTEGER NOT NULL REFERENCES public.User(id),
blocked_id INTEGER NOT NULL REFERENCES public.User(id)
);


