# 🎓Лабораторна робота №2
## Перетворення ER-діаграми на схему PostgreSQL
<hr style="height: 2px; background-color: #30363d; border: none;">

## 🗄️Опис бази даних

Розроблена база даних призначена для каталогізації ігрової техніки, управління ангарами гравців та відстеження сумісності модулів (гармат, двигунів тощо) з конкретними моделями танків.
<hr style="height: 2px; background-color: #30363d; border: none;">

## 🧾Опис таблиць

#### 1. Таблиця `Nations` (Нації)

Зберігає перелік ігрових націй (країн).

-   `nation_id` — унікальний номер країни (**PRIMARY KEY**).
-   `nation_name` — назва (напр. "Франція", "Німеччина") (**UNIQUE**, **NOT NULL**).

#### 2. Таблиця `Vehicle_Classes` (Класи техніки)

Визначає тип бойової машини.

-   `class_id` — унікальний номер класу (**PRIMARY KEY**).
-   `class_name` — назва (напр. "Важкий танк", "ПТ-САУ") (**UNIQUE**, **NOT NULL**).

#### 3. Таблиця `Vehicle_Roles` (Ролі техніки)

Містить спеціалізацію танка в бою.

-   `role_id` — унікальний номер ролі (**PRIMARY KEY**).
-   `role_name` — назва (напр. "Легкий танк колісний", "ПТ-САУ штурмова") (**UNIQUE**, **NOT NULL**).

#### 4. Таблиця `Vehicles` (Техніка)

Основна таблиця з переліком усіх танків у грі.

-   `vehicle_id` — унікальний номер танка (**PRIMARY KEY**).
-   `model_name` — назва моделі (**UNIQUE**, **NOT NULL**).
-   `tier` — рівень техніки (від I до XI).
-   `price` — вартість у кредитах (**CHECK >= 0**).
-   `class_id`, `role_id`, `nation_id` — зовнішні ключі для зв'язку з іншими таблицями (**FOREIGN KEY**).

#### 5. Таблиця `Module_Types` (Типи модулів)

Класифікує запчастини за категоріями.

-   `type_id` — унікальний номер типу (**PRIMARY KEY**).
-   `type_name` — назва (Гармата, Двигун, Башта тощо) (**UNIQUE**, **NOT NULL**).

#### 6. Таблиця `Modules` (Модулі)

Перелік усіх доступних у грі запчастин.

-   `module_id` — унікальний номер модуля (**PRIMARY KEY**).
-   `name` — назва модуля (**NOT NULL**).
-   `type_id` — посилання на тип запчастини (**FOREIGN KEY**).
-   `price` — вартість модуля (**CHECK >= 0**).

#### 7. Таблиця `Compatibility` (Сумісність)

Визначає, які модулі можна поставити на конкретний танк.

-   `vehicle_id`, `module_id` — пара ключів, що створюють зв'язок (**FOREIGN KEY**).
-   **PRIMARY KEY (vehicle_id, module_id)** — складений ключ, щоб один і той самий модуль не приєднувався до танка двічі.

#### 8. Таблиця `Players` (Гравці)

Дані про користувачів системи.

-   `player_id` — унікальний номер гравця (**PRIMARY KEY**).
-   `nickname` — ігрове ім'я (**UNIQUE**, **NOT NULL**).
-   `email` — електронна пошта (**UNIQUE**, **NOT NULL**).
-   `credits` — баланс ігрової валюти (**CHECK >= 0**).

#### 9. Таблиця `Hangar` (Ангар)

Зберігає інформацію про майно гравців (які танки куплені).

-   `inv_id` — інвентарний номер запису (**PRIMARY KEY**).
-   `player_id` — хто власник (**FOREIGN KEY**, **ON DELETE CASCADE**).
-   `vehicle_id` — яка модель танка (**FOREIGN KEY**).
-   `purchase_date` — дата покупки.
-   `current_exp` — накопичений досвід (**CHECK >= 0**).
<hr style="height: 2px; background-color: #30363d; border: none;">

## 🧬Опис звʼязків між таблицями
-   **Зв’язок між таблицями `Nations` та `Vehicles`**:  
Одна нація може мати багато моделей техніки.
    
-   **Зв’язок між таблицями `Vehicle_Classes` та `Vehicles`**:  
Один клас (напр., важкі танки) об’єднує багато моделей машин.
    
-   **Зв’язок між таблицями `Vehicle_Roles` та `Vehicles`**:  
Певна роль може бути призначена багатьом танкам.
    
-   **Зв’язок між таблицями `Module_Types` та `Modules`**:  
До одного типу (напр., гармати) відноситься велика кількість конкретних модулів.
    
-   **Зв’язок між таблицями `Vehicles` та `Compatibility`**:  
Один танк має запис про сумісність із багатьма модулями.
    
-   **Зв’язок між таблицями `Modules` та `Compatibility`**:  
Один модуль може бути сумісним із багатьма танками.  
_(Разом з попереднім пунктом це реалізує зв’язок **багато-до-багатьох (M:M)** між танками та модулями)._
    
-   **Зв’язок між таблицями `Players` та `Hangar`**:  
Один гравець може мати багато одиниць техніки у своєму ангарі.
    
-   **Зв’язок між таблицями `Vehicles` та `Hangar`**:  
Одна і та сама модель танка може бути куплена багатьма різними гравцями.  

Усі зв'язки реалізовані за типом один-до-багатьох (1:M).  
<hr style="height: 2px; background-color: #30363d; border: none;">

## 📊ER-діаграма
![ ER-діаграма](https://github.com/ARTEM-SERDIUK/OBD_labs/blob/main/2lab/img/ER.png)
<hr style="height: 2px; background-color: #30363d; border: none;">

## 🧪Тестування
- Створення усіх таблиць у PostgreSQL

![tables](https://github.com/ARTEM-SERDIUK/OBD_labs/blob/main/2lab/img/tables.png)

- Запис даних у кожну таблицю (напр. Players, Vehicles, Hangar)

![Players](https://github.com/ARTEM-SERDIUK/OBD_labs/blob/main/2lab/img/Players.png)

![Vehicles](https://github.com/ARTEM-SERDIUK/OBD_labs/blob/main/2lab/img/Vehicles.png)

![Hangar](https://github.com/ARTEM-SERDIUK/OBD_labs/blob/main/2lab/img/Hangar.png)

⚙️ Усі SQL-скрипти виконуються коректно.
