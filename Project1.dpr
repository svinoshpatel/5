program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  points in 'points.pas',
  sichu in 'sichu.pas',
  sphereu in 'sphereu.pas';

Var P: Point;
 S: Sphere;
 K: Sich;
Begin
// Викликаємо конструктор для створення об’єкту P класу Point
P := Point.Creat(1, 2, 3);
Writeln(P.GetPoint);
P.Free; // знищуємо об’єкт P класу Point
K := Sich.Creat(1, 2, 4, 7);// викликаємо конструктор Sich
WriteLn(K.GetPoint);
K.Free; // знищуємо об’єкт K класу Sich
S := Sphere.Creat(1, 2, 5, 5); // конструктор Sphere
WriteLn(S.GetPoint);
WriteLn(' Volume Sphere = ',S.Volume:10:4);
ReadLn;
end.
