x = 0:0.1:2;
y = [x; exp(x)];
fprintf('%6.2f, %12.8f\n',y);
fprintf('\n');

A1 = [9.9, 9900];
A2 = [8.8,  7.7 ; 8800, 7700];
formatSpec = 'X is %4.2f meters or %8.3f mm\n';
fprintf(formatSpec,A1,A2);
