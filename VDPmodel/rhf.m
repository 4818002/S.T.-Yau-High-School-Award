function f=rhf(t,x)
    omega = (349)*2*pi;
    coeff = [930,1,50];   %[20,5,2];

    f=[x(2);coeff(1)*x(2)*(1-coeff(2)*x(1)-coeff(3)*x(1)^2)-omega^2*x(1)];
    %    epsilon = 20; coeff(1)     control average amplitude
    %    alpha = 5; coeff(2)        control 2nd order harmonic amplitude
    %    delta = 2; coeff(3)        control 3rd order harmonic amplitude
    %    f=[x(2);epsilon*x(2)*(1-alpha*x(1)-delta*x(1)^2)-omega^2*x(1)];
end
