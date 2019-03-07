\header {
  dedication = "soiboi's wip"
  title = " Aus tiefer Not schrei ich zu dir"
  composer = "M. Luther 1524"
}

#(define ((my-time-signature glyph) grob)
   (grob-interpret-markup grob
          (markup (#:raise -1 #:fontsize 0.1 #:musicglyph glyph)
          )))

glbl = {\omit Score.BarLine \key a \phrygian \override Score.TimeSignature.stencil = #(my-time-signature "two")}
cantusMelody = {\repeat volta 2 {e2 a,4 e' f e c d e r8 e f4 g f d c (bes)  } 
    \alternative { {a2 \undo \omit Score.BarLine  } { a4 \omit Score.BarLine r8 d c4}}
    f e d g8 (f) e4 d r8 f e4 f g c, e8 (f) d4 c r8 c f4 e d a c (bes) a2 
    \undo \omit Score.BarLine \bar "|."}
altoMelody = { \repeat volta 2 {gis2 fis4 gis a gis c b8 a gis4 r8 bes a4 bes a4 bes a (g8 [f])  } 
    \alternative { {e4. (fis8)  } { e4  }}
	}
tenorMelody = { \repeat volta 2 {b2 c4 d c b a d b r8 c c4 d8 ([cis]) d4 f f (e8 [d])  } 
    \alternative { {cis4 (dis) \undo \omit Score.BarLine  } { cis!4 \omit Score.BarLine }}
	}
bassMelody = { \repeat volta 2 {e4 (d) c b a e' f f e r8 g f4 e d4 bes f' g  } 
    \alternative { {a4 (g8 [fis]) } { a4 e'4\rest }}
	}

\score {
\new ChoirStaff
<<
  \new Staff \relative c'' <<
	\glbl
    \new Voice = "cantus" { \voiceOne
      \cantusMelody
    }
	\new Voice { \voiceTwo
      \altoMelody
    }
  >> 
  \new Lyrics \lyricsto "cantus" {
    In deep dis -- tress I cry to thee,
    Lord God, hear thou my ca -- lling \skip 1 
    For if thou wilt ob -- ser -- vance make
    Of sin and deed un -- ju -- stly done,
    Who can, Lord, stand be -- fore thee? 
  }
  \new Lyrics \lyricsto "cantus" {
      Thy gra -- cious ear bend low to me
    And o -- pen to my cry- \skip 2 -ing!
  }
  \new Staff  <<
	\glbl \clef bass
    \new Voice \relative f { \voiceOne
     	\tenorMelody
    }
	\new Voice \relative f { \voiceTwo
      \bassMelody
    }
  >> 
>>
  \layout {}
}

\score {
  \unfoldRepeats
  <<
      \new Voice  \relative c''\cantusMelody
	  \new Voice  \relative c''\altoMelody
      \new Voice \relative f \tenorMelody
      \new Voice \relative f \bassMelody   
   >>
  \midi { \tempo 2 = 55 }
}