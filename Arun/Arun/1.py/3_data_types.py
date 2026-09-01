# Data Types and Type Conversion

name = "Arun"
age = 30
height = 5.9
is_learning = True

print("Name:", name, "| type:", type(name))
print("Age:", age, "| type:", type(age))
print("Height:", height, "| type:", type(height))
print("Learning Python:", is_learning, "| type:", type(is_learning))

# Type conversion
age_text = str(age)
height_whole = int(height)
count = int("12")
price = float("99.50")
flag = bool(1)

print("Age as text:", age_text, "| type:", type(age_text))
print("Height as int:", height_whole, "| type:", type(height_whole))
print("Count from string:", count, "| type:", type(count))
print("Price from string:", price, "| type:", type(price))
print("Flag from 1:", flag, "| type:", type(flag))
