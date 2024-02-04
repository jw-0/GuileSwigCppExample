#include "example.h"

MyClass::MyClass(int initialValue) : value(initialValue) {}

int MyClass::getValue() const {
    return value;
}

void MyClass::setValue(int newValue) {
    value = newValue;
}
