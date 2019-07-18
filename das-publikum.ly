\include "articulate.ly"

\header {
  dedication = "Für den DA!Chor Darmstadt"
  title = "Das Publikum war heute wieder wundervoll"
  subtitle = \markup \italic "Schlusslied der Fernsehserie \"Mein Name ist Hase\" (1970)"
  poet = "T: Sigfried Rabe"
  composer = "M: Fred Strittmatter & Quirin Amper jr."
  arranger = "arr: Hans S. 2019"
}

\paper {
  #(set-paper-size "a4landscape")
}

global = {
  \key bes \major
  \time 4/4
  \tempo 4=144
  \partial 4

}

soprano = \relative c' {
  \global
  f4-\tweak X-offset #-5 \mf \shortfermata | g8 f f4~ f8 f e f  | d' d d d d4 r8 bes | f bes a bes g f d f | a2\glissando d,8 r r4 |
  r4 g8-\tweak X-offset #-5 \mp gis a4 r | r4 f8 fis g4 r | r4 r r8 \breathe a-\tweak X-offset #-6 \mf g f | d'4 c b8 \breathe g fis g | c8 c c4 r2 |
  r r8 bes-\tweak X-offset #-4 \f a g | f4 fis g8 g a f | bes4 \glissando \melisma fis \glissando bes-.\melismaEnd r | \bar "|."  % Music follows here.

}

alto = \relative c' {
  \global
  cis4-\tweak X-offset #-5 \mp\shortfermata | d8 d d4~d8 d cis d | f8 f f f e4 (es) |
  d2 r8 d4.-> | f2\glissando a,8 r8 r4 | r es'8 es es4 r |
  r4 r8 c b8 \breathe g'^\mf g gis | a a a4 r8 c,-\tweak X-offset #-5 \mp b c | f4 fis g8 r r4 |
  r8\< e4\! \breathe e8 es8 \breathe bes'^\mf a bes | d d d4 r8 d,-\tweak X-offset #-4 \f es e |
  c4 c bes8 b c d | f4 \glissando \melisma e \glissando f-. \melismaEnd r

}

tenor = \relative g {
  \global
  a4-\tweak X-offset #-5 \mp \shortfermata | f8 f f4~ f8 f g f | bes bes a a g4 ( ges) |
  f2 r8 a4.-> | b2\glissando f8 \breathe g-\tweak X-offset #-4 \mf fis g |
  c8 c c4\glissando f,4 r4 | r8 bes-\tweak X-offset #-5 \mp a as g4  r4 | r4 r8 b c \breathe  f,  g a | bes4 c d8 r r4 |
  r8\< bes4\! \breathe bes8 a8 r r4 | f4. fis8 g \breathe d'^\f c bes | a4 as g8 f e es | d4 \glissando \melisma cis' \glissando d-.\melismaEnd r4 |

}


bass = \relative c {
  \global
  f4-\tweak X-offset #-5 \mf \shortfermata bes, -!^\markup \italic "quasi pizz." bes-! a-! a-! g-! g-! f-! f8.-! a16-! bes4-! bes-! c-! cis-! d8.-! d16-! c4-! b4-! g4-!
  r c8-! c-! ces4-! \breathe a8-\tweak X-offset #-3 \f bes d8 d d4 \glissando g,8 r c8-!-\tweak X-offset #-6 \mf e-! |
  f8-! f-! e-! e-! es4-! cis-! | d4-! as'\( g-.\) des \(c-. \) e \( f8 \) es-! d-! c-! bes4-! as?-! g8-! \breathe g^\f c c f4 e es8 d c ces
  bes2\glissando bes'4-. \xNote bes,,^\markup \italic "solo"

}

greenText = \override LyricText.color = #darkgreen
noGreenText = \revert LyricText.color

sopranoVerse = \lyricmode {
  \greenText
  Das Pub -- li -- kum war heu -- te wie -- der wun -- der -- voll,
  und trau -- rig klingt der Schluss -- ak -- kord in Moll. __ _
  \noGreenText  Dan -- ke -- schön! Au re -- voir!
  \greenText
  Denn  et -- was Schau muss sein-
  und heisst es Büh -- ne frei,
  die Schau muß wei -- ter -- gehn, auf Wie -- der -- sehn! __ _

}

altoVerse = \lyricmode {
  Das Pub -- li -- kum war heu -- te wie -- der wun -- der -- voll,
  ow uwh Moll. __ _  Dan -- ke -- schön! Bye bye! \greenText Schaun Sie mal wie -- der rein, \noGreenText
  Denn et -- was Schau muss sein-
  Uh!
  Ta -- da!
  \greenText Dann sind Sie mit da -- bei, \noGreenText die Schau muß wei -- ter -- gehn, auf Wie -- der -- sehn! __ _
}

