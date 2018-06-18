\paper {
  #(include-special-characters)
}

\header {
  title = "jazzy"
  composer = "chrchb"
}
\layout {
  ragged-last = ##f
}
rH = { <d g c>2 <g d'> <g bes es> <f as es'> <e g a d>1 }
lH = { <c e a>2  <a e' b' c> <as f' c'> <des b'> <c b'>1 }

\score {
<<
  \chords {c2:6.9 a:m11 f:m11/as des:7.9 c1:maj7}
  \new Staff \relative c' { \rH }
  \new Staff \relative c { \clef bass \lH  }
  \addlyrics { 
    \markup {"I" \super { "6|9" }} 
    \markup {"vi" \super {7} } 
    \once \override LyricText.self-alignment-X = #LEFT 
    \markup {"iv" \super {7} "(or "\flat"VI"\super {&increment; } ")" }
    \markup { \flat"II"\super 7} 
    \markup { "I" \super {&increment; }}
  }
>> 
  \layout {}
}

\score {
<<
  \new Staff \relative c' { \rH }
  \new Staff \relative c { \clef bass \lH  }
>> 
  \midi {}
}