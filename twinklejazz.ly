\version "2.18.2"
\include "articulate.ly"
dodososo = {c\< c g' g\! a a g2 f4 f\> e e d d\! }

music = 
  <<
    \new Staff = "up" \with {
      midiInstrument = "celesta" 
	}
    \new Voice \relative c' { 
      \tempo 4 = 80
      \dodososo c2
      g'4\p g f f e e d2
	  g4\f g f f e e d2
      \dodososo c2\fermata \bar "|."
    }
	\new PianoStaff <<
    \new Staff = "up" \with {
      midiInstrument = "synth voice" 
      midiMinimumVolume = #0.3
      midiMaximumVolume = #0.5
    }
    <<
      \new Voice \relative c'' { 
	   	\voiceOne
		s1 s1 c4 b2 a4 as2 s2 <b d>4 <a c>2 <gis b>4 
		<g bes> a gis2 <d b'>2 <es bes'> <g c> << {bes} \\ {f4 g} >>
		<e a>2 <dis f> ~ f4 ~ f16 es8. d4 c  ~ c4 <b dis> 
		 d << {s4 g1\fermata} \\ 
		 { \override TextSpanner.bound-details.left.text = "rit."
		\once \stemUp cis,4_\startTextSpan c2 d\stopTextSpan } \\ 
		{ \voiceThree s4 s2 c'2\fermata }>> 	
		\bar "|."
      }
	  \new Voice \relative c'' { 
	  	\voiceTwo
        c2 <b c e> <bes d e> <a c d> <as d> <g c> <fis c'>4 <f b> <d e g a>2
        e2 d cis4 <c fis> <b f'> <bes e> 
		\change Staff = "down" \stemUp <e, c'>2 <g d'> <as d> <g c>4
		<f b?> g2 bes <g c> b4 a~a ais  << {b4 bes} \\ {\voiceFour g2} >> <f as>4 <es a>
		<e a>2^\fermata	\bar "|."				  
      }
    >>
    \new Staff = "down" \with {
      midiInstrument = "synth voice" 
      midiMinimumVolume = #0.3
      midiMaximumVolume = #0.5
    }
    \new Voice \relative c { 
		\clef "bass"
        R1 R1 R1 r8. d16 g4 c,4 r
        R1 R1 \stemDown a2 c bes es4 des 
		c2 cis d e4 es d g, a2
		\set Score.tempoHideNote = ##t 
		\tempo 4=70
		bes4 \tempo 4=55
		f \tempo 4=40
		c2 \bar "|."
    }
	>>
  >>
  
\score{
  \music
  \layout{}
}
\score {
  \articulate <<
    \music
  >>
  \midi { }
}