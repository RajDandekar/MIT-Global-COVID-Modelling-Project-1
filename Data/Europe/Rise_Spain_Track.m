Spain_Infected_All =[];
Spain_Recovered_All = [];
Spain_Dead_All = [];

str1 = "Spain"
str2 = "Spain"
str3 = "Spain"

for i = 7:1:9
   fname = strcat ( '03-0', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
Spain_Infected_All = [Spain_Infected_All,P.Confirmed(idx) ];
Spain_Recovered_All = [Spain_Recovered_All,P.Recovered(idx) ];
Spain_Dead_All = [Spain_Dead_All,P.Deaths(idx) ];
end

for i = 10:1:21
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str1));
idx = index;
Spain_Infected_All = [Spain_Infected_All,P.Confirmed(idx) ];
Spain_Recovered_All = [Spain_Recovered_All,P.Recovered(idx) ];
Spain_Dead_All = [Spain_Dead_All,P.Deaths(idx) ];
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
Spain_Infected_All = [Spain_Infected_All,P.Confirmed(idx) ];
Spain_Recovered_All = [Spain_Recovered_All,P.Recovered(idx) ];
Spain_Dead_All = [Spain_Dead_All,P.Deaths(idx) ];
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
Spain_Infected_All = [Spain_Infected_All,P.Confirmed(idx) ];
Spain_Recovered_All = [Spain_Recovered_All,P.Recovered(idx) ];
Spain_Dead_All = [Spain_Dead_All,P.Deaths(idx) ];
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
Spain_Infected_All = [Spain_Infected_All,P.Confirmed(idx) ];
Spain_Recovered_All = [Spain_Recovered_All,P.Recovered(idx) ];
Spain_Dead_All = [Spain_Dead_All,P.Deaths(idx) ];
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
Spain_Infected_All = [Spain_Infected_All,P.Confirmed(idx) ];
Spain_Recovered_All = [Spain_Recovered_All,P.Recovered(idx) ];
Spain_Dead_All = [Spain_Dead_All,P.Deaths(idx) ];
end

for i = 10:31
   fname = strcat ( '05-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Country_Region;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
Spain_Infected_All = [Spain_Infected_All,sum(P.Confirmed(idx)) ];
Spain_Recovered_All = [Spain_Recovered_All,sum(P.Recovered(idx)) ];
Spain_Dead_All = [Spain_Dead_All,sum(P.Deaths(idx)) ];
end



Spain_Time = 1:1:length(Spain_Infected_All);
Spain_Time = Spain_Time';
str = '.mat';
filename = strcat('Rise_Spain_Track', str);
save(filename,'Spain_Time','Spain_Infected_All', 'Spain_Recovered_All', 'Spain_Dead_All');
% 
% 
% 



