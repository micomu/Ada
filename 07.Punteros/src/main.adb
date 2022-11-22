with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

begin
   --  declare
   --    -- A : Integer := 10;
   --    -- B : Integer := A;
   --     A : access Integer;
   --
   --  begin
   --     --B := 20;
   --     --Put_Line(A'Image);
   --     --  A := null;
   --     --  if (A = null) then
   --     --     Put_Line("La variable A no esta inicializada y no apunta a nada");
   --     --  end if;
   --
   --     A := new Integer'(2);
   --     Put_Line(A.all'image);
   --
   --  end;
   declare
      type Puntero_Entero is access Integer;
      AA: Puntero_Entero := new Integer'(30);
      BB : Puntero_Entero := AA;
   begin
      BB.all := 50;
      Put_Line(AA.all'Image);
   end;


end Main;
