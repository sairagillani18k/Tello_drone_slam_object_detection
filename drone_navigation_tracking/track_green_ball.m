%Task 1 — Create a ryze object
ryzeObj = ryze();
%Connect to drone's camera
 cameraObj = camera(ryzeObj);
 %Takeoff the drone
 takeoff(ryzeObj);
 % Track the ball
 tim = tic;
   duration = 60;
   minGreenIntensity = 40;
   minOffset = 30;
   while(toc(tim) < duration)
   img = snapshot(cameraObj);
   trackBall(ryzeObj, img, minGreenIntensity, minOffset);
   pause(0.1);
   end
   %Land the drone
   land(ryzeObj);
   clear ryzeObj;