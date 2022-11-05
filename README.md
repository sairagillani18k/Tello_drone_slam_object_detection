# Tello_drone_slam_object_detection

Implementation of face detection / following and vSLAM on a Ryze Tello using its Matlab toolkit.

We can use MATLAB R2020a or greater to access the Tello support packages. We will also need the Computer Vision and Parallel Computing toolboxes.

Clone the repo, unzip help_fncs.zip, and move all the helper functions into the same directory as main, track, and vslam. Make an imgs directory in project directory in order to save the ORB feature and particle map figures. Make faces and slam subdirectories in imgs.
Make sure that the Tello's firmware is updated and that the ground station is connected to the Tello's wifi.
Run main.m in a Matlab environment.

Credit of this repo goes to  https://github.com/zstoebs/tello_detection_SLAM
