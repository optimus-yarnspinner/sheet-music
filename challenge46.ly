\version "2.19.82"

\paper {
  #(set-paper-size "a4")
  #(include-special-characters)
}

\header {
  dedication = "The /r/musictheory Discord presents:"
  title = "Challenge #046"
  subtitle = "Genres!"
  composer = "/r/musictheory Discord 2020"
  tagline = ##f
}

melody = \relative c' {
  \omit Staff.TimeSignature \omit Stem \cadenzaOn
  e ais b e, b' c e dis e c b \breathe c b c ais! b g a g fis dis e
  
}

\markup \fill-line {
  \score {
    \new Staff \new Voice \melody
    \layout { indent = 0 ragged-last = ##f }
  }
}

\score {
 \new Staff \with { midiInstrument = "bright acoustic" } \melody
 \midi { \tempo 4 = 80 }
}