Program Zad_10_1; 
var i,j : integer;
A : array [1..6,1..8] of integer;
B : array [1..6] of integer;
begin
  for i := 1 to 6 do begin
  for j := 1 to 8 do begin
    readln(A[i,j]);
    if abs(A[i,1]) > 4 then B[i] := A[i,1] else B[i] := 0
    //if abs(A[i,1]) > 4 then B[i] := A[i,1] else B[i] := 0;
  end;
  end;
  //writeln(A);
  writeln(B);
end.
