% ex3.12
% In case of the number of nodes is 9 and 49, this show the position consensus of all nodes.


clear

D6 = [0 1 0 0 0 0 0 1 0;
     1 0 1 0 0 0 0 0 1;
     0 1 0 1 0 0 0 0 0;
     0 0 1 0 1 0 0 0 1;
     0 0 0 1 0 1 0 0 0;
     0 0 0 0 1 0 1 0 1;
     0 0 0 0 0 1 0 1 0;
     1 0 0 0 0 0 1 0 1;
     0 1 0 1 0 1 0 1 0];
 
D7 = [0 1 0 0 0 0 0 0 0;
     1 0 1 0 0 0 0 0 0;
     0 1 0 1 0 0 0 0 0;
     0 0 1 0 1 0 0 0 0;
     0 0 0 1 0 0 0 0 0;
     0 0 0 0 0 0 1 0 0;
     0 0 0 0 0 1 0 1 0;
     0 0 0 0 0 0 1 0 1;
     0 0 0 0 0 0 0 1 0];
 
D11 = [0 1 0 0 0 0 0 1 0;
     0 0 0 0 0 0 0 0 1;
     0 1 0 0 0 0 0 0 0;
     0 0 1 0 0 0 0 0 0;
     0 0 0 1 0 0 0 0 0;
     0 0 0 0 1 0 1 0 1;
     0 0 0 0 0 0 0 0 0;
     0 0 0 0 0 0 1 0 1;
     0 0 0 1 0 0 0 0 0];
 
L6 = graph_lap(D6);
L7 = graph_lap(D7);
L11 = graph_lap(D11);

D49 = zeros(49,49);
a = zeros(49,4);
a(1,:) = [2 24 0 0];
a(2,:) = [1 3 25 0];
a(3,:) = [2 4 26 0];
a(4,:) = [3 5 27 0];
a(5,:) = [4 6 28 0];
a(6,:) = [5 7 29 0];
a(7,:) = [6 8 0 0];
a(8,:) = [7 9 29 0];
a(9,:) = [8 10 30 0];
a(10,:) = [9 11 31 0];
a(11,:) = [10 12 32 0];
a(12,:) = [11 13 33 0];
a(13,:) = [12 14 0 0];
a(14,:) = [13 15 33 0];
a(15,:) = [14 16 34 0];
a(16,:) = [15 17 35 0];
a(17,:) = [16 18 36 0];
a(18,:) = [17 19 37 0];
a(19,:) = [18 20 0 0];
a(20,:) = [19 21 37 0];
a(21,:) = [20 22 38 0];
a(22,:) = [21 23 39 0];
a(23,:) = [22 24 40 0];
a(24,:) = [23 25 1 0];
a(25,:) = [2 24 26 40];
a(26,:) = [3 25 27 41];
a(27,:) = [4 26 28 42];
a(28,:) = [5 27 29 43];
a(29,:) = [6 28 30 44];
a(30,:) = [9 29 31 43];
a(31,:) = [10 30 32 44];
a(32,:) = [11 31 33 45];
a(33,:) = [12 32 34 14];
a(34,:) = [15 33 35 45];
a(35,:) = [16 34 36 46];
a(36,:) = [17 35 37 47];
a(37,:) = [18 36 38 20];
a(38,:) = [21 37 39 47];
a(39,:) = [22 38 40 48];
a(40,:) = [23 25 39 41];
a(41,:) = [26 40 42 48];
a(42,:) = [27 41 43 49];
a(43,:) = [28 30 42 44];
a(44,:) = [31 43 45 49];
a(45,:) = [32 34 44 46];
a(46,:) = [35 45 47 49];
a(47,:) = [36 38 46 48];
a(48,:) = [39 41 47 49];
a(49,:) = [42 44 46 48];

for i = 1:49
    for j = a(i,:)
        if j ~= 0
          D49(i,j) = 1;
        end
    end
end
L49 = graph_lap(D49);

rng default;

node_number = 9;
x01 = rand([node_number,1]);
y01 = rand([node_number,1]);
x03 = rand([node_number,1]);
y03 = rand([node_number,1]);
x04 = rand([node_number,1]);
y04 = rand([node_number,1]);



node_number = 49;
x02 = rand([node_number,1]);
y02 = rand([node_number,1]);



syms t
%delau_wrap1 = @(t) delau(t,x01,y01,L6,'-ro','r');  % node 9 => red
%fanimator(delau_wrap1,'AnimationRange',[0 20],'FrameRate',30)
%hold on
%delau_wrap2 = @(t) delau(t,x02,y02,L49,'-bo','b');  % node 49 => blue
%fanimator(delau_wrap2,'AnimationRange',[0 20],'FrameRate',30)
delau_wrap3 = @(t) delau(t,x03,y03,L7,':go','g');  % node 9 => square
fanimator(delau_wrap3,'AnimationRange',[0 20],'FrameRate',30)
%hold on
%delau_wrap4 = @(t) delau(t,x04,y04,L11,':mo','m');  % node 9 => 
%fanimator(delau_wrap4,'AnimationRange',[0 20],'FrameRate',30)
%hold off

% When you would like to play animation,
% Just input 'playAnimation' in command.
% IF you change speed, input 'playAnimation('SpeedFactor',0.5)'. 
% 'playAnimation('SpeedFactor',-1)' = 'playAnimation('BackWards',true)'
