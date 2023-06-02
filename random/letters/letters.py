#!/usr/bin/env python

import random

import jinja2


keys = ["d \\major", "g \\major"]
notes = ["a", "b", "c", "cis", "d", "e", "fis", "g"]


def key() -> str:
    return random.choice(keys)


def bar(num: int) -> str:
    content: list[str] = []
    for _ in range(num):
        ctr = 4
        while ctr > 0:
            content.append(random.choice(notes))
            ctr -= 1
        content.append("|")
    content[-1] = "\\bar '|.'"

    return " ".join(content)


if __name__ == "__main__":
    environment = jinja2.Environment()
    environment.globals["bar"] = bar
    environment.globals["key"] = key
    template = environment.from_string(open("letters.j2").read())
    with open("letters.ly", "w") as f:
        f.write(template.render())
