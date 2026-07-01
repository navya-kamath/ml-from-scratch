# Day 1 (Gilbert Strang - Introduction to Linear Algebra, Section 1.1)

✓ Concepts learned
- What is Linear Algebra?
- Scalars and vectors
- Row vectors and column vectors
- Vector notation
- Vector addition
- Scalar multiplication
- Linear combinations
- Linear dependence and independence
- Vectors in Machine Learning

✓ My explanation (without looking at the book)
A vector is an ordered collection of numbers that can represent a point, direction, or data in an n-dimensional space. Vectors can be added together and multiplied by scalars. A linear combination is formed by adding scalar multiples of vectors. If one vector can be written as a linear combination of others, they are linearly dependent; otherwise, they are linearly independent.

✓ Mistakes I corrected today
- Temperature is a scalar, not a vector.
- Individual neural network weights are scalars; collections of weights form vectors and matrices.
- A negative scalar does not have a direction—it only reverses the direction of the vector during scalar multiplication.
- A 1D vector and a scalar may have the same value but are different mathematical objects.

✓ Machine Learning connection
- Each training example (row) in a dataset is represented as a feature vector.
- Feature vectors are multiplied with weight vectors to make predictions.
- Most ML data is represented using vectors and matrices.

✓ One solved example
v = [1, 2]
w = [3, 4]

v + w = [4, 6]

3v = [3, 6]

Also verified that
[1,2,3] and [3,6,9] are linearly dependent because
[3,6,9] = 3 × [1,2,3].

✓ One question I still have
Why are vectors considered more fundamental than scalars in linear algebra?

# Day 2 (Gilbert Strang - Introduction to Linear Algebra, Section 1.2)

✓ Concepts learned
- Dot product
- Length (magnitude) of a vector
- Orthogonal (perpendicular) vectors
- Relationship between dot product and angle
- Computing dot product manually and using NumPy

✓ My explanation (without looking at the book)
The dot product is found by multiplying corresponding components of two vectors and adding the results. It measures how closely two vectors point in the same direction. A positive dot product means the vectors point in similar directions, zero means they are orthogonal (perpendicular), and a negative value means they point in opposite directions. The length of a vector measures its magnitude.

✓ Mistakes I corrected today
- "Orthogonal" and "perpendicular" mean the same thing in Euclidean space, but "orthogonal" is the preferred mathematical term because it generalizes to higher dimensions.
- The dot product is called the "dot product" because of the dot (·) notation, not because only corresponding components are multiplied.
- A Python function that only prints a value returns None unless an explicit return statement is used.

✓ Machine Learning connection
- Dot products are used to compute predictions in linear regression and neural networks.
- Similarity between vectors is measured using dot products (and later, cosine similarity).
- Matrix multiplication is built using dot products.

✓ One solved example
v = [2, 3]
w = [4, -1]

Dot product:
v · w = (2 × 4) + (3 × -1)
      = 8 - 3
      = 5

Also wrote a Python function to check whether two vectors are orthogonal by computing their dot product.

✓ One question I still have
Why does the dot product naturally involve cos(θ), and what is the geometric intuition behind that formula?