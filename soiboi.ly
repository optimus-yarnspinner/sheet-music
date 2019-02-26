glbl = {\key f \major}
\score {
    \new ChoirStaff <<
        \new Staff = "sopranos" \relative c'' <<
            \set Staff.instrumentName = #"Soprano"
            \new Voice = "sopranos" \relative c'' {\glbl \voiceOne
              a4 a bes8. c16~ c8 r r8. c16~c8. bes16 a8. g16 ~ g8 r8 r4 f8. f16 g8. a16 r4 a4 \tuplet 3/2 {g4 g8 ~} g2
              a4 a \tuplet 3/2 {r4 bes c} c bes a8. g16 ~ g4 f f g a g4. f8 f2 \bar "||" }
            \new Voice = "altos" \relative c' {\voiceTwo 
              d4 d e8. f16~ f8 r r8. g16~g8. f16 d8. e16 ~ e8 r8 r4 f8. f16 g8. a16 r4 a4 \tuplet 3/2 {g4 g8 ~} g2
              a4 a \tuplet 3/2 {r4 bes c} c bes a8. g16 ~ g4 f f g a g4. f8 f2 }

        >>
        \new Lyrics \lyricsto "sopranos" { 
          He -- llo friends, my name is soi -- boi, I got no de -- grees on me,
          all my skills in the -- o  -- ry come from self -- stu -- dy as you'll see.   }

        \new Staff = "basses" \relative c <<
            \set Staff.instrumentName = #"Bass"
            \new Voice = "tenors" \relative c' {\glbl \voiceOne 
              c4 c cis8. d16~ d8 r r8. bes16~bes8. bes16 b8. cis16 ~ cis8 r8 r4 f8. f16 g8. a16 r4 a4 \tuplet 3/2 {g4 g8 ~} g2
              a4 a \tuplet 3/2 {r4 bes c} c bes a8. g16 ~ g4 f f g a g4. f8 f2 \bar "||"}
            \new Voice = "basses" \relative c { \voiceTwo \clef bass 
              f4 f g8. a16~ a8 r r8. aes16~aes8. g16 f8. e16 ~ e8 r8 r4 f8. f16 g8. a16 r4 a4 \tuplet 3/2 {g4 g8 ~} g2
              a4 a \tuplet 3/2 {r4 bes c} c bes a8. g16 ~ g4 f f g a g4. f8 f2 \bar "||"}
        >>
        \new Lyrics \lyricsto "basses" { }
    >>
    \layout{} \midi{}
}