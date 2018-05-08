/* tangent ogive */

/* 
phi = (R^2+ L^2)/ 2R

y= sqrt(phi^2 - (L -x)^2) + R -phi

*/

L= 100;
R=24/2;
nof = 30;


phi = (pow(R,2) + pow(L,2))/ (2*R); 

$fn=30;
H2=L/nof;
x1= 0;
x2=0;
A1=0;
A2= 0;
module ogive()
{

	for (i=[1:nof]) {

assign(x1 = ((L/nof)*(i-1)),
x2 = ((L/nof)*i),
A1= sqrt(pow(phi,2) - pow((L - ((L/nof)*(i-1))), 2) ) + (R - phi),
A2= sqrt(pow(phi,2) - pow((L - ((L/nof)*i)), 2) ) + (R - phi),
H1= (L/nof)*i)
		{
	  translate ([0,0, L- H1]) cylinder (r1 = A2, r2 = A1 , h= H2);
		echo("i=", i ,"h=",H1,"r1:",A1,"r2:", A2, "phi:", phi, "x1:", x1, "x2", x2);
		}
	}
}

ogive();