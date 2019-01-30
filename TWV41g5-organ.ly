\header {
  title = "Sonata da chiesa"
  composer = "Georg Philipp Telemann, TWV 41:g5"
}
global = { \key d \minor \time 6/4 \tempo "Vivace" }

rightOne = { \global 
  b\rest g8 fis g a bes a bes c d bes | es2. d ~ | d4 c8 bes a g fis a d c bes a |
  bes d g4 g g f8 e f d | e4 a, r r d8 cis d e |  f e f g a f bes2. | a ~ a4 g8 f e d |
  cis e a g f e f4 f2 ~| f8 d g f es d es4 es2 ~ | es8 c f es d c d bes a bes f bes |
  es bes a bes es, bes' f' bes, a bes d,\arpeggio f' | g f es d c bes a g f4 r | r bes8 a bes c d c d es f d | g2. f ~ |
  f4 es8 f d es f es f g a f | bes a g a f g a bes a g f es | d c d a bes4. es8 c4. bes8 |
  bes f' d f c f d4 bes a | bes8 c d es f d es4 c b | c8 g' es g d g es4 c b | r4 c8 b c d es d es f g es | 
  as2. g ~ | g4 f8 es d c b f' es d es4 ~ | es8 f d4. c8 c g c bes a g | a c f es d c d f bes4 bes | 
  bes a  r bes,8 d g4 g | g fis r g,8 bes es4 es |
  es d r r g,8 fis g a |
  bes a bes c d bes es2. | d ~ d4 c8 bes a g |
  fis c' bes a bes4. c8 a4. g8 | g d' bes d a d bes d es d c bes | c f d f c f d f g f es d |
  e a f a e a f a bes a g fis | g4 g2. f2 ~ | f4 es2. d2 ~| d4 c8 bes a g fis4 a8. (bes16) a4 | 
  r4 bes8. (c16) bes4 r4 c8. (d16) c4 | r4 bes8. (a16) bes4 r8 a d c bes a | bes d g f es d es4 g, c~ | 
  c bes8 a bes4. c8 a4.\trill g8| g2. bes\rest \bar "|."
}

leftTwo = { \global
  g2. r | d'4\rest g8 fis g a bes a bes c d bes | es2. d | d,4\rest bes'8 a bes g a4 d d | d cis8 b cis a bes2.|
  a d,4\rest d8 cis d e | f e f g a f bes2. | a d, | g c, | f bes,2 d4\rest | c2 r4 d2 r4 | es\arpeggio f g f4. g8 f es |
  d c bes4 r d2.\rest | r4 bes8 a bes c d c d es f d | g2. f2. ~ | f4  e8 f d e f e f g a f | bes4 f g es f f, | 
  bes r a bes d c | d bes b c8 d es f g d | es4 c b c es d | es c r r2. | d4\rest c8 b c d es d es f g es |
  as2. g | f4 g g, c e! c | f a f bes,2 r4 | c4 f8 es d c d4 bes r | a4 d8 c bes a bes4 g'8 fis g a |
  bes  a bes c d bes es2. | d ~ d4 c8 bes a g | fis4 f8 e f d es2. | d2 g4 c, d d, |
  g g' fis g g, g' | a bes a bes bes, b' | cis d cis d d, d' | d,8 \rest bes'8 es d c bes c a d c bes a |
  bes g c bes a g a f bes a g f | es2. d ~ | d ~ d ~| d ~ d4 d fis | g g, b c2. | d2 g4 c, d d, | g2. r
}

numbers = \figuremode { 
  <_>1. <_>4 \bassFigureExtendersOn <6->8 <6-> <6-> <6-> <5>2 <6>4
  <_>2. <_+> <_>4 <6>2 <7 _+>2. <4 2>4 <6>2 <7>4 <6>2 <6\!>1 <6\!>2 | <5>2 <6>4 <7> <6>2 |
  <_+>2. <_>1. <_-\!>2. <_-\!> <_> <7 _-> <6> <_>2 <6->4 <_>2. <6>1. | <_>4 <6>8 <6><6><6><6\!>
  <6><6><6><6\!>4 | <7>4 <6->2 <_>2. | <4 2>4 <6>1 <6\!>4 | <_> <6> <_>1 | <_\!>2 <6>2 <6\!>4 <6\!> |
  <_>2 <6 5>4 <_->4 <6> <_!> | <6> <_-> <6> <_-> <6> <6!> <6> <_->2 <_>2. | 
  <_\!>4 <6->8 <6-> <6-><6-> <5>2. | <7>4 <6>2 <7 _!>4 <6- 4>2 | <_->4 <_!>2 <_->4 <6>2 |
  <_>4 <6>2 <_>2. | <7 _->4 <3>2 <6\!>4 <6\!>2 | <7>4 <_+>2 <6>4 <6->8 <6-> <6-> <6-> | 
  <5>2 <6>4 <7> <6>2 | <6\!>2. <4 2>4 <_->2 | <6 5>4 <4! 2>2 <7>4 <6>2 | <7 _+>2. <_->4 <_+>2 |
  <_>2 <6> <6-> | <6\! 5-> <6\!>2. <6\!>4 | <6\! 5>2 <6\!> <6\!>4 <_+> | <_>8 <_-> <_>2 <6 _->2. |
  \bassFigureExtendersOff <6 5>4 <_->2 <6 5->2. | <7>4 <6>2 <_+>2. | <6 4> <7 _+> | <6 4>1. |
  <_>2. <_-> | <_+> <_-> | 
  
}

pedals = { \global
	<d bes'>2. r | r4 <es' bes'>2 <f bes> f4 |  <g bes>2. r4 a fis | g d'8 c d4 cis a8 g a4 |
	g4 e a~a g2 | <f c'>2. r4 <f bes> g | <f c'>2 q4 <f d'>4 <g d'>2 | 
	<e a>2. <d a'>2 c4 | <bes g'>2. <c g'>2 bes4 | <as f'>2. <bes f'>2 r4 |
}

\score { 
		<<
		\new PianoStaff \with { midiInstrument = "harpsichord" } <<
			\set PianoStaff.connectArpeggios = ##t
			\override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket 
			\new Staff \new Voice \relative c'' { \rightOne }
			\new Staff \new Voice \relative c { \clef bass \leftTwo }       
			\new FiguredBass { \numbers } 
		>>
		\new Staff \new Voice \relative c { % \clef "F^8" 
			\pedals }       
	>>
    \layout{} \midi{ \tempo 2. = 66 }
}