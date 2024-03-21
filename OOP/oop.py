# Define an interface
class Animal:
    def make_sound(self):
        pass

# Define a class that implements the interface
class Dog(Animal):
    def make_sound(self):
        return "Woof!"

# Define a class that overrides an inherited method
class Cat(Animal):
    def make_sound(self):
        return "Meow!"

# Define a class that reads data from a file and initializes an instance
class AnimalInitializer:
    def __init__(self, filename):
        self.filename = filename

    def initialize(self):
        with open(self.filename, 'r') as file:
            data = file.read().strip()
            return data

# Define a method that demonstrates the use of a loop
def print_animal_sounds(animals):
    for animal in animals:
        print(animal.make_sound())

# Main program
if __name__ == "__main__":
    # Create instances of Dog and Cat
    dog = Dog()
    cat = Cat()

    # Initialize data from a file
    initializer = AnimalInitializer("data.txt")
    data = initializer.initialize()

    # Split data into a list
    animal_data = data.split(',')

    # Create a list of Animal instances based on data
    animals = []
    for animal_type in animal_data:
        if animal_type.strip().lower() == 'dog':
            animals.append(Dog())
        elif animal_type.strip().lower() == 'cat':
            animals.append(Cat())

    # Print animal sounds
    print_animal_sounds(animals)
