# Day 1 - Python for Data Analysis

## Overview
This is my Day 1 task for Week 3 of my Data Analytics internship. This week shifts from SQL to Python, so this day was about getting comfortable with the Python environment and Jupyter Notebook, and going through the core language basics that I'll need before moving on to pandas and actual data analysis.

## What I Learned
- Why Python is such a widely used tool for data analysts, and how the Jupyter Notebook environment works - writing and running code in small, separate cells instead of one long script.
- **Variables and data types** - `str`, `int`, `float`, and `bool`, and how to check a variable's type using `type()`.
- **Lists** - ordered, changeable collections, and how to add items, access them by index, and get their length.
- **Dictionaries** - key-value pairs, and how to add new keys, and pull out all the keys or values at once.
- **Tuples** - similar to lists but immutable (can't be changed after creation).
- **Conditions** (`if` / `elif` / `else`) - making decisions in code based on a value, like assigning a grade based on marks.
- **Loops** (`for` / `while`) - repeating an action over a list or until a condition is met.
- **Functions** - writing reusable blocks of code using `def` and `return`, instead of repeating the same logic everywhere.
- **List comprehensions** - a shorter, one-line way to build a list instead of writing a full for-loop.
- **Modules** - importing pre-built Python code like `math` and `random` instead of writing everything from scratch.
- **Exception handling** - using `try` / `except` / `finally` to catch errors (like dividing by zero) so the program doesn't crash.

## Tools Used
- **Python 3** with **Jupyter Notebook**.

## What I Did
1. Set up Python and Jupyter Notebook and created a new notebook for this task.
2. Added a markdown title cell at the top of the notebook with the day's topic list and hands-on goals, so the notebook reads like a mini report rather than just a code dump.
3. Went through each topic (variables, data types, lists, dictionaries, tuples, conditions, loops, functions, list comprehensions, modules, exception handling) in its own section - a short markdown explanation followed by a code cell demonstrating it.
4. Ran into a syntax error early on from accidentally combining two separate `for` loops into one line, which helped me understand how important consistent indentation and separate cells are in Jupyter.
5. Built a small hands-on data-processing script at the end that combines everything - a list of student dictionaries, a function to calculate averages, and a loop with conditions to assign each student a grade.

## File in this folder
- `Day1_Python_Fundamentals.ipynb` - the Jupyter Notebook with all the markdown explanations, code cells, and outputs for this task.

## Notes
Coming from SQL in Week 2, the biggest adjustment was thinking in terms of variables, loops, and functions instead of set-based queries. Writing a markdown explanation before each code cell also made it much easier to go back and understand my own notebook later.
