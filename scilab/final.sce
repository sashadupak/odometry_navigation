ke = 0.5
km = 0.5
R = 6.1
J = 0.0025
L = 0.0047

Moth = 0
r = 0.02 //радиус колеса
B = 0.12 //расстояние между колесами

k1 = 18
k2 = 16
voltage = 7.00

global complete
complete = 1
route = [0.4, 0.4; -0.4, 0.4; -0.4, -0.4; 0.4, -0.4; 0.4, 0.4]
//importXcosDiagram("/home/aleksandr/ITMO_lab/ev3/it_lab5/scilab/hard3.zcos");
//xcos_simulate(scs_m,4);
res = read("/home/aleksandr/Desktop/total/data.txt", -1, 4)
x = res(:, 1)
y = res(:, 2)
a = newaxes()
xtitle('', 'X, м', 'Y, м')
xgrid(0)
plot2d(0,0,0,'031',' ',[0,-0.75,1.5,0.75]);
plot2d(x, -y, 2)
plot2d([0.84, 0.48], [-0.275, 0.2], 1)
//plot2d(X.values, -.values, 5)
d = 0.1
//xset('color', 5)
xarc(0-d/2,0+d/2,d, d, 0, 360*64)
xarc(1.5-d/2,0+d/2,d, d, 0, 360*64)
//xstring(0, -0.15, "First point")
//xstring(1.3, 0+d/2, "Second point")
xstring(0.8, -0.2, 'wall')
track = a.children.children
track.thickness = 3
