%{
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

brTimeKey={ \time 6/8 \key g \major }

%%% LYRICS
brLyricsVA=\lyricmode {
  There's a hand--written note
  pressed in the door
  of her screened - in porch
  and I am sail--ing a--way
  recal--ling that day
  miles from shore.

  She was still wear--ing white
  and ro--bin's egg blue;
  her grand--mo--ther's dress!
  and_I left home ear--ly this year
  How I wound up here
  is a--ny--one's guess.
}

brLyricsTr=\lyricmode {
  % Transition
  When the new sites grow old
  and I start to feel cold,
  I'll sail home a--gain! __
}

brLyricsCA=\lyricmode {
  % Chorus
  Good--bye Bri--elle!
  \tag #'preprod { On--ly sea--sons can tell }
  \tag #'release { On--ly whis--pers can tell }
  of the sweet dreams that we knew so well!
  I'll see you a--round
  our dear o--cean town.
}
brLyricsCB=\lyricmode {
  The frozen days that we set a--blaze
  sent me dri--fting a--way!
  Like a but--ter--fly, I floa--ted by,
  \tag #'preprod { and now I'm a--lone. }
  \tag #'release { and now you're a--lone. }
  I wish | I knew when I'll be back again.
}
brLyricsCEndA=\lyricmode {
  So until then, I wish you well,
  my dear Bri--elle!
}

brLyricsVB=\lyricmode {
  % last verse
  Skip--ping o--ver the sand
  and cob--ble--stone paths
  that wind through the trees.

  And_bre--athing the sweet o--cean air
  \tag #'preprod { makes a shy boy aware }
  makes a shy boy aware
  that he could be free!
}

brLyricsCEndB=\lyricmode {
  So until then, I wish you well
  So until then, I wish you well
  For the time being, farewell, my dear Bri--elle!
}

%%% SINGING VOICE
brVoiceIntro = \relative c'' {
  R1.*16 |
  a1
}
brVoiceTr=\relative c'' {
  r4 b g | a b g | a4. d,8 b'4 | a4 g8 b4. | e,4 r e | d d g | g8 ~ a8 ~ a2 |
}

%%% CHORD NAMES
brChordsTr=\chordmode {
  e2.:m
  g:aug
  g
  a
  c
  g
  d
}

%%% GUITAR
brGuitarTr=\relative c' {
  \chordmode {
    e2.:m           % dotted half-note E minor
    g:aug/dis       % G augmented w/ dis on bottom
    g:/d            % G natural w/ D on bottom
    cis:m6-^5       % 1st inverted A alternate: g:5-/des
    c
  }
  <b d g d'>
  <d a' d fis>
  \chordmode {
  }
}


%%%%%%%%%%%%%%%%%%%
% Overall structure
brChords={
  \brChordsTr
}

brVoice={
  \brVoiceIntro
}

brLyrics={
  % Verse 1 and transition
  \brLyricsVA
  \brLyricsTr

  % Chorus
  \brLyricsCA
  \brLyricsCB
  \brLyricsCEndA

  % Verse 2 and transition
  \brLyricsVB
  \brLyricsTr

  % Chorus
  \brLyricsCA
  \brLyricsCB
  \brLyricsCEndB
}

brGuitar={
  \brGuitarTr
}
