# Book Notes: Practical Object-Oriented Design in Ruby *(by Sandi Metz)*

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

**When to Design**

- Agile believes that your customers can’t define the software they want before seeing it, so it’s best to show them sooner rather than later. If this premise is true, then it logically follows that you should build software in tiny increments, gradually iterating your way into an application that meets the customer’s true need. Agile believes that the most cost-effective way to produce what customers really want is to collaborate with them, building software one small bit at a time such that each delivered bit has the opportunity to alter ideas about the next.
- If Agile is correct, two other things are also true. 
  1. First, there is absolutely no point in doing a Big Up Front Design (BUFD) (because it cannot possibly be correct), and 
  2. no one can predict when the application will be done (because you don’t know in advance what it will eventually do).
- It should come as no surprise that some people are uncomfortable with Agile. “We don’t know what we’re doing” and “We don’t know when we’ll be done” can be a difficult sell. The desire for BUFD persists because, for some, it provides a feeling of control that would otherwise be lacking.
- BUFD inevitably leads to an adversarial relationship between customers and programmers.  The design documents of BUFD start out as roadmaps for application development but gradually become the focus of dissent. They do not produce quality software, instead they supply fiercely parsed words that will be invoked in the final, scrambling defense against being the person who ends up holding the hot potato of blame.
- BUFD is about completely specifying and totally documenting the anticipated future inner workings of all of the features of the proposed application. If there’s a software architect involved this may extend to deciding, in advance, how to arrange all of the code. OOD is concerned with a much narrower domain. It is about arranging what code you have so that it will be easy to change.

**OOD Design Metrics**

- There are numerous Ruby gems (a google search on ruby metrics will turn up the most recent) that assess how well your code follows OOD principles.
- Bad OOD metrics are indisputably a sign of bad design; code that scores poorly will be hard to change. 
- Unfortunately, good scores don’t prove the opposite, that is, they don’t guarantee that the next change you make will be easy or cheap (the problem
is that it is possible to create beautiful designs that over-anticipate the future).While these designs may generate very good OOD metrics, if they anticipate the wrong future they will be expensive to fix when the real future finally arrives. 

  > OOD metrics cannot identify designs that do the wrong thing in the right way.  The ultimate software metric would be *cost per feature over the time interval that matters.*
  
- Sometimes the value of having the feature right now is so great that it outweighs any future increase in costs. If lack of a feature will force you out of business today it doesn’t matter how much it will cost to deal with the code tomorrow; you must do the best you can in the time you have. Making this kind of design compromise is like borrowing time from the future and is known as taking on technical debt.

- Because your goal is to write software with the lowest cost per feature, your decision about how much design to do depends on two things: (1) your
skills and (2) your timeframe.  When the act of design prevents software from being delivered on time, you have lost.

**Intro to OOD with Ruby**

- Object-oriented applications are made up of objects and the messages that pass between them. Messages are the more important of the two.
- In procedural based languages, there is a chasm between data and behavior. Data is one thing, behavior is something completely different. Data gets packaged up into variables and then passed around to behavior, which could, frankly, do anything to it. Data is like a child that behavior sends off to school every morning; there is no way of knowing what actually happens while it is out of sight. The influences on data can be unpredictable and largely untraceable.
- Now imagine a different kind of programming language, a class-based object-oriented one like Ruby. Instead of dividing data and behavior into two separate, never-thetwain-shall-meet spheres, Ruby combines them together into a single thing, an *object*. 
- Objects have behavior and may contain data, data to which they alone control access. Objects invoke one another’s behavior by sending each other *messages*.
- Ruby has a string `object` instead of a string `data type`.
- Class-based OO languages like Ruby allow you to define a class that provides a blueprint for the construction of similar objects. A class defines methods (definitions of behavior) and attributes (definitions of variables). Methods get invoked in response to messages. The same method name can be defined by many different objects; it’s up to Ruby to find and invoke the right method of the correct object for any sent message.
- Ruby comes with a number of predefined classes. The most immediately recognizable are those that overlap the data types used by procedural languages. For example, the String class defines strings, the Fixnum class, integers. There’s a pre-existing class for every data type that you would expect a programming language to supply. However, object-oriented languages are themselves built using objects and here’s where things begin to get interesting.
- The String class, that is, the blueprint for new string objects, is itself an object; it’s an instance of the Class class. Just as every string object is a data-specific instance of the String class, every class object (String, Fixnum, ad infinitum) is a dataspecific instance of the Class class. The String class manufactures new strings, the Class class manufactures new classes.
- OO languages are thus open-ended. They don’t limit you to a small set of built-in types and pre-predefined operations; you can invent brand new types of your own. Each OO application gradually becomes a unique programming language that is specifically tailored to your domain.

