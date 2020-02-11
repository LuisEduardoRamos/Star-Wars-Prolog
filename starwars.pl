serVivo(anakin, 27700, m, luz).
serVivo(darth_sidious, 20500, m, oscuridad).
serVivo(cansiller_palpatine, 20500, m, oscuridad).
serVivo(yoda, 17700, m, luz).
serVivo(count_dooku, 13500, m, luz).
serVivo(darth_tyranus, 13500, m, oscuridad).
serVivo(obi_wan, 13400, m, luz).
serVivo(ahsoka_tano, 13000, f, gris).
serVivo(kit_fisto,  11800, m, luz).
serVivo(plo_koon, 11100, m, luz).
serVivo(ki_adi_mundi, 10600, m, luz).
serVivo(mace_windu, 12000, m, luz).
serVivo(luke,13000,m,luz).
serVivo(leia,15000,f,luz).
serVivo(qui_gon_jinn,13000,m,gris).
serVivo(darth_vader,27700,m,oscuridad).
serVivo(darth_plagueis,19000,m,oscuridad).
serVivo(darth_maul,12000,m,oscuridad).
serVivo(han_solo,3000,m,luz).
serVivo(bail_organa,1000,m,luz).
serVivo(jabba,1000,m,oscuridad).
serVivo(chewbacca,3000,m,luz).




maestroOrden(yoda).

especie(humano, anakin).
especie(humano, darth_tyranus).
especie(humano, darth_sidious).
especie(humano, palpatine).
especie(humano, count_dooku).
especie(humano, obi_wan).
especie(especie_yoda, yoda).
especie(togruta, ahsoka_tano).
especie(nautolano, kit_fisto).
especie(kel_dor, plo_koon).
especie(cerean, ki_adi_mundi).
especie(humano, mace_windu).
especie(humano, luke).
especie(humano, leia).
especie(humano,qui_gon_jinn).
especie(humano,darth_vader).
especie(especie_plagueis, darth_plagueis).
especie(zabrak,darth_maul).
especie(humano,bail_organa).
especie(humano,han_solo).
especie(hutt,jabba).
especie(chewbacca,wookiee).

estiloCombate(shoto, mace_windu).
estiloCombate(shii_cho, mace_windu).
estiloCombate(makashi, mace_windu).
estiloCombate(soresu, mace_windu).
estiloCombate(ataru, mace_windu).
estiloCombate(shien, mace_windu).
estiloCombate(niman, mace_windu).
estiloCombate(vapaad, mace_windu).

estiloCombate(makashi,count_dooku).
estiloCombate(makashi,darth_tyranus).
estiloCombate(soresu,obi_wan).
estiloCombate(ataru,yoda).
estiloCombate(ataru,qui_gon_jinn).
estiloCombate(shien,anakin).
estiloCombate(shien,luke).
estiloCombate(niman,darth_maul).
estiloCombate(dun_moch,palpatine).
estiloCombate(shien,kit_fisto).
estiloCombate(shien,plo_koon).
estiloCombate(shien,ki_adi_mundi).


estaMuerto(obi_wan).
estaMuerto(anakin).
 estaMuerto(count_dooku).
estaMuerto(yoda).
estaMuerto(kit_fisto).
estaMuerto(mace_windu).

aprendiz(ahsoka_tano, anakin).
aprendiz(obi_wan, qui_gon_jin).
aprendiz(anakin, obi_wan).
aprendiz(count_dooku, yoda).
aprendiz(darth_tyranus, darth_sidious).



esMaestro(obi_wan).
esMaestro(yoda).
esMaestro(plo_koon).
esMaestro(mace_windu).
esMaestro(ki_adi_mundi).

amigo(anakin, canciller_palpatine).

esJedi(X):- (serVivo(X,Y,Z,luz);serVivo(X,Y,Z,gris)).

esSith(X):- serVivo(X,_,_,oscuridad).

separatista(X):-serVivo(X,_,_,oscuridad).
republicano(X):-(esJedi(X)) ; (serVivo(X,_,_,luz)).
rebelde(X):- serVivo(X,Y,Z,luz), not(estiloCombate(_,X)).


miembroConsejo(X):- (esJedi(X), esMaestro(X)) ; (esJedi(X), amigo(X, canciller_palpatine)).

puedeSerFantasma(X):- estaMuerto(X), esJedi(X).

guardianOrden(X):- formaSiete(X), esMaestro(X).

puedeCopular(X):- (not(esJedi(X));especie(cerean,X)).

formaSiete(X):- (estiloCombate(shoto, X),estiloCombate(shii_cho, X),
estiloCombate(makashi, X),estiloCombate(soresu, X),estiloCombate(ataru, X),
estiloCombate(shien, X),estiloCombate(niman, X)).

puedeSerCorrompido(X):- estiloCombate(vapaad,X).

sufreOrden66(X):- esJedi(X).
participaGuerrasClon(X):-(separatista(X)) ; (republicano(X)).
seEscondeDelImperio(X):- rebelde(X).


