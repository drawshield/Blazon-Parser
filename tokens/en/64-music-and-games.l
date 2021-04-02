%%

dic?e			{ mkNode( E_CHARGE, "games/dice"); return CHARGE; }
domino(es)?		{ mkNode( E_CHARGE, "games/domino"); return CHARGE; }
(chess{S}?rook|cocke)s?	{ mkNode( E_CHARGE, "games/chessrook"); return CHARGE; }
chess{S}queens?		{ mkNode( E_CHARGE, "games/chess-queen"); return CHARGE; }
chess{S}kings?		{ mkNode( E_CHARGE, "games/chess-king"); return CHARGE; }
chess{S}pawns?		{ mkNode( E_CHARGE, "games/chess-pawn"); return CHARGE; }
chess{S}knights?	{ mkNode( E_CHARGE, "games/chess-knight"); return CHARGE; }
chess{S}bishops?	{ mkNode( E_CHARGE, "games/chess-bishop"); return CHARGE; }
chess{S}castles?	{ mkNode( E_CHARGE, "games/chess-castle"); return CHARGE; }
jesters?{S}baubles?	{ mkNode( E_CHARGE, "games/jesters-bauble"); return CHARGE; }
alquerque{S}boards?	{ mkNode( E_CHARGE, "games/board-alquerque"); return CHARGE; }
(nine|9){S}mens?{S}morris{S}boards?	{ mkNode( E_CHARGE, "games/board-nine-mens-morris"); return CHARGE; }
(twelve|12){S}mens?{S}morris{S}boards?	{ mkNode( E_CHARGE, "games/board-twelve-mens-morris"); return CHARGE; }
morris({S}boards?)?({S}of{S}(9|nine))?	{ mkNode( E_CHARGE, "games/board-nine-mens-morris"); return CHARGE; } // default
morris{S}(boards{S})?of{S}(twelve|12)	{ mkNode( E_CHARGE, "games/board-twelve-mens-morris"); return CHARGE; }
meeples?		{ mkNode( E_CHARGE, "games/meeple"); return CHARGE; }

musical{S}notes?	{ mkNode( E_CHARGE, "music/musical-note"); return CHARGE; }
musical{S}half{S}notes?	{ mkNode( E_CHARGE, "music/note-half"); return CHARGE; }
(musical{S})?eighth{S}notes?	{ mkNode( E_CHARGE, "music/note-eighth"); return CHARGE; }
(musical{S})?quarter{S}notes?	{ mkNode( E_CHARGE, "music/note-quarter"); return CHARGE; }
(violin|crwth|fiddle)s?	{ mkNode( E_CHARGE, "music/violin"); return CHARGE; }
cla[vr]i(on|cord)s?	{ mkNode( E_CHARGE, "music/clarion"); return CHARGE; }
accordions?		{ mkNode( E_CHARGE, "music/accordion"); return CHARGE; }
hautboys?		{ mkNode( E_CHARGE, "music/hautboy"); return CHARGE; }
shof(ars?|roth)		{ mkNode( E_CHARGE, "music/shofar"); return CHARGE; }
rests?			{ mkNode( E_CHARGE, "music/clarion"); return CHARGE; }
c{S}clefs?		{ mkNode( E_CHARGE, "music/c-clef"); return CHARGE; }
g{S}clefs?		{ mkNode( E_CHARGE, "music/g-clef"); return CHARGE; }
drums?			{ mkNode( E_CHARGE, "music/drum"); return CHARGE; }
recorders?		{ mkNode( E_CHARGE, "music/recorder"); return CHARGE; }
drumsticks?		{ mkNode( E_CHARGE, "music/drumstick"); return CHARGE; }
harps?({S}of{S}(ireland|ei?rinn?))? { mkNode( E_CHARGE, "music/harp"); return CHARGE; } /* no difference with common harp(?)*/
(hunting{S})?horns?	{ mkNode( E_CHARGE, "music/hunting-horn"); return CHARGE; } /* default horn*/
bugle{S}horns?		{ mkNode( E_CHARGE, "music/bugle-horn"); return CHARGE; }
post{S}horns?		{ mkNode( E_CHARGE, "music/post-horn"); return CHARGE; }
organ{S}pipes?		{ mkNode( E_CHARGE, "music/organ-pipe"); return CHARGE; }
church{S}organs?	{ mkNode( E_CHARGE, "music/church-organ"); return CHARGE; }
trumpets?		{ mkNode( E_CHARGE, "music/trumpet"); return CHARGE; }
flutes?			{ mkNode( E_CHARGE, "music/flute"); return CHARGE; }
guitars?		{ mkNode( E_CHARGE, "music/guitar"); return CHARGE; }
electric{S}guitars?	{ mkNode( E_CHARGE, "music/electric-guitar"); return CHARGE; }
lyres?			{ mkNode( E_CHARGE, "music/lyre"); return CHARGE; }
lutes?			{ mkNode( E_CHARGE, "music/lute"); return CHARGE; }
bagpipes?		{ mkNode( E_CHARGE, "music/bagpipe"); return CHARGE; }

