; example.scm
;(use-modules (system foreign) (system foreign-library) (ice-9 ftw))

;(define libexample (dynamic-link "./libexample.so"))

;(define create-object (foreign-library-function libexample "create_object"
;  #:return-type intptr_t
;  #:arg-types int))
;(define get-value (foreign-library-function libexample "get_value"
;  #:return-type int
;  #:arg-types intptr_t))
;(define set-value (foreign-library-function libexample "set_value"
;  #:return-type void
;  #:arg-types (intptr_t int))
;(define delete-object (foreign-library-function libexample "delete_object"
;  #:return-type void
;  #:arg-types intptr_t))

;(define create-object (foreign-library-function libexample "create_object"))
;(define get-value (foreign-library-function  libexample "get_value"))
;(define set-value (foreign-library-function libexample "set_value"))
;(define delete-object (foreign-library-function libexample "delete_object"))

;(define (cleanup)
;  (dynamic-unlink libexample))
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

; Cleanup - close the shared library
;(cleanup)
