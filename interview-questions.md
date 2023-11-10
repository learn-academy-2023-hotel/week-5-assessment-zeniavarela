# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. What does it mean to implement a TDD workflow?

Your answer: Implementing TDD, or Test Driven Development, is an approach in where tests are written before and after creating code, to ensure a working/passing and efficient code.

Researched answer: Test Driven Development is beneficial for code quality, clear requirements, and easier refactoring. The workflow involves the following: writing a test for desired functionality, running the test for an expected fail to indicate functionality, writing the minimum code to pass the test and then running, and if necessary, refactoring your code to improve while keeping functionality intact. This ensures developers think about user requirements from the start, and leads to more reliable systems.

2. What is a relational database? Are there other kinds of databases?

Your answer: A relational database is a type of database that uses a structure based on tables and the relationship between data elements.

Researched answer:A relational database is where data is organized into tables with rows and columns. Each row represents a record and each column represents an attribute. The tables can be related to each other based on common data elemetns, enabling the establishment of meaningful connections between different sets of data. PostgreSQL is a popular open-source relational database management system that follows the relational database model. Other kinds of databases include, object oriented databases, where data is stored as objects and provide a way to store complex data structures directly without mapping them to relational tables. Another type of database is Graph Databases, which are designed for handling highly interconnected data, representing data as graphs. This is optimal for applications where understanding complex relationships is crucial.

3. Why is an ORM?

Your answer: ORM, or Object Relational Mapping, is a technique used to convert data between incompatible type systems in object oriented programming languages.

Researched answer: ORM, or Object Relational Mapping, is a programming technique that allows developers to work with databases using object oriented programming languages. It provides an abstraction layer, simplifying database interactions by mapping objects in the application to tables in a relational database. ORMs improve productivity, promote code reuse, enhance code readability, and offer database portability, making it easier for developers to manage and interact with databases in their applications.

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?
   Inheritance in JavaScript and Ruby is conceptually similar, as they both involve creating new classes or objects based on existing ones.

Researched answer: Inheritance is a fundamental concept in object-oriented programming that allows one class to inherit properties and behaviors from another class. Both JavaScript and Ruby support inheritance, but they have different ways of implementing it. In Javascript, inheritance is prototype based, where objects inherit properties and methods from other objects. In Ruby, inheritance is class-based, where classes inherit properties and methods from other classes, creating a hierarchical class structure.

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. Model validations:
   Model validations refer to the process of ensuring that the data entered into an application's database meets the specified requirements and constraints. In the context of software development, especially in web applications using frameworks like Ruby on Rails, model validations are rules defined within the application's models (representing database tables) to validate the correctness and integrity of the data before it is saved to the database.

2. Params:
   "Params" is short for parameters. In web development, "params" typically refers to the parameters sent to a web server as part of an HTTP request. When a user interacts with a web application, they can provide data through various means, such as submitting a form or making an API request. Web servers parse these parameters and pass them to the application, allowing developers to access and process user input, enabling dynamic and interactive web applications.

3. API:
   API stands for Application Programming Interface. It is a set of rules, protocols, and tools that allows different software applications to communicate and interact with each other. APIs define the methods and data formats applications can use to request and exchange information. APIs are commonly used to enable communication between a web server and client applications, such as web browsers or mobile apps.
