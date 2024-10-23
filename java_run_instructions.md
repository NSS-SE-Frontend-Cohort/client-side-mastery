### Instructions to Run Java

0. Open the terminal and run ` java --version`
If this command runs without an error and you see a version of java you can skip steps 1 and 2.

example output:
```java
openjdk 11.0.15 2022-04-19 LTS
OpenJDK Runtime Environment Zulu11.56+19-CA (build 11.0.15+10-LTS)
OpenJDK 64-Bit Server VM Zulu11.56+19-CA (build 11.0.15+10-LTS, mixed mode)
```

1. **Install Java Development Kit (JDK):** Download and install the JDK from the [official Oracle website](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) or use a package manager suitable for your operating system.

2. **Set Up Your Environment:**
   - **Windows:** Add the JDK’s `bin` directory to your system’s PATH environment variable.
   - **macOS/Linux:** Open your terminal and add the JDK path to your `.bash_profile` or `.bashrc`.

3. **Copy Your Java Code to a file:** Create a new file with a `.java` extension, such as `YourFileName.java`. Then, open this empty file using a text editor or an IDE (like IntelliJ or vs code), and copy the provided Java code from the exercises into the file. 

*When the code snippet you are asked to copy has a class `ScopeExample` your file name should match that class name so `ScopeExample.java` 
Java is just particular about this!*

4. **Compile Your Program:** Open a terminal or command prompt, navigate to the directory containing your Java file, and run:
   ```bash
   javac YourFileName.java
   ```

5. **Run Your Program:** After compiling, execute your program using:
   ```bash
   java YourFileName
   ```

Make sure to replace `YourFileName` with the actual name of your Java file.