\version "2.12.3"

%{
  Layout and paper settings for Brielle
%}

\include "brielle.ly"

\new Score <<
  %\new ChordNames \brChords
  \new Staff { \brTimeKey \autoBeamOff \new Voice = "brielleLyrics" \brVoice }
  \new Lyrics \lyricsto "brielleLyrics" \brLyrics
  %{
  \new StaffGroup <<
    \new Staff { \brTimeKey \brGuitar }
    \new TabStaff  { \brTimeKey \transpose c' c \brGuitar }
  >>
  %}
>>

%#(set-global-staff-size 25)
\layout {
}
\paper {
  #(set-paper-size "letter")
}
