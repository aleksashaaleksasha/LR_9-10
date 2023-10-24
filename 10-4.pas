Program Zad_10_4; 
var i,j,sr,srreal : integer; ff : boolean;
A : array [1..8,1..8] of integer;
B : array [1..8] of integer;
begin
  ff := False;
  for i := 1 to 8 do begin
    for j := 1 to 8 do begin
      readln(A[i,j]);
    end;
    B[i] := A[i,1];
    for j := 1 to 8 do begin
      if B[i] > A[i,j] then B[i] := A[i,j];
    end;
  end;
  srreal := B.sum() div 8;
  //writeln(A);
  //writeln(B);
  //writeln(srreal);
  for i := 1 to 8 do begin
    if srreal = B[i] then begin
      ff := True;
      break
    end;
  end;
  if ff = True then writeln('Массив содержит своё среднее арифмитическое') else writeln('Массив не содержит своё среднее арифмитическое');
end.

