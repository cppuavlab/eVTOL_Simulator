function [M,F_thrust] = Force_Moment(F_motor, Pos_motor, DCM, CG) 

    F_plane = DCM * F_motor; % Motor Force to Plane coordinate system 
        Fz = abs(F_plane(3, 1)); % Z component of F_plane for thrust sum 

    R = Pos_motor - CG; % Motor position vector, CG to motor 
        
    Moment = cross(R, F_plane);

M = Moment;
F_thrust = Fz;