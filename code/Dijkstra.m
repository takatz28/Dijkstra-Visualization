function [distance, finalSPT] = Dijkstra(costMatrix, startNode, endNode)

    [r,c] = size(costMatrix);
    SPT = [];               
    visited(1:c) = 0;       % node visited vector 
    cost(1:c) = inf;        % shortest distance vector between startNode and 
                            % all other nodes
    prevNode(1:c) = c+1;        % tracking vector for SPT

    % Set distance from start node to itself as 0
    cost(startNode) = 0;

    % Set non-self, zero-distance nodes to INF
    for a = 1:r
        for b = 1:c
            if  (costMatrix(a,b) == 0 && (a ~= b))
                costMatrix(a,b) = inf;
            end
        end
    end
    
    % Traverse through nodes until all nodes are visited
    while (sum(visited) ~= c)
        treeNode=[];
        % Calculate distance between node and adjacent nodes
        for i = 1:c
            if (visited(i) == 0)
                treeNode = [treeNode cost(i)];
            else
                treeNode = [treeNode inf];
            end
        end
        [~, idx] = min(treeNode);
        visited(idx) = 1;
        
        % Updates spanning tree based on shortest distance and least number
        % of hops
        for i = 1:c
            if ((cost(idx) + costMatrix(idx,i)) < cost(i))
                cost(i) = cost(idx) + costMatrix(idx,i);
                prevNode(i) = idx;
            end
        end
    end
    
    % Traces the spanning tree based on the 'prev' vector
    SPT = [SPT; endNode];
    while (SPT(1) ~= startNode)
        if (prevNode(SPT(1)) <= c)
            SPT = [prevNode(SPT(1)); SPT];
        end
    end
    distance = cost(endNode);
    finalSPT = SPT;