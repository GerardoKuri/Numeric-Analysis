function curvaParam(x,y)
% Juntar primer punto con el ultimo
x = [x, x(1)];
y = [y, y(1)];
plot(x, y, 'r*');
hold on;
grid on;
XY = [x; y];
splineXY = spline(1:length(x), XY, 1:0.1:length(x));
plot(splineXY(1, :), splineXY(2, :), 'b');
grid on;
hold off;
end