model Oscillator
//Параметры осциллятора
//x'' + g* x' + w^2* x = f(t)
parameter Real w = sqrt(9.00);
parameter Real g = 0.00;

parameter Real x0 = -0.7;
parameter Real y0 = 0.7;

Real x(start=x0);
Real y(start=y0);

function f
  input Real t;
  output Real result;
algorithm
  result := 0;
//result := 2*cos(0.5*t);
end f;

equation
der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end Oscillator;
