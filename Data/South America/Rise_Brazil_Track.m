Brazil_Infected_All =[];
Brazil_Recovered_All = [];
Brazil_Dead_All = [];

str1 = "Brazil"
str2 = "Brazil"
str3 = "Brazil"

for i = 19:1:21
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
Brazil_Infected_All = [Brazil_Infected_All,P.Confirmed(idx) ];
Brazil_Recovered_All = [Brazil_Recovered_All,P.Recovered(idx) ];
Brazil_Dead_All = [Brazil_Dead_All,P.Deaths(idx) ];
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
Brazil_Infected_All = [Brazil_Infected_All,P.Confirmed(idx) ];
Brazil_Recovered_All = [Brazil_Recovered_All,P.Recovered(idx) ];
Brazil_Dead_All = [Brazil_Dead_All,P.Deaths(idx) ];
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
Brazil_Infected_All = [Brazil_Infected_All,P.Confirmed(idx) ];
Brazil_Recovered_All = [Brazil_Recovered_All,P.Recovered(idx) ];
Brazil_Dead_All = [Brazil_Dead_All,P.Deaths(idx) ];
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
Brazil_Infected_All = [Brazil_Infected_All,P.Confirmed(idx) ];
Brazil_Recovered_All = [Brazil_Recovered_All,P.Recovered(idx) ];
Brazil_Dead_All = [Brazil_Dead_All,P.Deaths(idx) ];
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
Brazil_Infected_All = [Brazil_Infected_All,P.Confirmed(idx) ];
Brazil_Recovered_All = [Brazil_Recovered_All,P.Recovered(idx) ];
Brazil_Dead_All = [Brazil_Dead_All,P.Deaths(idx) ];
end

for i = 10:19
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Brazil_Infected_All = [Brazil_Infected_All,P.Confirmed(idx) ];
Brazil_Recovered_All = [Brazil_Recovered_All, P.Recovered(idx) ];
Brazil_Dead_All = [Brazil_Dead_All,P.Deaths(idx)];
end

for i = 20:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Brazil_Infected_All = [Brazil_Infected_All,sum(P.Confirmed(idx)) ];
Brazil_Recovered_All = [Brazil_Recovered_All,sum(P.Recovered(idx)) ];
Brazil_Dead_All = [Brazil_Dead_All,sum(P.Deaths(idx)) ];
end



Brazil_Time = 1:1:length(Brazil_Infected_All);
Brazil_Time = Brazil_Time';
str = '.mat';
filename = strcat('Rise_Brazil_Track', str);
save(filename,'Brazil_Time','Brazil_Infected_All', 'Brazil_Recovered_All', 'Brazil_Dead_All');
% 
% 
% 



