def do_punishment(first_part, second_part, nb_lines):
    first_part = first_part.strip()
    second_part = second_part.strip()
    sentence = first_part + " " + second_part + ".\n"
    return sentence * nb_lines
