\version "2.24.1"

#(set-global-staff-size 30)

\header { tagline = ##f }

\book {
  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key c \major
          \time 4/4
          \omit Score.BarNumber
          e g r a | cis c r e | g r b b | g e e g \bar ":|"
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key f \major
          \time 4/4
          \omit Score.BarNumber
          r r r r | r r d r | a d a fis | c fis fis g \bar ":|"
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key f \major
          \time 4/4
          \omit Score.BarNumber
          r b fis fis | d cis e e | r e cis cis | a fis a c \bar ":|"
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key f \major
          \time 4/4
          \omit Score.BarNumber
          a d cis c | e d r d | r d c fis | r c c r \bar "|."
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key d \major
          \time 4/4
          \omit Score.BarNumber
          cis fis g fis | r d g cis | r d c c | fis e fis d \bar ":|"
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key d \major
          \time 4/4
          \omit Score.BarNumber
          a b a d | c cis e e | b r fis a | b a b cis \bar ":|"
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key f \major
          \time 4/4
          \omit Score.BarNumber
          r cis g b | g b c d | d r fis cis | c r a g \bar ":|"
      }
    }
  }

  \score {
    \relative {
      \new Staff
      {
          \clef bass
          \key g \major
          \time 4/4
          \omit Score.BarNumber
          g a d r | r r r a | e r c e | d c r cis \bar ":|"
      }
    }
  }

  \layout {}
}

\paper {
indent = #0
print-page-number = ##f
}