DROP TABLE IF EXISTS climbers;

CREATE TABLE climbers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  year INTEGER,
  mountain_id INTEGER
);


INSERT INTO climbers (name, year, mountain_id)
  VALUES (
    'Edmund Hillary',
    1953,
    1
  );

INSERT INTO climbers (name, year, mountain_id)
  VALUES (
    'Tenzing Norgay',
    1953,
    1
  );

INSERT INTO climbers (name, year, mountain_id)
  VALUES (
    'Achille Compagnoni',
    1954,
    2
  );

  INSERT INTO climbers (name, year, mountain_id)
    VALUES (
      'Lino Lacedelli',
      1954,
      2
    );

  INSERT INTO climbers (name, year, mountain_id)
    VALUES (
      'Joe Brown',
      1955,
      3
    );

  INSERT INTO climbers (name, year, mountain_id)
    VALUES (
      'George Band',
      1955,
      3
    );
