%Monkey_Banana_Sticky problem
% H - me dont know if the monkey has or not the banana on this state
% Brief explanation of the 'methods' on this file
% state(MonkeyHorizontalPosition, MonkeyVerticalPosition, BoxPosition, MonkeyHasOrNoBananas)
% P, P1, P2 - undefined positions the monkey/objects may be


/*
domain
	name=symbol
predicates
	state(name, name, name, name, name)
	action(name, name, name)
	canshake(name)
*/


%Facts
do(state(middle, onchair, middle, sticky, hasnot),grasp,state(middle, onchair, middle, sticky, has)).
do(state(middle, onfloor, middle,St, H),climb,state(P, onbox, P, St, H)).
do(state(P, onfloor, P,nosticky, H),takeSticky, state(P, onfloor, P, sticky, H)).
do(state(P1, onfloor, P1,St, H),push(P1, P2),state(P2, onfloor, P2,St, H)).
do(state(P1, onfloor, C,St, H),walk(P1, P2),state(P2, onfloor, C,St,H)).


canget(state(_, _, _, _, has)).

%Rules
canget(State1):-do(State1, _, State2), canget(State2).

%queries
%change_directory('F:/JuniorStaff/UEM/4ano/IA/monkey-banana-sticky').
%[resolution].
%Canget(state(atdoor, onfloor,atwindow, nosticky, hasnot)).




