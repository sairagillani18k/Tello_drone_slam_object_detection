% Task 5 — Land the drone
% Plot the final orientation and land the drone.

   orientation = rad2deg(readOrientation(r));
   tStamp = toc(tObj);
   addpoints(hx, tStamp, orientation(2));
   addpoints(hy, tStamp, orientation(3));
   addpoints(hz, tStamp, orientation(1));
   drawnow;
   land(r);