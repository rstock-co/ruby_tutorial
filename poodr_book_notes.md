# Book Notes:

## Practical Object-Oriented Design in Ruby *(by Sandi Metz)*

---

### Foreward / Intro

- In almost all cases, maintainability over the life of the code is more important than optimizing its present state.  However, the promise of using object-oriented (OO) design is that your code will be easier to maintain and evolve than otherwise.
- Programmers are modern craftspeople, building structures that make up present day reality, and no less than bricklayers or bridge builders, we take justifiable pride in our accomplishments.  However when the cost of doing work exceeds its value, our efforts feel wasted.  This book teaches you how to structure code now so that it doesn't cost more work than value in the future.  This is the joy of programming.  The programming techniques that make code a joy to write overlap with those that most efficiently produce software.

### Chapter 1: Object Oriented Design

---

- The world is both procedural and object oriented.  
  - Life has many processes that take place step by step, and time flows by, event by event.  These activities can be modelled using procedural software.
  - The world is also object-oriented. The objects with which you interact might include a spouse and a cat, or an old car and a pile of bike parts in the garage, or your ticking heart and the exercise plan you use to keep it healthy. Each of these objectscomes equipped with its own behavior and, while some of the interactions betweenthem might be predictable, it is entirely possible for your spouse to unexpectedly step on the cat, causing a reaction that rapidly raises everyone’s heart rate and gives you new appreciation for your exercise regimen.  In a world of objects, new arrangements of behavior emerge naturally. You don’t have to explicitly write code for the spouse_steps_on_cat procedure, all you need is a spouse object that takes steps and a cat object that does not like being stepped on. Put these two objects into a room together and unanticipated combinations of behavior will appear.    

**First Requirement of OOD:  Changing your Perspective**

- Failures of OOD might look like failures of coding technique but they are actually failures of perspective. 

> The first requirement for learning how to do object-oriented design is to immerse yourself in objects; once you acquire an object-oriented perspective the rest follows naturally.

**Designing for Change with OOP**

- Unfortunately, when designing software, something will change. It always does. The customers didn’t know what they wanted, they didn’t say what they meant. You didn’t understand their needs, you’ve learned how to do something better. Even applications that are perfect in every way are not stable. The application was a huge success, now everyone wants more. 

> Change is unavoidable. It is ubiquitous, omnipresent, and inevitable. 

- Applications that are easy to change are a pleasure to write and a joy to extend. They’re flexible and adaptable. Applications that resist change are just the opposite; every change is expensive and each makes the next cost more.

- Object-oriented applications are made up of parts that interact to produce the behavior of the whole. The parts are objects; interactions are embodied in the messages that pass between them. Getting the right message to the correct target object requires that the sender of the message know things about the receiver. This knowledge creates dependencies between the two and these dependencies stand in the way of change.  
- Object-oriented design is about managing dependencies. It is a set of coding techniques that arrange dependencies such that objects can tolerate change. In the absence of design, unmanaged dependencies wreak havoc because objects know too much about one another. Changing one object forces change upon its collaborators, which in turn, forces change upon its collaborators, ad infinitum. A seemingly insignificant enhancement can cause damage that radiates outward in overlapping concentric circles,
  ultimately leaving no code untouched.
- When objects know too much they have many expectations about the world in which they reside. They’re picky, they need things to be “just so.” These expectations constrain them. The objects resist being reused in different contexts; they are painful to test and susceptible to being duplicated.
- In a small application, poor design is survivable. Even if everything is connected to everything else, if you can hold it all in your head at once you can still improve the application. problem with poorly designed small applications is that if they are successful they grow up to be poorly designed big applications. They gradually become tar pits in which you fear to tread lest you sink without a trace. Changes that should be simple may cascade around the application, breaking code everywhere and requiring extensive rewriting. Tests are caught in the crossfire and begin to feel like a hindrance rather than a help.

**What is Design?**

- Design is an art, the art of writing and arranging code.  No two developers will design code the same way.

