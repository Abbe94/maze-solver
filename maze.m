[N, S, E, W] = construct_maze(50); % Construct the maze
clf
clc
grid off
n=length(N);
for row=1:n
    for col=1:n
        if W(row,col)==0
            line([col-1,col-1],[n-row,n-row+1],'Color','k','Linestyle','-','Linewidth',3);
        end
        if S(row,col)==0
            line([col-1,col],[n-row,n-row],'Color','k','Linestyle','-','Linewidth',3);
        end
        line([0,n],[n,n],'Color','k','Linestyle','-','Linewidth',3);
        line([n,n],[n,0],'Color','k','Linestyle','-','Linewidth',3);
    end
end
axis equal
axis off
[col1,row1]=ginput(2);
rad=ceil(row1);
kolonn=ceil(col1);
start=[kolonn(1),rad(1)];
slut=[kolonn(2),rad(2)];
pathfinder(rad,kolonn,N,E,W,S)
patch([kolonn(1)-0.9,kolonn(1)-0.1,kolonn(1)-0.1,kolonn(1)-0.9], [rad(1)-0.1,rad(1)-0.1,rad(1)-0.9,rad(1)-0.9], 'blue', 'edgecolor', 'none')
patch([kolonn(2)-1,kolonn(2)-1,kolonn(2),kolonn(2)], [rad(2),rad(2)-1,rad(2)-1,rad(2)], 'red', 'edgecolor', 'none')
% patch([kolonn(1)-1,kolonn(1)-1,kolonn(1),kolonn(1)], [rad(1),rad(1)-1,rad(1)-1,rad(1)], 'blue', 'edgecolor', 'none')












