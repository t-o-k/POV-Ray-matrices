// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

https://github.com/t-o-k/POV-Ray-matrices

Copyright (c) 2025 Tor Olav Kristensen, http://subcube.com

Use of this source code is governed by the GNU Lesser General Public License version 3,
which can be found in the LICENSE file.

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

#version 3.7;

#include "../matrices.inc"

global_settings { assumed_gamma 1.0 }

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// This macro illustrates a plane with a round disc near the origin.
// The plane is defined by a normal vector and its distance from the
// origin in the direction of the normal vector.
// The normal vector is shown as a cylinder

#macro ShowPlane(vNormal, Distance) 

    #local vN = vnormalize(vNormal);
    #local pPlane = Distance*vN;
    #local DiscRadius = 3.0;

    union {
        intersection {
            plane { +vN, +(Distance + 0.001) }
            plane { -vN, -(Distance + 0.001) }
            sphere { pPlane, DiscRadius }
            sphere { pPlane, 0.08 inverse }
        }
        sphere { pPlane, 0.04 }
        cylinder {
            <0, 0, 0>, vN, 0.02
            translate pPlane
        }
    }

#end // macro ShowPlane

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 

// Define normalized normal vectors and
// distance from the origin for 3 planes.

// Positive distance from the origin is distance
// in the direction of the normal vector.

#declare vN0 = vnormalize(<+3, +5, -3>);
// vN0 = < 0.457496, 0.762493, -0.457496>
#declare D0 = -1.4;

#declare vN1 = vnormalize(<-2, +1, -4>);
// vN1 = <-0.436436, 0.218218, -0.872872>
#declare D1 = -1.8;

#declare vN2 = vnormalize(<-1, +2, -1>);
// vN2 = <-0.408248, 0.816497, -0.408248>
#declare D2 = -1.6;

// Show the 3 planes

object {
    ShowPlane(vN0, D0)
    pigment { color rgbt <1, 0, 0, 0.3> }
}
object {
    ShowPlane(vN1, D1)
    pigment { color rgbt <0, 1, 0, 0.3> }
}
object {
    ShowPlane(vN2, D2)
    pigment { color rgbt <0, 0, 1, 0.3> }
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10
/*

Find the intersection of the 3 planes:


The 3 equations for the 3 planes:

    vN0.x*X + vN0.y*Y + vN0.z*Z = D0

    vN1.x*X + vN1.y*Y + vN1.z*Z = D1

    vN2.x*X + vN2.y*Y + vN2.z*Z = D2
                                 

The same written in matrix form:

    --                    --   -- --   --  --
    |                      |   |   |   |    |
    | vN0.x  vN0.y  vN0.z  |   | X |   | D0 |
    |                      |   |   |   |    |
    | vN1.x  vN1.y  vN1.z  | * | Y | = | D1 |
    |                      |   |   |   |    |
    | vN2.x  vN2.y  vN2.z  |   | Z |   | D2 |
    |                      |   |   |   |    |
    --                    --   -- --   --  --

              NN             *  SS   =   DD


Now solve for SS:

    --                              --   -- --   --    --
    |                                |   |   |   |      |
    |  0.457496  0.762493 -0.457496  |   | X |   | -1.4 |
    |                                |   |   |   |      |
    | -0.436436  0.218218 -0.872872  | * | Y | = | -1.8 |
    |                                |   |   |   |      |
    | -0.408248  0.816497 -0.408248  |   | Z |   | -1.6 |
    |                                |   |   |   |      |
    --                              --   -- --   --    --

                    NN                 *  SS   =    DD


                 NN^-1 * NN            *  SS   =  NN^-1 * DD
 

    --                             --   --                              --
    |                               |   |                                |
    |  1.147552 -0.114564 -1.041033 |   |  0.457496  0.762493 -0.457496  |
    |                               |   |                                |
    |  0.327872 -0.687386  1.102270 | * | -0.436436  0.218218 -0.872872  |
    |                               |   |                                |
    | -0.491808 -1.260208  0.796084 |   | -0.408248  0.816497 -0.408248  |   
    |                               |   |                                |
    --                             --   --                              --

                  NN^-1               *                 NN

       --                             --
       |                               |
       |  1.000000  0.000000  0.000000 |
       |                               |
     = |  0.000000  1.000000  0.000000 |
       |                               |
       |  0.000000  0.000000  1.000000 |
       |                               |
       --                             --

     =                 II


    --                             --   -- --   --                             --   --    --
    |                               |   |   |   |                               |   |      |
    |  1.000000  0.000000  0.000000 |   | X |   |  1.147552 -0.114564 -1.041033 |   | -1.4 |
    |                               |   |   |   |                               |   |      |
    |  0.000000  1.000000  0.000000 | * | Y | = |  0.327872 -0.687386  1.102270 | * | -1.8 |
    |                               |   |   |   |                               |   |      |
    |  0.000000  0.000000  1.000000 |   | Z |   | -0.491808 -1.260208  0.796084 |   | -1.6 |
    |                               |   |   |   |                              --   --    --
    --                             --   -- --   --

                     II               *  SS   =               NN^-1               *    DD


    -- --   --                             --   --    --
    |   |   |                               |   |      |
    | X |   |  1.147552 -0.114564 -1.041033 |   | -1.4 |
    |   |   |                               |   |      |
    | Y | = |  0.327872 -0.687386  1.102270 | * | -1.8 |
    |   |   |                               |   |      |
    | Z |   | -0.491808 -1.260208  0.796084 |   | -1.6 |
    |   |   |                               |   |      |
    -- --   --                             --   --    --

     SS   =               NN^-1               *    DD


    -- --   --         --
    |   |   |           |
    | X |   |  0.265296 |
    |   |   |           |
    | Y | = | -0.985358 |
    |   |   |           |
    | Z |   |  1.683171 |
    |   |   |           |
    -- --   --         --

     SS

*/
// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

// Find the point at the intersection of the 3 planes by using the matrix library

#declare NN =
    array[3][3] {
        { vN0.x, vN0.y, vN0.z },
        { vN1.x, vN1.y, vN1.z },
        { vN2.x, vN2.y, vN2.z }
    }
;

#declare DD =
    array[3][1] {
        { D0 },
        { D1 },
        { D2 }
    }
;

#declare SS =
    M_Mult(
        M_Inv(NN),
        DD
    )
;

M_Print(SS)
#debug "\n\n"

/*
Solution:

array[3][1] {
    {  0.265296 },
    { -0.985358 },
    {  1.683171 }
}
*/

#declare X = SS[0][0];
#declare Y = SS[1][0];
#declare Z = SS[2][0];

#declare pIntersect = <X, Y, Z>;

sphere {
    pIntersect, 0.06
    pigment { color rgb <1, 1, 1> }
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10

background {
    color rgb 0.6*<1, 1, 1>
}

light_source {
    100*<3, 3, -2>
    color rgb <1, 1, 1>
    shadowless
}                                      

camera {
    location <2, 5, -7>
    look_at <0, 0, 0>
}

// ===== 1 ======= 2 ======= 3 ======= 4 ======= 5 ======= 6 ======= 7 ======= 8 ======= 9 ======= 10



