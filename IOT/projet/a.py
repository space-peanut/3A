with open('/media/ssd2/cours/inge/3A/IOT/projet/d', 'r') as file:
    lines = file.readlines()

modified_lines = []
for line in lines:
    line = line.replace('\n', '')
    modified_line = 'gdisplay.putpixel({' + line.replace(' ', ',') + '})\n'
    modified_lines.append(modified_line)

with open('/media/ssd2/cours/inge/3A/IOT/projet/d', 'w') as file:
    file.writelines(modified_lines)

# gdisplay.putpixel({0,45})