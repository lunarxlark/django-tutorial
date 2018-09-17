# django tutorial

## Lesson

*Udemy*

- [【3日でできる】はじめての Django 入門 ( Python 3 でウェブアプリを作って AWS EC2 で公開！）](https://www.udemy.com/django-beginner/)

## Environment

docker-image: [lunarxlark/django-tutorial](https://hub.docker.com/r/lunarxlark/django-tutorial/):latest

- Anaconda3 5.2.0
- conda 4.5.11
- pytyhon3.7
- django 2.1.1

## How to usage docker-image

```bash
docker run -ti --rm --volume $(pwd):/opt lunarxlark/django-tutorial /bin/bash
```

## Start develop with django

```bash
$ django-admin startproject myblogapp
$ ls l myblogapp
manage.py myblogapp/
$ ls myblogapp
__init__.py   => django projectであることを表す
settings.py   => app setting(lang、time_zone...etc)
urls.py       => endpoint
wsgi.py       => Web Server Gateway Interface(Webサーバ(apache,nginx)とのinterface)
```

## run web-server

```bash
$ cd /opt/myblogapp
$ python manage.py runserver 0.0.0.0:8000
```

## migrate

sqliteを用いてDB作成

```bash
$ python manage.py migrate
```

## application作成

```bash
$ python manage.py startapp posts
```

## model definition => migrate

1. modify posts/models.py
2. `python manage.py makemigrations`
3. `python manage.py migrate`

## connect db.sqlite3

```bash
$ ls db.sqlite3
db.sqlite3
$ sqlite3 db.sqlite3
SQLite version 3.24.0 2018-06-04 19:24:41
Enter ".help" for usage hints.
sqlite>
sqlite> .tables
auth_group                  django_admin_log
auth_group_permissions      django_content_type
auth_permission             django_migrations
auth_user                   django_session
auth_user_groups            posts_post
auth_user_user_permissions
sqlite> select * from posts_post;
sqlite> 
```