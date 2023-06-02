#!/usr/bin/env python

import random

import jinja2


bars = ['":|."', '"|."']
# I'm only going to use quarter notes for now
duration = ["2", "4"]
first = ["d", "d'", "c", "c'"]
keys = ["d \\major", "g \\major"]
notes = ["a", "b", "c", "cis", "d", "e", "fis", "g"]

methods = ["\\markup { \\tiny \\italic pizz. }", "\\upbow", "d\\ownbow"]


def key() -> str:
    return random.choice(keys)

def bar(num: int) -> str:
    content: list[str] = []
    for _ in range(num):
        ctr = 4
        while ctr > 0:
            chance = random.choice(range(1, 100))
            if chance < 76:
                if not content:
                    content.append(random.choice(first))
                else:
                    content.append(random.choice(notes))
            else:
                content.append("r")
            ctr -= 1
        content.append("|")

    # we always finish with a bar separator so replace it
    content[-1] = "\\bar " + random.choice(bars)

    return " ".join(content)


if __name__ == "__main__":
    environment = jinja2.Environment()
    environment.globals["bar"] = bar
    environment.globals["key"] = key
    template = environment.from_string(open("random_notes.j2").read())
    with open("random_notes.ly", "w") as f:
        f.write(template.render())
