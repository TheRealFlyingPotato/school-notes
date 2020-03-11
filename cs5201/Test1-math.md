# Inner Product Spaces
dot product

# Gram-Schmidt process
V = span(v1, v2, v3)\
find span(u1, u2, u3)

y1 = v1 - 0
u1 = y1 * ||y1||

y2 = v2 - (v2 . u1) * u1\
u2 = y2 * ||y2||

y3 = v3 - (v3 . u1) * u1 - (v3 . u2) * u2\
u3 = y3 * ||y3||

etc
# Frobenius Norm
A is a matrix\
F(A) or ||A||~F = sqrt ( sum of all elements in the matrix squared )\
||A||~1 = `max([sum(column) for column in matrix])`
||A||~inf = `max([sum(row) for row in matrix])`

if any of these norms tend toward 0 they all must tend toward 0.

# Equivalence of Norms:
M and N are two different norms, x is a vector\
c1\*M(x) <= N(x) <= c2\*M(x)
c3\*M(x) <= N(x) <= c4\*M(x)

# Constexpr
The constexpr specifier declares that it is possible to evaluate the value of the function or variable at compile time.
