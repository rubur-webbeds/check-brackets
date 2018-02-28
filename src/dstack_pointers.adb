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
         
         when Constraint_Error => raise bad_use;
      
   end pop;
   
   function top(s: in stack) return elem is
   begin
      
      return s.top.e;
      
   exception
         
      when Constraint_Error => raise bad_use;
         
   end top;
   
   procedure push(s: out stack; e: in elem) is
      
      r: pcell;
      
   begin
      
      r := new cell'(e, s.top);
      s.top := r; 
      
   exception
         
         when Storage_Error => raise overflow;
      
   end push;
   
   function is_empty(s: in stack) return boolean is
   begin
      
      return s.top = null;
      
   end is_empty;
  
   
end dstack_pointers;
