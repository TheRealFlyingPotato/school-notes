# Make
## Macros
- Suffix Rules
  - A Suffix rule is predefined, generalized description file entry. `make` wil mostly depend on *default* suffix rules.
  - Example:\
    <pre>.SUFFIXES: .cpp # what the significant suffixes are
    .cpp.o:
      $< ${cxx} -c ${FLAGS} $< -o $@ # how a .cpp is built from .o</pre>
  - Links on Price's site
# Modeling
What is modeling? To model is to describe a real system in a "simplistic" way.
- building example. We model:
  * to visualize and control a system's architechture.
  * to see what the system is doing.
  * to see what it is capable of
  * to manage risk
  * to document the product
  * to provide insight into unforseen problems

We model because we can't see the entirety of a large system.\
**Divide and Conquer**: if you're given a huge program do you write it all in one function or one sitting
Models may represent a project from different views.
Hopefully your model will lead to a system that is more modifiable, adaptable, extendable, expandable, etc.

# UML
| things | relationships | diagrams
| - | - | - |
| things | how things interact | bunch-o-things |

### Things
1. Structural: Nouns of UML, static parts of the model, either physical (e.g. desk) or conceptual (e.g. matrix)
    - class
    - interfact
    - collaboration
2. Behavioral: Verbs of UML - describe behavior over time
    - interaction
    - state machines
3. *Annotational*: explanatory part of UML
    - notes
    - constraints
4. Diagrams
    - any combination of things and relationships

A class diagram is a box with 3 sections:
```
----------------
|     name     |
----------------
|  attributes  |
----------------
|  operations  |
----------------
```
Ex: Class diagram for a chair may just be   
```
----------------
|     chair    |
----------------
```
table may be
```
----------------
|     table    |
----------------
| numLegs: int |
----------------
```
or maybe 
```
----------------
|     table    |
----------------
| numLegs: int |
----------------
|    fold()    |
----------------
```
Relationships:
  1) Dependency:
    shows that one thing depends on another thing\
      `[A]------>[B]` means
        `A "uses a" B`
  2) Association: some kind of general structural relationship\
      1..4  
      or\
      1..*\
   teacher-->student\
  3) `[A]────────>[B]` means
       `A "contains a" B`
  3. Generalization: 
      Inheritance / Abstraction\
        `[A]────────▷[B]` means
          `A "is a" B`

Notes and constraints: 
- [comment / note] (fold down the corner)\
- { constraint }

Box in corner means templated class

Attributes (member variables -- square brackets optional)
   general format:
      [visibility] name [multiplicity] [:type]
      visibilty: + (public)
                 - (private)
                 # (protected)
      multiplicity: like an array
      :type : type of variable it is.
      
 Operations (member fncts)
  - [visibility] name [([direction] name [:const] [:type])] [:ret_type]
  - () is a paramater list
  - directions:
    * in
    * out
    * inout

# Review
* Built in types
* Operators
* Decision branching
* Looping

### Static Variables
```cpp
class Line
{
  private:
    float m_a, m_b, m_c;
  public:
    Line(const Point pt1, const Point pt2);
    Line(const Point p5, const float x_dir, const float y_dir);
    Point intersect(const Line & other_line) const;
    float dist(const Point & pt) const;
    static float parallel_tolerance;
}

fncts:
float Line::dist(const Point & pt)
{
  return fabs((m_a*a_pt.getX()+m_b*a_pt.getY()+m_c) / 
             (m_a*m_a+m_b*m_b));
}
```
* The static variable in our line class is a "different kind" of variable. Any static member variable
of a class "represents" the entire class in the sense that it applies to all objects of that class type.
* A static variable has only one memory location / instance - there is only one of these for a given class.
* some place in a .cpp file, the value of this variable needs to be allocated and assigned.

# Preprocessor Commands
Prevents repeat definitions
```cpp
#ifndef STUFF_H
#define STUFF_H
..
#endif
```
or
```cpp
#pragma once
```
# General Coding Guides / Notes
* by reference when needed
  * operators returning by reference when needed
* don't forget consts
* functions are good for: repeated code, and code cleanup
* NEVER return a refrence to a local variable

## Streaming Functions
* `<<` insertion (inserting INTO the stream)
* `>>` extraction (extracting FROM the stream)

## Auto
* When to use it: https://www.acodersjourney.com/c-11-auto/\
  * iterator loops
  * long and annoying stuff
* allows the programmer to declare variables without explicitly stating the type
* it's a signal to the compiler to infer the type
* must have initial value

example:
```cpp
template <class BuiltType, class Builder>
void buildSomething(Builder & builder)
{
  BuiltType obj = builder.makeObj();
}
// So here you have two template params, and the 
//type of the built obj can't be deduced by the param.
MyObjBuilder builder;
builDomething<anObj>(builder);
```
can be simplified using auto
```cpp
template <class builder>
void makeSomething(Builder & builder)
{
  auto obj = builder.makeObj();
  // ... does something w obj
} 
// only need 1 template, greatly simplifying the code
// and its type is infered by the compiler and the call
MyObjBuilder builder;
makeSomething(builder)
```

### Decltype
Checks the type of the expression.
```cpp
template <typename T1, typename T2>
T2 add (T1 a, T2 b)
{
  return a+b;
}

int main()
{
  cout << add(1, 1.8) << endl; // 2.8
  cout << add(1.8, 1) << endl; // 2
  // since returning T2, T2 is an int in the second line
}
```
Fix:
```cpp
template <typename T1, typename T2>
auto add (T1 a, T2 b) -> decltype (a+b) // add auto and decltype
{
  return a+b;
}

int main()
{
  cout << add(1, 1.8) << endl; // 2.8
  cout << add(1.8, 1) << endl; // 2.8
}
```

