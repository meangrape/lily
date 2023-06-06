\version "2.24.1"

#(set-global-staff-size 30)

morning = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
      g\upbow g fis d | g g fis d | e e fis fis | g g g r \bar ":|."
  }
}

good_king_wenceslas = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    \omit Tuplet.TupletNumber
    g4^\markup { \tiny \italic pizz. } g \tupletDown \tuplet 4/4 { g a | g4 } g d r |
    e4 d e fis | g4 r g r \bar ":|."
  }
}

lightly_row = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    \omit Tuplet.TupletNumber
    a\upbow  fis fis r | g e e r | d e \tupletDown \tuplet 4/4 { fis
    g | a a a r | a fis } fis r | g4 e e r | d fis a a | d, r r r \bar "|."
  }
}

carribean_island = {
  \relative {
    \clef bass
    \key d \major
    \time 4/4
    \omit Tuplet.TupletNumber
    d'^\markup { \tiny \italic pizz. } d d r | cis \tupletDown \tuplet 4/4 { cis
    cis r | d } d cis cis | \tupletDown \tuplet 3/3 { d cis d } r \bar "|."
  }
}

olympic_high_jump = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    \omit Tuplet.TupletNumber
    d'\upbow \tupletDown \tuplet 4/4 { d d, d | d' } d cis r | d \tupletDown
    \tuplet 4/4 {  d d, d | d' } cis d r \bar ":|."
  }
}

natalies_rose = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    \omit Tuplet.TupletNumber
    d4^\markup { \tiny \italic pizz. } d e g | \tupletDown \tuplet 4/4 { fis4
    g a r | fis4 } fis g a | b4 b a r | fis4 \tupletDown \tuplet 4/4
    { g a r | g4 } a b r | a4 a b cis | \tupletDown \tuplet 4/4 { d4 d, d' } r \bar "|."
  }
}

mozart_melody = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    \omit Tuplet.TupletNumber
    d4^\markup { \tiny \italic pizz. } d a' a | b4 b a r | g4 g fis fis | e4
    e d r | a'4 a g g | fis4 fis \tupletDown \tuplet 4/4 { e r | a4 a g g | fis4
    fis e } r | d4 d a' a | b4 b a r | g4 g fis fis | e4 e d r \bar "|."
  }
}

\book {
  \header {
    tagline = #f
  }
  \markup "Morning Dance"
  \score {
      \new Staff \morning
  }

  \markup "Good King Wenceslas"
  \score {
    \new Staff \good_king_wenceslas
  }

  \markup "Lightly Row"
  \score {
    \new Staff \lightly_row
  }

  \markup "Carribean Island"
  \score {
    \new Staff \carribean_island
  }

  \markup "Olympic High Jump"
  \score {
    \new Staff \olympic_high_jump
  }

  \markup "Natalie's Rose"
  \score {
    \new Staff \natalies_rose
  }

  \markup "Mozart Melody"
  \score {
    \new Staff \mozart_melody
  }
}
