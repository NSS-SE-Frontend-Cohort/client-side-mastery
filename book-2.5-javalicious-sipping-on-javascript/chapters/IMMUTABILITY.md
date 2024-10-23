### Exercise: Understanding Immutability in Java vs. JavaScript

In this exercise, you’ll explore the concept of immutability in both Java and JavaScript by implementing a Narnia-themed example. You will create an immutable class in Java and replicate immutability practices in JavaScript, then answer some open-ended questions to reflect on the key differences.

### Key Differences **In Java vs. JavaScript**

- **Immutability in Java**: In Java, we can create immutable classes by marking fields as `final` and providing no setters, so the object’s state cannot be modified after it's created. Immutable classes are built into the language using `final` fields and constructors.

- **Immutability in JavaScript**: JavaScript does not have built-in support for immutability, but we can use practices like `Object.freeze()` or external libraries (e.g., Immutable.js, Immer.js) to enforce immutability. Immutability is a practice enforced through specific methods or libraries, not built-in natively.

### **Exercise Instructions**
#### **Java Code:**

Create a **NarniaCharacter** class in Java that is immutable. Once you create an instance, its state cannot be changed. Implement this class to store `name`, `species`, and `age` for characters from Narnia (e.g., Aslan, a lion, age 300).

```java
public final class NarniaCharacter {
    private final String name;
    private final String species;
    private final int age;

    // Constructor to initialize Narnia character's state
    public NarniaCharacter(String name, String species, int age) {
        this.name = name;
        this.species = species;
        this.age = age;
    }

    // Getters only, no setters
    public String getName() {
        return name;
    }

    public String getSpecies() {
        return species;
    }

    public int getAge() {
        return age;
    }

    // toString() method to display character details
    @Override
    public String toString() {
        return "NarniaCharacter{name='" + name + "', species='" + species + "', age=" + age + "}";
    }
}
```

##### **Task**:
1. Create an instance of `NarniaCharacter` for Aslan (e.g., "Aslan", "Lion", 300) and print its details.
2. Attempt to modify the `name`, `species`, or `age` after the object is created (this should not be possible because the class is immutable).

#### **JavaScript Code:**

Create a **narniaCharacter** object in JavaScript and make it immutable using `Object.freeze()`. Ensure that its properties (like `name`, `species`, and `age`) cannot be changed once the object is created.

```javascript
const narniaCharacter = Object.freeze({
    name: "Aslan",
    species: "Lion",
    age: 300
});

console.log(narniaCharacter); // Print the Narnia character object

// Attempt to modify the properties (this will fail in strict mode)
narniaCharacter.name = "Tumnus";
narniaCharacter.species = "Faun";
narniaCharacter.age = 100;

console.log(narniaCharacter); // The object remains unchanged
```

##### **Task**:
1. Create the `narniaCharacter` object and print its details.
2. Try to change the `name`, `species`, or `age` and observe what happens.
3. Reflect on how `Object.freeze()` achieves immutability in JavaScript.

### **Open-Ended Questions**

1. **Java**:
   - How does Java enforce immutability using `final` and the lack of setter methods?
   - What would happen if you tried to modify the fields directly in the Java class?

2. **JavaScript**:
   - What does `Object.freeze()` do in JavaScript, and what are its limitations?
   - How can external libraries like `Immutable.js` or `Immer.js` further enhance immutability practices in JavaScript?

### **Conclusion**:
In this exercise, you’ve seen how immutability is handled in both Java and JavaScript using characters from **Narnia**. Java has built-in support for immutable classes using `final` fields, while JavaScript developers must enforce immutability using methods like `Object.freeze()` or external libraries. Immutability helps create more predictable and stable code, especially when managing complex data structures, making it an essential concept for developers to understand.