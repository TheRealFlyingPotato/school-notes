# continuation of 1.7
* indexed set of 2 or more vectors is linearly depenent if...
  * example 3
    * for what values of h is __v__3 in span{__v__1, __v__2}?
      * __v__2 is a multiple of __v__1
        * -> spam {__v__2, __v__2} = span{__v__1}
      * now: does __v__3 equal some multiple of __v__1
        * no, therefore __v__3 is not in the span{__v__1, __v__2} for any value of h
    * followup: for what values of h is {__v__1, __v__2, __v__3} linearly dependent?
      * back to definition
      * is linearly dependent for all values of h since v2 = -3v1
### T/F
* ex 4
  * if x and y are linearly independent and if {__x__,__y__,__z__} is linearly dependent, then __z__ is in span{__x__,__y__}
    * true
  * if {x,y,z} is linearly dependent, then z is in span{__x__, __y__}
    * false (example: y is the zero vector)
      * without zero: y =3x, z has nothing to do with x or y
* ex 5
  * if v1...v4 are in R4, and v3=2v1 + v2, then {v1...v4} is linearly dependent.
    * true (since v3 is a linear combination of the others)
* ex 5 (cont)
  * if v1 and v2 are in R4 and v2 is not a scalar multiple of v1, then {v1, v2} is linearly independenct
    * false (if v1 is the zero vector)
    * if specified that v1 and v2 are non zero -> true
    * this wording sucks
* ex 5 (cont)
  * if v1...v5 are in r5 and v3 = 0, then v1...v5 is linearly dependent
    * true (anytime you have the 0 vector it's automatically dependent)
* ex 5 (cont)
  * if __v__1...__v__4 are in r4 and {__v__1, __v__2, __v__3} is linearly dependent, then {__v__1, __v__2, __v__3, __v__4} is also linearly dependent
    * true
* ex 6 (cont)
  * trivial solution: if there is a pivot in every column __(no free variables)__
  * do the row operations
    * columns 1, 2, and 4 are the pivot colums
    
| B   |     |     |
| --- | --- | --- |
| 3   |  -4 |  7  |
| -5  | -3  |  -11|
| 4   |  3  |  2  |
| 8   | -7  |  4  |

# Section 1.8
### Linear Transformations
* function that goes from one real vector space to another real vector space
  * Rn is the domain of T
  * Rm is the codomain of T
  * T(x) is called the image of __x__ under the action of T
  * The range or T is the set of all possible images T(__x__) (all possible outputs)
* ex 1:
  * f(x) = x<sup>2</sup>
  * domain: R (all real numbers)
  * codomain (nature of the output, is it a real number, is it a vector in R<sup>n</sup>): R 
  * range: [0, infinity)
* coke vending machine example
  * domain: coke product buttons press
  * codomain (all possibilities): coke products
  * range (actual): sprite, diet coke
### matrix transformations
* a matrix transformation is a transformation defined as T(__x__) = Ax where A is an m x n matrix.
  * Rn is the domain of T
  * Rm is the codomain of T
  * the range of T is the set of all linear combinations in the ... of A
* ex 2
  * pic
