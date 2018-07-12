\header {
  title = "Short progression"
  composer = "by someone"
}

#(define (addBrackets grob)
  "Place brackets round a text object."
  (let* (
        ; Get current text
      (currentText (ly:grob-property grob 'text))
      (bracketedText (markup "(" currentText ")")))
    ; Store the bracketed text back
    (ly:grob-set-property! grob 'text bracketedText)
  )
  ; and print it
  (ly:text-interface::print grob))

global = { \key cis \minor }
\score {
  \new PianoStaff \with { instrumentName = "ePiano" }
  <<
    \chords { 
      \repeat unfold 2 { cis1:m dis2:m7.5- \once \override ChordNames.ChordName #'stencil = #addBrackets bis:dim7 }}
    \new Staff <<
      \new Voice \relative c'' {
        \global \voiceOne
        \bar ".|:" gis2 gis4 a ~| a2 dis,2 | gis2 gis4 a | fis2 dis4 e \bar ":|."
      }
      \new Voice \relative c' {
        \voiceTwo
        e2 r | <cis dis fis>2 r e1 | <cis dis>2
      }
    >>
    \new Staff  
      \new Voice \relative c {
        \global \clef bass
        cis2 r4 a'4 | fis2 dis4 e | cis2 r | dis dis4 e 
      }
  >>
  \layout {}
}

\score {
  \unfoldRepeats {
  \new PianoStaff \with { midiInstrument = "electric piano 1" }
  <<
    \new Staff <<
      \new Voice \relative c'' {
        \global \voiceOne
        \bar ".|:" gis2 gis4 a ~| a2 dis,2 | gis2 gis4 a | fis2 dis4 e \bar ":|."
      }
      \new Voice \relative c' {
        \voiceTwo
        e2 r | <cis dis fis>2 r e1 | <cis dis>2
      }
    >>
    \new Staff  
      \new Voice \relative c {
        \global \clef bass
        cis2 r4 a'4 | fis2 dis4 e | cis2 r | dis dis4 e 
      }
  >>
  }
  \midi { \tempo 4 = 80 }
}