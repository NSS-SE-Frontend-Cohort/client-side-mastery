### Exercise: Understanding Data Structures in Java vs. JavaScript

In this exercise, you’ll explore the differences in data structures between Java and JavaScript by implementing a Halloween-themed example. You’ll work with both stacks and queues, as well as lists and maps, to manage a Halloween costume party guest list. This will help illustrate how Java’s Collections Framework and JavaScript’s native data structures compare.

### **Key Differences** **In Java vs. JavaScript**

- **Java**: Provides a rich set of data structures such as `ArrayList`, `HashMap`, `Stack`, and `Queue` through the Collections Framework. These structures are type-safe and specialized.
- **Java**: Offers dedicated, structured data types like `ArrayList`, `HashMap`, `Stack`, and `Queue`, making data management more predictable and type-safe.
- **JavaScript**: Uses arrays and objects as its primary data structures. ES6 introduced `Map`, `Set`, and more, but arrays are still used for stack and queue behaviors through built-in methods like `push()`, `pop()`, `shift()`, and `unshift()`.
- **JavaScript**: Uses more flexible, but less structured, arrays and objects to achieve similar functionality, with fewer guarantees around structure and type.

### **Exercise Instructions**

In this exercise, you’ll implement a Halloween costume party guest list and manage it using various data structures in Java and JavaScript. You'll use lists to store guests, maps to associate guests with costumes, and stacks and queues to manage guests arriving and leaving the party.

---

#### **Part 1: Using Lists and Maps**

#### **Java Code**:

```java
import java.util.ArrayList;
import java.util.HashMap;

public class HalloweenParty {
    public static void main(String[] args) {
        // List of guests
        ArrayList<String> guestList = new ArrayList<>();
        guestList.add("Dracula");
        guestList.add("Witch");
        guestList.add("Zombie");

        // Map to store each guest and their costume
        HashMap<String, String> costumes = new HashMap<>();
        costumes.put("Dracula", "Vampire");
        costumes.put("Witch", "Classic Witch");
        costumes.put("Zombie", "Undead Walker");

        // Print guest list and their costumes
        System.out.println("Halloween Party Guest List:");
        for (String guest : guestList) {
            System.out.println(guest + " is dressed as " + costumes.get(guest));
        }
    }
}
```

##### **Task**:
1. Add two more guests to the `guestList` and assign them costumes using the `costumes` HashMap.
2. Print the updated list of guests and their costumes.

---

#### **JavaScript Code**:

```javascript
const guestList = ["Dracula", "Witch", "Zombie"];

// Map to store guests and their costumes
const costumes = new Map();
costumes.set("Dracula", "Vampire");
costumes.set("Witch", "Classic Witch");
costumes.set("Zombie", "Undead Walker");

// Print guest list and their costumes
console.log("Halloween Party Guest List:");
guestList.forEach(guest => {
    console.log(`${guest} is dressed as ${costumes.get(guest)}`);
});
```

##### **Task**:
1. Add two more guests to the `guestList` and assign them costumes using the `costumes` Map.
2. Print the updated list of guests and their costumes.

---

#### **Part 2: Using Stacks and Queues**

In this part, you’ll implement stack and queue behaviors to manage the order of guest arrivals and departures from the Halloween party.

#### **Java Code**:

```java
import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

public class HalloweenPartyQueueAndStack {
    public static void main(String[] args) {
        // Queue to represent guests arriving in order
        Queue<String> guestQueue = new LinkedList<>();
        guestQueue.add("Dracula");
        guestQueue.add("Witch");
        guestQueue.add("Zombie");

        // Stack to represent guests leaving the party in reverse order
        Stack<String> guestStack = new Stack<>();
        
        // Process guests arriving and moving to the party (Queue behavior)
        System.out.println("Guests arriving:");
        while (!guestQueue.isEmpty()) {
            String guest = guestQueue.remove();
            guestStack.push(guest);
            System.out.println(guest + " arrives.");
        }

        // Process guests leaving the party (Stack behavior)
        System.out.println("\nGuests leaving:");
        while (!guestStack.isEmpty()) {
            String guest = guestStack.pop();
            System.out.println(guest + " leaves.");
        }
    }
}
```

##### **Task**:
1. Add two more guests to the `guestQueue`.
2. Print the order of arrival and the reverse order of guests leaving the party using the queue and stack.

---

#### **JavaScript Code**:

```javascript
const guestQueue = ["Dracula", "Witch", "Zombie"];
const guestStack = [];

// Process guests arriving and moving to the party (Queue behavior)
console.log("Guests arriving:");
while (guestQueue.length > 0) {
    const guest = guestQueue.shift();  // Queue behavior: shift removes first element
    guestStack.push(guest);  // Stack behavior: push adds to top of stack
    console.log(`${guest} arrives.`);
}

// Process guests leaving the party (Stack behavior)
console.log("\nGuests leaving:");
while (guestStack.length > 0) {
    const guest = guestStack.pop();  // Stack behavior: pop removes last element
    console.log(`${guest} leaves.`);
}
```

##### **Task**:
1. Add two more guests to the `guestQueue`.
2. Print the order of arrival and the reverse order of guests leaving using the array methods `shift()` and `pop()`.

---

### **Open-Ended Questions**

1. **Java**:
   - What advantages does Java’s `HashMap` provide for storing key-value pairs like the guest list and their costumes?
   - How does Java’s type safety benefit the use of `Stack` and `Queue` for guest arrival and departure?

2. **JavaScript**:
   - What built in type does JS use to implement stacks and queues? 
   - What are the limitations of using arrays for stacks and queues compared to Java’s specialized data structures?
   
---

### **Conclusion**:

In this exercise, you implemented lists, maps, stacks, and queues in both Java and JavaScript using a Halloween-themed guest list. Java’s specialized data structures (`ArrayList`, `HashMap`, `Stack`, and `Queue`) offer more structured and type-safe approaches, while JavaScript’s arrays and maps provide flexibility but less structure. By understanding these differences, you’ll be better equipped to use the right tools depending on the language and the task at hand.