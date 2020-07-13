clear all; close all

India_Infected_All =[];
India_Recovered_All = [];
India_Dead_All = [];

str1 = "India"
str2 = "India"
str3 = "India"



for i = 24:31
   fname = strcat ( '03-', num2str(i), '-2020.csv' );
   P = readtable(fname);
   A = P.Combined_Key;
   Array = strings(1, length(A));
for j = 1:length(A)
    Array(j) = A{j};
end
index = find(strcmp(Array, str3));
idx = index;
India_Infected_All = [India_Infected_All,P.Confirmed(idx) ];
India_Recovered_All = [India_Recovered_All,P.Recovered(idx) ];
India_Dead_All = [India_Dead_All,P.Deaths(idx) ];
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
India_Infected_All = [India_Infected_All,P.Confirmed(idx) ];
India_Recovered_All = [India_Recovered_All,P.Recovered(idx) ];
India_Dead_All = [India_Dead_All,P.Deaths(idx) ];
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
India_Infected_All = [India_Infected_All,P.Confirmed(idx) ];
India_Recovered_All = [India_Recovered_All,P.Recovered(idx) ];
India_Dead_All = [India_Dead_All,P.Deaths(idx) ];
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
India_Infected_All = [India_Infected_All,P.Confirmed(idx) ];
India_Recovered_All = [India_Recovered_All,P.Recovered(idx) ];
India_Dead_All = [India_Dead_All,P.Deaths(idx) ];
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
India_Infected_All = [India_Infected_All,P.Confirmed(idx) ];
India_Recovered_All = [India_Recovered_All,P.Recovered(idx) ];
India_Dead_All = [India_Dead_All,P.Deaths(idx) ];
end



India_Time = 1:1:length(India_Infected_All);
India_Time = India_Time';
str = '.mat';
filename = strcat('Rise_India_Track', str);
save(filename,'India_Time','India_Infected_All', 'India_Recovered_All', 'India_Dead_All');
% 
% 
% 



