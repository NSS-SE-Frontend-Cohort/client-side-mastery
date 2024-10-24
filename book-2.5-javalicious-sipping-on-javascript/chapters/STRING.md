### Java vs. JavaScript: Strings

This exercise compares how strings are handled in Java and JavaScript, focusing on their immutability and string operations.

---

### Key Differences
- **Java:** A `String` is a reference type, an object that represents a sequence of characters and is immutable. Once a `String` object is created, its value cannot be changed.
- **JavaScript:** JavaScript has both primitive strings and string objects. 
Primitive strings are immutable. They are created by assigning a string literal directly, and JavaScript handles them as primitives. JavaScript also allows strings to be created as objects using the String constructor. These are instances of the String object and behave more like objects, though they still allow access to string methods and properties. String objects in js are also immutable.
---

Demostrate the 2 different types of string String in JS:

```javascript
let primitiveStr1 = "hello";
let primitiveStr2 = "hello";
let stringObj1 = new String("hello");
let stringObj2 = new String("hello");

// Statement 1
console.log(typeof primitiveStr1);
// Statement 2
console.log(typeof stringObj1);

// Statement 3
console.log(primitiveStr1 === primitiveStr2);
// Statement 4
console.log(stringObj1 === stringObj2);
// Statement 4
console.log(stringObj1.valueOf() === stringObj2.valueOf());
```
### JavaScript Questions 
- What is the output of Statement 1 and why?
- What is the output of Statement 2 and why?
- What is the output of Statement 3 and why? 
- What is the output of Statement 4 and why? 


### **Java Code:**

#### Let's explore how we can determine whether a new string object is created during string manipulations.

In Java, while it’s not possible to directly print memory addresses of objects, we can use the `System.identityHashCode()` method to display a hash code that can give a unique identifier for each object. This can show that each string operation returns a new object.

In JavaScript, memory addresses are abstracted away from the developer, and there's no built-in mechanism to display the memory address or identity of a variable. However, by comparing variables directly, we can illustrate whether a new string was created or not.

### Example with Memory Address Simulation in Java

#### **Java Code:**

```java
public class NBAPlayer {
    public static void main(String[] args) {
        // Original player name
        String playerName = "LeBron James";

        // Print original player's memory address (hash code)
        System.out.println("Original Name: " + playerName);
        System.out.println("Original HashCode: " + System.identityHashCode(playerName));

        // Convert to uppercase (returns a new string)
        String upperCaseName = playerName.toUpperCase();
        System.out.println("Uppercase Name: " + upperCaseName);
        System.out.println("Uppercase HashCode: " + System.identityHashCode(upperCaseName));

        // Convert to lowercase (returns a new string)
        String lowerCaseName = playerName.toLowerCase();
        System.out.println("Lowercase Name: " + lowerCaseName);
        System.out.println("Lowercase HashCode: " + System.identityHashCode(lowerCaseName));

        // Concatenate " MVP" to the player's name
        String updatedPlayerName = playerName.concat(" MVP");
        System.out.println("Updated Name: " + updatedPlayerName);
        System.out.println("Updated HashCode: " + System.identityHashCode(updatedPlayerName));

        // Demonstrate that original string is still unchanged
        System.out.println("Original Name After All Changes: " + playerName);
        System.out.println("Original HashCode After All Changes: " + System.identityHashCode(playerName));
    }
}
```

### **Java Output Example:**

```
Original Name: LeBron James
Original HashCode: 12345678
Uppercase Name: LEBRON JAMES
Uppercase HashCode: 87654321
Lowercase Name: lebron james
Lowercase HashCode: 11223344
Updated Name: LeBron James MVP
Updated HashCode: 44332211
Original Name After All Changes: LeBron James
Original HashCode After All Changes: 12345678
```

This shows that new string objects (with different hash codes) are created with every string manipulation, while the original `playerName` string remains unchanged and retains the same hash code.

---

### **JavaScript Code:**
While we can’t print memory addresses in JavaScript, we can show that strings remain unchanged by using comparisons.

```javascript
function NBAPlayer() {
    // Original player name
    let playerName = "LeBron James";
    let playerName2 = new String("Steph Curry");

    console.log("Original Name: " + playerName);

    // Convert to uppercase
    let upperCaseName = playerName.toUpperCase();
    console.log("Uppercase Name: " + upperCaseName);

    // Convert to lowercase
    let lowerCaseName = playerName.toLowerCase();
    console.log("Lowercase Name: " + lowerCaseName);

    // Concatenate " MVP"
    let updatedPlayerName = playerName.concat(" MVP");
    console.log("Updated Name: " + updatedPlayerName);

    // Check if original name is still the same
    console.log("Original Name After All Changes: " + playerName);
    console.log("Is original unchanged: ", playerName === "LeBron James");  // true
    console.log("Comparing a reference", playerName2 === "Steph Curry"); // false
    
    playerName2.toUpperCase();
    // Statement 5
    console.log("playerName2", playerName2 === "STEPH CURRY"); // ???
    
    playerName.toUpperCase();
    // Statement 6
    console.log("playerName", playerName2 === "LeBron James"); // ???
}

NBAPlayer();
```

### Code Assignments:
Task: Run both NBAPlayer code in java and js and answer the questions below.

### Questions 

**Java** 
- How is the String type different from the int type in Java?
- How is the String type similar to and different from a custom Person type we might create in Java?

**JavaScript** 
- How do JavaScript strings behave as immutable data types, and what are the implications of this immutability when performing operations like concatenation, slicing, or modifying individual characters?
- Run the code and explain the output of Statement 5.
- Run the code and explain the output of Statement 6.

### **Conclusion**:
Both Java and JavaScript treat strings as immutable, meaning that once a string is created, it cannot be changed. Concatenating strings creates new string objects rather than modifying the original ones.