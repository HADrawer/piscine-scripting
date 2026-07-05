import json


class User:
    username = "user"
    email = "something@mail.com"


def create_new_user(registration):
    data = json.loads(registration)

    if "username" not in data or "email" not in data:
        return User()

    new_user = User()
    new_user.username = data["username"]
    new_user.email = data["email"]

    return new_user


def user_to_json(user):
    return json.dumps(user.__dict__)
