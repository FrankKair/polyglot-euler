import os


def load_names():
    file_path = os.path.join(os.path.dirname(__file__), 'p022_names.txt')
    with open(file_path) as file_handle:
        names_list = file_handle.read().replace('\"', '').split(',')
        return sorted(names_list)


def name_score(name):
    return sum(ord(char) - 64 for char in name)


def solve():
    total_score = 0
    names_list = load_names()
    for index, name in enumerate(names_list):
        score = name_score(name) * (index + 1)
        total_score += score
    return total_score


if __name__ == '__main__':
    result = solve()
    print(result)
