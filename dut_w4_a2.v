module fnd_dec( o_seg,
                i_num );

output [6:0]    o_seg  ;
input  [3:0]    i_num  ;

reg    [6:0]    o_seg  ;         
always @(*) begin
       case(i_num)
            4'd0  : o_seg = 7'b1111_110;
            4'd1  : o_seg = 7'b0110_000;
            4'd2  : o_seg = 7'b1101_101;
            4'd3  : o_seg = 7'b1111_001;
            4'd4  : o_seg = 7'b0110_011;
            4'd5  : o_seg = 7'b1011_011;
            4'd6  : o_seg = 7'b1011_111;
            4'd7  : o_seg = 7'b1110_000;
            4'd8  : o_seg = 7'b1111_111;
            4'd9  : o_seg = 7'b1110_011;
            4'd10 : o_seg = 7'b1110_111;
            4'd11 : o_seg = 7'b1111_111;
            4'd12 : o_seg = 7'b1001_110;
            4'd13 : o_seg = 7'b1111_110;
            4'd14 : o_seg = 7'b1001_111;
            4'd15 : o_seg = 7'b1000_111;
            default o_seg = 7'b0000_000;
        endcase
end

endmodule

module fnd_dec_fpga( o_com,
                     o_seg,
		     o_dp         );

output [5:0]         o_com        ;
output [6:0]         o_seg        ;
output               o_dp         ;

assign o_com = 6'b010_101;
assign o_dp  = 1'b1;

fnd_dec      u_fnd_dec( .o_seg ( o_seg ),
                        .i_num ( 5     ));

endmodule
