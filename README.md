# Lien Blog Wordpress

https://ecfcms270883709.wordpress.com/



# Strapi application

A quick description of your strapi application


# User login :

POST http://localhost:1337/auth/local

body : 

{
    "identifier": "satsuki@email.com",
    "password": "password"
}



# Subjects : 

## GET http://localhost:1337/subjects/1

{
    "id": 1,
    "title": "Books",
    "user": {
        "id": 1,
        "firstname": "akbar",
        "lastname": "khan",
        "username": null
    },
    "date": "2021-01-01T11:00:00.000Z",
    "published_at": "2021-01-21T13:42:26.017Z",
    "created_at": "2021-01-21T13:42:21.965Z",
    "updated_at": "2021-01-21T13:42:26.048Z",
    "messages": [
        {
            "id": 1,
            "body": "I love reading books!",
            "user": 1,
            "subject": 1,
            "date": "2021-01-04T11:00:00.000Z",
            "published_at": "2021-01-21T13:42:52.709Z",
            "created_at": "2021-01-21T13:42:51.354Z",
            "updated_at": "2021-01-21T13:42:52.746Z"
        },
        {
            "id": 2,
            "body": "I love reading at night before sleeping.",
            "user": 1,
            "subject": 1,
            "date": "2021-01-04T11:00:00.000Z",
            "published_at": "2021-01-21T14:06:51.443Z",
            "created_at": "2021-01-21T14:06:49.669Z",
            "updated_at": "2021-01-21T14:06:51.477Z"
        }
    ]
}



## POST http://localhost:1337/subjects/

body :
{
    "title": "A new subject",
    "user": 1,
    "date": "2021-01-01T11:00:00.000Z"
}




# Messages :


## GET http://localhost:1337/messages/1

{
    "id": 1,
    "body": "I love reading books!",
    "user": {
        "id": 1,
        "firstname": "akbar",
        "lastname": "khan",
        "username": null
    },
    "subject": {
        "id": 1,
        "title": "Books",
        "user": 1,
        "date": "2021-01-01T11:00:00.000Z",
        "published_at": "2021-01-21T13:42:26.017Z",
        "created_at": "2021-01-21T13:42:21.965Z",
        "updated_at": "2021-01-21T13:42:26.048Z"
    },
    "date": "2021-01-04T11:00:00.000Z",
    "published_at": "2021-01-21T13:42:52.709Z",
    "created_at": "2021-01-21T13:42:51.354Z",
    "updated_at": "2021-01-21T13:42:52.746Z"
}



## POST http://localhost:1337/messages/

body: 

{
    "body": "My message from postman",
    "user": 1,
    "subject": 1,
    "date": "2021-01-04T11:00:00.000Z"
}
