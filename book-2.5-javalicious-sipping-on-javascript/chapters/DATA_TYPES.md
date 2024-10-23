### Exercise: Understanding Types in Java vs. JavaScript

### Java vs. JavaScript
**Java:** Java has eight primitive types (byte, short, int, long, float, double, char, boolean), and they are immutable. They are passed by value, meaning a copy of the data is passed to a method. Reference types (like arrays, objects) pass the reference by value, but the object’s state can be changed if modified inside the method.

**JavaScript:** JavaScript has six primitive types (Number, String, Boolean, Undefined, Null, Symbol) and reference types like objects and arrays. Primitive values are passed by value. Reference types (like arrays, objects) pass the reference by value allowing for changes within functions to reflect outside of the function.

#### **Java Code:**

```java
// Define a class to represent a Brazilian Jiu-Jitsu fighter
class Fighter {
    private String name;
    private int age;
    private double weight;

    // Constructor
    public Fighter(String name, int age, double weight) {
        this.name = name;
        this.age = age;
        this.weight = weight;
    }

    // Method to display fighter information
    public void displayInfo() {
        System.out.println("Fighter: " + name + ", Age: " + age + ", Weight: " + weight + " kg");
    }

    // Getter for name
    public String getName() {
        return name;
    }
}

public class Main {
    public static void main(String[] args) {
        // Create a new Fighter instance
        Fighter fighter1 = new Fighter("Carlos", 28, 75.0);
        fighter1.displayInfo(); // Display fighter info

        // Primitive types example
        int matchesWon = 10;
        boolean isChampion = true;

        System.out.println("Matches Won: " + matchesWon);
        System.out.println("Is Champion: " + isChampion);
    }
}
```

#### **JavaScript Code:**

```javascript
// Define a class to represent a Brazilian Jiu-Jitsu fighter
class Fighter {
    constructor(name, age, weight) {
        this.name = name;
        this.age = age;
        this.weight = weight;
    }

    // Method to display fighter information
    displayInfo() {
        console.log(`Fighter: ${this.name}, Age: ${this.age}, Weight: ${this.weight} kg`);
    }
}

// Create a new Fighter instance
const fighter1 = new Fighter("Carlos", 28, 75.0);
fighter1.displayInfo(); // Display fighter info

// Primitive types example
let matchesWon = 10;
let isChampion = true;

console.log("Matches Won:", matchesWon);
console.log("Is Champion:", isChampion);
```
### Code Assignments:
Task: Implement a system to track multiple fighters in a Brazilian Jiu-Jitsu tournament.

#### Java:

- Modify the Fighter class to include a new field for the fighter's belt rank (e.g., white, blue, purple).
- Create an array or a list to hold multiple Fighter instances and display their information.
- Add a method to calculate and display the average weight of the fighters.

#### JavaScript:
- Enhance the Fighter class to include a new property for the fighter's belt rank.
- Use an array to store multiple Fighter instances and iterate through the array to display each fighter's information.
- Create a function to calculate and display the average weight of the fighters.

### Open-Ended Questions:
#### Java:

- What challenges might arise from using primitive types versus reference types when managing fighter data in your application? How would you address these challenges?
- How does Java's strict type system affect method overloading based on parameter types?

#### JavaScript:

- How do the primitive types in JavaScript (such as undefined and null) impact your code? What strategies would you use to handle these values effectively when managing fighter information?
- Does Javascripts dynamic typing system allow method overloading based on parameter types? 

### Conclusion:
This exercise illustrates the differences between primitive and reference types in Java and JavaScript. Recognize how both languages handle data types and learn to implement similar functionality in each language.