tenorVerse = \lyricmode {
  Das Pub -- li -- kum war heu -- te wie -- der wun -- der -- voll,
  ow uwh Moll. __ _
  \greenText Wir sa -- gen Dan -- ke -- schön! __ _ \noGreenText Auf Wie- -- der -- sehn! Bis bald!
  Denn  et -- was Schau muss sein-
  Uh!
  Ta -- da! Mit da -- bei!
  Die Schau muß wei -- ter -- gehn, auf Wie -- der -- sehn! __ _
}

bassVerse = \lyricmode {
  % Lyrics follow here.
  Das Pu -- bli -- kum war wun -- der -- voll, un -- d' trau -- rig klingt das Moll und wir sa -- gen
  Dan -- ke -- schön
  \greenText und auf Wie -- der -- sehn, __ _ \revert LyricText.color Schau mal wie -- der rein, bis bald! Denn Schau muss sein-
  und Büh -- ne frei, dann sind Sie mit da -- bei!
  Die Schau muß wei -- ter -- gehn, auf Wie -- der -- sehn! __ _  Tschüss!
}

pianoChords = \chords {
  \germanChords
  \override ChordName #'font-size = #-2
  f4:7.5+ | bes2 bes:/a | bes:/g bes4:7/f f:7.9 | bes2 c4:min a:7.5+/cis | d2:min6 g:7/b | c4:m7.5- c:7 f2:7.5-/ces |
  bes4:/d d:7.5- g:7 c:7 | f f:/e f:7/es a:9+.13-/cis | bes4:/d d:7.5-/as g g:7.5-/des | c2:7.5- f:7 |
  bes4 d:7.5-/as g:m7 c:7 | f d:7.5-/e es8 g:7/d c:7 f:7.5-/ces | bes4 fis:7/ais bes
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-3
  \override StaffSymbol.staff-space = #(magstep -3)
  \override StaffSymbol.thickness = #(magstep -3)
  \override StaffSymbol #'staff-space = #(magstep -1)
  instrumentName = "Korrepetitor"
} <<
  \new ChordNames \pianoChords
  \new Staff \with {
    \consists "Mark_engraver"
    \remove "Glissando_engraver"
    \consists "Metronome_mark_engraver"
    \consists "Merge_rests_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \new Voice \with { \remove "Dynamic_engraver" \remove "Glissando_engraver" \remove "Slur_engraver" } { \voiceOne \soprano }
      \new Voice \with { \remove "Dynamic_engraver" \remove "Glissando_engraver" } { \voiceTwo \alto }
    >>
  }
  \new Staff \with {
    \consists "Merge_rests_engraver"
    \remove "Staff_performer"
    \remove "Glissando_engraver"
    \remove "Dynamic_engraver"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \new Voice \with { \remove "Dynamic_engraver" \remove "Glissando_engraver" } { \voiceOne \tenor }
      \new Voice \with { \remove "Dynamic_engraver" \remove "Glissando_engraver" \remove "Text_engraver" } { \voiceTwo \bass }
    >>
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new ChoirStaff \with { \autoBeamOff \override Glissando.style = #'trill } <<
      \new Staff \with {
        midiInstrument = "electric piano 1"
        instrumentName = "Soprano"
      } \new Voice = "soprano" \soprano
      \new Lyrics \lyricsto "soprano" \sopranoVerse
      \new Staff \with {
        midiInstrument = "electric piano 1"
        instrumentName = "Alto"
      } \new Voice = "alto" \alto
      \new Lyrics \lyricsto "alto" \altoVerse
      \new Staff = "tt" \with {
        midiInstrument = "electric piano 1"
        instrumentName = "Tenor"
      } {
        \clef "treble_8"
        \new Voice = "tenor" \tenor
      }
      \new Lyrics \lyricsto "tenor" \tenorVerse
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
        instrumentName = "Bass"
      } {
        \clef bass
        \new Voice = "bass" \bass
      }
      \new Lyrics \lyricsto "bass" \bassVerse
    >>
    \pianoReduction
  >>
  \layout { }
}

\score {
  \articulate
  \new ChoirStaff  <<
    \new Staff \with { midiInstrument = "electric piano 1" } \new Voice \soprano
    \new Staff \with { midiInstrument = "electric piano 1" } \new Voice \alto
    \new Staff \with { midiInstrument = "electric piano 1" } { \clef "treble_8" \new Voice  \tenor }
    \new Staff \with { midiInstrument = "electric bass (finger)" } <<
      \new Voice \bass 
      \new Voice \transpose c c, \bass 
    >>
  >>
  \midi { }
}