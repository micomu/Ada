package body Alumno_Model is

   function Create (Nombre : String ; Notas : Notas) return Alumno is
   begin
      return new C_Alumno'(Nombre => To_Unbounded_String(Nombre) ,
                            Notas => Notas);
   end Create;
   
   function Get_Nombre (This : C_Alumno ) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   procedure Rendir_Examen (Examen : in Integer, This : C_Alumno) is
   begin
      Append (This.Notas , Examen);
      Put_Line("Nota insertada correctamente");
   end Rendir_Examen;
   
    function Promedio(This : C_Alumno) return Nota_Promedio is
         type Sumatoria_Notas is new float range 0.0..(10.0*Float(Notas'Length));
         Suma : Sumatoria_Notas := 0.0;
      begin
         Put_Line("Tu promedio de notas es: ");
         for C of Notas loop
            Suma := Sumatoria_Notas(C) + Suma;
         end loop;
         return Nota_Promedio(Suma/Sumatoria_Notas((Notas'length)));
      end Promedio;

end Alumno_Model;
