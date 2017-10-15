// Behavioural Modelling

module comparator(A,B,C2,C1,C0);
   input [3:0] A;
   input [3:0] B;
   output reg C2,C1,C0;                 // C2= (A=B),  C1= (A>B), C0= (A<B)
 
always @(A,B)
begin
  
   C2 = ~((A[0]^B[0]) | (A[1]^B[1]) | (A[2]^B[2]) | (A[3]^B[3]));

   C1 = ( (A[3]&(~B[3])) | (A[2]&(~B[2])&(~(A[3]^B[3]))) | (A[1]&(~B[1])&(~(A[3]^B[3]))&(~(A[2]^B[2]))) | (A[0]&(~B[0])&(~(A[3]^B[3]))&(~(A[2]^B[2]))&(~(A[1]^B[1]))) );

    C0= ~(C2 | C1);
end
endmodule
