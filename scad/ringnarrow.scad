//  Diseño de portalámparas SÓLO para lámparas LED GU10/GU5.3
//  IMPORTANTE:
//      *  USAR BAJO SU PROPIA RESPONSABILIDAD
//      *  NO UTILIZAR CON BOMBILLAS HALÓGENAS, RIESGO DE INCENDIO DEL PLÁSTICO
//      *  UTILIZAR PLÁSTICOS QUE AGUANTEN CIERTA TEMPERATURA COMO ABS, PETG
//      *  EL PLA SE REBLANCECE/DERRITE A TEMPERATURA "BAJA"

//  Por David Sáinz
//  30 de Junio de 2016

// Diseño de portalámpara LED diámetro taladro 54mm para LED GU10/GU5.3 de 50mm de diámetro
// alojamiento de portalámparas
d_hueco=54;  //diámetro donde va alojado el portalámpara, en este caso para un hueco de 55mm, con algo de holgura.
h_hueco=0;     //altura del cilindro portalámpara/grosor falso techo
//  medidas exteriores
d_ext=63; //diámetro exterior del embellecedor
h_ext=3; //grosor del embellecedor exterior
chaflan=2;   //chaflán en mm del embellecedor exterior
d_inf=48; //diámetro inferior de sujección de lámpara;
//
d_lamp=50.5; //diámetro donde va alojada la lámpara GU10/GU5.3, de 50mm
// canales de refrigeración
ang_canal=0; // ángulo de separación entre canales de refrigeración inferior
a_canal=0;   // anchura de canales de refrigeración
h_canal=0;   //  altura de canales de refrigeración
// sujección portalámparas a alojamiento
ang_garra=30;  // ángulo de separación entre garras de sujección
a_garra=1.5;   // distancia en mm para el agarre del portalámparas en alojamiento
h_garra=1.5;   // altura de chaflán inferior y superior de la garra


difference()
{
// cuerpo del portalámparas
    
    translate([0, 0, 0])
       rotate_extrude($fn = 180)
            polygon( points=[[d_inf/2,0],[d_ext/2-chaflan,0],[d_ext/2,chaflan],[d_ext/2,h_ext],[d_hueco/2,h_ext],[d_hueco/2,h_ext+h_hueco],[d_hueco/2+a_garra,h_ext+h_hueco+h_garra],[d_hueco/2+a_garra,h_ext+h_hueco+2*h_garra],[d_hueco/2,h_ext+h_hueco+3*h_garra],[(d_hueco+d_lamp)/4,h_ext+h_hueco+3*h_garra],[d_lamp/2,h_ext],[d_inf/2,h_ext]] );
    
// ranuras ventilacion lámpara
    
 
  
// cortes cilindro 
  
  for (i=[0:ang_garra:360]) 
  rotate([0,0,i]) translate([0,0,h_ext+1.5*h_hueco/2-0.5]) cube([2,1.2*d_ext,1.5*h_hueco],center=true);

}