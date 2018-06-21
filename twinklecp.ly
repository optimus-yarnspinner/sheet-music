%%%% The stylesheet for lilyjazz music font and lilyjazz-text font
%%%% Copyright (C) 2014 Abraham Lee (tisimst.lilypond@gmail.com)

\version "2.18.2"

\paper {
  #`(define fonts
    (set-global-fonts
    #:music "lilyjazz"
    #:brace "lilyjazz"
    #:roman "lilyjazz-text"
    #:sans "lilyjazz-chord"
    #:factor (/ staff-height pt 20)
  ))
}

\layout {
  \override Staff.Tie.thickness = #3
  \override Staff.Slur.thickness = #3
  \override Staff.PhrasingSlur.thickness = #3
  \override Score.Hairpin.thickness = #2
  \override Score.Stem.thickness = #2
  \override Score.TupletBracket.thickness = #2
  \override Score.VoltaBracket.thickness = #2
  \override Staff.BarLine.hair-thickness = #2
  \override Staff.BarLine.thick-thickness = #4
  \override Staff.MultiMeasureRest.hair-thickness = #3
  \override Staff.MultiMeasureRestNumber.font-size = #2
  \override LyricHyphen.thickness = #3
  \override LyricExtender.thickness = #3
  \override PianoPedalBracket.thickness = #2
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Start with a repeat Barline
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

showStartRepeatBar = { 
  \once \override Score.BreakAlignment.break-align-orders =
        #(make-vector 3 '(instrument-name
                          left-edge
                          ambitus
                          breathing-sign
                          clef
                          key-signature
                          time-signature
                          staff-bar
                          custos))
      \once \override Staff.TimeSignature.space-alist =
        #'((first-note . (fixed-space . 2.0))
           (right-edge . (extra-space . 0.5))
           ;; free up some space between time signature
           ;; and repeat bar line
           (staff-bar . (extra-space . 1)))
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creating jazz-style repeats
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=> http://lsr.di.unimi.it/LSR/Item?id=753
#(define (white-under grob) (grob-interpret-markup grob 
  (markup #:vcenter #:whiteout #:pad-x 1 (ly:grob-property grob 'text))))

inlineMMR = {
  \once \override MultiMeasureRest.layer = #-2
  \once \override MultiMeasureRestNumber.layer = #-1
  \once \override MultiMeasureRestNumber.Y-offset = #0
  \once \override MultiMeasureRestNumber.stencil = #white-under
  \once \override MultiMeasureRest.rotation = #'(2 0 0)
}
%%%%%%%%%%%%%% my stuff %%%%%%%%%%%%%%%%%%

\include "articulate.ly"
\header {
	title = "Twinkle Twinkle Zimbelstar" 
	subtitle = "twinkle twinkle twinkle twinkle" 
 }

global = { 
	\key f \major
	\mergeDifferentlyDottedOn
	\tempo 4 = 66
}

sopranoMusic = \relative c' { 
	f4 f c' c | d d c2 | bes4 bes a a | g g f2 |
	c'4 c bes bes | a4 a g2 | 
	\repeat unfold 4 {c16 d}  \repeat unfold 4 {bes c} | 
	\repeat unfold 2 {a bes} a c bes a g2 | 
	f4 f c' c | d d c2 | bes4 bes a a | g g f2 | \bar "|." }
	
altoMusic = \relative c' {
	 c4 r8 c c16 d e8 f e | f4. e16 d e4. d16 c | d4. f16 e f4. f8~ | f f4 e8 f8. e16 f g a bes ~|
	 bes4 ~bes16 bes a8~a4~a16 as g8 ~ | g4. fis8 g f e16 f g c, |
	 \repeat unfold 4 {a' bes} \repeat unfold 4 {g a} | 
	 \repeat unfold 2 {f g} f a g f ~ f g f g e g e g | 
	 f4 r16 d f d c a' [f a] g8 a | r16 f g f e g bes g a4 r16 g a f ~|
	 f bes a g~g e f e~e e a g f f e d ~ | d8 f4 e8 f2
}

tenorMusic = \relative c' {
	 a16 bes c8 r8 a8 g4 a16 bes c8 ~ | c bes16 a bes4 ~ bes8 a16 g a4 ~ | 
	 a8 g16 f g4 f8 a d16 c bes a | bes8 d c8. bes16 a d c bes a \clef G c f g ~ |
	 g4 f8. g16f4 es8. f16 | es4 d4. d8 c16 d e8 | f16 f8 f16~f16 g [fis d] r g8 d16~d f [e c] | 
	 r16 c8 e8 f8 d16~ d8 c4 bes8 | r16 a c a d bes [d bes] a4 r16 e' f e | 
	 f bes, [d bes] g'4 r16 c, f d  e e [f es] | 
	 d g f g e c bes c~c cis d e f a, g a  | bes c d8 c8. bes16 a2
 
}

