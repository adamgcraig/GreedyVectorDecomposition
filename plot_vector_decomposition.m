function f = plot_vector_decomposition(target,library,coeffs)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

num_coeffs = numel(coeffs);
current = zeros( size(target) );
component_colors = jet( num_coeffs );
f = figure;
hold on
for coeff_index = 1:num_coeffs
    component_vec = library(:,coeff_index)*coeffs(coeff_index);
    quiver3( current(1), current(2), current(3), component_vec(1), component_vec(2), component_vec(3), 'off', 'Color', component_colors(coeff_index,:) )
    current = current + component_vec;
end
quiver3( 0, 0, 0, target(1), target(2), target(3), 'off', 'Color', 'black' )
xlabel('x')
ylabel('y')
zlabel('z')
hold off

end