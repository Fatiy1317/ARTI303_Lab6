% ARTI 303 - Lab 6 - Prolog Programming
% Task 1: Cars, cost, and colour

% Facts: car(Model, Price, Age, Colour, Mileage)
car(chrysler, 130000, 3, red, 12000).
car(ford, 90000, 4, gray, 25000).
car(datsun, 80000, 1, red, 30000).

truck(ford, 80000, 6, blue, 8000).
truck(datsun, 50000, 5, orange, 20000).
truck(toyota, 25000, 2, black, 25000).

% Original rule: find vehicles below the given cost.
can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.

% Task 1: find cars/trucks below the given cost and of the requested colour.
can_buy(Cost, Colour) :-
    car(Model, Price, _, Colour, _),
    Price < Cost,
    write('With '), write(Price),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost, Colour) :-
    truck(Model, Price, _, Colour, _),
    Price < Cost,
    write('With '), write(Price),
    write(' you can purchase the truck '), write(Model), nl.

% Test these queries individually in SWI-Prolog:
% ?- can_buy(100000, red).
% Expected: datsun, price 80000
% ?- can_buy(100000, blue).
% Expected: ford truck, price 80000
% ?- can_buy(100000, green).
% Expected: false.
% ?- can_buy(100000).
% Original can_buy/1 rule still works.