playing{S}cards?{S}backs?		{ mkNode( E_CHARGE, "playing-card/card-back"); return CHARGE; }
playing{S}cards?{S}clubs?		{ mkNode( E_CHARGE, "playing-card/club"); return CHARGE; }
playing{S}cards?{S}hearts?		{ mkNode( E_CHARGE, "playing-card/heart"); return CHARGE; }
playing{S}cards?{S}spades?		{ mkNode( E_CHARGE, "playing-card/spade"); return CHARGE; }
playing{S}cards?{S}diamonds?		{ mkNode( E_CHARGE, "playing-card/diamond"); return CHARGE; }
playing{S}cards?{S}kings?		{ mkNode( E_CHARGE, "playing-card/king"); return CHARGE; }
playing{S}cards?{S}queens?		{ mkNode( E_CHARGE, "playing-card/queen"); return CHARGE; }
playing{S}cards?{S}jacks?		{ mkNode( E_CHARGE, "playing-card/jack"); return CHARGE; }
playing{S}cards?{S}jokers?		{ mkNode( E_CHARGE, "playing-card/joker"); return CHARGE; }
playing{S}cards?{S}red{S}jokers?	{ mkNode( E_CHARGE, "playing-card/joker-red"); return CHARGE; }
playing{S}cards?{S}black{S}jokers?	{ mkNode( E_CHARGE, "playing-card/joker-black"); return CHARGE; }
playing{S}cards?{S}aces?		{ mkNode( E_CHARGE, "playing-card/ace"); return CHARGE; }
playing{S}cards?{S}(two|deuce|2)s?	{ mkNode( E_CHARGE, "playing-card/two"); return CHARGE; }
playing{S}cards?{S}(three|3)s?		{ mkNode( E_CHARGE, "playing-card/three"); return CHARGE; }
playing{S}cards?{S}(four|4)s?		{ mkNode( E_CHARGE, "playing-card/four"); return CHARGE; }
playing{S}cards?{S}(five|5)s?		{ mkNode( E_CHARGE, "playing-card/five"); return CHARGE; }
playing{S}cards?{S}(six|6)e?s?		{ mkNode( E_CHARGE, "playing-card/six"); return CHARGE; }
playing{S}cards?{S}(seven|7)s?		{ mkNode( E_CHARGE, "playing-card/seven"); return CHARGE; }
playing{S}cards?{S}(eight|8)s?		{ mkNode( E_CHARGE, "playing-card/eight"); return CHARGE; }
playing{S}cards?{S}(nine|9)s?		{ mkNode( E_CHARGE, "playing-card/nine"); return CHARGE; }
playing{S}cards?{S}(ten|10)s?		{ mkNode( E_CHARGE, "playing-card/ten"); return CHARGE; }
((playing{S})?cards?{S})?winning{S}hands?	{ mkNode( E_CHARGE, "playing-card/hand-winning"); return CHARGE; }
((playing{S})?cards?{S})?losing{S}hands?	{ mkNode( E_CHARGE, "playing-card/hand-losing"); return CHARGE; }
winning{S}hands?{S}of{S}(playing{S})?cards	{ mkNode( E_CHARGE, "playing-card/hand-winning"); return CHARGE; }
losing{S}hands?{S}of{S}(playing{S})?cards	{ mkNode( E_CHARGE, "playing-card/hand-losing"); return CHARGE; }
hands?{S}of{S}(playing{S})?cards		{ mkNode( E_CHARGE, "playing-card/hand"); return CHARGE; }

