function plot_data(mat, data_type)
    figure();
    % take the first 3 columns of the matrix
    mat_3 = mat(:,1:3);
    % plot the data
    scatter3(mat_3(:,1), mat_3(:,2), mat_3(:,3), "filled");
    %text(mat_3(:,1),mat_3(:,2),mat_3(:,3),num2str([0; 1; 2; 3; 4; 5]))
    % label each point with the data type]
    data_type_matrix = strcat(data_type, ' ', num2str((1:size(mat_3,1))'));
    text(mat_3(:,1) + 0.01, mat_3(:,2) + 0.01, mat_3(:,3) + 0.01, data_type_matrix, 'FontSize', 16);
    set(gca,'XScale','linear','YScale','linear','ZScale','linear')
    zv = zeros(size(mat_3));
    hold on
    plot3([zv mat_3(:,1)]', [zv mat_3(:,2)]', [zv mat_3(:,3)]')
    scatter3(0, 0, 0, 100, 'g', 'p', 'filled')
    text(0.01, 0.01, 0.01, "Origin", 'FontSize', 16)
    hold off
    view(43,30) % set camera view to azimuth=45, elevation=30 degrees
    set(gca,'FontSize',16) % set font size to 16 points
    