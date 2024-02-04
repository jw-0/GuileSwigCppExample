# Example SWIG binding generation for C++ code in Guile

1. Generate the bindings from the header in the interface file

`swig -c++ -guile example.i`

2. Compile the wrapper code

`g++ -fPIC -I/usr/include/guile/3.0 -c example_wrap.cxx`

3. Compile the implementation file

`g++ -fPIC -c example.cpp`

4. Create the shared library from the wrapper object file and the implementation object file

`g++ -shared example.o example_wrap.o -o libexample.so`

This library can then be called from Guile, see the `example.scm` file for an example of loading the library and calling the C++ code.

This is a simple example, for information about working with more advanced C++ features (e.g. overloaded functions/operators, templates etc) check out the [official SWIG documentation](https://www.swig.org/Doc1.3/SWIGPlus.html).
