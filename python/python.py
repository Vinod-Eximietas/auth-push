# Sample Python script for linting

"""
This module provides functions for basic arithmetic operations.
"""

def add_numbers(a, b):
    """
    Adds two numbers and returns the result.

    Parameters:
    a (int): The first number.
    b (int): The second number.

    Returns:
    int: The sum of the two numbers.
    """
    return a + b

def subtract_numbers(a, b):
    """
    Subtracts one number from another and returns the result.

    Parameters:
    a (int): The first number.
    b (int): The second number.

    Returns:
    int: The result of subtracting the second number from the first.
    """
    return a - b

def main():
    """
    Entry point of the script.
    Computes the result of adding and subtracting numbers and prints the results.
    """
    result1 = add_numbers(5, 3)
    result2 = subtract_numbers(10, 4)
    print("Result of adding result:", result1)
    print("Result of subtracting:", result2)

if __name__ == "__main__":
    main()
