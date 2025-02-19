# Section 01 - Python

## Overview
This section introduces Python, a versatile and powerful programming language widely used in data analytics, scripting, and software development. The course covers Python from beginner to advanced levels, focusing on foundational concepts, data structures, loops, functions, file handling, exception handling, iterators, generators, and Python libraries for data science.

## Topics Covered
1. **Basics of Python**
   - Installation and setup
   - Variables, keywords, and data types
   - Operators and operands
2. **Python Data Structures**
   - Lists, tuples, sets, and dictionaries
   - Comparison between lists and tuples
3. **Python Loops, Functions, and File Handling**
   - For loops and while loops
   - Functions and lambda functions
   - Map, reduce, and filter functions
   - File handling (reading and writing files)
4. **Python Exception Handling**
   - Try, except, and finally blocks
   - Common exceptions (e.g., `NameError`, `ZeroDivisionError`)
5. **Iterators and Generators**
   - Iterator protocol (`__iter__()` and `__next__()`)
   - Generator functions and `yield` statements
6. **Python for Data Science**
   - Introduction to NumPy, Pandas, and Matplotlib
   - Data manipulation and visualization

## Learning Outcomes
By the end of this section, you will:
- Understand the basics of Python programming, including variables, data types, and operators.
- Be able to work with Python data structures like lists, tuples, sets, and dictionaries.
- Write loops, functions, and handle files in Python.
- Implement exception handling to manage errors in your code.
- Use iterators and generators to create efficient and scalable code.
- Gain foundational knowledge of Python libraries like NumPy, Pandas, and Matplotlib for data science.

## Resources
- **Python Installation**: Download Python from the [official website](https://www.python.org/).
- **Anaconda**: Install Anaconda for a comprehensive Python environment.
- **Libraries**: Install required libraries using `pip`:
  ```bash
  pip install numpy pandas matplotlib
  ```

## Code Examples
Here are some examples of what you'll learn in this section:

### Variables and Data Types
```python
a = 10
b = "Welcome to Python"
print(type(a))  # Output: <class 'int'>
print(type(b))  # Output: <class 'str'>
```

### Lists and Tuples
```python
my_list = [10, 20, 'Python']
my_tuple = ('a', 1, 'b')
print(my_list[0])  # Output: 10
print(my_tuple[1])  # Output: 1
```

### Loops
```python
for i in range(5):
    print(i)  # Output: 0 1 2 3 4
```

### Functions
```python
def greet(name):
    return f"Hello, {name}!"

print(greet("Alice"))  # Output: Hello, Alice!
```

### File Handling
```python
file = open("example.txt", "w")
file.write("Hello, Python!")
file.close()
```

## Next Steps
Proceed to the next section: [Section 02 - Business Statistics](./Section%2002%20-%20Business%20Statistics)  (link to the next section).