glbl = {\key f \major}
\score {
    \new ChoirStaff <<
        \new Staff = "sopranos" \relative c'' <<
            \set Staff.instrumentName = #"Soprano"
            \new Voice = "sopranos" \relative c'' {\glbl \voiceOne
              a4 a bes8. c16~ c8 r r8. c16~c8. bes16 a8. g16 ~ g8 r8 r4 f8. f16 g8. a16 r4 a4 \tuplet 3/2 {g4 g8 ~} g2
              a4 a \tuplet 3/2 {r4 bes c} c bes a8. g16 ~ g4 f f g a g4. f8 f2 \bar "||" }
            \new Voice = "altos" \relative c' {\voiceTwo 
              d4 d e8. f16~ f8 r r8. g16~g8. f16 d8. f16 ~ f8 r8 r4 d8. cis16 c8. b16 r4
              \tuplet 3/2 {c8 cis d} \tuplet 3/2 {es4 e8~} e2 e4 cis4 \tuplet 3/2 {r4 fis f}
              f f e8. d16~d4 \mark \markup { \musicglyph #"scripts.ufermata" } c d bes c d c8 bes a2}

        >>
        \new Lyrics \lyricsto "sopranos" { 
          He -- llo friends, my name is soi -- boi, I got no de -- grees on me,
          all my skills in the -- o  -- ry come from self -- stu -- dy as you'll see.   }

        \new Staff = "basses" \relative c <<
            \set Staff.instrumentName = #"Bass"
            \new Voice = "tenors" \relative c' {\glbl \voiceOne 
              c4 c cis8. d16~ d8 r r8. bes16~bes8. bes16 b8. cis16 ~ cis8 r8 r4 bes8. a16 as8. g16 r4 
              bes4 \tuplet 3/2 {a4 bes8~} bes2 c4 bes \tuplet 3/2 {r4 d es} d g, bes8. gis16~ gis4
              a a g f f e f2 }
            \new Voice = "basses" \relative c { \voiceTwo \clef bass 
              f,8. f'16 fis4 g a8. ces,16 bes8 r16 aes'16~aes8. g16 f8. e16 es8. d16 g,8. g'16 a8. gis16 g8. f16 
              \tuplet 3/2 {r8 bes, b} c4 cis d c8. ges'16 f4 e es d g, des' c e f8 e d c bes d c a bes g c c, f2
               
              }
        >>
    >>
    \layout{} \midi{ \tempo 4= 110 }
}