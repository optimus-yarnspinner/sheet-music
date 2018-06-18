\header {
  title = "Leck mich im Arsch!"
  subtitle = "Canon à 6"
  composer = "W.A. Mozart"
}

canon = \relative c'' {\clef soprano \key bes \major \tempo 1 = 72
    \mark "1." bes1 c a bes  \mark "2." r2 bes~ bes a r es'~ es d 
    \mark "3." d f es c f f, r bes4 a \mark "4." g f es d c c f g f es d c bes
    f''8 f f f f f \mark "5." f4 (bes,) bes2 r4 es8 es es es es es es4 (a,) a2 
    r4 bes8 (c) d (es) f4 \mark "6." g,4 g'8 g g g g g g4 (c,) c2 r4 f8 f f f f f f4 (bes,) bes2  }

\score {
  \new Staff { \canon \bar "|." }
  \addlyrics {
    Leck mich im Arsch! Laßt uns froh sein! Mur -- ren ist ver -- ge -- bens!
    Knur -- ren, Brum -- men ist ver -- ge -- bens, ist das wah -- re Kreuz des Le -- bens, das 
    Brum -- men ist ver -- ge -- bens, Knur -- ren, Brum -- men ist ver -- ge -- bens,
    ver -- ge -- bens! Drum laßt uns froh und fröh -- lich, froh sein! laßt uns froh und fröh -- lich, froh sein!  
  }
  \layout {}
}
\score {
  <<
    \new Staff { \repeat unfold 3 \canon }
    \new Staff { \repeat unfold 4 s1 \repeat unfold 3 \canon }
    \new Staff { \repeat unfold 8 s1 \repeat unfold 3 \canon }
    \new Staff { \repeat unfold 12 s1 \repeat unfold 3 \canon }
    \new Staff { \repeat unfold 16 s1 \repeat unfold 3 \canon }
    \new Staff { \repeat unfold 20 s1 \repeat unfold 3 \canon }
  >>
  \midi {}
}