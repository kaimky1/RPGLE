// start with free format
**free
ctl-opt main(main) *dftactgrp(*no) actgrp(*caller); // Don't use the default activation group and run the program in the same space

dcl-proc main;
    callGreeting('Kai');

    //inz(value) initialize variable
    dcl-s a int(10) inz(4);
    dcl-s b int(10) inz(5);
    dcl-s result int(10);

    result = multiply(a: b);
    dsply('Result is: ' + %char(result));
end-proc;

dcl-proc multiply;
    //declare procedure interface (input parameters)
    dcl-pi *n int(10);
        x int(10);
        y int(10);
    end-pi;

    return x * y;
end-proc;

dcl-proc callGreeting;
    // defining procedure and declaring name;
    dcl-pi *n;
        name varchar(20);
    end-pi;

    dsply('Hello, ' + name + '!');
end-proc;