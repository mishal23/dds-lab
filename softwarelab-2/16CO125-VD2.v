// Dataflow Modelling

module comparator(A,B,C2,C1,C0);

   output C2,C1,C0;                 // C2= (A=B),  C1= (A>B), C0= (A<B)
   input [3:0] A;
   input [3:0] B;   

   assign X0 = ~(A[0]^B[0]), X1 = ~(A[1]^B[1]), X2 = ~(A[2]^B[2]), X3 = ~(A[3]^B[3]);
   assign C2 = X0&X1&X2&X3;

   assign C1 = ( (A[3]&(~B[3])) | (A[2]&(~B[2])&X3) | (A[1]&(~B[1])&X3&X2) | (A[0]&(~B[0])&X3&X2&X1) );

   assign C0= ~(C2 | C1);
endmodule
