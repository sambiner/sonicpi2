use_bpm 85

intro_beat = "C:/Users/samuel_biner/Downloads/intro_drums.wav"
live_beat = "C:/Users/samuel_biner/Downloads/live_beat.wav"
intro_vocals =  "C:/Users/samuel_biner/Downloads/intro_vocals.wav"

print sample_duration intro_beat
print sample_duration live_beat
print sample_duration intro_vocals

use_synth :piano
x = 21

79.times do
  play x
  sleep 0.25
  x = x+1
  print x
end

sample intro_vocals, amp: 3
sleep 21

sample intro_beat, amp: 2
sleep 14.76

live_loop :tenor1 do
  sleep 0.5
  use_synth :piano
  #first measure
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 0.5
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 1
  #second measure
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :F4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :E5
  sleep 0.25
  play :D5
  sleep 0.75
  play :B4
  sleep 1
  #third measure
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 0.5
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.5
  play :B4
  sleep 1
  #fourth measure
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :F4
  sleep 0.25
  play :A4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :B4
  sleep 0.25
  play :E5
  sleep 0.25
  play :D5
  sleep 0.75
  play :B4
  sleep 1
  #fifth measure
  
  #sixth measure
  
  #seventh measure
  stop
end

live_loop :livebeat do
  sample live_beat, amp: 2
  sleep 16
  
  stop
end