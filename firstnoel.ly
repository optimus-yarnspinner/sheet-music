\header {
    title = "First Nowell"
}

\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key c \major
  \time 3/4
  \partial 4
}

sopMusic = \relative c' {
  e8 (d) | c4. (d8) e (f) | g2 a8 (b) | c4 b a | g2 
  a8 b | c4 b a | g a b | c g f | e2
  e8 (d) | c4. (d8) e (f) | g2 a8 (b) | c4 b a | g2 
  a8 b | c4 b a | g (a) b | c (g) f | e2
  e8 (d) | c4. (d8) e (f) | g2 c8 (b) | a2 a4 | g2. 
   | c4 b a | g (a) b | c (g) f | e2
}
sopWords = \lyricmode {
  The first No -- well the an -- gel did say
  was to cer -- tain poor shep -- herds in fields as they lay;
in fields as they lay, kee -- ping their sheep,
on a cold win -- ter's night that was so deep.

No -- well, No -- well, No -- well, No -- well,
Born is the King of Is -- rael. 
}

altoMusic = \relative c' {
  %e4 f d e
}
altoWords =\lyricmode {
  ha ha ha ha
}

tenorMusic = \relative c' {
  %g4 a f g
}
tenorWords = \lyricmode {
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
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
      \context Lyrics = "altos" \lyricsto "altos" \altoWords
      \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
      \context Lyrics = "basses" \lyricsto "basses" \bassWords
    >>
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopMusic >>
        << \global \altoMusic >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenorMusic >>
        << \global \bassMusic >>
      >>
    >>
  >>
}