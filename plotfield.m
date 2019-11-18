function plotfield(no2xy,el2no,sol)
el2no = sort(el2no);

% Local coordinates for subgrid plotting
% Plot the mesh
xy1 = no2xy(:,el2no(1,:)); % Taken from  book, plotting the meshes
xy2 = no2xy(:,el2no(2,:));
xy3 = no2xy(:,el2no(3,:));

z1 = sol(el2no(1,:)); % We extract the solution in the same way we collect xy points
z2 = sol(el2no(2,:));
z3 = sol(el2no(3,:));

xyz_1 = [xy1;z1']; % We add appropriate solution value to each xy value
xyz_2 = [xy2;z2'];
xyz_3 = [xy3;z3'];


xyz = [xyz_1; xyz_2; xyz_3; xyz_1; NaN*xyz_1]; % Connect the meshes without plotting a line to the next mesh
X = xyz(1:3:end);
Y = xyz(2:3:end);
Z = xyz(3:3:end);
plot3(X,Y,Z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Potential [V] ')