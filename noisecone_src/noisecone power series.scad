/* Power serie */

/* y = R(x/L)^n
Where:

    n = 1 for a cone
    n = 0.75 for a 3/4 power
    n = 0.5 for a 1/2 power (parabola)
    n = 0 for a cylinder 
*/

n= 0.3;
L= 100;
R=24/2;
nof = 30;
//A1=0;
//A2=0;
$fn=30;
H2=L/nof;

module ogive()
{

	for (i=[1:nof]) {

		assign(A1 = R* pow(((L/nof)*(i-1)/L),n),
		A2 = R* pow(((L/nof)*(i)/L),n),
H1= (L/nof)*i)
		{
	  translate ([0,0, L- H1]) cylinder (r1 = A2, r2 = A1 , h= H2);
		echo("i=", i ,"h=",H1,"R1:",A1,"R2:", A2);
		}
	}
}

ogive();