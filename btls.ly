\header {
  title = "Toccata Eleonora Rigidia"
  composer = "Composer"
}

global = { \key e \minor \tempo "Largo" 8= 66  }

cf = { \global \repeat volta 2 { e2~ e8 fis g a~ | a g4 fis8~ fis e4 b8~ | b16 a g8~ g2 r4 }
    \repeat volta 2 { g8 a b g~ g e4. | g8 a b d~ d cis b cis~ | cis b a b~ b a g a~ | a2 r | g8 a b c~ c4 b }
    a4 g8 a~ a4 b8 g~ | g e4. r4 e8 e'~ | e4 b8 a~ a g g e~ | e2 r | 
    a4 g8 a~ a4 b8 g~ | g e4. r4 e8 g'~ | g4 e8 b~ b a a g |  }

cpOne = { \global b4\rest <b e> <c e> dis | fis e <c e>8 e4 <dis>8 | dis4 e\mordent  }

cpTwo = { 
  \global s4_\ff-\markup {\bold \italic "pesante"} \appoggiatura {e16 fis g a b cis dis } g,4 
  <fis a>2 <fis b>4 <g b> fis8 <g b> <fis a>4 | <g b>2 \scaleDurations 2/3 { r8 b, fis' b fis b,}

}

cpThree = {
  \global r4 <b e> c4.. b16 | <b dis>4 <b e> <a e'>8 << {e'4} \\ {b8 c} >> <b fis'>8 | <b e>2  \clef bass
  dis,2 
} 


\score {
  <<
    \new PianoStaff <<
      \new Staff <<
        \new Voice \relative c'' { \voiceOne \cpOne }
        \new Voice \relative c' { \voiceTwo \cpTwo }
      >>
      \new Staff \relative c' { \cpThree }
      \new Staff \relative c { \clef bass \cf }
    >>
  >>
  \layout {}
  \midi {}
}