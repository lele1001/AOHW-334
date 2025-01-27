import random

NPOINTS = 1000000
x_val = []
y_val = []


with open("points2.txt", "w") as file:
    for i in range(NPOINTS):

        # generate random float values
        x = random.uniform(-100, 100)
        y = random.uniform(-100, 100)

        x_val.append(x)
        y_val.append(y)

        file.write(f"{x} {y}\n")
    

with open("points2.json", "w") as file:
    file.write("[")
    for i in range(NPOINTS):

        x = x_val[i]
        y = y_val[i]

        file.write(f"[{x}, {y}]")
        if i < NPOINTS - 1:
            file.write(",\n")
    file.write("]")