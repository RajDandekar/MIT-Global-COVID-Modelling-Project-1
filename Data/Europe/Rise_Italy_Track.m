clear all; close all


Italy_Infected_All =[];
Italy_Recovered_All = [];
Italy_Dead_All = [];

str1 = "Italy"
str2 = "Italy"
str3 = "Italy"

for i = 27:29
   fname = strcat ( '02-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index(1);
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
end

for i = 1:9
   fname = strcat ( '03-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index(1);
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
end



for i = 10:21
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index(1);
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
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
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
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
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
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
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
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
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
end

for i = 10:13
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Italy_Infected_All = [Italy_Infected_All,P.Confirmed(idx) ];
Italy_Recovered_All = [Italy_Recovered_All,P.Recovered(idx) ];
Italy_Dead_All = [Italy_Dead_All,P.Deaths(idx) ];
end

for i = 14:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Italy_Infected_All = [Italy_Infected_All,sum(P.Confirmed(idx)) ];
Italy_Recovered_All = [Italy_Recovered_All,sum(P.Recovered(idx)) ];
Italy_Dead_All = [Italy_Dead_All,sum(P.Deaths(idx)) ];
end


Italy_Time = 1:1:length(Italy_Infected_All);
Italy_Time = Italy_Time';
str = '.mat';
filename = strcat('Rise_Italy_Track', str);
save(filename,'Italy_Time','Italy_Infected_All', 'Italy_Recovered_All', 'Italy_Dead_All');
% 
% 
% 



