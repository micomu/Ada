package Utilidad is

   generic
      Type  T is private;
      
      
   procedure Swap(Left : in out T;
                  Right : in out T);
   
   generic
      Type T is (<>);
      with function
   procedure Show_Vertical(Value : in T);
   

end Utilidad;
