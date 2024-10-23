## Exercise: Understanding Primitive vs Reference Types and their nuances

In both languages primitive types and reference types represent two distinct categories of data. **Primitive types** include numbers, strings, booleans, undefined, null, and symbols, floats, ints. They are immutable, meaning their values cannot be modified once created, they can be reassigned and will see the difference between the two below. 

On the other hand, **reference types** encompass objects, arrays, and functions. These types are mutable (with some exceptions like String in Java that was designed to be an Immutable Reference type), allowing for the modification of their properties and values in addition to reassignment. 

In both Java and JavaScript, primitive types are immutable, meaning that once a primitive value is created, it cannot be modified. However, the reference to a primitive value can be reassigned. In contrast, reference types are stored as pointers, allowing for modifications to their internal state. 

We will examine how primitive and reference types behave when passed into functions. For primitive types, we will focus solely on reassignment, as modification is not possible due to their immutability. For reference types, we will explore both reassignment and modification.

#### What is Reassignment?
```java
public class Reassignment {

    public static void main(String[] args) {
        // Primitive type: int
        int num = 10; // Original value
        System.out.println("Original num: " + num); // Output: 10
        
        // Reassignment of primitive type
        num = 20; // Reassigned to a new value
        System.out.println("Reassigned num: " + num); // Output: 20
    }
}
```
#### What is Modification?
```java
public class Modification {
    public static void main(String[] args) {
        // Reference type: Array (int[])
        int[] numbers = {1, 2, 3}; // Original array
        System.out.println("Original array: " + java.util.Arrays.toString(numbers)); // Output: [1, 2, 3]

        // Modification of the array
        numbers[0] = 10; // Modifying the first element of the array
        System.out.println("Modified array: " + java.util.Arrays.toString(numbers)); // Output: [10, 2, 3]
    }
}
```

**Java:** Primitive types are passed by value, while objects (reference types) are passed by reference. However, the reference itself is passed by value.
**Java**: Reassigning the reference inside the method does not affect the original object outside the method, but modifying it's fields does.

**JavaScript:** Primitive types are passed by value, while objects (reference types) are passed by reference. However, the reference itself is passed by value.
**JavaScript**: Similar to Java, reassignment of the object reference does not affect the original object outside the function. However, changes to the object's properties will be reflected outside the function.

### Disclosure:
Please note that the examples below demonstrate improper encapsulation for demo purposes. In production code, it's recommended to encapsulate class fields properly using access modifiers (like private) and provide getter and setter methods to manage object states safely.

#### **Java Code:**
```java
class Song {
    String title;
    int playCount;

    Song(String title) {
        this.title = title;
        this.playCount = 0;
    }

    void play() {
        playCount++;
    }
}

// Method to demonstrate reassigning a reference vs. modifying the object
public class Main {
    static void modifySong(Song song) {
        song.play(); // Modifies the original object's state
        song = new Song("Edelweiss"); // Reassigns song to a new object (does not affect the original)
    }

    public static void main(String[] args) {
        Song song = new Song("Do-Re-Mi");
        modifySong(song);
        System.out.println("Title: " + song.title + ", Play Count: " + song.playCount); // Output: Title: Do-Re-Mi, Play Count: 1
    }
}
```

#### **JavaScript Code:**
```javascript
function Song(title) {
    this.title = title;
    this.playCount = 0;

    this.play = function() {
        this.playCount++;
    };
}

// Function to demonstrate reassigning a reference vs. modifying the object
function modifySong(song) {
    song.play(); // Modifies the original object's state
    song = new Song("Edelweiss"); // Reassigns song to a new object (does not affect the original)
}

const song = new Song("Do-Re-Mi");
modifySong(song);
console.log(`Title: ${song.title}, Play Count: ${song.playCount}`); // Output: Title: Do-Re-Mi, Play Count: 1
```

#### **Open-Ended Questions:**
1. **Java**: Why is it important to understand that reassigning a reference inside a method does not affect the original object in the calling method? Is this the same in both languages?

2. **JavaScript**: When a reference type (for ex Object) is passed into a function, explain how modifying the object's properties impacts the original object outside the function. How does this behavior compare between the two languages?

#### **Conclusion:**
This exercise demonstrates the nuances of passing reference types in Java and JavaScript, highlighting the distinction between reassigning a reference and modifying an object's internal state. 

Additionally, it's crucial to note that primitive types in both languages behave differently, as they are passed by value, meaning changes to them do not affect the original variable. 