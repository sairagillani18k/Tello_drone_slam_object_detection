%Connect to Matlab
r = ryze();
% % Step 2: Take off
takeoff(r);

% Step 3: Initialize MATLAB animated line
   f = figure;
   hx = animatedline('Color', 'r', 'LineWidth', 2);
   hy = animatedline('Color', 'g', 'LineWidth', 2);
   hz = animatedline('Color', 'b', 'LineWidth', 2);
   title('DroneOrientation v/s Time');
   xlabel('Time (in s)');
   ylabel('Orientation (in degrees)');
   legend('XOrientation', 'YOrientation', 'ZOrientation');