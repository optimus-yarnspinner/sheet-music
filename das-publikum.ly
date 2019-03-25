\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

sopMusic = \relative c' {
  f4 | g8. f16 f4~ f8 f e f  | d' d d d d4 r8 bes | f bes a bes g f d f | a2 r8 g fis g | 
  c8 c c4 r a8 bes | d d d4 r8 g, g gis | a a a4 r8 a g f | d'4 c b8 g fis g | c8 c c4 r8 bes a bes | 
  d d d4 r8 bes a g | f4 fis g8 g a f | bes2 r | R1 | R | R  \bar "|."

}
sopWords = \lyricmode {
  Das Pub -- li -- kum war heu -- te wie -- der wun -- der -- voll, 
  und trau -- rig kling der Schluss -- ak -- kord in Moll. 
  Wir sa -- gen Dan -- ke -- schön und Auf Wie -- der -- sehn, 
  schaun Sie mal wie -- der rein, denn  et -- was Schau muss sein- 
  und heißt es Büh -- ne frei, dann sind Sie mit da 
}

mezMusic = \relative c'' {
 % g4 a g g
}
mezWords = \lyricmode {
  hi hi hi hi
}

altoMusic = \relative c' {
%  e4 f d e
}
altoWords =\lyricmode {
  ha ha ha ha
}

tenorMusic = \relative c' {
 % c4 c d c
}
tenorWords = \lyricmode {
  hu hu hu hu
}

bariMusic = \relative c' {
  % g4 a f g
}
bariWords = \lyricmode {
  hu hu hu hu
}


bassMusic = \relative c {
  % c4 c g c
}
bassWords = \lyricmode {
  ho ho ho ho
}

\score {
  <<
    \new ChoirStaff <<
      \new Lyrics = "sopranos" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "mezzos" { \voiceTwo << \global \mezMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics = "altos"
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }

      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "baris" { \voiceTwo << \global \bariMusic >> }        
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
      \context Lyrics = "altos" \lyricsto "altos" \altoWords
      \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
      \context Lyrics = "basses" \lyricsto "basses" \bassWords
    >>
%{    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopMusic >>
        << \global \mezMusic >>       
        << \global \altoMusic >>        
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenorMusic >>
        << \global \bariMusic >>       
        << \global \bassMusic >>
      >>
    >>%}
  >>
  \layout {} \midi { \tempo 4=112 }
}