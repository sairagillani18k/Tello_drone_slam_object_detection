
% Step 4: Plot navigation data during drone flight

edgeIndex = 1;
  distance = 0.5;
  speed = 0.5;
  tObj = tic;
  while(edgeIndex <= 4)
      % Move the drone unblocking the command line
      tplot = tic;
      moveforward(r, 'Distance', distance, 'Speed', speed, 'WaitUntilDone', false);
      % Plot orientation while drone is moving
      while(toc(tplot)<distance/speed)
         orientation = rad2deg(readOrientation(r));
         tStamp = toc(tObj);
         addpoints(hx, tStamp, orientation(2));
         addpoints(hy, tStamp, orientation(3));
         addpoints(hz, tStamp, orientation(1));
         drawnow;
      end
     % Turn the drone after it has traversed one side of the square path
     pause(2);
     turn(r, deg2rad(90));
     edgeIndex = edgeIndex+1;
  end

  
 

