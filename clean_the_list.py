def clean_list(shopping_list):
    if len(shopping_list) == 0:
        return []

    if not any(item.strip().lower() == "milk" for item in shopping_list):
        shopping_list.append("milk")

    cleaned_list = []

    for index, item in enumerate(shopping_list, start=1):
        item = item.strip().capitalize()
        cleaned_list.append(str(index) + "/ " + item)

    return cleaned_list