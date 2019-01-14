global = { \key es \major \autoBeamOff }

sMusic = \relative c'' { 
	bes4 g8 [bes] es2 | c4 es bes2 | bes4 es,8 [f] d4 f8 [es] | f2. r4 |
	bes4 g8 [bes] es2 | c4 es bes2 | bes4 f8 [g] as4. d,8 | es2. r4 |
	\repeat volta 2 {c'4 es es2 | d4 c8 [d] es2 | c8[d] es [c] c [bes] g [es] | }
  \alternative {{r4 c'( as f |  g1) |
	| c4 es bes2 | bes4 f8 [g] as4. d,8 | es2. r4 |} 
  {r4 c' (d f | bes,1) s1 s s}}
  r2 bes4 g8 [bes] | es2 c4 es | bes2. r4 | d c bes as g2 \breathe bes4 g8 [bes] | es2 c4 es | d2  c4. as8 | g2. r4 | 
  c4 es es2 | d4 c8 [d] es2 | c8[d] es [c] c [bes] g [es] | r4 as' f d | bes1| c4 es bes2 | bes4 f8 [g] as4. d,8 | es1 ~ | es4 r2.
  \bar "||"
	}
	
aMusic = \relative c' { \repeat unfold 11 {s1}  | f1 | bes4 g8 [bes] es4. d8 s1 s s f,1 | bes4 g8[bes] es4. d8
              c4 es bes2 | bes4 f8 [g] as4. d,8 | es2. r4 | s1 s s | bes'4 as g f | es2 s2 | s1 | bes'2 as4. f8 | es2. r4 |
              s1 s s f2. r4 | bes4 g8 [bes] es4. d8 | }

tMusic = \relative c' { \repeat unfold 8 s1 as4 c c2 | bes4 as8[bes]  c2 | 
						as4 f g es | d1 | g | fis2 g | f1 | es2. r4 | d2~d4. r8 | g1 | fis2 g | f1 | es 
            bes'4 g8 [bes] es2 | c4 es bes2 | bes4 es,8 [f] g4 f8 [es] | f2. r4 |
            bes4 g8 [bes] es2 | c4 es bes2 | bes4 f8 [g] as4. d,8 | es2. r4 |
            as4 c c2 | bes4 as8[bes]  c2 | 
						as4 f g es | d1 | g | fis2 g | f1 | es1~ | es4 r2.}
						
bMusic = \relative c' { \repeat unfold 8 s1 as4 as as2 | g4 es8[f] g2 | es4 c a a | bes1 | 
						es1 ~ | es | bes2 ~ bes4. as8 |  g2. r4  bes2~bes4. r8 | es1 ~ | es | d2 bes4. as8 | g2. r4 | 
            g'4 es8[g] g2 | fis4 fis g2 | g4 es8[f] es4 f8[es] | d2. r4 |
            g4 es8[g] g2 | fis4 fis g2 | bes,4 bes bes4. bes8 | es2. r4 |
            as4 as as2 | g4 es8[f] g2 | es4 c a a | bes1 | 
						es1 ~ | es | d2 c4. as8 | g1 ~ | g4 r2
            }						

\score {
    \new StaffGroup <<
        \new Staff <<
            \new Voice \relative c'' { \global \voiceOne \sMusic }
            \new Voice \relative a' { \global \voiceTwo \aMusic }
        >>
        \new Staff <<
            \new Voice \relative c' { \global \clef bass \voiceOne \tMusic }
            \new Voice \relative c { \global \voiceTwo \bMusic }
        >>
    >>
    \layout{} \midi{}
}