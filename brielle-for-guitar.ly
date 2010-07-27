\version "2.12.3"

%{
  Layout and paper settings for Brielle
%}

\include "brielle.ly"

\score {<<
  %\new ChordNames \brChords
  \new Staff { \brTimeKey \new Voice = "brielleLyrics" \brVoice }
  \new Lyrics \lyricsto "brielleLyrics" \brLyrics
  %{
  \new StaffGroup <<
    \new Staff { \brTimeKey \brGuitar }
    \new TabStaff  { \brTimeKey \transpose c' c \brGuitar }
  >>
  %}
>>}

%#(set-global-staff-size 25)
\layout {
}
\paper {
  #(set-paper-size "letter")
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
#(set-default-paper-size "letter")
