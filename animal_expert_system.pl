
/*
  Animal Identification Expert System
  Prolog file: animal_expert_system.pl
  Created for: Fundamentals of AI (2023)
  Authors: Raghad Khaled Almutairi, Ryouf Bander Alghamdi, Amatulrahman Alsubhi

  How to run:
  1. Install SWI-Prolog.
  2. Start SWI-Prolog and load this file:
       ?- [animal_expert_system].
  3. Run the suggest/0 predicate:
       ?- suggest.
  Or use suggest(Animal) to get the animal variable:
       ?- suggest(Animal).
*/

% Main interaction predicate (no argument) — prints recommendation
suggest :-
    write('Are you an adult or a teenager?: '), read(P),
    write('What genre of animal do you prefer? (predator/pet): '), read(G),
    write('What is the purpose? (protection/adoption/breeding/hunt): '), read(A),
    write('Do you prefer an animal with (fur/feathers/leather)?: '), read(F),
    write('What is the size of animal do you prefer? (small/large): '), read(Z),
    write('What is the right cost for you? (low/medium/high): '), read(E),
    ( animal(S,G,A,P,F,Z,E) ->
        format('~n>> Recommended animal: ~w~n', [S])
    ;
        write('No matching animal found for the given answers.'), nl
    ).

% Alternative form that returns the animal in a variable
suggest(Animal) :-
    write('Are you an adult or a teenager?: '), read(P),
    write('What genre of animal do you prefer? (predator/pet): '), read(G),
    write('What is the purpose? (protection/adoption/breeding/hunt): '), read(A),
    write('Do you prefer an animal with (fur/feathers/leather)?: '), read(F),
    write('What is the size of animal do you prefer? (small/large): '), read(Z),
    write('What is the right cost for you? (low/medium/high): '), read(E),
    animal(Animal,G,A,P,F,Z,E).

% -----------------------
% Knowledge base (animal/7)
% Format: animal(Name, Genre, Aim, ForAge, Characteristics, Size, Cost)
% -----------------------

% Predator animals
animal(dog, predator, protection, adult, fur, small, low).
animal(dog, predator, protection, adult, fur, large, low).
animal(lion, predator, hunt, adult, fur, large, medium).
animal(wolf, predator, hunt, adult, fur, small, medium).
animal(hawk, predator, hunt, adult, feathers, small, medium).
animal(fox, predator, hunt, adult, fur, small, medium).
animal(bear, predator, hunt, adult, fur, large, high).

% Pet animals
animal(dog, pet, adoption, adult, fur, small, low).
animal(dog, pet, adoption, adult, fur, large, low).
animal(rabbit, pet, adoption, adult, fur, small, low).
animal(rabbit, pet, adoption, teenager, fur, small, low).
animal(turtle, pet, adoption, adult, leather, small, high).
animal(cat, pet, breeding, adult, fur, small, medium).
animal(bird, pet, adoption, adult, feathers, small, low).
animal(fish, pet, adoption, adult, leather, small, low).

% Multiple cost variants for flexibility (allow low/medium/high)
% The above facts are simplified canonical forms; if you want to allow
% multiple cost options per animal, you can add more facts, e.g.:
% animal(dog, pet, adoption, teenager, fur, large, medium).
% or use rules to accept any cost in a set.

% -----------------------
% Example queries (use in SWI-Prolog prompt)
% -----------------------
% ?- suggest.
% (then answer the prompts)
%
% Or:
% ?- suggest(Animal).
% Are you an adult or a teenager?: adult.
% What genre of animal do you prefer? (predator/pet): predator.
% What is the purpose? (protection/adoption/breeding/hunt): protection.
% Do you prefer an animal with (fur/feathers/leather)?: fur.
% What is the size of animal do you prefer? (small/large): small.
% What is the right cost for you? (low/medium/high): low.
% Animal = dog.
%
% You can also query the knowledge base directly:
% ?- animal(Name, pet, adoption, teenager, leather, small, high).
% Name = turtle.
