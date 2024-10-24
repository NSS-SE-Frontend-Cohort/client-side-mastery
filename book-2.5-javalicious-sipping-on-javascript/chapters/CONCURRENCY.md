### In Java vs. JavaScript: Concurrency Exercise

### Prerequisite Vocabulary 
**Concurrency** refers to the ability of a system to handle multiple tasks at once, allowing them to progress without necessarily being executed simultaneously. It focuses on managing the execution flow of tasks, which can include overlapping in time.

**Multithreading**, on the other hand, is a specific implementation of concurrency that involves running multiple threads within a single process. Threads share the same memory space, enabling efficient communication, but require careful management to avoid issues like race conditions.

**Asynchronous** programming, commonly used in JavaScript, allows for non-blocking operations, enabling the program to handle other tasks while waiting for time-consuming tasks to complete. This differs from traditional multi-threading, as JavaScript relies on an event loop rather than multiple threads to manage execution.

In JavaScript, you do not need to synchronize functions in the same way as you do in multi-threaded languages like Java. JavaScript operates on a single-threaded event loop model, meaning that while asynchronous operations (like callbacks, promises, and async/await) can overlap, they do not execute simultaneously. 

### Key Differences
- **Java**: Uses multi-threading, allowing parallel execution through classes like `Thread` and `Runnable`.
- **JavaScript**: Single-threaded event loop, handles concurrency using asynchronous programming tools such as `callbacks`, `promises`, and `async/await`.

#### **Java Code:**
```java
import java.util.ArrayList;
import java.util.List;

// Global list to log messages
List<String> logMessages = new ArrayList<>();

class HelloKittyThread extends Thread {
    private String kittyName;

    public HelloKittyThread(String name) {
        this.kittyName = name;
    }

    @Override
    public void run() {
        // Simulate adding a log entry, showing the potential for collisions
        logMessages.add(this.kittyName + " says: Hello Kitty is multitasking!");
    }
}

public class HelloKittyStore {
    public static void main(String[] args) {
        // TODO write your code here
        // Print log messages
        for (String message : logMessages) {
            System.out.println(message);
        }

        System.out.println("Main thread has finished.");
    }
}
```
##### Write the JAVA code using the 2 provided: 
- Create 5 HelloKittyThread's and run them

#### **JavaScript Code:**
```javascript
// Global array to store log messages
const logMessages = [];

function asyncTask(catName) {
    return new Promise((resolve) => {
        setTimeout(() => {
            const message = `${catName}  says: Hello Kitty is async!`;
            logMessages.push(message);
            resolve();
        }, 1000);
    });
}

async function helloKittyStore() {
    // TODO write your code here
    // Log the collected messages
    console.log("Log Messages:", logMessages);
}

helloKittyStore();

```
##### Write the JS code:
- call asyncTask 5 times with 5 different cat names

### Open-Ended Questions:
1. **Java**: What are the risks of using multiple threads in Java without proper synchronization?
2. **JavaScript**: Does the JS version of the code have the same issues when it comes to writing the logMessages array from async functions? Why or why not?

### Conclusion:
In this exercise, you've seen how concurrency is handled in Java with explicit multi-threading and how JavaScript uses asynchronous patterns to achieve concurrency despite being single-threaded.