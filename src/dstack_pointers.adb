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
         
         --throw exception
      
   end pop;
   
   

end dstack_pointers;
