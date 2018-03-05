with Text_IO; use Text_IO;
with dstack_pointers;

procedure Main is

   package CharStack is new dstack_pointers(elem => Character); use CharStack;

   my_stack: stack;
   element: Character;

begin

   empty(my_stack);

   while not End_Of_Line loop

      Get(element);

      if element = '(' then
         push(my_stack, element);
      elsif element = ')' then
         pop(my_stack);
      end if;
   end loop;

   if is_empty(my_stack) then
      Put_Line("Good");
   elsif not is_empty(my_stack) then
      Put_Line("Too many (");
   end if;

   exception
         when bad_use => Put_Line("Not enough )");
end Main;
