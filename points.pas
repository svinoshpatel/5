unit points; // модуль POINTS.pas
interface
Uses SysUtils; // потрібен для функції FloatToStr
Type
Point = class // клас Point – точка
private
x, y, z: Real; // поля класу Point
public
// Власний конструктор точки, який встановлює координати точки
Constructor Creat(x1, y1, z1: Real);
Procedure SetPoint(x1, y1, z1: Real);
Function GetPoint: String; // повертає координати точки у формі рядка
end;
implementation
Constructor Point.Creat (x1, y1, z1: Real); // реалізація конструктора
 Begin
 SetPoint (x1, y1, z1);
 end;
Procedure Point.SetPoint (x1, y1, z1: Real); // реалізація методу SetPoint
 Begin
 x := x1;
 y := y1;
 z := z1;
 end;
Function Point.GetPoint: String; // реалізація методу GetPoint
 Begin
 GetPoint:='('+FloatToStr(x)+';'+FloatToStr(y)+';'+FloatToStr(z)+')';
 end;
end.
