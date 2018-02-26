package body dstack_pointers is

   procedure empty(s: out stack) is
      
      p: pcell renames s.top;
      
   begin
      
      p := null;
      
   end empty;
   
   procedure pop(s: in out stack) is
      
      top: pcell renames s.top;
      
   begin
      
      top := top.next;
      
   exception
         
         when Constraint_Error => bad_use;
      
   end pop;
   
   function top(s: in stack) return elem is
   begin
      
      return s.top.e;
      
   exception
         
      when Constraint_Error => bad_use;
         
   end top;
   
   
   

end dstack_pointers;
