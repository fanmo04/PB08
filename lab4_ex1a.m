% Lab 4 - Excercise 1a: testing the acclerometer
clear all 
close('all') 
pb = PyBench('COM4'); 
N=500;
end_time = 10.0;
while true
  figure(1)
  clf(1)
  axis([0 end_time -90 90]);
  title('Accelerometer: Pitch & Roll Angles', 'FontSize', 16);
  ylabel('Angles (deg)', 'FontSize', 14);
  xlabel('Time (sec)', 'FontSize', 14); 
  grid on; hold on; 
  tic;
  % read and plot accelerometer data
  for i = 1:N
    [p, r] = pb.get_accel(); 
    timestamp = toc;
    pitch = p*180/pi;
    roll = r*180/pi;
    plot(timestamp, pitch, '.b');
    plot(timestamp, roll, '.r');
    pause(0.001);
  end 
  end_time = toc;
end
