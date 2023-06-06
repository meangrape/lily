\version "2.24.1"

\include "articulate.ly"

#(set-global-staff-size 30)

dreidel = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    \unfoldRepeats {
      r2. d4\downbow | a' a b b | c4 a2 c4 | d\upbow d c b | b2. d4
      | b b c c | d\upbow b2 e4 | e4.\upbow d8 c4 b | a2. c4 \section
      %\break \bar "[|:" f d f d | f d2 g4 | g g f d | c2. c4 | b e b e | b e2 b4 |
      \break \bar "[|:" b d b d | b g2 c4 | c c b c | fis2. fis4 | d a d a | e a2 e4 |
      %a4. g8 f4 g | a1 \bar ":|]" a4. g8 f4 g | a1 \bar "|."
      d4. a8 b4 a | d1 \bar ":|]" d4. b8 c4 b | d1 \bar "|."
    }
  }
}

\book {
  \header {
    tagline = #f
  }
  \markup "Dreidel"
  \score {
      \new Staff \dreidel
    }
}

