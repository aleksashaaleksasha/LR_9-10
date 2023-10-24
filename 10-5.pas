Program Zad_10_4; 
var i,j : integer;
A : array [1..8,1..8] of integer;
B : array [1..8] of integer;
C : array of integer;
begin
  setLength(C, 8);
  for i := 1 to 8 do begin
    for j := 1 to 8 do begin
      readln(A[i,j]);
      C[j-1] := A[i,j];
    end;
    sort(C);
    if C[6] = C[7] then B[i] := -1 else B[i] := 1;
  end;
  //writeln(C);
  //writeln(A);
  writeln(B);
end.
