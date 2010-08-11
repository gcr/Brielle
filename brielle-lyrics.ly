%%% LYRICS
brLyricsVA = \lyricmode {
  There's a hand -- writ -- ten note
  pressed in the door
  of her screened- in porch
  and I am sail -- ing a -- way
  re -- cal -- ling that day
  \tag #'preprod { miles }
  \tag #'release { mi -- les } from shore.

  She was still wear -- ing white
  and ro -- bin's egg blue;
  her grand -- mo -- ther's dress.
  \tag #'preprod { And I left home }
  \tag #'release { When I left }
      ear -- ly this year.
  How I wound up here
  is a -- ny -- one's guess.
}

brLyricsTr = \lyricmode {
  % Transition
  When the new sites grow old
  and I start to feel cold,
  I'll sail home a -- gain. __
}

brLyricsCA = \lyricmode {
  % Chorus
  Good -- bye Bri -- elle!
  \tag #'preprod { On -- ly sea -- sons can tell }
  \tag #'release { On -- ly whis -- pers can tell }
  of the sweet dreams that we knew so well!
  I'll see you a -- round
  our dear o -- cean town.
}
brLyricsCB = \lyricmode {
  The fro -- zen days we set a -- blaze
  sent me drif -- ting a -- way!
  Like a but -- ter -- fly, \tag #'preprod { I }
                            \tag #'release { you } floa -- ted by
  \tag #'preprod { and now I'm a -- lone. }
  \tag #'release { and now you're a -- lone. }
  I wish I knew when I'll be back a -- gain.
}
brLyricsCEndA = \lyricmode {
  So un -- til then, I wish you well,
  my dear Bri -- elle!
}

brLyricsVB = \lyricmode {
  % last verse
  \tag #'preprod { Skip -- ping }
  \tag #'release { Strol -- ling }
      o -- ver the sand
  and cob -- ble -- stone paths
  that wind through the trees.

  \tag #'preprod { Bre -- athing the sweet o -- cean air
    makes a shy boy a -- ware
    that he could be free! }
  \tag #'release { Bre -- athing the sweet for -- est air
    makes a blue -- bird a -- ware 
    that she could be free! }
}

brLyricsCEndB = \lyricmode {
  So un -- til then, I wish you well.
  So un -- til then, I wish you well!
  \tag #'preprod {
    For the time be -- ing, fare -- well, my dear Bri -- elle!
  }
  \tag #'release {
    I love you, my dar -- ling; fare -- well, my dear Bri -- elle!
  }
}


%%% STRUCTURE
brLyrics = {
  % Verse 1 and transition
  \keepWithTag \brVAFlavor \brLyricsVA
  \brLyricsTr

  % Chorus
  \keepWithTag \brCAFlavor \brLyricsCA
  \keepWithTag \brCBFlavor \brLyricsCB
  \brLyricsCEndA

  % Verse 2 and transition
  \keepWithTag \brVBFlavor \brLyricsVB
  \brLyricsTr

  % Chorus
  \keepWithTag \brCAFlavor \brLyricsCA
  \keepWithTag \brCBFlavor \brLyricsCB
  \keepWithTag \brCBFlavor \brLyricsCEndB
}

% vim: foldmethod=marker foldmarker={,}
