\header {
  title = "Fantasia Eleonora Rigidia in Mi Minore"
  composer = "Composer"
}

global = { \key e \minor \tempo "Largo" 8= 66  }

cf = { \global  e2\fff~ e8 fis g a~ | a g4 fis8~ fis e4 b8~ | b16 a g8~ g2 r4 | \repeat unfold 5 R1
    \repeat volta 2 { g8 a b g~ g e4. | g8 a b d~ d cis b cis~ | cis b a b~ b a g a~ | a2 r | g8 a b c~ c4 b }
    a4 g8 a~ a4 b8 g~ | g e4. r4 e8 e'~ | e4 b8 a~ a g g e~ | e2 r | 
    a4 g8 a~ a4 b8 g~ | g e4. r4 e8 g'~ | g4 e8 b~ b a a g |  }

cpOne = { 
  \global b4\rest <b e>8.. q32 <c e>4 dis8.. fis32 | fis4 e <c e>8 e4 <dis>8 | 
  dis4 e2\mordent r8. \scaleDurations 4/6 {fis,64 gis a b c d} | 
  c32 b a gis a g fis e dis' c b a b a g fis 

  % g,8\p_"II" fis16 e c'8 a dis,4 r8 b' | cis,4 dis g8. a16 fis4 | g16 fis g4 
 }

cpTwo = { 
  \global s4_\ff-\markup {\bold \italic "pesante"} \appoggiatura {e32 fis g a b cis dis } g,8.. g32
  a4... <fis b>32 |  <fis b>4 <g b> fis8 <g b> <fis a>4 |  b4~b16 c b8~ b4  e,\mp | R1
  

}

cpThree = {
  \global r4 <b e>8.. q32 <c fis>4... <b dis>32 | <b dis>4 <b e> <a e'>8 << {e'4} \\ {b8 c} >> <b fis'>8 | 
  << {g'8. fis16 e2}  \\ {b4.. \clef bass g16 e4} \\ {\voiceFour e'2. }  >>  r4 | R1
  e,2\p~ e8 fis g a~ | a g4 fis8~ fis e4 b8~ | b16 a g8~ g2 r4 | r1
} 


\score {
  <<
    \new PianoStaff \with { midiInstrument = #"church organ" }  <<
      \new Staff <<
        \new Voice \relative c'' { \voiceOne \cpOne }
        \new Voice \relative c' { \voiceTwo \cpTwo }
      >>
      \new Staff \relative c' { \cpThree }
      \new Staff \relative c { \clef bass \cf }
      
    >>
  >>
  \layout {}
}

\score {
  \unfoldRepeats 
    <<
    \new PianoStaff \with { midiInstrument = #"church organ" }  <<
      \new Staff \with {midiMaximumVolume = 0.8 } <<
        \new Voice \relative c'' { \voiceOne \cpOne }
        \new Voice \relative c' { \voiceTwo \cpTwo }
      >>
      \new Staff \with {midiMaximumVolume = 0.8 } \relative c' { \cpThree }
      \new Staff \relative c { \clef bass \cf }
      \new Staff \relative c, { \clef bass \cf }      
    >>
  >>
  \midi {}
}