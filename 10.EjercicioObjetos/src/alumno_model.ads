with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors use Ada.Containers.Vectors;

package Alumno_Model is
   
   type Entrada_Nota is new Integer range 0..10;
   package Notas is new Ada.Containers.Vectors (Element_Type => Nota,
                                                Index_Type => Positive);
   
   function Create(Nombre : String ; Notas : Notas) return Alumno; -- Constructor
   
   function Get_Nombre (This : C_Alumno ) return String;
   
   procedure Rendir_Examen (Examen : in Integer);
   
   function Promedio (This : C_Alumno) return Integer;

   private 
   
    type C_Alumno is tagged record
      Nombre : Unbounded_String;
      Notas : Notas;
   end record;

end Alumno_Model;