while auto allows you to declare an object of a particular type,
decltype allows you to extract the type
## Pointers
* Rule of 3,3.5,4,5
  * assignment
  * copy
  * deconstructor
  * move
  * swap

# Functions
  | templates | overload |
  | - | - |
  | same number of params but different | different functionality for different params |
  | usually same functionality | |

# Classes
don't forget preconditions: X operator must be defined for T
### Special Operators
Special operators: they *must* be overloaded as member functions
* Assignment =
    * should return a reference to the calling object
        this allows chaining, e.g. { A a,b,c; a=b=c; }
    * paramater is a *const* reference to an object of the same type.
    * Make sure a = a; works and is efficient.
    * Beware of contained pointers.
    * the = operator is one of the "BIG" THREE. (no longer three.) must redefine if has pointers.
      big 4 and a half:
      // deconstructor, copy, copy assignement : move : swap
* [] (bracket or projection operator)
  * usually used for indexing into matrix/multi-dimensional-array-like things.
  * it will only take 1 argument for 1 parameter
  * you should have a fully const version and a non-const version
* function evaluation operator ()
  * this can have multiple params.
  * used for evaluating the value of a function wrapped in a class
        sometimes called functors

### Static Functions
* declared by writing "static" in front of the decleration
* this function can be used by "the class" and not by a particular object.
* static functions have no access to the (a) calling object

Example usage:
```cpp
class Complex
{
  private:
    m_r, m_i;
  public:
    static complex fileread(iostream & in = cin);
};

Complex Complex::fileread(iostream & in = cin)
{
  float r, i;
  in >> r; // >> i
  in >> i;
  return Complex(r, i);
}
/// driver.cpp
Complex z = Complex::fileread(...);
///
```

# Exception Handling
* Should inherit from `std::exception`
```cpp
class SizeErr
{
  public:
    sizeErr(int i);
    int badSubscrpt();
  private:
    int subscr;
};
```
* When throwing: all **fully** constructed objects are deallocated.
* `cerr` skips the buffer

# Range-Based for loops
requires:
  * begin()
  * end
  * prefix ++ overload
  * overload of the * operator
  * !=

# Functions Pointers, Functors, etc.
**See handout**

```cpp
class my_function_class
{
  private:
    double (*the_function) (char);
  public:
    //takes a function pointer that returns a double and has a char as param
    my_function_class(double (*f)(char)):the_function(f) {}
    double operator()(const double x) { return the_function(x); }
};
```
# Lambdas
Capture types
* & - implicit reference to all variables used in lambda
* = - implicit const copy of all variables used in lambda
* var - copy of variable called var
* &var - reference to variable called var
* this - reference to calling object
* *this - copy of calling object

example:
```cpp
auto build_adder(const int y) {
  return [&] (const int x) {return x + y;};
}
```

# Function Call Resolution
Function overloading is the creation of multiple functions 
with the same name but with different numbers and/or types of params.
You overload a fnct when you want similar (in principle) behavior/concept
but for different types. the functionality changes.
whereas you use a template function when you want the same functionality for different types (same #) of params.

Resolution order of overloaded functions:
  1. exact match (with only possibility of trivial conversions)
  2. trivial conversions\
    from T to T& and vice versa\
    from array of T to T* or vice versa\
    *this implies that void bob(T); and void bob(T&); cannot coexist in a program.\
    However, void bob(T) and void bob(const T) can.*\
  3. Match w/ promotions\
    from enum, bool, short to long\
    from float to double\
    ex: `v bob(int a);` and 
        `v bob(double a);` can coexist.
  4. standard conversions\
      integer types to float-types
  5. user-defined conversions\
      // be careful that it can only happen in one way\
      for multiple arguments the rule is best match wins\
      ***NO AMBIGUITIES***

What about templates?
  1. compiler first looks for *exact* match (without trivial promotions)
  2. template match with possible trivial promotions
  3. usual function declaration match (from last class period)

```cpp
template <class T>
void bob (T a, const T & b);

int A;
float B;
bob(1,A);   // match, step 2, T being int
bob(1.0,B); // match, step 2, T being float
bob(1,B); // no match
// now add
void bob(float,const float &);
(bob 1,B); // yes, step 3, match with 1 promoted to float (called a standard conversion)
```

Template specialization works.
Sometimes a template won't cover the case you need.
```cpp
template <class T>
int compare(const T & t1, const T & t2)
{
  if (t1 < t2) return -1;
  if (t2 < t1) return 1;
}
```
So...
```cpp
// template specialization
template<>   
int compare<const char*>(const char* const & S, const char* const & t)
{
  return strcmp(S, t);
}
```

# Classes
for member functions, a function can be and SHOULD be designated as "a const function" if 
it should not be allowed to modify the *calling* object. Example:
```cpp
float & operator [] (const int i); //non const accessor
const float & operator [] (const int i) const;
```
## Constructors
* named the class name
* has no return type, hence no return statement
* can be overloaded
* called (usually) automatically
* can be called explicitly: `return Fraction(a,b)`

c++ automatically creates for your user-defined type (class) "the" default constructor. But, this is surpressed
if you write any other constructor.

Write arithmetic functions as non-member when possible. (imaginary number example)
