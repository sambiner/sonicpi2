intro_beat = "C:/Users/samuel_biner/Downloads/intro_drums.wav"
live_beat = "C:/Users/samuel_biner/Downloads/live_beat.wav"
intro_vocals =  "C:/Users/samuel_biner/Downloads/intro_vocals.wav"
shrek_intro = "C:/Users/samuel_biner/Downloads/shrexy_boi.wav"
all_star_vocals = "C:/Users/samuel_biner/Downloads/all_star_audio.wav"

use_bpm 85
x = 21
i = 0
a = 0
c = 0
first_one = [:a4, :b4, :b4, :a4]
first_second = [:b4, :b4, :a4, :b4, :b4, :a4]
second = [:a4, :b4, :b4, :f4, :a4, :b4, :b4, :b4, :e5]
third_one = [:a4, :b4, :b4, :a4]
third_two = [:b4, :b4, :a4, :b4]
fourth = [:a4, :b4, :b4, :f4, :a4, :b4, :b4, :b4, :e5]
solo_seventh = [:a4, :b4, :b4, :b4, :a4, :b4, :b4, :b4, :a4, :b4, :b4, :b4]
solo_eighth = [:a4, :b4, :b4, :f4, :a4, :b4, :b4, :b4, :e5]
tenor_seventh = [:c5, :ds5, :d5, :d5, :c5, :d5, :d5, :d5, :c5, :d5, :d5, :d5]
tenor_eighth = [:c5, :ds5, :d5, :d5, :c5, :d5, :d5, :d5, :e5]

print sample_duration live_beat

define :all_notes do |y, z|
  play y
  sleep z
end
define :two_notes do |x, y, z|
  play x
  play y
  sleep z
end
if c == 0
  use_synth :piano
  40.times do
    play x, amp: a
    sleep 0.25
    x = x+1
    a = a+0.1
    print x
  end
  sample intro_vocals, amp: 6
  sleep 21
  sample intro_beat, amp: 6
  sleep 14.76
  live_loop :solo do
    sleep 0.5
    use_synth :piano
    #first measure
    4.times do
      play first_one [i]
      i += 1
      sleep 0.25
    end
    all_notes :b4, 0.5
    i = 0
    6.times do
      play first_second [i]
      i += 1
      sleep 0.25
    end
    i = 0
    all_notes :b4, 1
    #second measure
    9.times do
      play second [i]
      i += 1
      sleep 0.25
    end
    i = 0
    all_notes :d5, 0.75
    all_notes :b4, 1
    #third measure
    4.times do
      play third_one [i]
      i += 1
      sleep 0.25
    end
    i = 0
    all_notes :b4, 0.5
    4.times do
      play third_two [i]
      i += 1
      sleep 0.25
    end
    i = 0
    all_notes :b4, 0.5
    all_notes :b4, 1
    #fourth measure
    9.times do
      play fourth [i]
      i += 1
      sleep 0.25
    end
    i = 0
    all_notes :d5, 0.75
    all_notes :b4, 1
    #fifth measure
    sleep 4
    #sixth measure
    sleep 4
    #seventh measure
    12.times do
      play solo_seventh [i]
      i += 1
      sleep 0.25
    end
    i = 0
    all_notes :b4, 1
    #eighth measure
    9.times do
      play solo_eighth [i]
      i += 1
      sleep 0.25
    end
    i=0
    all_notes :d5, 0.75
    all_notes :b4, 1
    #ninth measure
    all_notes :a4, 0.5
    all_notes :b4, 0.5
    2.times do
      all_notes :a4, 0.25
      all_notes :b4, 0.25
      all_notes :b4, 0.5
    end
    all_notes :b4, 1
    #tenth measure
    2.times do
      all_notes :a4, 0.25
      all_notes :b4, 0.25
      all_notes :b4, 0.5
    end
    all_notes :e5, 0.25
    all_notes :d5, 0.75
    all_notes :b4, 0.5
    all_notes :f5, 0.5
    #eleventh measure
    all_notes :ds5, 1
    sleep 2.5
    all_notes :f5, 0.5
    #twelfth measure
    
    stop
  end
  
  live_loop :tenor1 do
    #measure one to three
    sleep 15
    #fourth measure
    use_synth :piano
    all_notes :e5, 0.25
    all_notes :d5, 0.75
    #fifth measure
    all_notes :b4, 1
    sleep 1.5
    two_notes :e5, :a5, 0.5
    two_notes :e5, :a5, 1
    #sixth measure
    two_notes :ds5, :fs5, 1
    sleep 1.5
    two_notes :e5, :a5, 0.5
    two_notes :a5, :a5, 1
    #seventh measure
    12.times do
      play tenor_seventh [i]
      i += 1
      sleep 0.25
    end
    i=0
    all_notes :b4, 1
    #eighth measure
    9.times do
      play tenor_eighth [i]
      i += 1
      sleep 0.25
    end
    i=0
    all_notes :db5, 0.75
    all_notes :b4, 1
    #ninth measure
    all_notes :c5, 0.5
    all_notes :ds5, 0.5
    2.times do
      all_notes :c5, 0.25
      all_notes :d5, 0.25
      all_notes :d5, 0.5
    end
    all_notes :d5, 1
    #tenth measure
    all_notes :c5, 0.25
    all_notes :ds5, 0.25
    all_notes :d5, 0.5
    all_notes :c5, 0.25
    all_notes :d5, 0.25
    all_notes :d5, 0.5
    all_notes :e5, 0.25
    all_notes :db5, 0.5
    all_notes :b4, 1
    #eleventh measure
    sleep 4
    #twelfth measure
    sleep 4
    stop
  end
  
  live_loop :livebeat do
    sample live_beat, amp: 5
    sleep 48.73
    stop
  end
  c += 2
end


else if c == 2
  use_bpm 100
  
  sample shrek_intro, amp: 3
  sleep 3.87
  
  live_loop :all_star_bass do
    use_synth :piano
    #first measure
    sleep 1
    #second measure
    
    #third measure
    
    #fourth measure
    
    #fifth measure
    
    #sixth measure
    
    #seventh measure
    
    #eighth measure
    
    #ninth measure
    
    #tenth measure
    
    #eleventh measure
    
    #twelfth measure
    
    #thirteenth measure
    
    #fourteenth measure
    
    #fifteenth measure
    
    #sixteenth measure
    
    #seventeenth measure
    
  end
  
  40.times do
    play x, amp: a
    sleep 0.25
    x = x-1
    a = a-0.15
    print x
  end
end
