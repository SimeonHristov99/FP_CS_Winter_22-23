# Task 0

Create a text file and read its contents into Haskell.

# Task 1

Define a new polymorphic algebraic data type called `Shape`. For it define the constructors:

- `Circle` with one argument representing the radius;
- `Rectangle` with two arguments representing the width and height;
- `Triangle`;
- `Cylinder` with two arguments for the radius of the base and height.

Create a shape from every type and output it.

## By using the *Shape* data type complete tasks 2 and 3

# Task 2

Define the following functions:

```text
perimeter;
area;
isRound - returns whether a shape has a round side;
is2D - returns whether a shape has two dimensions.
```

Formulas:

```text
Perimeter of a cylinder: 4 * r + 2 * h.
Area of a cylinder: 2 * pi * r * h + 2 * pi * r * r.
```

Test cases:

```haskell
print $ perimeter (Circle 5) == 31.41592653589793
print $ perimeter (Rectangle 2.5 4.5) == 14
print $ perimeter (Rectangle 5.5 20.6) == 52.2
print $ perimeter (Triangle 5.3 3.9 4.89) == 14.09
print $ perimeter (Cylinder 2.5 10) == 30

print $ area (Circle 5) == 78.53981633974483
print $ area (Rectangle 2.5 4.5) == 11.25
print $ area (Rectangle 5.5 20.6) == 113.30000000000001
print $ area (Triangle 5.3 3.9 4.89) == 9.127927385194024
print $ area (Cylinder 20 30) == 6283.185307179587  

print $ isRound (Circle 5) == True
print $ isRound (Rectangle 2.5 4.5) == False
print $ isRound (Rectangle 5.5 20.6) == False
print $ isRound (Triangle 5.3 3.9 4.89) == False
print $ isRound (Cylinder 20 30) == True

print $ is2D (Circle 5) == True
print $ is2D (Rectangle 2.5 4.5) == True
print $ is2D (Rectangle 5.5 20.6) == True
print $ is2D (Triangle 5.3 3.9 4.89) == True
print $ is2D (Cylinder 20 30) == False
```

# Task 3

Define two functions that accept a list of shapes and:

```text
1. The first returns their areas.
2. The second returns the shape with the biggest area.
```

Test cases:

```haskell
print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [78.54, 11.25, 113.3, 9.13, 6283.19]
print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == Cylinder 20.0 30.0
```

# Task 4

Define a polymorphic algebraic data type called `Point`. A point may have two or three dimensions.

- Create an instance of every type and print it;
- Define a higher order function that accepts two functions: `f` and `g` and a list of points with two coordinates. The function should return those points for which `f (firstCoord) = g (secondCoord)`.

Test case:

```haskell
print $ getPoints (\x -> x * x) (2+) [TwoD 2 2, TwoD 1 2, TwoD 3 7] == [TwoD 2 2, TwoD 3 7]
```

## By using the *Point* data type complete tasks [5 .. 7]

# Task 5

Define a function that finds the distance between two points. Make sure the points have equal dimensions!

Test cases:

```haskell
print $ distance (TwoD 2 5) (TwoD 6 9) == 5.66
print $ distance (ThreeD 2 5 10) (ThreeD 6 9 (-5)) == 16.03
```

# Task 6

Define a function that accepts a point `p` and a list of points. The function returns the points from the list that are closest to `p`.

Test case:

```haskell
print $ closestTo (ThreeD 2 5 10) [(ThreeD 4 5 6), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == [ThreeD 4.0 5.0 6.0]
```

# Task 7

Define a function that accepts a list of points and returns a vector `(d, p1, p2)` that represents the closest distance between any two points and the points themselves.

Test case:

```haskell
print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.83,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)
```

# For Home

## Tasks 1, 2, 3

Open and solve tasks `1`, `2`, and `3` from `exam2_2022.pdf`.
