str2ascii(s)=Vec(Vecsmall(s));
ascii2str(v)=Strchr(v);
encode(s) = {
  [ if(c==32,0,c-96) | c <- str2ascii(s), c==32 || 97<=c && c<= 122 ];
}
decode(v) = {
  ascii2str([ if(c==0,32,c+96) | c <- v]);
}

\\Attention : on prend en compte l'espace, donc on opère modulo 27.
vigenere(message,key) = vector(#message,i,(message[i] + key[(i-1) % #key + 1]) % 27);
\\Pour le déchiffrement, on remplace +k par -k (c'est un "chiffre de César généralisé").
dechiffre_vigenere(message,key) = vector(#message,j,(message[j] - key[(j-1) % #key + 1]) % 27);

text=readstr("input.txt")[1];
text=encode(text);
k=encode("haricot");

clair = dechiffre_vigenere(text,k);
clair = decode(clair);
print("Le message obtenu après déchiffrement est : \n");
print(clair);
print("\n");

\\Vérification :
\\code = decode(vigenere(encode(clair),k));
\\print(code);
\\On doit retrouver le texte du fichier input.txt
