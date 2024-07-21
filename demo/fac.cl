class Main inherits A2I {
    main(): Object{
        (new IO).out_string(
            i2a(factloop(a2i((new IO).in_string()))).concat ("\n"))
    };

    fact(i: Int): Int {
            if (i=0) then 1 else i * fact(i-1) fi
    };

    factloop(i: Int): Int {
        let factloop: Int <- 1 in {
            while (not (i = 0)) loop
                {
                    factloop <- factloop * i;
                    i <- i - 1;
                }
            pool;
            factloop;
        }
    };
};