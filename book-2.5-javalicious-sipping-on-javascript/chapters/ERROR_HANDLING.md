### Error Handling in Java vs. JavaScript

### Key Differences
- **Java:** Has both checked and unchecked exceptions. Checked exceptions must be caught or declared in the method signature, like `IOException` or `SQLException`. Unchecked exceptions, like `ArithmeticException`, are not required to be caught at compile time but may occur during runtime.
- **JavaScript:** JavaScript only has unchecked exceptions. You can throw exceptions using `throw`, and handling them with `try/catch` is optional.

#### **Java Code:**
```java
import java.io.*;

class YardSale {
    public static void main(String[] args) {
        try {
            // Since "items.txt" does not exist, FileReader will raise 
            // a checked exception (FileNotFoundException).
            // The code author is required to surround this call 
            // in a try/catch block to handle the exception.
            FileReader reader = new FileReader("items.txt");
            reader.read();
            reader.close();
        } catch (IOException e) { // Must handle IOException
            System.out.println("File reading error: " + e);
        }
    }
}
```

#### **JavaScript Code:**
```javascript
function yardSale() {
    // Simulating a yard sale transaction
    let items = ["Old Lamp", "Bike", "Books"];
    let buyer = null; // Buyer hasn't shown up yet

    // Attempt to call a method on the null buyer object
    buyer.buy(items[0]); 
}

try {
    yardSale();
} catch (e) {
    console.log("Exception caught: " + e.message); // Catching exception is optional
}
```

#### **Open-Ended Questions:**
1. **Java:** What happens when you don't surround `new FileReader` in the `YardSale` class in a try/catch block? What is the benefit of forcing developers to handle checked exceptions at compile time?

2. **JavaScript:** What happens when you don't surround `yardSale()` function call in a try/catch block? What risks might arise from JavaScript's lack of enforced error handling?

#### **Conclusion:**
Java enforces strict error handling with checked exceptions, promoting robust code but increasing verbosity. JavaScript’s flexible, unchecked exception system allows for faster development but requires careful attention to prevent runtime errors.