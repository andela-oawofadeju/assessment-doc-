# SOLID Principles of OOP
SOLID is a mnemonic acronym for five design principles intended to make software designs more understandable, flexible and maintainable.

### Single Responsibility Principle
A class should have a single responsibility. Any complicated class that does not follow this rule should be broken down into smaller classes, each performing a single responsibility. This helps to achieve a better understanding and maintainability of the codebase.

### Open/Closed Principle
Modules, classes, methods and other application entities should be open for extension but closed for modification. This encourages modular design which helps to change the behavior of a system without changing the source code. The open/closed principle helps developers achieve a flexible system architecture.

### Liskov substitution Principle
Objects should be replaceable by the instances of their subtypes without altering the correctness of the program. In other words,  parent instances should be replaceable with one of their child instances without creating any unexpected or incorrect behaviour. Subtypes must be substitutable for their base types.

### Interface Segregation Principle
Many client-specific interfaces are better than one general-purpose interface. when a client depends upon a class that contains interfaces that the client does not use, but that other clients do use, then that client will be affected by the changes that those other clients force upon the class. Main classes should be segregated into smaller specific classes, so their clients use only methods they need. As a result, we get the interfaces segregated according to their purpose, so we avoid “fat” classes and code that’s hard to maintain.

### Dependency Inversion Principle
States that abstractions should not depend upon details, details should depend upon abstractions. The Dependency Inversion Principle has to do with high-level (think business logic) objects not depending on low-level (think database querying and IO) implementation details.