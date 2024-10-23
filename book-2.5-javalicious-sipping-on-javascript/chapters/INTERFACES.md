### Interfaces in Java vs. JavaScript

### Key Differences
In **Java**, interfaces are formally defined using the interface keyword and can contain method signatures and default implementations. This provides a clear contract that classes must adhere to, making code predictable and easier to maintain in large applications.

In **JavaScript**, there is no formal interface structure. Instead, it relies on conventions, object properties, and methods. JavaScript uses duck typing—if an object has the required properties and methods, it can be treated as implementing the "interface." This provides flexibility but may lead to errors if expectations aren’t met.

JavaScript developers can also use a superset of the language called TypeScript, which introduces support for interfaces and provides stricter typing, similar to Java.

#### **Java Code:**
```java
interface Athlete {
    void compete();
    void getMedal();
}

class Runner implements Athlete {
    public void compete() {
        System.out.println("Running in the Olympics!");
    }

    public void getMedal() {
        System.out.println("Runner receives a gold medal!");
    }
}

class Swimmer implements Athlete {
    public void compete() {
        System.out.println("Swimming in the Olympics!");
    }

    public void getMedal() {
        System.out.println("Swimmer receives a silver medal!");
    }
}
class NonAthlete {
    public void introduce() {
        System.out.println("Non Athlete can't compete or get get Medals");
    }
}

```
##### Write the JAVA code using the 2 provided classes: 
- Create a Swimmer.
- Create a Runner.
- Call the `compete` and `getMedal` methods
- Create a collection of 10 Athletes call the collection olimpians
- add 5 Swimmers and 5 Runners to olimpians
- Process the 10 olimpians one by one where each should `compete` and `getMedal` 
- Create a NonAthlete

#### **JavaScript Code:**
```javascript
function Athlete(name, sport) {
    this.name = name;
    this.sport = sport;

    this.compete = function() {
        console.log(`${this.name} competes in ${this.sport}!`);
    };

    this.getMedal = function(medal) {
        console.log(`${this.name} receives a ${medal} medal!`);
    };
}

// Duck typing example
function checkAthlete(athlete) {
    if (typeof athlete.compete === 'function' && typeof athlete.getMedal === 'function') {
        athlete.compete();
        athlete.getMedal("gold");
    } else {
        console.log("This object does not behave like an Athlete.");
    }
}

function NonAthlete() {
    this.introduce = function() {
        console.log("Non Athlete can't compete or get get Medals");
    };
}

```

##### Write the JS code using the provided Athlete function: 
- Create a Swimmer.
- Create a Runner.
- Call the `compete` and `getMedal` methods
- Create a collection of 10 Athletes call the collection olimpians
- add 5 Swimmers and 5 Runners to olimpians
- Process the 10 olimpians one by one where each should `compete` and `getMedal` 
- Create a NonAthlete
- Are you able to add NonAthlete to the olimpians collection?
- What happens when you re-process the olimpians collection of now 11 elements?

#### **Open-Ended Questions:**
1. **Java:** Were you able to add NonAthlete to the olimpians Athlete collection? Why or why not? Did you discover this during compilation or runtime? Is compilation or runtime a better time to discover this and why?

2. **JavaScript:** Were you able to add a NonAthlete to the olimpians collection? Why or why not? How might the lack of formal interfaces in JavaScript lead to unexpected behavior in a large project? How could one mitigate this issue?

#### **Conclusion:**
This exercise demonstrates the difference between formal interfaces in Java and JavaScript's more flexible approach using conventions and duck typing. Java’s strict interface system provides structure and clarity, while JavaScript's dynamic nature allows for flexibility at the cost of potential errors if objects don’t meet expected behaviors.