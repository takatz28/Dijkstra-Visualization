clc, clear, close all

% Prompt for number of nodes
n = input('Please set number of nodes: ');
cost = zeros(n);

% Generate an n-by-n cost matrix with zero
% diagonal
for i = 1:n
    for j = 1:n
        if (i == j)
            continue;
        elseif (j < i)
            cost(i,j) = cost(j,i);
        else
            cost(i,j) = floor(rand*10);
        end
        
    end
end

src = [];
dest = [];
weight = [];
names = [];

for i = 1:n
    for j = 1:n
        if (cost(i,j) ~= 0)
            src = [src, i];
            dest = [dest, j];
            weight = [weight, cost(i, j)];
        end
    end
    names = [names, i];
end

% Write the node-cost pairs to the output file
% 'Graph.dat'
filename = 'Graph.dat';
fid = fopen(filename, 'w');
fprintf(fid, '%d', n);
for i = 1:n
    fprintf(fid,'\n');
    for j = 1:n
        fprintf(fid, '%d%d', j, cost(i,j));
    end
end
fclose(fid);
