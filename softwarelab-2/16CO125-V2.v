// Test Bench

`timescale 1ns/1ps
module inp;
     reg [3:0] A;
     reg [3:0] B;
     wire C2,C1,C0;

     comparator mod(.A(A),.B(B),.C2(C2),.C1(C1),.C0(C0));
     initial
     begin
             $dumpfile("16CO132-V2.vcd");
             $dumpvars(0,inp);
             for(A=0; A<16; A=A+1)
                    for(B=0;B<16;B=B+1)
                          #1;
     end
      initial 
        begin
             $monitor("(A=B) %b,(A>B) %b,(A<B) %b",C2,C1,C0);
        end
       initial #5000 $finish;
endmodule
