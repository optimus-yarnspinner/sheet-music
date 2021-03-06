  \header {
    title = "Sonata in D major"
    subsubtitle = \markup \center-column { "for Violin & continuo"
					"transcription for organ à 2 manuals & pedals" }
	piece = 	\markup \column { "II: solo" "I: flute 8'" "P: flute 16', P-I " }
    composer = "G. F. Händel (1685 - 1759)"     
    arranger = "arr. some amateur"
	opus = "HWV 371"
    copyright = "copyleft 2018"
  }

\paper {
  #(set-paper-size "a4landscape")
  system-count = #8
}

global = {\key d \major}

soloMusic = {
    r8 d-- fis-- a-- e'2~ | e8 a,-- d-- fis-- b8. (a16) g16. fis32 e16. (d32) |
    cis16.\prall (b32) a8 r16 a' a16.\trill (g64 a) b16. (cis,32) d16. (a32) g'8.\trill ( fis16 )|
    fis4 r16 fis g16.-. (a32-.) e16.-. (fis32-.) g16.-. (a32-.) d,16.-. (fis32-.) g16.-. (a32-.) |
    cis,8 e ~ e16. d32 cis16 ( \appoggiatura b a16) \appoggiatura g fis4
    gis'8 \(fis32 (e) d (cis)\) | \appoggiatura b16 a4 b'8 \(a32 (gis) fis (e)\) cis8\trill e cis'4~ |
    cis8 a32. (gis64 a32 b) cis4 ~ (cis16. [fis,32]) fis\trill (e fis16) d'8. 
    \appoggiatura cis16 b | gis16.\trill (e32) b'8~ b16 e, 
    d16.\trill (cis32) d16. (b'32) cis,16.\trill (b32) cis16. (a'32) b,16.\trill (a32) 
    gis16 e d'8~(d16. e,32-.) b'16.-. (d32-.) cis16 (a') fis (e32 d) cis8 [ \grace {a16 ^\( b cis} b16.\trill a32] \)|
    a4 r r2 | R1 | r8 a,-- cis-- e-- b'2 ~| b8 e,-- a-- cis-- fis8. (e16) d16. cis32 b16.-. (a32-.) |
    gis16.-.\trill (fis32-.) e8 gis'4~ gis8 b,~b16 b' a16.\trill\prall-. (gis32-.) |
    a8 cis, e4~(e16 g) fis16. e32 cis'8. (e,16) | d8 d'16.-. (cis32-.) b4 ~
    (b16. [a32 ]) g (fis e16) d8 cis16.\trill (b32) | b8 d16.( cis32)
    cis8 e16. (d32) d8. (e64 fis g32) e8.\prall (fis16) | fis8. cis'16 
    d8  \tuplet 3/2 {cis16--( b-- ais--)} b8 fis ~ \(fis dis16. (e32)\) |
    e8. (b'16) d,8.\prall (cis16) cis8. (a'16) g8.\prall (fis16) |
	fis8 d,-- [fis-- a--] c4~ c16 a' (fis d ) |
    b8 g-- [b-- d-- ] b'8. (a16) g16. fis32 e16.-. (d32-.) | cis8 a-- [cis-- e--]
    cis'8. (b16) a16. g32 fis16.-. (e32-.) | d16.-.\prall (cis32-.) d8 r d g4. fis16 e |
    fis4. e16 d cis8 d r g, | fis8. (e16) e8.\trill (d16) d8. a'16 gis16. (b32) d8 |
    r16 b' cis16. d32 << {gis,8. a16 a2\fermata} \\ {d,4 cis2} >>
    }

continuoMusicOne = \relative c { \global \clef bass 
    s4 d'8 fis \clef violin g4. a8 a4. <d, a'>8 g8 fis g16. [a32] b16. g32 |
    a4 a g8 a b16. d32 cis8 | <fis, a d>8 c'16\rest <cis e>\turn <a fis'>8 <fis d'> a8 a4 g8 |
    a4. cis8~ cis d4 e8 ~ | e8 d32 cis b a b4 a r8 e' | cis4 a~ a8 b4 cis16 d | 
	<gis, b e>8 d'16. cis32 <b d>8 a b a16. gis32 a8 gis16. fis32 |
	e8 b'16. a32 b4 a8 a4 gis8 | a8 a [cis e] cis'2 ~ cis8
	fis,, [b d] ~ d16. e32 cis16. d32 <a cis>8 <gis b>\trill \once \stemDown <cis, e a>4
	b'\rest <d, fis>4 e8 fis16. gis32 ~ gis8 a16 gis a8 <e a> a4. r8|
	r4 b4 r4 r8 b | a4 s8 g g (fis) r <fis cis'> | cis'16 (b8) b16~ b8. a16 g16 a b4 ais8 |
	b4 a\rest b8\rest fis8 g b | ais4 b8\rest e d \tuplet 3/2 {cis16 b ais} b8 a
	b8 b16 cis d8 b cis8 a b a | a4 b\rest b8\rest fis16. g32 a16. [b32] <fis c'>16 <g b>32 <fis a> |
	g4 b\rest b8\rest d, g16. a32 b16. g32 | a4 b\rest b8\rest  
	fis16. g32 a16. b32 cis8 ~ | cis( b) fis'4~ fis8 e16 d e4 ~ | e8 d16 cis b4 a8 a g16 fis <e a>8 |
	a8 b e, a a4 (gis) | g8 a b4\fermata a2\fermata
    }
continuoMusicTwo = \relative c {
    <fis a d>4 a4 b8 e16. [d32] 
    << { e4 ~ \stemDown e8 d16. cis32 d8} \\ {e8 cis s4.} >> s8 
    d4 d8.. e32 ~ | e8 cis16. d64 e d4 ~ d8 d4 e8 s2 e4 fis8 d | e16. d32 cis16. b32 a8 e' ~ e16 fis8. gis4 | 
    fis4 e8. fis32 gis e4. a32. gis64 a32 b | a8 fis~fis fis32. e64 fis32 g? fis2 | 
	s8 a e8. fis16 gis8 r4 d8 | b4 e ~ e16 [cis] d e32 fis e8 e32 d cis d |
	cis8 r8
	<<  { \voiceTwo <e a>8 <cis gis'> \voiceOne
		  \once \override Stem #'length = #5 a'8 cis4 
		  \once \override Stem #'length = #5 e32 d cis b s8 
		  \voiceTwo fis4 g8\rest <e gis>16. <e b'>32 <e a>16. <fis a>32 e4 } \\
		{ \voiceFour s4 fis a8 e <fis a>8 r8 d8. e32 fis s4 } >>
	s2 r8 b,16. a32 b4 | e4. s8 d cis d16. e32 fis16. d32 |
	b4 d8 fis16. eis32 eis8 eis16. fis32 gis8 eis <cis fis>4 r8
	e16 d cis4 s8 s fis4 d16 e fis8 e4 << {\voiceFour fis4} \\ {\voiceTwo d8 e}  >> |
	<d fis>4 s4. d8 e4 | cis4 s8 ais' fis8. e16 d8 fis |
	e8 e4 e8 ~ e fis << {\voiceFour g4 } \\ {\voiceTwo d8 e} >> |
	fis4 s4. s8 d4  | d4 s4. b4 e8 | e4 s4. cis4 fis8 | <d fis>4
	b8 d <g b>4 <g cis> | <fis a> d e8 d d s |  d8 d4 cis8 d2 |
	e2 e2
    }

bassMusic = { 
    d2 ~ d8 cis16. b32 cis8 a | fis'4. d8 g a b g | a4 fis g8 fis e a |
    d, a' d d, cis cis' b b, | a4 cis8 a' d, b' e, cis' |
    fis, d' gis, e' a, cis a e | fis a fis cis d d' b d, |
    e8. fis16 gis8 a b e, a d, | e fis gis gis, a d e e, |
    a cis' a e fis a fis cis | d d' b gis e16. gis 32 a16. d,32 e8 e, |
    a4 a'~ a8 gis16. fis32 gis8 e | cis4. a8 d e fis d | 
    e gis b d, cis gis' eis cis | fis4 r8 cis ais4 r8 ais' |
    b fis g d e g fis fis, | b4 r r8 b' g g, | fis4 r8 cis'' d ais b fis|
    g g, gis gis'  a fis b cis | d4 r r8 a fis d | g4 r r8 g e g |
    a4 r r8 a fis a | b b, d b e e' a, cis | d d, g b a fis b, cis |
    d g, a a' b2 | e, a, \bar "|."}

numbers = \figuremode { 
    <_>2 <4 2>4 <6> | <7> <6>8 <_> <_> <6 _! > <6> <6> |
    <_>4 <6> <_>8 <6> <7> <_> | <_>2 <6>4 <5> | 
    <_> <6> <_> <_+> | <6> <6>8 <_+> <_>4. <6>8 |
    <_>2 <7>8 <6> <_>4 | <_+>2 <6/> | <_+>8  <6> <6>4 <_>2 |
    <_>4. <6>8 <_>4. <6>8 | <_>4 <5> <_+> <4>8 <_+> |
    <_>2 <4 2>4 <6> | <7> <6>8 <_>4. <6>4 |
    <_+> <6> <_> <6>8 <_+> | <_>4. <_+>8<7> <6>4. |
    <_>4. <6> <6 4>8 <5 _+> | <_>2. <6>4 | <_+>4. <6>8 <6> <6> <_> <6/> |
    <6>4 <5> <_> <6>8 <6 5> | <_>2 <_>8 <_!> <6>4 |
    <_>2.. <6>8 | <_>2.. <6>8 | <_>2. <7>4 |
    <_> <7> <_> <6>8 <6 5> | <_>4 <4>8 <3> <7>4 <6/> |
    <_+>2 <_>
    }

\score { 
<<
    \new GrandStaff <<
        \new Staff \with { midiInstrument = "oboe" } \relative c' { \global \soloMusic }
        \new Staff \with { midiInstrument = "flute" } <<
            \new Voice { \voiceOne \continuoMusicOne }
            \new Voice { \voiceTwo \continuoMusicTwo }
        >>        
    >>
	\new Staff \with { midiInstrument = "flute" } \relative c { \global \clef bass \bassMusic }
    \new FiguredBass { \numbers }
>>
    \layout{  
		#(layout-set-staff-size 17) 
		indent = #0
	} 
	\midi{ \tempo 4=32}
}