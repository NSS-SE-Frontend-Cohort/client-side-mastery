### Inheritance in Java vs. JavaScript

In this example, we will demonstrate how inheritance works in both Java and JavaScript. JavaScript originally used prototypes for inheritance, but in modern JavaScript, we can use class syntax to achieve similar results. This exercise will show the old JavaScript prototype-based inheritance and how to simulate multiple inheritance, as well as the modern class syntax. 

### Key Differences:
- **Java**: Strict, single inheritance using classes.
- **JavaScript**: Prototype-based inheritance with dynamic inheritance structures and modern class syntax.

### Java Code:
```java
class Character {
    String name;
    int level;

    public Character(String name, int level) {
        this.name = name;
        this.level = level;
    }

    public void attack() {
        System.out.println(name + " attacks!");
    }
}

class Wizard extends Character {
    public Wizard(String name, int level) {
        super(name, level);
    }

    public void castSpell() {
        System.out.println(name + " casts a spell!");
    }
}
```

### JavaScript Code (Prototype-based Inheritance):
```javascript
function Character(name, level) {
    this.name = name;
    this.level = level;
}

Character.prototype.attack = function() {
    console.log(this.name + " attacks!");
};

function Wizard(name, level) {
    Character.call(this, name, level); // Call Character constructor
}

Wizard.prototype = Object.create(Character.prototype);
Wizard.prototype.constructor = Wizard;

Wizard.prototype.castSpell = function() {
    console.log(this.name + " casts a spell!");
};

// Multiple Inheritance using Prototypes
function Healer() {}

Healer.prototype.heal = function() {
    console.log(this.name + " heals an ally!");
};

// Extend Wizard with Healer methods
Object.assign(Wizard.prototype, Healer.prototype);

const wizard = new Wizard("Gandalf", 10);
wizard.attack(); // Gandalf attacks!
wizard.castSpell(); // Gandalf casts a spell!
wizard.heal(); // Gandalf heals an ally!
```

### Modern JavaScript (Class Syntax):
JavaScript now supports class syntax, which makes inheritance more intuitive but still based on prototypes under the hood. 

```javascript
class Character {
    constructor(name, level) {
        this.name = name;
        this.level = level;
    }

    attack() {
        console.log(`${this.name} attacks!`);
    }
}

class Wizard extends Character {
    castSpell() {
        console.log(`${this.name} casts a spell!`);
    }
}
```

### Instructions:
1. Create a Wizard object in Java and JavaScript.
2. Try calling `attack()` and `castSpell()` in both languages.
3. Experiment with adding Healer abilities using multiple inheritance in JavaScript.

### Open-Ended Questions:
1. **Java**: How does Java's strict inheritance model compare to JavaScript’s flexibility when designing character classes in games like D&D?
2. **JavaScript**: How do you feel about using prototypes vs. the newer class syntax? Which one seems more intuitive for building games? Can you still implement multiple inheritance in JS using the new class syntax?

### Conclusion:
Java's rigid class-based inheritance is predictable and robust, while JavaScript's flexible prototype-based inheritance (and now class syntax) offers more dynamic structures. The ability to simulate multiple inheritance in JavaScript provides additional flexibility, though it can be more complex to manage.