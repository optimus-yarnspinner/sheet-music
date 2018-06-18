\header {
  title = "jazzy"
  composer = "chrchb"
}

\score {
<< \new Staff \relative c' {
  <d g c>2 <g d'> <g bes es> <f as es'> <e g a d>1}
  \new Staff \relative c { \clef bass 
  <c e a>2  <a e' b' c> <as f' c'> <des b'> <c c'>1}
>> 
  \layout {}
  \midi {}
}