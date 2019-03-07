\header {
  dedication = "Harmonize this hymn (here in A-phrygian)"
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
altoMelody = { \repeat volta 2 {gis2 fis4 gis a gis c b8 a gis4 r8 bes a4 bes8 ([a]) d4 a a (g8 [f])  } 
    \alternative { {e4 (fis) \undo \omit Score.BarLine  } { e4 \omit Score.BarLine r8 d c4}}
	}
tenorMelody = { \repeat volta 2 {b2 c4 d c b a d b r8 bes a4 bes8 ([a]) d4 a a (g8 [f])  } 
    \alternative { {e4 (fis) \undo \omit Score.BarLine  } { e4 \omit Score.BarLine r8 d c4}}
	}
bassMelody = { \repeat volta 2 {e4 (d) c b a e' f f e r8 bes a4 bes8 ([a]) d4 a a (g8 [f])  } 
    \alternative { {e4 (fis) \undo \omit Score.BarLine  } { e4 \omit Score.BarLine r8 d c4}}
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
    \new Staff \relative c' << 
      \key a \phrygian 
      \new Voice\cantusMelody
	  \new Voice\altoMelody
      >>
   >>
  \midi { \tempo 2 = 55 }
}