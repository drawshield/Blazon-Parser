%%

 /* Sports pitches are implemented like furs */
soccer { mkNode(E_FUR, "soccer-field"); return FUR; }
(american{S})?football { mkNode(E_FUR, "american-football-field"); return FUR; }
tennis { mkNode(E_FUR, "tennis-court"); return FUR; }
basketball { mkNode(E_FUR, "basket-ball"); return FUR; }
basket{S}ball { mkNode(E_FUR, "basket-ball"); return FUR; }