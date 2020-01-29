use_bpm 176

intro_beat = "C:/Users/samuel_biner/Downloads/intro_drums.wav"
live_beat = "C:/Users/samuel_biner/Downloads/live_beat.wav"
intro_vocals =  "C:/Users/samuel_biner/Downloads/intro_vocals.wav"

print sample_duration intro_beat
print sample_duration live_beat
print sample_duration intro_vocals

intro_vocals
sleep 44

intro_beat
sleep 30

live_loop :pianostuff do
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
  
  
  #third measure
  
  #fourth measure
end

live_loop :livebeat do
  
  
end