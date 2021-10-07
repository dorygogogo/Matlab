clc

%Acquisition
VVect1 = rw(10, 0,.5,1)
%Extinction
VVect2 = rw(10, 1,.5,0)
%Compound conditioning
[VVect3A, VVect3B] = rwAB(10,0,0,.3,.3,1)
%Overshadowing
[VVect4A, VVect4B] = rwAB(10,0,0,.3,.1,1)
%Blocking
[VVect5A, VVect5B] = rwAB(10,1,0,.3,.3,1)
%Overexpectation
[VVect6A, VVect6B] = rwAB(10,1,1,.3,.3,1)

%Acquisition Graph
x = [1:11]
subplot(3,3,1)
plot(x,VVect1)

%Extinction Graph
x = [1:11]
subplot(3,3,2)
plot(x,VVect2)


%Compound conditioning Graph
x = [1:11]
subplot(3,3,3)
plot(x,VVect3A)
hold on 
plot(x,VVect3B)
hold off
%Overshaowing Graph
x = [1:11]
subplot(3,3,4)
plot(x,VVect4A)
hold on 
plot(x,VVect4B)
hold off

%Blocking Graph
x = [1:11]
subplot(3,3,5)
plot(x,VVect5A)
hold on 
plot(x,VVect5B)
hold off

%Overexpectation Graph
x = [1:11]
subplot(3,3,6)
plot(x,VVect6A)
hold on 
plot(x,VVect6B)
hold off

x = [1:51]
%7 lines
subplot(3,3,7)
for i=1:7
    VVect1 = pr(50,0,0.5,1,0.1)
    plot(x,VVect1)
    hold on
end
hold off



subplot(3,3,8)
c = {'b', 'g', 'r', 'c', 'm', 'y', 'k'}
for i=1:7
    %draw the plots seven times
    [VVectA3,VVectB3] = prAB(50,0,0,0.3,0.3,1,0.1)
    plot(x,VVectA3,'color', c{i})
    plot(x,VVectB3,'color', c{i})
    hold on
end
hold off





