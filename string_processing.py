import re


def tokenize(sentence):
    sentence = sentence.lower()
    sentence = re.sub(r"[^a-z0-9]+", " ", sentence)
    words = sentence.split()

    return words
