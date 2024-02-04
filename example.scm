(load-extension "./libexample" "SWIG_init")

(display " -- Creating C++ object from Scheme -- ")
(let* ((obj (new-MyClass 42))
       (initial-value (MyClass-getValue obj)))
  (newline)
  (display "Initial value: ")
  (display initial-value)
  (newline)

  (display " -- Setting new value from Scheme -- ")
  (newline)
  (MyClass-setValue obj 99)
  (display "New value: ")
  (display (MyClass-getValue obj))
  (newline)

  (delete-MyClass obj))
