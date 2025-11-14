# Animal Identification Expert System

This project was created as part of the **Fundamentals of AI -- 2023**
course.\
It is an expert system designed to help users choose the most suitable
animal based on their preferences and needs.

------------------------------------------------------------------------

## 📌 Project Description

Many people struggle to determine the appropriate animal for ownership.\
Our expert system simplifies the decision-making process by asking the
user a set of questions and recommending the most suitable animal based
on their answers.

The system uses: - A set of **facts** - A set of **rules** -
**Inference** to match user inputs with the correct animal

------------------------------------------------------------------------

## 🎯 How It Works

The system asks the user several questions:

-   Are you an adult or teenager?
-   What genre of animal do you prefer? (Predator / Pet)
-   What is the purpose? (Protection, Adoption, Breeding, Hunt)
-   Preferred characteristics (fur / feathers / leather)
-   Preferred size (small / large)
-   Cost range (low / medium / high)

Then, it checks a knowledge base of facts and rules to identify the
appropriate animal.

------------------------------------------------------------------------

## 🧠 AI Approach

The system uses concepts from: - **Thinking Rationally** (logical rules
& inference) - **Acting Rationally** (optimal outcomes based on user
needs)

It applies symbolic AI and rule-based reasoning.

------------------------------------------------------------------------

## 📚 Knowledge Base

The animal knowledge base includes factors like: - Genre (Predator,
Pet) - Purpose (Protection, Adoption, Breeding, Hunt) - Age
compatibility - Size - Characteristics (fur, feathers, leather) - Cost
categories (low, medium, high)

------------------------------------------------------------------------

## 🐾 Example Animals in the System

-   Dog\
-   Lion\
-   Wolf\
-   Hawk\
-   Fox\
-   Bear\
-   Rabbit\
-   Turtle\
-   Cat\
-   Bird\
-   Fish

------------------------------------------------------------------------

## 🧩 Code (Prolog)

``` prolog
suggest(S) :- write('Are you an adult or a teenager?: '),read(P),
    write('What genre of animal do you prefer?: '),read(G),
    write('What is the purpose?:'),read(A),
    write('Do you prefer an animal with fur or feathers or leather?:'),read(F),
    write('What is the size of animal do you prefer?:'),read(Z),
    write('What is the right cost for you? (low, medium, high):'),read(E),
    animal(S,G,A,P,F,Z,E).
```

The facts and rules determine the correct animal based on user inputs.

------------------------------------------------------------------------

## 🧪 Sample Queries

-   Adult + predator + protection + fur + small + low → **dog**
-   Adult + predator + hunt + fur + large + medium → **lion**
-   Teenager + pet + adoption + leather + small + high → **turtle**

------------------------------------------------------------------------

## 📄 Files Included

-   Project PDF report\
-   Prolog code for the expert system\
-   Sample queries and outputs

------------------------------------------------------------------------

## 📅 Course

**CCAI‑221 -- Fundamentals of AI (2023)**\
University project -- Rule-Based Expert System

------------------------------------------------------------------------

## 📌 How to Run

1.  Install SWI‑Prolog\

2.  Load the `.pl` file into Prolog\

3.  Run:

    ``` prolog
    ?- suggest(Animal).
    ```

4.  Answer the questions\

5.  Receive the recommended animal 🎉


For questions or improvements, feel free to open an issue in the
repository.
