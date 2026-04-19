CREATE TABLE Nations (
    nation_id SERIAL PRIMARY KEY,
    nation_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Vehicle_Classes (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Vehicle_Roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Module_Types (
    type_id SERIAL PRIMARY KEY,
    type_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    model_name VARCHAR(50) NOT NULL UNIQUE,
    tier VARCHAR(5) NOT NULL,
    price INTEGER NOT NULL DEFAULT 0 CHECK (price >= 0),
    class_id INTEGER REFERENCES Vehicle_Classes(class_id) ON DELETE SET NULL,
    role_id INTEGER REFERENCES Vehicle_Roles(role_id) ON DELETE SET NULL,
    nation_id INTEGER REFERENCES Nations(nation_id) ON DELETE CASCADE
);

CREATE TABLE Players (
    player_id SERIAL PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    credits INTEGER DEFAULT 0 CHECK (credits >= 0)
);

CREATE TABLE Modules (
    module_id SERIAL PRIMARY KEY,
    name VARCHAR(75) NOT NULL,
    type_id INTEGER REFERENCES Module_Types(type_id) ON DELETE CASCADE,
    price INTEGER DEFAULT 0 CHECK (price >= 0)
);

CREATE TABLE Hangar (
    inv_id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES Players(player_id) ON DELETE CASCADE,
    vehicle_id INTEGER REFERENCES Vehicles(vehicle_id) ON DELETE CASCADE,
    purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    current_exp INTEGER DEFAULT 0 CHECK (current_exp >= 0)
);

CREATE TABLE Compatibility (
    vehicle_id INTEGER REFERENCES Vehicles(vehicle_id) ON DELETE CASCADE,
    module_id INTEGER REFERENCES Modules(module_id) ON DELETE CASCADE,
    PRIMARY KEY (vehicle_id, module_id)
);