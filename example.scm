(load-extension "./libexample.so" "SWIG_init")

; Example of using the C++ code from Scheme
(display "Creating C++ object from Scheme: ")
(let* ((obj (new-MyClass 42))
       (initial-value (MyClass-getValue obj)))
  (display "Initial value: ")
  (display initial-value)
  (newline)

  (display "Setting new value from Scheme: ")
  (MyClass-setValue obj 99)
  (display "New value: ")
  (display (MyClass-getValue obj))
  (newline)

  (delete-MyClass obj)) ; Clean up the C++ object
