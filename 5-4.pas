Program Zad_5_4;
var i,n : integer;
A : array of integer;
B : array of integer;
function summ(s:integer; F: array of integer):integer;
var u,sum : integer;
begin
  for u := 0 to s-1 do sum := sum + F[u];
  result := sum;
end;
function mtpp(s:integer; F: array of integer):array of integer;
var u : integer;
begin
  for u := 0 to s-1 do F[u]:=F[u]*10;
  result := F;
end;
begin
  writeln('Введите длину массивов:');
  readln(n);
  setLength(A,n);
  setLength(B,n);
  writeln('Введите массив A:');
  for i := 0 to n-1 do readln(A[i]);
  writeln('Введите массив B:');
  for i := 0 to n-1 do readln(B[i]);
  if summ(n,A) > summ(n,B) then begin
    A := mtpp(n,A);
    writeln('Изменённый массив A: ',A);
  end
  else if summ(n,A) < summ(n,B) then begin
    B := mtpp(n,B);
    writeln('Изменённый массив B: ',B);
  end;
end.