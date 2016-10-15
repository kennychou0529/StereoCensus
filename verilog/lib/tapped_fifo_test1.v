/*  Concrete parameterizations of tapped FIFO for testing.
 * 
 *  Copyright (c) 2016, Stephen Longfield, stephenlongfield.com
 * 
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

`include "tapped_fifo.v"

module tapped_fifo_test1(
    input clk,
    input rst,
    input  wire inp,
    output wire [9:0] taps,
    output wire outp
  );

  tapped_fifo #(.WIDTH(1), .DEPTH(10)) f_1_10(clk, rst, inp, taps, outp);
endmodule
