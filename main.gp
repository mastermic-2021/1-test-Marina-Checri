str2ascii(s)=Vec(Vecsmall(s));
ascii2str(v)=Strchr(v);
encode(s) = {
  [ if(c==32,0,c-96) | c <- str2ascii(s), c==32 || 97<=c && c<= 122 ];
}
decode(v) = {
  ascii2str([ if(c==0,32,c+96) | c <- v]);
}
text=readstr("input.txt")[1];
k=encode("haricot");

text=encode(text);

\\On va de 1 à 26, donc on fait modulo 27 + 1 :
vigenere(message,key) = vector(#message,i,(message[i] + key[(i-1) % #key + 1]) % 27);
\\Pour le déchiffrement, on remplace +k par -k :
dechiffre_vigenere(message,key) = vector(#message,j,(message[j] - key[(j-1) % #key + 1]) % 27);

m = dechiffre_vigenere(text,k);
m = decode(m);
print(m); print("\n");

\\Vérification :
code = decode(vigenere(encode(m),k));
print(code);
\\On doit retrouver le texte du fichier input.txt


\\ resoudre l'exercice, bien mettre des ; a la fin des lignes

\\ a la fin, faire simplement
\\ print(clair);
