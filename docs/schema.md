# Schema Information

#### users

| column name | data type | details |
|-------------|-----------|---------|
| id | integer | not null, primary key|
| username | string | not null, indexed, unique |
| email | string | not null, indexed, unique |
| location | string | not null, indexed |
| password_digest | string | not null |
| session_token | string | not null, indexed, unique |
| image | string | |
| looking_for | string | not null, indexed |
| languages | string | |
| frameworks | string | |
| summary | string | |

#### questions

| column name | data type | details |
|-------------|-----------|---------|
| id | integer | not null, primary key|
| title | text | not null |

#### answer_options

| column name | data type | details |
|-------------|-----------|---------|
| id | integer | not null, primary key|
| question_id | integer | not null, foreign key, indexed |
| body | text | not null

#### user_responses

| column name | data type | details |
|-------------|-----------|---------|
| answer_id | integer | not null, foreign key, indexed |
| user_id | integer | not null, foreign key, indexed |
| acceptable_responses | string | not null |

#### messages

| column name | data type | details |
|-------------|-----------|---------|
| id | integer | not null, primary key|
| sender_id | integer | not null, foreign key, indexed |
| recipient_id | integer | not null, foreign key, indexed |
| body | string | not null |
| title | string | not null |

#### conversations

| column name | data type | details |
|-------------|-----------|---------|
| id | integer | not null, primary key|
| user_one_id | integer | not null |
| user_two_id | integer | not null |
