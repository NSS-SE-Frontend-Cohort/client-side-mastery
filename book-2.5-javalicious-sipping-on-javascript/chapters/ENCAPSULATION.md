### Exercise: Encapsulation in Java vs. JavaScript

### Key Differences
**Java:** Encapsulation in Java is the mechanism of restricting access to certain components of an object and bundling the data (attributes) and methods (functions) that operate on that data into a single unit or class. It is achieved using access modifiers like private, public, and protected.

**JavaScript:** JavaScript achieves encapsulation primarily through closures and object properties. It does not have formal access modifiers like Java but uses conventions to control access. Uses conventions such as IIFE and Closures


#### **Java Example:**
Imagine the **NashvillePredatorsPlayer** class encapsulates player data like player names and salaries.

```java
public class NashvillePredatorsPlayer {
    private String playerName;
    private double salary;

    public NashvillePredatorsPlayer(String playerName, double salary) {
        this.playerName = playerName;
        this.salary = salary;
    }

    public String getPlayerName() {
        return playerName;
    }

    public double getSalary() {
        return salary;
    }

    // Private method, only accessible within the class
    private void adjustSalary(double bonus) {
        this.salary += bonus;
    }
}
```
In Java, access to `playerName` and `salary` is restricted by making them `private`. Encapsulation is enforced using `getter` methods.


##### Write the JAVA code using the provided NashvillePredatorsPlayer class: 
- Create an object representing player Roman Josi with a salary of $9,000,000.
- Display the player's name and salary.
- Can you modify the salary of a Nashville Predators player? Why or why not?
- How would you grant Roman Josi a $200,000 bonus?

### **JavaScript Example:**
#### Two JavaScript Versions Closure and Class

There are different ways to achieve encapsulation in JS highlighting the flexibility of the language. The first example uses a closure to keep player data private, preventing direct access to the variables outside the function. This method is effective but can be less intuitive for developers familiar with class-based paradigms.

The second example employs a newer class syntax sugar, providing a more structured and familiar approach for developers, especially those transitioning from Java. It allows for defining methods that interact with private-like properties, promoting cleaner code organization while still relying on naming conventions to indicate privacy. Together, they showcase JavaScript's versatility in implementing encapsulation and the evolution of its syntax to align more closely with traditional OOP practices.


#### JavaScript encapsulation using closures:

```javascript
function NashvillePredatorsPlayer(playerName, salary) {
    return {
        getPlayerName: function() {
            return playerName;
        },
        getSalary: function() {
            return salary;
        },
        // Closure keeps salary private
        adjustSalary: function(bonus) {
            salary += bonus;
        }
    };
}

```
In JavaScript, encapsulation through closures, keeps the variables `playerName` and `salary` private within the function scope.

##### Write the JS code using the provided NashvillePredatorsPlayer function: 
- Create an object representing player Roman Josi with a salary of $9,000,000.
- Display the player's name and salary.
- Can you modify the salary of a Nashville Predators player? Why or why not?
- How would you grant Roman Josi a $200,000 bonus?

#### JavaScript encapsulation using Class Syntax Sugar:
```javascript
class NashvillePredatorsPlayer {
    constructor(playerName, salary) {
        this._playerName = playerName;
        this._salary = salary;
    }

    get playerName() {
        return this._playerName;
    }

    get salary() {
        return this._salary;
    }

    adjustSalary(bonus) {
        this._salary += bonus;
    }
}
```
In JavaScript, encapsulation can be achieved using `class` syntax. Here, `_playerName` and `_salary` are protected by convention, and methods like `adjustSalary()` allow controlled access to these fields. It's important to realize 
these variables arent truly private and can be change from outside the class

##### Write the JS code using the provided NashvillePredatorsPlayer js class: 
- Create an object representing player Roman Josi with a salary of $9,000,000.
- Display the player's name and salary.
- Can you modify the salary of a Nashville Predators player? Why or why not?
- How would you grant Roman Josi a $200,000 bonus?
- Can you write the `_salary` variable directly? Why is this? 

### Questions
1. **Java:** How does the use of access modifiers in Java promote data security, and in what cases might it be limiting in large-scale applications?

2. **JavaScript:** Can you create a private function using the features provided by the JavaScript language? Why or why not? 

### Conclusion
Java has strict access modifiers provide a clear structure for protecting data,  JavaScript’s relies on conventions and closures which offers greater flexibility but can lead to ambiguity in larger projects.