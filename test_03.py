def isTautogram(s: str) -> bool:
    _s = s.lower()
    _s_list = _s.split()
    comparison = _s_list[0][0]

    for val in _s_list:
        if val[0] != comparison:
            return False

    return True


def main() -> None:
    print(isTautogram('Tautogram Test tin the tulips'))
    print(isTautogram('She sells sea shells by the sea shore'))
    print(isTautogram(
        "Big black bugs bleed blue black blood but baby black bugs bleed blue blood"))


if __name__ == '__main__':
    main()

# isTautogram('Tautogram Test') => true
