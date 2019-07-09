% \version "2.19.83"
\include "articulate.ly"

\header {
  dedication = "The /r/musictheory Discord presents:"
  title = "Challenge #020"
  subtitle = "National anthem mashup"
  subsubtitle = "Mash up two or more national anthems"
  composer = "/r/musictheory Discord 2019"
  tagline = ##f
}

\layout {
  \context {
    \Staff
    fontSize = #-2
    systemStartDelimiter = #'SystemStartBar
    \override StaffSymbol.staff-space = #(magstep -2)
    \override StaffSymbol.thickness = #(magstep -2)
    \consists Merge_rests_engraver
  }
  \context {
    \DrumStaff
    fontSize = #-3
    systemStartDelimiter = #'SystemStartBar
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \consists Merge_rests_engraver
  }
}

glOne = {
  \key bes \major
  \time 4/4
  \partial 4
  \tempo "Maestoso"
}

USAone = \relative c' {
  \glOne
  % Music follows here.
  f8. (d16) | bes2 d4 f | bes2. d8. c16 | bes2 d,4 e | f2
}

NKone = \relative c' {
  \glOne
  % Music follows here.
  f4 | bes4. bes8 bes4 a8 g | f4. es8 d4 f | g4. g8 g4 a8 bes | c4. f,8 f4
}

HansOne = \relative c {
  \glOne
  f4 | d bes f'4. es8 | d4 f, bes a | g d' bes c | a c f8 es d c
}

percOne = \drummode {
  \glOne
  sna4 | \repeat unfold 4 { \tuplet 3/2 4 { sna4 sna8 sna sna sna} sna4 sna }
}

USAonePart = \new Staff \with {
  instrumentName = "USA"
} \USAone \addlyrics {
  Oh, say can you see,
  By the dawn's ear -- ly light,
}

NKonePart = \new Staff \with {
  instrumentName = "Best Korea"
} \NKone \addlyrics {
  아 침 은 빛 나 라 이 강 산
  은 금 에 자 원 도 가 득 한
}

HansOnePart = \new Staff { \clef bass \HansOne }

percOnePart = \new DrumStaff \with {
  \override StaffSymbol.line-count = #1
  drumStyleTable = #percussion-style
  \consists Pitch_squash_engraver
} \percOne

\score {
  \header {
    piece = \markup \bold "Example A - vertical mashup"
  }
  <<
    \USAonePart
    \NKonePart
    \new StaffGroup \with { instrumentName = "Hans" } <<
      \HansOnePart
      \percOnePart
    >>
  >>
  \layout { }

}

glTwo = {
  \key bes \major
  \time 3/4
  \partial 4
  \tempo "Tempo di valse"
}

upper = \relative c' {
  \glTwo
  f8. (d16) | bes4 d f | bes2 d8. c16 | bes4 d, e | f2 f8 f | d'4 c bes | a2 g8 a | bes4 bes f | d bes r |
  << \new Voice = "da" { \voiceOne es2 d4 | g2 f4 | f8 (es d4) c | d2 r4 | g2 f4 | a2 bes8 (f) | f (es d4) c | bes2 } \\
     { c2 bes4 | es2 d4 | d8 (c bes4) a | bes8 bes16-! bes-! bes8-! bes-! bes-! d | es2 (d4) | c (es) d | d8 (c bes4) a | bes2 } >>
}

upperPart = \new Staff \with {
  instrumentName = "Anthems"
} \upper \addlyrics {
  \set stanza = "USA: "
  Oh, say can you see,
  By the dawn's ear -- ly light,
  What so proud -- ly we hailed
  at the twi -- light's last glea -- ming?
  \set stanza = "AU: "
  \set associatedVoice = "da"
  Viel -- ge -- rühm -- tes Ös -- ter -- reich!
  Viel -- ge -- rühm -- tes Ös -- ter -- reich!
}

HansOben = \relative c {
  \glTwo
  f4 | d8. f16 bes4 a~ | a g fis8. d'16 | d4. c4 bes8 | a2 a4 | bes8 f'4 f c8  | c4. es8 d c | d4 es8 d c4 |
  bes8 f4 f16 g a bes c d | r4 a8. a16 (bes4 ) | r c8. (c16 d4) | g, (f) f | f8 f16-! f-! f8-! g as4 |
  g8. (a16 bes8. c16 d4 ) | c2 bes4 | g f es | d2
}
HansUnten = \relative c {
  \glTwo
  bes4 | bes2 d4 | g, bes d | g8 g, bes d c4 | f,8 g' f es d c | bes4 c d8 e | f4 f, f' | bes, c a |
  bes4 ~ bes16 c d es f g a bes | r4 f8. (f16 bes,4) | r a'8. (a16 bes4) |  es,4 (f) f | bes,2 d4 |
  es8. (f16 g8. a16 bes4) | f (fis) g8 d | es4 (f) f, | bes2
}

percTwo = \drummode {
  \glTwo
  sna4\trill | \repeat unfold 15 { \tuplet 3/2 4 { sna4 sna8 sna sna sna } sna4 } sna2\trill
}

HansTwoPart = \new Staff << \clef bass \HansOben \\ \HansUnten >>

percTwoPart = \new DrumStaff \with {
  \override StaffSymbol.line-count = #1
  drumStyleTable = #percussion-style
  \consists Pitch_squash_engraver
} \percTwo

\score {
  \header {
    piece = \markup \bold "Example B - horizontal mashup"
  }
  <<
    \upperPart
    \new StaffGroup \with { instrumentName = "Hans" } <<
      \HansTwoPart
      \percTwoPart
    >>
  >>
  \layout { }
}

\score {
  % \articulate
  <<
    \new Staff \with { midiInstrument = "trumpet" } \new Voice { \USAone r2 r2. \upper }
    \new Staff \with { midiInstrument = "french horn" } \new Voice \NKone
    \new Staff \with { midiInstrument = "trombone" }
    <<
      \new Voice { \HansOne r2. \HansOben }
      \new Voice { r4 r1 r r r r2. \HansUnten }
    >>
    \new DrumStaff {
      \percOne r2. \percTwo
    }
  >>
  \midi {
    \tempo 4=100
  }
}