### Chapter 2: Designing Classes with a Single Responsibility

---

- The foundation of an object-oriented system is the *message*, but the most visible organizational structure is the *class*.
- What are your classes? How many should you have? What behavior will they implement? How much do they know about other classes? How much of themselves should they expose? These questions can be overwhelming. Every decision seems both permanent and fraught with peril. Fear not. At this stage your first obligation is to take a deep breath and *insist that it be simple*.

  > Your goal is to model your application, using classes, such that it does what it is supposed to do right now and is also easy to change later.
  
- Anyone can arrange code to make it work right now. Today’s application can be beat into submission by sheer force of will. It’s a standing target at a known range. It is at your mercy. Creating an easy-to-change application, however, is a different matter. Your application needs to work right now just once; it must be easy to change forever. This quality of easy changeability reveals the craft of programming. Achieving it takes knowledge, skill, and a bit of artistic creativity.  

  > Fortunately, you don’t have to figure everything out from scratch. Much thought and research has gone into identifying the qualities that make an application easy to change. The techniques are simple; you only need to know what they are and how to use them.
  
**Deciding What Goes Into a Class**

- You have an application in mind. You know what it should do. You may even have thought about how to implement the most interesting bits of behavior.

  > The problem is *not one of technical knowledge but of organization*; you know how to write the code but not where to put it.
  
- In a class-based OO language like Ruby, methods are defined in classes. The classes you create will affect how you think about your application forever. They define a virtual world, one that constrains the imagination of everyone downstream. You are constructing a box that may be difficult to think outside of.

- Despite the importance of correctly grouping methods into classes, at this early stage of your project you cannot possibly get it right. You will never know less than you know right now. If your application succeeds many of the decisions you make today will need to be changed later. When that day comes, your ability to successfully make those changes will be determined by your application’s design.

  > Design is more the art of *preserving changeability* than it is the act of achieving perfection.
  
**Organizing Code for Easy Changes**

- Asserting that code should be easy to change is akin to stating that children should be polite; the statement is impossible to disagree with yet it in no way helps a parent raise an agreeable child. The idea of easy is too broad; you need concrete definitions of easiness and specific criteria by which to judge code.

- If you define easy to change as
  - Changes have no unexpected side effects
  - Small changes in requirements require correspondingly small changes in code
  - Existing code is easy to reuse
  - The easiest way to make a change is to add code that in itself is easy to change
  
- Then the code you write should have the following qualities. Code should be `TRUE`:
  - **Transparent**: The consequences of change should be obvious in the code that is changing and in distant code that relies upon it
  - **Reasonable**:  The cost of any change should be proportional to the benefits the change achieves
  - **Usable**:      Existing code should be usable in new and unexpected contexts
  - **Exemplary**:   The code itself should encourage those who change it to perpetuate these qualities
  
Code that is `TRUE` not only meets today’s needs, but can also be changed to meet the needs of the future. 

  > The first step in creating code that is TRUE is to ensure that each class has *a single, well-defined responsibility*.
  
**Creating Classes That Have a Single Responsibility**

Example: A Bicycles and Gears Application

- If you look for nouns that represent objects you’ll think of words like bicycle and gear. These nouns represent the simplest candidates to be classes. Intuition says that bicycle should be a class, *but nothing in the above description lists any behavior for bicycle*, so, as yet, it does not qualify.
- Gear, however, has chainrings, cogs, and ratios, that is, it has both data and behavior. It deserves to be a class. Taking the behavior from the script above, you create this simple Gear class:
```
class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

puts Gear.new(52, 11).ratio # -> 4.72727272727273
puts Gear.new(30, 27).ratio # -> 1.11111111111111
```
This `Gear` class is simplicity itself. You create a new `Gear` instance by providing the numbers of teeth for the `chainring` and `cog`. Each instance implements three methods: `chainring, cog,` and `ratio`.

