#Demonstrating a folder structure and dictionaries.
dictionary_A = {"material": "glass", "color": "blue", "shape": "round", "age": 30}
for key, value in dictionary_A.items():
  print("The dictionary:", key, ":", value)

for key, value in dictionary_A.items():
  if type(value) == int:
    print("Info in numbers:", key, ":", value)
