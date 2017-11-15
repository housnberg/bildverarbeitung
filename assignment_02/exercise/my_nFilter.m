function [ fimg ] = my_nFilter( img0,img1,img2,img3,img4 )
%MY_NFILTER Summary of this function goes here
%   Detailed explanation goes here
%{
    Patrick Greher
    Sueleyman Coskun
    Eugen Ljavin
%}
    fimg = (img0 + img1 + img2 + img3 + img4) ./ 5;

%{
    Bei dem Tassen-Bild handelt es sich um ein statatisches Foto.
    Alle 5 Fotos mit dem Tassen Motiv sind deckungsgleich.
    
    Die Bilder mit den Blättern unterscheiden sich hingegen (wenn auch nur
    minimal), da sich die Blätter von Foto zu Foto bewegen. Summiert man
    nun die Pixel auf und errechnet den durchschnitt, entsteht eine Art
    "Bewegungsunschärfe". Diese Methode eignet sich deswegen weniger, wenn
    Bilder nicht deckungsgleich sind, weil sie z.B. nicht mit einem Stativ
    aufgenommen wurden oder sich das Motiv bewegt.
%}


end
