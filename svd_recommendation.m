


% A = [1 1 0 1 0 0; 0 1 0 1 0 0; 0 1 1 1 0 1; 1 1 1 1 1 0; 0 0 1 0 0 1];
A = [ 1 1 0 1 0 0; 0 1 0 1 0 0; 0 0 1 1 0 1; 1 1 1 1 1 0; 0 0 1 0 0 1];

[U, S, V] = svd(A);

plot_data(V, "Book")
plot_data(U, "User")

result_1 = dot(V(2,:), V(4,:));
result_2 = dot(V(2,:), V(6,:));