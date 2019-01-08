
global = {\key d \major}

\score {


    \new PianoStaff <<
        \new Staff \relative c' { \global }
        \new Staff \relative c' { \global}
        \new Staff \relative c { \global \clef bass 
            d2 ~ d8 cis16. b32 cis8 a | fis'4. d8 g a b g | a4 d, g8 fis e a |
            d, a' d d, cis cis' b b, | a4 cis8 a' d, b' e, cis' |
            fis, d' gis, e' a, cis a e | fis a fis cis d d' b d, |
            e8. fis16 gis8 a b e, a d, | e fis gis gis, a d e e, |
            a cis' a e fis a fis cis | d d' b gis e16. gis 32 a16. d,32 e8 e, |
            a4 a'~ a8 gis16. fis32 gis8 e | cis4. a8 d e fis d | 
            e gis b d, cis gis' eis cis | fis4 r8 cis ais4 r8 ais' |
            b fis g d e g fis fis, | b4 r r8 b' g g, | fis4 r8 cis'' d ais b fis|
            g g, gis gis'  a fis b cis | d4 r r8 a fis d | g4 r r8 g e g |
            a4 r r8 a fis a | b b, d b e e' a, cis | d d, g b a fis b, cis |
            d g, a a' b2 | e, a, \bar "|."


            }
         \new FiguredBass { \figuremode { 
         <_>2 <4 2>4 <6> | <7> <6>8 <_> <_> <6 _! > <6> <6> |
         <_>4 <6> <_>8 <6> <7> <_> | <_>2 <6>4 <5> | 
         <_> <6> <_> <_+> | <6> <6>8 <_+> <_>4. <6>8 |
         <_>2 <7>8 <6> <_>4 | <_+>2 <6/> | <_+>8  <6> <6>4 <_>2 |
         <_>4. <6>8 <_>4. <6>8 | <_>4 <5> <_+> <4>8 <_+> |
         <_>2 <4 2>4 <6> | <7> <6>8 <_>4. <6>4 |
         <_+> <6> <_> <6>8 <_+> | <_>4. <_+>8<7> <6>4. |
         <_>4. <6> <6 4>8 <5 _+> | <_>2. <6>4 | <_+>4. <6>8 <6> <6> <_> <6> |
         <6>4 <5> <_> <6>8 <6 5> | <_>2 <_>8 <_!> <6>4 |
         <_>2.. <6>8 | <_>2.. <6>8 | <_>2. <7>4 |
         <_> <7> <_> <6>8 <6 5> | <_>4 <4>8 <3> <7>4 <6/> |
         <_+>2 <_>
         } }
    >>
    \layout{} \midi{}
}