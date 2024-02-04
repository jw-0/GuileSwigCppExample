#include "example.h"

MyClass::MyClass(int initialValue) : value(initialValue) {}

int MyClass::getValue() const {
    return value;
}

void MyClass::setValue(int newValue) {
    value = newValue;
}

extern "C" {
    MyClass* create_object(int initialValue) {
        return new MyClass(initialValue);
    }

    int get_value(MyClass* obj) {
        return obj->getValue();
    }

    void set_value(MyClass* obj, int newValue) {
        obj->setValue(newValue);
    }

    void delete_object(MyClass* obj) {
        delete obj;
    }
}