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

# Day 3 (Gilbert Strang - Introduction to Linear Algebra, Section 1.3)

✓ Concepts learned
- What is a matrix?
- Matrix dimensions
- Matrix-vector multiplication
- Matrix interpretation
- Matrices in Machine Learning

✓ My explanation (without looking at the book)
A matrix is a rectangular arrangement of numbers organized into rows and columns. 
It can represent multiple linear equations or a linear transformation. 
Unlike a vector, which stores one-dimensional data, a matrix organizes relationships between multiple vectors or variables.

✓ Mistakes I corrected today
- A matrix is not simply a "2D array" in programming; mathematically, it represents a linear transformation or a system of equations.
- Matrix-vector multiplication is only possible when the number of columns in the matrix equals the number of elements in the vector.

✓ Machine Learning connection
- Datasets are often stored as matrices where each row is a training example and each column is a feature.
- Neural network layers perform matrix-vector and matrix-matrix multiplication to compute predictions.

✓ One solved example

A =
[[1, 2],
 [3, 4],
 [5, 6]]

x =
[[2],
 [1]]

Ax =
[[4],
 [10],
 [16]]

The result is a vector with 3 elements because A has 3 rows.

✓ One question I still have
Why can a matrix be interpreted as both a collection of column vectors and as a linear transformation?

# Day 4 (Gilbert Strang - Introduction to Linear Algebra, Section 2.1)

✓ Concepts learned
- Matrix multiplication
- Matrix dimensions
- Identity matrix
- Non-commutativity of matrix multiplication

✓ My explanation (without looking at the book)
Matrix multiplication combines the rows of the first matrix with the columns of the second matrix using the dot product. Two matrices can be multiplied only when the number of columns in the first matrix equals the number of rows in the second matrix. The resulting matrix has the number of rows of the first matrix and the number of columns of the second matrix.

✓ Mistakes I corrected today
- Matrix multiplication is not performed element by element.
- The output dimensions are determined by the outer dimensions of the two matrices.
- The identity matrix acts like the number 1 for matrices because multiplying by it leaves a matrix unchanged.

✓ Machine Learning connection
- Every forward pass in a neural network involves matrix multiplication.
- Linear regression and deep learning compute predictions using repeated matrix multiplications.

✓ One solved example

A (2×3)

[[1,2,3],
 [4,5,6]]

B (3×2)

[[1,2],
 [3,4],
 [5,6]]

AB (2×2)

[[22,28],
 [49,64]]

✓ One question I still have
Why is matrix multiplication generally not commutative (AB ≠ BA), and what is the geometric intuition behind it?

# Day 5
✓ Concepts learned
Inverse of a matrix
Invertible (non-singular) and singular matrices
Solving linear systems using Ax = b
Relationship between inverse matrix and identity matrix
Conditions for a matrix to have an inverse
✓ My explanation (without looking at the book)

An inverse matrix is a matrix that reverses the effect of another matrix. If a matrix A has an inverse A⁻¹, then:

A⁻¹A = AA⁻¹ = I

where I is the identity matrix.

If we have the equation:

Ax = b

we can solve for x by multiplying both sides by the inverse of A:

x = A⁻¹b

This is only possible if A has an inverse.

✓ Mistakes I corrected today
Not every square matrix has an inverse.
A matrix must be square and have a non-zero determinant to be invertible.
A matrix with a determinant of zero is called a singular matrix and does not have an inverse.
The inverse of a matrix is not obtained by taking the reciprocal of each element.
Matrix multiplication is not commutative, but both A⁻¹A and AA⁻¹ are equal to the identity matrix when the inverse exists.
✓ Machine Learning connection

The Normal Equation for Linear Regression uses matrix inversion:

w = (XᵀX)⁻¹Xᵀy

Matrix inverses are used in covariance matrix calculations and Mahalanobis distance.
In practice, machine learning libraries often avoid explicitly computing matrix inverses because they are computationally expensive and can be numerically unstable.
✓ One solved example

Let

A = |2 1|
    |5 3|

The determinant is:

det(A) = (2 × 3) - (1 × 5)
       = 6 - 5
       = 1

Since the determinant is non-zero, the matrix is invertible.

The inverse is:

A⁻¹ = | 3 -1|
      |-5  2|

Verification:

AA⁻¹ = I
✓ Questions I answered today
What is the inverse of a matrix?

An inverse matrix is a matrix that reverses the effect of another matrix. Multiplying a matrix by its inverse gives the identity matrix.

Why doesn't every matrix have an inverse?

Only square matrices with a non-zero determinant have an inverse. If the determinant is zero, the matrix is singular and cannot be inverted.

What does Ax = b mean in simple English?

The matrix A transforms the vector x into another vector b. If A has an inverse, we can recover x from b.

Why is A⁻¹A = I similar to 5 × (1/5) = 1?

Both the inverse matrix and the reciprocal undo the original operation.

Number:
5 × (1/5) = 1
Matrix:
A⁻¹A = I

The identity matrix plays the same role for matrices that the number 1 plays in ordinary multiplication.

Can every matrix have an inverse?

No. Only square matrices with a non-zero determinant have an inverse.

✓ One question I still have

Why does a determinant of zero mean that the matrix loses information and therefore cannot be inverted?