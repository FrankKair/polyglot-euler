#!/usr/bin/env python
def card_int(c):
    cn = ['T', 'J', 'Q', 'K', 'A']
    try:
        return cn.index(c) + 10
    except:
        return int(c)

def hand_rank(hand, values):
    types = [c[1] for c in hand]

    # Check if they're all of the same suit
    same_type = len(set(types)) == 1

    # Get the biggest card in hand
    highest = max(values)
    
    # Find how many consecutive cards there is
    sv = sorted(values)
    consecutive = 0
    for i in range(1, len(sv)):
        consecutive += sv[i] - sv[i-1] == 1

    # Find all pairs
    pairs = []
    for i in set(values):
        if values.count(i) == 2:
            pairs.append(i)
        if values.count(i) == 4:
            pairs.append(i)
            pairs.append(i)

    # Count unique suits
    suit_count = {}
    for i in set(types):
        suit_count[i] = types.count(i)

    # Royal Flush
    if sum([1 for i in values if i >= 10]) == 5 and same_type:
        return (10, highest)

    # Straight Flush
    if same_type and consecutive == 4:
        return (9, highest)

    else:
        # Full House
        aux = values[:]
        for p in pairs:
            if values.count(p) == 2:
                indices = [i for i in range(5) if values[i] == p]
                triplet = [values[i] for i in list(set(range(5)) - set(indices))]
                if len(set(triplet)) == 1:
                    return (7, triplet[0], p)

        # Four of a Kind
        if len(set(values)) == 2:
            for i in set(values):
                f, o = None, None
                if values.count(i) == 1:
                    o = i
                if values.count(i) == 3:
                    f = i
                if o and f:
                    return (8, f, i)

        # Flush
        if same_type:
            return (6, highest)

        # Straight
        if consecutive == 4:
            return (5, highest)

        # Three of a Kind
        for i in range(3):
            if values.count(values[i]) == 3:
                return (4, values[i], max([j for j in set(values) if values.count(j) != 3]))

        # Aux values with all pairs removed
        aux = values[:]
        for p in pairs:
            while p in aux:
                aux.remove(p)

        # Two Pairs
        if len(pairs) == 2:
            return (3, max(pairs), min(pairs), max(aux))

        # One Pair
        if len(pairs) == 1:
            return (2, pairs[0], max(aux))

        # High Card
        return (1, highest)

def winner(hands):
    p1 = hands[:14].split(' ')
    p2 = hands[15:].split(' ')

    v1 = [card_int(c[0]) for c in p1]
    v2 = [card_int(c[0]) for c in p2]
    h1 = hand_rank(p1, v1)
    h2 = hand_rank(p2, v2)

    for i in range(max(len(h1), len(h2))):
        if h1[i] > h2[i]:
            return 1
        elif h1[i] == h2[i]:
            continue
        return 2

with open('src/054/p054_poker.txt', 'r') as f:
    games = f.readlines()

print(sum([1 for hands in games if winner(hands) == 1]))