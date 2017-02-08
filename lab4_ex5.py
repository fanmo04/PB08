# Lab 4 - Ex 5: Read pitch angle and the rate of pitch (gy_dot), display the values in OLED using infinite loop
imu = MPU6050(1,False) % creating IMU object

pitch = imu.pitch()
roll = imu.roll()
gy_dot = imu.get_gy()
gx_dot = imu.get_gx()
