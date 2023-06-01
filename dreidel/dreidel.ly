\version "2.24.1"

#(set-global-staff-size 30)

dreidel = {
  \relative {
    \clef bass
    \time 4/4
      d^\markup { \tiny \italic pizz. } d e e | fis d r fis | a a g fis
      | e r r r | e e fis fis | g e r e | a g fis e | fis r r r | a fis a fis
      | a fis r fis | a a g fis | e r r r | g e g e | g e r e | a g fis
      e | d r r r \bar "|."
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

