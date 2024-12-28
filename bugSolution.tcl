proc count_words {text} {
  # Correctly handles multiple spaces using regular expressions
  set words [regexp -all -inline {\[^ ]\]+} $text]
  return [llength $words]
}

puts [count_words "This is a test."] ;# Output: 4 (Correct)
puts [count_words "This  is a test."] ;# Output: 4 (Correct)