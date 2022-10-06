masc(chico).
masc(adriano).
masc(breno).
masc(fabricio).
masc(edilson).
masc(bruno).
masc(jr).
fem(clara).
fem(thamires).
fem(sonia).
fem(angela).
fem(tereza).
fem(cris).
fem(ana).
fem(rosa).

progenitor(chico,bruno).
progenitor(chico,breno).
progenitor(chico,fabricio).
progenitor(rosa,bruno).
progenitor(rosa,breno).
progenitor(rosa,fabricio).
progenitor(edilson,adriano).
progenitor(edilson,clara).
progenitor(ana,mylena).
progenitor(ana,adriano).
progenitor(cris,jr).
progenitor(cris,thamires).
progenitor(sonia,cris).
progenitor(sonia,ana).
progenitor(sonia,rosa).
progenitor(sonia,angela).
progenitor(tereza,edilson).
progenitor(bruno,lucas).
progenitor(sabrina,lucas).

irmao(X,Y):- progenitor(Z,X), progenitor(Z,Y), X\=Y.
mae(X,Y):- fem(X), progenitor(X,Y).
pai(X,Y):- masc(X), progenitor(X,Y).
avoh_mat(X,Y):- fem(X), progenitor(X,Z), mae(Z,Y).
avoh_pat(X,Y):- fem(X), progenitor(X,Z), pai(Z,Y).
tio(X,Y):- masc(X), irmao(X,Z), progenitor(Z,Y).
tia(X,Y):- fem(X), irmao(X,Z), progenitor(Z,Y).