-- Dane startowe aplikacji. Tabele tworzy Hibernate z encji, a ten plik Spring Boot uruchamia zaraz potem.
-- LAB 01: dopiszcie tu konta wszystkich osób z zespołu (reguła R1.03).
-- LAB 02: dopiszcie dane do swoich tabel (kolejność: najpierw tabele, na które wskazują klucze obce).
insert into user_account (email, display_name, role, created_at) values
    ('ola@student.merito.pl',   'Ola',   'USER',    current_timestamp),
    ('kuba@student.merito.pl',  'Kuba',  'USER',    current_timestamp),
    ('firma@example.com',       'Firma', 'PARTNER', current_timestamp),
    ('admin@example.com',       'Admin', 'ADMIN',   current_timestamp),
    ('maksymilian.pakos@student.merito.pl', 'Pakos', 'ADMIN', current_timestamp),
    ('patryk.paryska@student.merito.pl', 'Patryk', 'ADMIN', current_timestamp),
    ('michał.snella@student.merito.pl', 'Michał', 'ADMIN', current_timestamp);

-- LAB 01: Wasze konta (zmieńcie na swoje dane, rola USER)
-- insert into user_account (email, display_name, role, created_at) values
--     ('imie.nazwisko@student.merito.pl', 'Imię', 'USER', current_timestamp);

insert into user_profiles (first_name, last_name, email, street, city, country) values
    ('Anna', 'Kowalska', 'anna.kowalska@example.com', 'ul. Długa 12', 'Warszawa', 'Polska'),
    ('Piotr', 'Nowak', 'piotr.nowak@example.com', 'ul. Prosta 8', 'Krakow', 'Polska'),
    ('Maria', 'Wiśniewska', 'maria.wisniewska@example.com', 'ul. Leśna 4', 'Gdańsk', 'Polska'),
    ('Tomasz', 'Wójcik', 'tomasz.wojcik@example.com', 'ul. Szkolna 21', 'Wrocław', 'Polska'),
    ('Julia', 'Kamińska', 'julia.kaminska@example.com', 'ul. Ogrodowa 7', 'Poznań', 'Polska');

insert into courses (title, description, price, currency, practical, level) values
    ('Podstawy żeglarstwa', 'Wprowadzenie do budowy jachtu, zasad bezpieczeństwa i podstawowej terminologii żeglarskiej.', 0.00, 'PLN', true, 'BEGINNER'),
    ('Manewrowanie jachtem żaglowym', 'Nauka podstawowych manewrów pod żaglami, pracy załogi i prowadzenia jachtu.', 149.99, 'PLN', true, 'BEGINNER'),
    ('Nawigacja morska i śródlądowa', 'Planowanie trasy, czytanie map, korzystanie z kompasu oraz podstawy nawigacji GPS.', 119.50, 'PLN', true, 'INTERMEDIATE'),
    ('Technika prowadzenia łodzi motorowej', 'Zasady bezpiecznego manewrowania łodzią motorową w porcie i na otwartej wodzie.', 179.00, 'PLN', true, 'INTERMEDIATE'),
    ('Zaawansowane manewry motorowodne', 'Doskonalenie manewrowania, podejść do kei i reagowania w sytuacjach awaryjnych.', 249.90, 'PLN', true, 'ADVANCED');

insert into lessons (title, content, duration, additional_resources) values
    ('Budowa jachtu żaglowego', 'Poznaj najważniejsze elementy jachtu, olinowanie oraz przeznaczenie podstawowych żagli.', 45.0, 'https://www.sailing.org/'),
    ('Zwroty przez sztag i rufę', 'Naucz się prawidłowo wykonywać podstawowe zwroty oraz koordynować pracę załogi.', 60.0, 'https://www.rya.org.uk/'),
    ('Podstawy nawigacji', 'Poznaj oznakowanie szlaków wodnych, kierunki świata i zasady wyznaczania kursu.', 50.0, 'https://www.iala-aism.org/'),
    ('Manewrowanie łodzią motorową', 'Ćwicz ruszanie, zatrzymywanie, skręcanie i podejście do kei przy różnych warunkach.', 40.0, 'https://www.gov.pl/web/infrastruktura/bezpieczenstwo-na-wodach'),
    ('Bezpieczeństwo na wodzie', 'Poznaj wyposażenie ratunkowe, zasady wzywania pomocy i postępowanie w sytuacjach awaryjnych.', 55.0, 'https://www.gov.pl/web/mswia/bezpieczny-wypoczynek-nad-woda');

insert into questions (title, content, answerA, answerB, answerC, answerD, correct_answer) values
    ('Znak kardynalny', 'Co oznacza pojedynczy czerwony znak kardynalny w kształcie walca?', 'Bezpieczna woda', 'Lewą stronę szlaku', 'Prawą stronę szlaku', 'Miejsce kotwiczenia', 2),
    ('Zwrot przez sztag', 'Co należy zrobić przed rozpoczęciem zwrotu przez sztag?', 'Zwiększyć prędkość silnika', 'Sprawdzić otoczenie i uprzedzić załogę', 'Opuścić kotwicę', 'Zgasić wszystkie światła', 1),
    ('Kamizelka ratunkowa', 'Kiedy należy założyć kamizelkę ratunkową?', 'Tylko podczas postoju', 'W razie potrzeby, zgodnie z zasadami bezpieczeństwa', 'Tylko po zmroku', 'Nigdy na spokojnej wodzie', 1),
    ('Manewr łodzią motorową', 'Jak najbezpieczniej ograniczyć prędkość łodzi motorowej przed podejściem do kei?', 'Zwolnić odpowiednio wcześnie', 'Wyłączyć sterowanie', 'Przyspieszyć', 'Wykonać ostry skręt przy kei', 0),
    ('Pierwszeństwo na wodzie', 'Co powinien zrobić sternik, gdy nie ma pewności co do zamiarów innej jednostki?', 'Zmniejszyć prędkość i zachować bezpieczny odstęp', 'Przyspieszyć', 'Wykonać przypadkowy zwrot', 'Opuścić załogę do wody', 0);
