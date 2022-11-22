package body Utilidad is

   procedure Swap(Left : in out T;
                  Right : in out T) is
      Aux : T := Left;
   begin
      Left := Right;
      Right := Aux;
   end Swap;
   
   procedure Show_Vertical(Value : in T) is
   begin
      for C of To_String()
   end;
   
   

end Utilidad;
