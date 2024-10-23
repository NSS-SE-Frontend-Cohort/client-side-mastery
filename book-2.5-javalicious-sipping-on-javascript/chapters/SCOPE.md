### Exercise: Understanding Scope in Java and JavaScript

### Prerequisite Vocabulary
- [code blocks](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block)

### Key Differences
**Java**: Block-scoped, meaning variables defined in a block (like in a loop or an `if` statement) are only accessible within that block.  

**JavaScript**: Initially had function scope with `var`, but newly added keywords `let` and `const` also support block scope.

### Part 1: Java Code Example
1. **Java Code:**

```java
public class ScopeExample {
    public static void main(String[] args) {
        // Block-scoped variable
        for (int i = 0; i < 5; i++) {
            int blockScopedVar = i; // This variable is only accessible within this block
            System.out.println("Inside loop: " + blockScopedVar);
        }

        // Uncommenting the line below will cause a compilation error
        // System.out.println("Outside loop: " + blockScopedVar);
    }
}
```

### Part 2: JavaScript Code Example

2. **JavaScript Code:**

```javascript
function scopeExample() {
    // Function-scoped variable
    for (var i = 0; i < 5; i++) {
        var functionScopedVar = i; // This variable is accessible outside the block
        console.log("Inside loop (var): " + functionScopedVar);
    }

    // This will work because `functionScopedVar` is function-scoped
    console.log("Outside loop (var): " + functionScopedVar);

    // Block-scoped variable with let
    for (let j = 0; j < 5; j++) {
        let blockScopedVar = j; // This variable is only accessible within this block
        console.log("Inside loop (let): " + blockScopedVar);
    }

    // Uncommenting the line below will cause a ReferenceError
    // console.log("Outside loop (let): " + blockScopedVar);
}

scopeExample();
```

### Instructions

1. **Run the Java Code:** Compile and execute the Java code to see the output from the loop. Try uncommenting the line that accesses `blockScopedVar` outside the loop to observe the compilation error.

2. **Run the JavaScript Code:** Execute the JavaScript code to see how `var` behaves with function scope and how `let` behaves with block scope. Uncomment the line that accesses `blockScopedVar` outside its block to observe the `ReferenceError`.

### Questions

- **Java:** Why does trying to access `blockScopedVar` outside its loop result in a compilation error?
- **JavaScript:** How does the behavior of `var` in JavaScript differ from `let`? What happens when you try to access `blockScopedVar` outside it's block when it's declared as `var` vs `let`?

### Conclusion

This exercise demonstrates how variable scope works in both Java and JavaScript, highlighting the differences between block-scoping in Java and the combination of function and block scoping in JavaScript.