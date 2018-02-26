generic
   type elem is private;

package dstack_pointers is

   type stack is limited private;
   
   procedure empty(s: out stack);
   procedure pop(s: in out stack);
   function top(s: in stack) return elem;
   procedure push(s: out stack; e: in elem);
   function is_empty(s: in stack) return boolean;
   
private
   type cell;
   type pcell is access cell;
   
   type cell is record
      e: elem;
      next: pcell;
   end record;
   
   type stack is record
      top: pcell;
   end record;

end dstack_pointers;
