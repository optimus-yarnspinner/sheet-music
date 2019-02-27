\header {
  title = ""
  instrument = ""
}
\paper {
  system-system-spacing #'basic-distance = #20
}

heXuanLayout = 
  \new ChordNames \chordmode {
    d1:m g, bes, a,:m d:m g, bes,2 a,:m 
    d1:m d:m d2:m c g, d:m g,1 bes,2 c 
    d2:m c g, d:m g,1 bes,2 c d1:m bes, g, bes,2 a,:m d1:m bes,2 a,:m d1:m}
heXuanMidi = 
  \new ChordNames \chordmode {
    \repeat volta 2 {d1:m g, bes, a,:m d:m g, bes,2 a,:m }
    \alternative {{d1:m} {d:m}} d2:m c g, d:m g,1 bes,2 c 
    d2:m c g, d:m g,1 bes,2 c d1:m bes, g, bes,2 a,:m d1:m bes,2 a,:m d1:m}

yuePu =   
  \new Staff \with { midiInstrument = "acoustic guitar (nylon)" }
  \new Voice \relative c' { \key d \dorian 
    \repeat volta 2 {r8 d d a'  a d,4 a'8 | g4. f8 d2 | r8 f f d f f g a | 
    \grace c,8 (a2.) a8 d| c d f2 d8 a' | g f g2. | f8 d4 d8 c a \tuplet 3/2 {g'8 f g} | }
    \alternative {{ \grace f (d1) } {\grace f8 (d2) r8 d f a} }
    a2 g4. f8 | g f g a f8. d16 c'8 f, | g4. a8 g4. f8 | g a d c a8. d16 f8 a |
    a2 g4. f8 | g f g a f8. d16 c'8 f, | g4. a8 g4. f8 | g a d c a8. d,16 f8 a |
    a2 r8 d, f a | <d, \parenthesize d'>2 r8 d c' f, | | g4. a8 g4. f8 | d4. c8 a a g' f | 
    d2 r8 d c' f, | g4. f8 a, a g' f | d1\fermata \bar "|."
  }

\score {
  << \heXuanLayout \yuePu>>
  \layout { }
}

\score {
  \unfoldRepeats << \heXuanMidi \yuePu>>
  \midi { }
}