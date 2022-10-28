 myTello = ryze();

 cameraObj = camera(myTello);
%  Camera Test

preview(cameraObj);
takeoff(myTello);
flip(myTello,"left")
land(myTello);
%clear myTello
