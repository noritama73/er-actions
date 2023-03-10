# film_actor

## Description

<details>
<summary><strong>Table Definition</strong></summary>

```sql
CREATE TABLE `film_actor` (
  `actor_id` smallint unsigned NOT NULL,
  `film_id` smallint unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `idx_fk_film_id` (`film_id`),
  CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_actor_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
```

</details>

## Columns

| Name | Type | Default | Nullable | Extra Definition | Children | Parents | Comment |
| ---- | ---- | ------- | -------- | ---------------- | -------- | ------- | ------- |
| actor_id | smallint unsigned |  | false |  |  | [actor](actor.md) |  |
| film_id | smallint unsigned |  | false |  |  | [film](film.md) |  |
| last_update | timestamp | CURRENT_TIMESTAMP | false | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |  |  |  |

## Constraints

| Name | Type | Definition |
| ---- | ---- | ---------- |
| fk_film_actor_actor | FOREIGN KEY | FOREIGN KEY (actor_id) REFERENCES actor (actor_id) |
| fk_film_actor_film | FOREIGN KEY | FOREIGN KEY (film_id) REFERENCES film (film_id) |
| PRIMARY | PRIMARY KEY | PRIMARY KEY (actor_id, film_id) |

## Indexes

| Name | Definition |
| ---- | ---------- |
| idx_fk_film_id | KEY idx_fk_film_id (film_id) USING BTREE |
| PRIMARY | PRIMARY KEY (actor_id, film_id) USING BTREE |

## Relations

![er](film_actor.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
