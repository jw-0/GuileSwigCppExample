; Load the library and call SWIG_init that defines our wrappers
(load-extension "./libexample" "SWIG_init")

(display " -- Creating C++ object from Scheme -- ")
(let* ((myclass-instance (new-MyClass 42))
       (initial-value (MyClass-getValue myclass-instance)))
  (newline)
  (display "Initial value: ")
  (display initial-value)
  (newline)

  (display " -- Setting new value from Scheme -- ")
  (newline)
  (MyClass-setValue myclass-instance 99)
  (display "New value: ")
  (display (MyClass-getValue myclass-instance))
  (newline)

  (delete-MyClass myclass-instance))
