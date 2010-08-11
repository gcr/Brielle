\version "2.12.3"

% Layout and paper settings for Brielle

\include "brielle.ly"

\score {<<
  \new ChordNames \brChords

  \new Staff { \brTimeKey \new Voice = "brielleLyrics" \brVoice }
  \new Lyrics \lyricsto "brielleLyrics" \brLyrics

  \new StaffGroup <<
    \new Staff { \brTimeKey \brGuitar }
    \new TabStaff  { \brTimeKey \transpose g' g \brGuitar }
  >>
>>}

%#(set-global-staff-size 25)
\layout {
  % This squashes slashes (set with \sl or \improvisationOn) to be on the same
  % staff line. Applied to every voice.
  \context { \Voice
    \consists "Pitch_squash_engraver"
  }
  % Bigger letters! Default tab staff is _unreadable_
  \context { \TabStaff
    fontSize=#2
    \override StaffSymbol #'staff-space = #1.6 % default 1.5
  }
}
\paper {
  % DEBUG -- this is so I can have Evince open on the right hand side while I
  % work. It's very nice, but not appropriate.
  paper-height = 100\cm
  paper-width = 13\cm
  top-margin = .5\cm
  bottom-margin = .5\cm
  left-margin = .5\cm
  right-margin = .5\cm
  %#(set-paper-size "letter")
}
\header {
  title         = \markup {
    %\override #'(font-name . "URW Chancery L")
    \larger \larger \smallCaps Brielle
  }
  composer   = "Sky Sailing"
  opus          = \markup { \italic { An Airplane Carried Me to Bed } }
  piece      = "Composed by Adam Young"
  tagline       = \markup { \teeny \column {
    \line { All music © 2010 Adam Young. No copyright
      infringement is intended. }
    \line { This document is completely unofficial and is in no way endorsed by
    Adam Young or \italic { Universal Republic.} }
    \line { Transcription by gcr. Engraving by GNU Lilypond -- www.lilypond.org }
  } }
}
