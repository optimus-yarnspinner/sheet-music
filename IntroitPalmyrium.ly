\header {
  title = "Introit"
  composer = "soiboi"
}

glbl = {\partial 4 \key e \phrygian }

\score {
  <<
  \new PianoStaff <<
    \new Staff <<
      \new Voice \relative c' { \glbl 
        \tuplet 3/2 { r8 <e a b>^"III (soft reeds)" q}  | q4 ~ \tuplet 3/2 { q8 <a b e> q} q4 ~ \tuplet 3/2 { q8 <f a d> q} |
        q4 ~ \tuplet 3/2 { q8 <a d g> q} q4
      }
      \new Voice \relative c' {\voiceTwo
        s4 | s1
      }
    >>
    \new Staff 
      \new Voice \relative c {\clef bass \glbl
        r4 | R1 | R1
      }
    >>
   \new Staff 
      \new Voice \relative c {\clef bass \glbl
        r4 | r e2. ~ | e4 bes2 bes8 a | g4 g8 f  
      }
  >>

  \layout {}
  \midi {\tempo "Moderato" 4=100}
}