bassMusic = \relative c {
	 f16 g a8 g f e c f16 g a8 | d,4 r16 g, a bes c4 r16 f, g a |
	 bes4 r16 e d cis d8 e f d | g bes, c4 f r |
	 e16 d e c f8. c16 d c d bes es8. bes16 | c bes c a d8. a16 bes16 a bes g c8 c, |
	 f a d c bes g c e, f g a bes c4 c, | r16 f a f bes4 r16 f a f c' bes [a c] |
	 bes4 r16 e g e f f [a f] c'8 a | bes16 g a bes c c, d e f a b cis d d, e fis |
	 \set Score.tempoHideNote = ##t  g a  	
	 \tempo 4 = 60 bes g 
	 \tempo 4 = 50 c8 
	 \tempo 4 = 38 c,
	 \tempo 4 = 28 f2	 
}

\score{
	\new StaffGroup <<
		\new Staff \with { 
			instrumentName = #"Twinkle "
  			shortInstrumentName = #"Tw. " } 
			\new Voice { \global \sopranoMusic }
		\new Staff \with { 
			instrumentName = #"Twinkle "
  			shortInstrumentName = #"Tw. " }  \new Voice { \global \altoMusic }
		\new Staff \with { 
			instrumentName = #"Little "
  			shortInstrumentName = #"Lt. " }  \new Voice { \global \clef "bass" \tenorMusic }
		\new Staff \with { 
			instrumentName = #"Star "
  			shortInstrumentName = #"St. " }  \new Voice { \global \clef "bass" \bassMusic }
	>>

	\layout{
		#(layout-set-staff-size 16)
	}
}
\score{
	\new StaffGroup <<
		\new Staff \with {
			midiInstrument = "soprano sax" 
			midiMaximumVolume = 0.9 } 
			\new Voice { \global \sopranoMusic }
		\new Staff \with {
			midiInstrument = "celesta" 
			midiMaximumVolume = 0.7 } 
			\new Voice { \global \transpose c c' {\sopranoMusic }}
		\new Staff \with {
			midiInstrument = "recorder" 
			midiMaximumVolume = 0.7 }
			\new Voice { \global \altoMusic }
		\new Staff \with { 
			midiInstrument = "flute"
			midiMaximumVolume = 0.6 }
			\new Voice { \global \clef "bass" \tenorMusic }
		\new Staff \with { 
			midiInstrument = "electric guitar (clean)"
			midiMaximumVolume = 0.4 } 
			\new Voice { \global \altoMusic }
		\new Staff \with { 
			midiInstrument = "electric guitar (electric)"
			midiMaximumVolume = 0.5 }
			\new Voice { \global \clef "bass" \tenorMusic }
		\new Staff \with { 
			midiInstrument = "harpsichord" 
			midiMaximumVolume = 0.6}
			\new Voice { \global \clef "bass" \bassMusic }
		\new Staff \with { 
			midiInstrument = "string ensemble 1"
			midiMaximumVolume = 0.9} \new Voice { \global \clef "bass" \bassMusic }
	>>

	\midi{	}
}

