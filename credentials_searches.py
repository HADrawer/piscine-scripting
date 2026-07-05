import json
import os


def search_keys(data, found):
    if isinstance(data, dict):
        for key, value in data.items():
            if key == "password" and "password" not in found:
                found["password"] = value
            elif key == "secret" and "secret" not in found:
                found["secret"] = value

            search_keys(value, found)

    elif isinstance(data, list):
        for item in data:
            search_keys(item, found)


def credentials_search():
    if os.path.exists("credentials.json"):
        os.remove("credentials.json")

    if not os.path.exists("logs.json"):
        return

    try:
        with open("logs.json", "r") as file:
            data = json.load(file)
    except:
        return

    found = {}
    search_keys(data, found)

    if found:
        with open("credentials.json", "w") as file:
            json.dump(found, file, indent=2)