- You show your Gear calculator to a cyclist friend and she finds it useful but immediately asks for an enhancement. She has two bicycles; the bicycles have exactly the same gearing but they have different wheel sizes. She would like you to also calculate the effect of the difference in wheels.
- You change the Gear class to add this new behavior:
```
attr_reader :chainring, :cog, :rim, :tire
def initialize(chainring, cog, rim, tire)
  @chainring = chainring
  @cog = cog
  @rim = rim
  @tire = tire
end

def gear_inches
  # tire goes around rim twice for diameter
  ratio * (rim + (tire * 2))
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
21 # -> 137.090909090909
```
- Now that a rudimentary Gear class exists, it’s time to ask the question: Is this the best way to organize the code?
- The answer, as always, is: it depends. If you expect the application to remain static forever, Gear in its current form may be good enough. However, you can already foresee the possibility of an entire application of calculators for bicyclists. Gear is the first of many classes of an application that will evolve. To efficiently evolve, code must be easy to change.

**Why Single Responsibility Matters**

> Applications that are *easy to change* consist of classes that are *easy to reuse*. Reusable classes are pluggable units of well-defined behavior that have few entanglements.

- An application that is easy to change is like a box of building blocks; you can select just the pieces you need and assemble them in unanticipated ways.

- A class that has more than one responsibility is difficult to reuse. The various responsibilities are likely thoroughly entangled within the class. If you want to reuse some (but not all) of its behavior, it is impossible to get at only the parts you need. You are faced with two options and neither is particularly appealing. 

- If the responsibilities are so coupled that you cannot use just the behavior you need, you could duplicate the code of interest. This is a terrible idea. Duplicated code leads to additional maintenance and increases bugs. If the class is structured such that you can access only the behavior you need, you could reuse the entire class. This just substitutes one problem for another.

- Because the class you’re reusing is confused about what it does and contains several tangled up responsibilities, it has many reasons to change. It may change for a reason that is unrelated to your use of it, and each time it changes there’s a possibility of breaking every class that depends on it. You increase your application’s chance of breaking unexpectedly if you depend on classes that do too much.

- How can you determine if the Gear class contains behavior that belongs somewhere else? 
  - One way is to pretend that it’s sentient and to interrogate it. If you rephrase every one of its methods as a question, asking the question ought to make sense. For example, “Please Mr. Gear, what is your ratio?” seems perfectly reasonable, while “Please Mr. Gear, what are your gear_inches?” is on shaky ground, and “Please Mr. Gear, what is your tire (size)?” is just downright ridiculous.
  - Another way to hone in on what a class is actually doing is to attempt to describe it in one sentence. Remember that a class should do the smallest possible useful thing. That thing ought to be simple to describe. If the simplest description you can devise uses the word “and,” the class likely has more than one responsibility. If it uses the word “or,” then the class has more than one responsibility and they aren’t even very related.
  
- OO designers use the word cohesion to describe this concept. When everything in a class is related to its central purpose, the class is said to be highly cohesive or to have a single responsibility.

> “A class has responsibilities that fulfill its purpose.”

- In other words, SRP doesn’t require that a class do only one very narrow thing or that it change for only a single nitpicky reason, instead SRP requires that a class be cohesive—that everything the class does be highly related to its purpose.

- How would you describe the responsibility of the Gear class? How about “Calculate the ratio between two toothed sprockets”? If this is true, the class, as it currently exists, does too much. Perhaps “Calculate the effect that a gear has on a bicycle”? Put this way, gear_inches is back on solid ground, but tire size is still quite shaky. The class doesn’t feel right. Gear has more than one responsibility but it’s not obvious what should be done.

**Determining When to Make Design Decisions**

- It’s common to find yourself in a situation where you know something isn’t quite right with a class. Is this class really a Gear? It has rims and tires, for goodness sake! Perhaps Gear should be Bicycle? Or maybe there’s a Wheel in here somewhere?
- Do not feel compelled to make design decisions prematurely. Resist, even if you fear your code would dismay the design gurus. When faced with an imperfect and muddled class like Gear, ask yourself: 

  > “What is the future cost of doing nothing today?”
  
- This is a (very) small application. It has one developer. You are intimately familiar with the Gear class. The future is uncertain and you will never know less than you know right now. The most cost-effective course of action may be to wait for more information.