- The goal of design is not only to write code for the feature you plan to deliver today, you must also create code that is amenable to being changed later.

- The future that design considers is not one in which you anticipate unknown requirements and preemptively choose one from among them to implement in the present. Programmers are not psychics. Designs that anticipate specific future requirements almost always end badly. Practical design does not anticipate what will happen to your application, it merely accepts that something will and that, in the present, you cannot know what. It doesn’t guess the future; it preserves your options for accommodating the future. It doesn’t choose; it leaves you room to move.

  > Therefore the purpose of design is to allow you to do design later and its primary goal is to reduce the cost of change.

- Design is not the act of following a fixed set of rules, it’s a journey along a branching path wherein earlier choices close off some options and open access to others. During design you wander through a maze of requirements where every juncture represents a decision point that has consequences for the future.

  > The tools of design are not hammers and chisels, they are principles and patterns.

**Design Principles**

- The SOLID acronym, represents five of the most well known principles of object-oriented design: 

  - Single Responsibility 
  - Open-Closed
  - Liskov Substitution 
  - Interface Segregation
  - Dependency Inversion. 

  

- Other principles include:

  - DRY (Don’t Repeat Yourself)
- The Law of Demeter (LoD) 

- Where did these principles come from?  

  - Early OO programmers noticed that some code arrangements made their lives easier while others made them harder.

  - Academics eventually got involved and, needing to write dissertations, decided to quantify “goodness.” Being able to measure quality would change OO design from infinitely disputed opinion into measurable science.  In the 1990's Chidamber and Kemerer and Basili did exactly this. Their research shows a definite correlation between use of these techniques and high-quality code.  

    > The principles of good design represent measurable truths and following them will improve your code.

**Design Patterns**

- In addition to principles, object-oriented design involves patterns. The so-called Gang of Four (Gof), Erich Gamma, Richard Helm, Ralph Johnson, and Jon Vlissides, wrote the seminal work on patterns in 1995. Their Design Patterns book describes patterns as “simple and elegant solutions to specific problems in object-oriented software design” that you can use to “make your own designs more flexible, modular, reusable and understandable.

- The notion of design patterns is incredibly powerful. Patterns have a place in every designer’s toolbox. 

  >  Each well-known pattern is a near perfect open-source solution for the problem it solves.

  

- If you think of software as custom furniture, then principles and patterns are like woodworking tools. Knowing how software should look when it’s done does not cause it to build itself; applications come into existence because some programmer applied the tools. The end result, be it a beautiful cabinet or a rickety chair, reflects its programmer’s experience with the tools of design.

- Pattern misapplication results in complicated and confusing code but this result is not the fault of the pattern itself. A tool cannot be faulted for its use, the user must master the tool.

**How Design Fails**

1. *Due to lack of it*:  Successful but undesigned applications carry the seeds of their own destruction; they are easy to write but gradually become impossible to change. The early promise of painless development gradually fails and optimism turns to despair as programmers begin to greet every change request with **“Yes, I can add that feature, but it will break everything.”**
2. *The trap of overdesign:*  With the best of intentions, ambitious programmers, in an excess of enthusiasm apply principles inappropriately and see patterns where none exist. They construct complicated, beautiful castles of code and then are distressed to find themselves hemmed in by stone walls. You can recognize these programmers because they begin to greet change requests with **“No, I can’t add that feature; it wasn’t designed to do that.”**
3. *The act of design is separated from the act of programming:* Design is a process of progressive discovery that relies on a feedback loop. This feedback loop should be timely and incremental; the iterative techniques of the Agile software movement (http://agilemanifesto.org/) are thus perfectly suited to the creation of well-designed OO applications. When design is dictated from afar none of the necessary adjustments can occur and early failures of understanding get cemented into the code. The programmer becomes so out of touch with the client, they might say, **“Well, I can certainly write this, but it’s not what you really want and you will eventually be sorry.”**