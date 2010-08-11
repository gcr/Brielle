%{ Brielle by Sky Sailing -- engraved by gcr
 ,ggggggggggg,                                                   
dP"""88""""""Y8,                           ,dPYb, ,dPYb,         
Yb,  88      `8b                           IP'`Yb IP'`Yb         
 `"  88      ,8P             gg            I8  8I I8  8I         
     88aaaad8P"              ""            I8  8' I8  8'         
     88""""Y8ba   ,gggggg,   gg    ,ggg,   I8 dP  I8 dP   ,ggg,  
     88      `8b  dP""""8I   88   i8" "8i  I8dP   I8dP   i8" "8i 
     88      ,8P ,8'    8I   88   I8, ,8I  I8P    I8P    I8, ,8I 
     88_____,d8',dP     Y8,_,88,_ `YbadP' ,d8b,_ ,d8b,_  `YbadP' 
    88888888P"  8P      `Y88P""Y8888P"Y8888P'"Y888P'"Y88888P"Y888
%}

\version "2.12.3"

%%% { CONFIGURATION
brTimeKey = { \time 6/8 \key g \major }

% Pick which flavor of things you want
% #'preprod or #'release
brVAFlavor   = #'preprod % verse A
brTrFlavor   = #'preprod % transition
brCAFlavor   = #'preprod % chorus
brCBFlavor   = #'preprod
brVBFlavor   = #'preprod % verse B
brCEndFlavor = #'preprod % ending

% slashes -- turn on improvisation (voices need the "Pitch_squash_engraver")
% and hide tab noteheads.
sl = {
  \improvisationOn
  %\override TabNoteHead #'transparent = ##t
  \override TabNoteHead #'stencil = ##f
  % setting no stencil is better but makes warnings
}
nsl = {
  \improvisationOff
  %\revert TabNoteHead #'transparent
  \revert TabNoteHead #'stencil
}
%%% }

%%% { INCLUDES
\include "brielle-chords.ly"
\include "brielle-guitar.ly"
\include "brielle-lyrics.ly"
\include "brielle-voice.ly"
%%% }

\score {<<
  \new ChordNames \brChords

  \new Staff { \brTimeKey \new Voice = "brielleLyrics" \brVoice }
  \new Lyrics \lyricsto "brielleLyrics" \brLyrics

  \new StaffGroup <<
    \new Staff { \brTimeKey \brGuitar }
    \new TabStaff  { \brTimeKey \transpose g' g \brGuitar }
  >>
>>}

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
