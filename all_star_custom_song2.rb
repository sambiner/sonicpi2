all_star_vocals = "C:/Users/samuel_biner/Downloads/all_star_audio.wav"
define :all_star_bass_line1 do
  play :e2, amp: 3
  sleep 1.5
  play :bb2, amp: 3
  sleep 0.5
  play :bs2, amp: 3
  sleep 1.5
  play :c3, amp: 3
  sleep 0.5
end
define :all_star_bass_line2 do |w, x, y, z|
  play w, amp: 3
  sleep 1.5
  play x, amp: 3
  sleep 0.5
  play y, amp: 3
  sleep 1.5
  play z, amp: 3
  sleep 0.5
end
define :two_notes do |x, y, z|
  play x, amp: 3
  play y, amp: 3
  sleep z
end

use_bpm 104

live_loop :all_star_bass do
  use_synth :piano
  #first measure
  sleep 1
  #second measure
  all_star_bass_line1
  #third measure
  all_star_bass_line2 :f2, :g2, :a2, :b2
  #fourth measure
  all_star_bass_line1
  #fifth measure
  all_star_bass_line2 :f2, :g2, :a2, :b2
  #sixth measure
  all_star_bass_line1
  #seventh measure
  all_star_bass_line2 :f2, :g2, :a2, :b2
  #eighth measure
  all_star_bass_line1
  #ninth measure
  all_star_bass_line2 :f2, :g2, :a2, :b2
  #tenth measure
  two_notes :e2, :e1, 1.5
  two_notes :bb2, :bb1, 0.5
  two_notes :bs2, :bs1, 1.5
  two_notes :a2, :a1, 0.5
  #eleventh measure
  two_notes :f2, :f1, 1.5
  two_notes :g2, :g1, 0.5
  two_notes :a2, :a1, 1.5
  two_notes :b2, :b1, 0.5
  #twelfth measure
  two_notes :e2, :e1, 1.5
  two_notes :bb2, :bb1, 0.5
  two_notes :bs2, :bs1, 1.5
  two_notes :a2, :a1, 0.5
  #thirteenth measure
  two_notes :f2, :f1, 1.5
  two_notes :g2, :g1, 0.5
  two_notes :a2, :a1, 1.5
  two_notes :b2, :b1, 0.5
  #fourteenth measure
  two_notes :e2, :e1, 1.5
  two_notes :bb2, :bb1, 0.5
  two_notes :bs2, :bs1, 1.5
  two_notes :a2, :a1, 0.5
  #fifteenth measure
  two_notes :f2, :f1, 1.5
  two_notes :g2, :g1, 0.5
  two_notes :a2, :a1, 1.5
  two_notes :b2, :b1, 0.5
  #sixteenth measure
  two_notes :e2, :e1, 1.5
  two_notes :bb2, :bb1, 0.5
  two_notes :bs2, :bs1, 1.5
  two_notes :a2, :a1, 0.5
  
  stop
end

live_loop :all_star_vocals do
  sleep 0.5
  sample all_star_vocals, amp: 5
  sleep 53
  stop
end