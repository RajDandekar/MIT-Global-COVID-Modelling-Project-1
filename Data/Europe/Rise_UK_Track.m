clear all; close all


UK_Infected_All =[];
UK_Recovered_All = [];
UK_Dead_All = [];

str1 = "United Kingdom"
str2 = "United Kingdom"
str3 = "United Kingdom"

for i = 13
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.x___Province_State;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index(1);
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end

for i = 14:21
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Province_State;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index(1);
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end


for i = 22:31
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end


for i = 1:9
   fname = strcat ( '04-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end

for i = 10:30
   fname = strcat ( '04-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end

for i = 1:9
   fname = strcat ( '05-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end

for i = 10:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
UK_Infected_All = [UK_Infected_All,P.Confirmed(idx) ];
UK_Recovered_All = [UK_Recovered_All,P.Recovered(idx) ];
UK_Dead_All = [UK_Dead_All,P.Deaths(idx) ];
end



UK_Time = 1:1:length(UK_Infected_All);
UK_Time = UK_Time';
str = '.mat';
filename = strcat('Rise_UK_Track', str);
save(filename,'UK_Time','UK_Infected_All', 'UK_Recovered_All', 'UK_Dead_All');
% 
% 
% 



