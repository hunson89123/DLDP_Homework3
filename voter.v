module voter_if (I, O);
input [3:0] I;  //宣告四人投票輸入I
output [3:1] O; //宣告三種結果輸出O
reg [3:1] O;

always@ (I)
begin
    case (I)
        //O3(反對)
        4'b0000, 4'b0001, 4'b0010, 4'b0100, 4'b1000:
            O = 3'b001;

        //O2(平手)
        4'b0011, 4'b0101, 4'b0110, 4'b1001, 4'b1010, 4'b1100:
            O = 3'b010;

        //O1(贊成)
        4'b1110, 4'b1101, 4'b1011, 4'b0111, 4'b1111:
            O = 3'b100;

        default:
            O = 3'b000;
    endcase
end
endmodule
