### Exercise: Comparing Function Context and Scope in Java vs. JavaScript

### Key Differences
**Java**: Functions are defined as methods inside classes. The function's scope is limited to the class and its access modifiers (public, private, protected).  

**JavaScript**: Functions are first-class citizens. They can be passed as arguments, returned from other functions, and assigned to variables. This provides a functional programming paradigm alongside OOP.

#### **Java Example:**
1. Create a `Freddy` class with a public `scream()` method and a private `whisper()` method.
   ```java
   public class Freddy {
       void scream() {
           System.out.println("Freddy is screaming in Java!");
       }
       
       void whisper() {
           System.out.println("Freddy is whispering in Java...");
       }
   }
   ```
2. Call the `scream()` method from an instance of the `Freddy` class. Note that `scream()` or `whisper()` cannot be called directly, emphasizing that methods in Java must be part of a class.
```java
public class Main {
    public static void main(String[] args) {
       // TODO write the code to make Freddie scream and whisper
       // Calling the method
    }
}
```

#### **JavaScript Example:**
1. Create an object `Freddy` with a method `scream()` and a standalone function `whisper()`.
   ```javascript
   const Freddy = {
       scream: function() {
           console.log("Freddy is screaming in JavaScript!");
       }
   };

   function whisper() {
       console.log("Freddy is whispering in JavaScript...");
   }

   // TODO fill in a JS method call
   // TODO fill in a JS function call
   ```
2. Both `scream()` (method) and `whisper()` (function) can be called independently, showing how JavaScript allows for standalone functions.

### Questions
- What is the difference between a function and a method?
- Does Java and JS support both functions and a methods?
- **Java:** What are the advantages and disadvantages of having methods defined only within classes in Java regarding code organization and reusability?

- **JavaScript:** How does the ability to use standalone functions in JavaScript provide advantages for flexibility and creativity, and what potential drawbacks might this flexibility introduce in code maintainability and readability?

### Conclusion
- In **Java**, methods must be part of a class, while in **JavaScript**, functions can exist independently of objects or classes, demonstrating a more flexible function context.