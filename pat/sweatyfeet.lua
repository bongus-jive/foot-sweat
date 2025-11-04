-- spawn water at the player's feet every second
-- or, in coding terms
 Repeat[Forever] {
wait=seconds|10,
Do:spawn(Liquid.water); on..Player(Playelocation.feet); };
