import sys


def main():
    if len(sys.argv) != 2:
        sys.exit(1)

    file_name = sys.argv[1]

    try:
        with open(file_name, "r") as input_file:
            lines = input_file.readlines()
    except:
        sys.exit(1)

    with open("out.txt", "w") as output_file:
        for line in lines:
            if "pineapple" not in line:
                output_file.write(line)


if __name__ == "__main__":
    main()
