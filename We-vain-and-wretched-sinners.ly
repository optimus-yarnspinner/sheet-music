\version "2.19.44"

\header {
  title = "Thee moon has been arisin"
  subtitle = "Stanza 4: We vain and wretched sinners"
  subsubtitle = "Style: Ars Nova"
  composer = "Matthias Claudius"
  arranger = "nyah."
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \time 4/2
  \partial 2
  \tempo 2=56
  \hide Staff.BarLine
  s2 \repeat unfold 22 s1 s1.  % the final bar line is not interrupted
  \undo \hide Staff.BarLine
  \bar "|."
}

soprano = \relative c' {
  f2 | g f bes a | g1 f2 \breathe a | a a  d c | bes1 a2 \breathe a | a a  bes a | g1. \breathe 
  f2 | g f bes a | g1 f2 \breathe a | a a  d c | bes1 a2 \breathe a | a a  bes a | g g f \bar "|." 
  
}

alto = \relative c' {
  c4 (d)  | d (es2) d2 es4 (f8 g) f4 | f2 (e4 d) f2. \breathe e4 | d4 (e) f (g2) a4. (g8) f4 | f2 (g2) f2 \breathe 
  
  
}

tenor = \relative c' {
  a2 | bes2. a4 g8 (a bes c d4) a | d2 (c4 bes) a2 \breathe a2 | f4 e d e f2~f8 e d4 | d2 (es) f \breathe
  
}

bass = \relative c {
  f2 | es f g d | bes c d2 \breathe c | d2. c4 bes2 a | g bes d2 
  
}

verse = \lyricmode {
  We vain and wre -- tched sin -- ners
pre -- sume to be the win -- ners,
but we know no -- thing yet.
So ma -- ny neat so -- lu -- tions
are nought but great de -- lu -- sions
that far -- ther off the path us get.
  
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "S."
      \consists "Ambitus_engraver"
    } << \global \new Voice = "soprano" \soprano >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } << \global \new Voice = "alto" \alto >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "T."
      \consists "Ambitus_engraver"
    }  << \global {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    } >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "B."
      \consists "Ambitus_engraver"
    }  << \global {
      \clef bass
      \new Voice = "bass" \bass
    } >>
  >>
  \layout { }
  \midi { }
}