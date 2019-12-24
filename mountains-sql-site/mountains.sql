DROP TABLE IF EXISTS mountains;

CREATE TABLE mountains (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  mountain TEXT,
  country TEXT,
  range TEXT,
  height INTEGER,
  first_ascent INTEGER,
  image_url TEXT
);


INSERT INTO mountains (mountain, country, range, height, first_ascent, image_url)
  VALUES (
    'Mount Everest',
    'Nepal / China',
    'Mahalangur Himalaya',
    8848,
    1953,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Everest_kalapatthar_crop.jpg/475px-Everest_kalapatthar_crop.jpg'
  );

INSERT INTO mountains (mountain, country, range, height, first_ascent, image_url)
  VALUES (
    'K2',
    'Pakistan / China',
    'Baltoro Karakoram',
    8611,
    1954,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/K2_2006b.jpg/320px-K2_2006b.jpg'
  );

INSERT INTO mountains (mountain, country, range, height, first_ascent, image_url)
  VALUES (
    'Kangchenjunga',
    'Nepal / India',
    'Kangchenjunga Himalaya',
    8586,
    1955,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/320px-Kangch-Goechala.jpg'
  );

INSERT INTO mountains (mountain, country, range, height, first_ascent, image_url)
  VALUES (
    'Lhotse',
    'Nepal / China',
    'Mahalangur Himalaya',
    8516,
    1956,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/LhotseMountain.jos.500pix.jpg/345px-LhotseMountain.jos.500pix.jpg'
  );

INSERT INTO mountains (mountain, country, range, height, first_ascent, image_url)
  VALUES (
    'Makalu',
    'Nepal / China',
    'Mahalangur Himalaya',
    8485,
    1955,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Makalu.jpg/361px-Makalu.jpg'
  );

INSERT INTO mountains (mountain, country, range, height, first_ascent, image_url)
  VALUES (
    'Cho Oyu',
    'Nepal / China',
    'Mahalangur Himalaya',
    8188,
    1954,
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/ChoOyu-fromGokyo.jpg/340px-ChoOyu-fromGokyo.jpg'
  );
