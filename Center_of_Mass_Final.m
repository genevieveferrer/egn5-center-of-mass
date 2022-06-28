% Genevieve Ferrer
% 12/2/19
% EGN-5, Section 1877
% P and P - Problem Solving in MATLAB

%% GENERAL INFORMATION
% Description: Find the center of mass of an object, given its shape and dimensions.

% Additional Information: Some assumptions are:
% The units of measurement are the same throughout.
% If the object is in 3D, the thickness/width/denisty of the object is uniform.
% All calculations are rounded to 3 decimal places.


%% START OF CODE
clear,clc

% Ask the user if the object they are calculating the center of mass for is in an outline (2D), area (2D) , or volume (3D).
dimension_input=menu('Is the object you are looking for in 2D (length/outline), 2D (area), or 3D (volume)?','2D (length/outline)','2D (area)','3D (volume)');


%% IF THE SHAPE IS IN 1D
% If the shape is in 1D, the type of shape will be line, circumference of a circle, perimeter of a rectangle, square, etc.
if dimension_input==1
    % Ask what kind of shape the object is.
    shape_input=menu('What kind of shape is the outline?','Line','Circle','Square','Rectangle','Right Triangle','Semi-Circle','Quarter-Circle');
    
    
%% START OF CALCULATIONS
    % If the shape is a line.
    if shape_input==1
        % Ask how long the line is.
        line_dimension=input('What is the length of the line? ');
        % The center of mass for a line is half its length, whether the line is going horizontal or vertical.
        center_line=line_dimension/2;
        % Display the center of mass for the line.
        fprintf('The center of mass of the line is %.3f along its length',center_line);
    
    % If the shape is a circle.
    elseif shape_input==2
        % The dimension of a circle can be in terms of its radius or diameter. Ask the user which one they will be inputting.
        circle_dimension_question=menu('Are the dimensions for the radius or diameter of the circle?','Radius','Diameter');
            % If the dimension the user will input is for radius.
            if circle_dimension_question==1
                % Ask the user for the dimension of the radius.
                circle_dimension=input('What is the radius of the circle? ');
                % The center of mass of a circle in the x-direction is the length of its radius.
                center_circle_x=circle_dimension;
                % The center of mass of a circle in the y-direction is also the length of its radius.
                center_circle_y=circle_dimension;
                % Display the coordinates of the center of mass for the circle.
                fprintf('The center of mass of the outline of the circle is %.3f along the horizontal direction and %.3f along the vertical direction',center_circle_x,center_circle_y)
            % If the dimension the user will give is for diameter. 
            else
                % ask for the dimension of the diameter.
                circle_dimension=input('What is the diameter of the circle? ');
                % The center of mass of a circle in the x-direction is the length of its radius.
                center_circle_x=circle_dimension/2;
                % The center of mass of a circle in the y-direction is also the length of its radius.
                center_circle_y=circle_dimension/2;
                % Display the coordinates of the center of mass for the circle.
                fprintf('The center of mass of the outline of the circle is %.3f along the horizontal direction and %.3f along the vertical',center_circle_x,center_circle_y)
            % This is the end of the if/else of a circle.
            end
            
    % If the shape is a square.
    elseif shape_input==3
        % ask for the dimension of one of its sides.
        square_dimension=input('What is the length of one side of the square? ');
        % the x-coordinate for the center of mass of a square is in the middle.
        center_square_x=square_dimension/2;
        % the y-coordinate for the center of mass of a square is also in the middle.
        center_square_y=center_square_x;
        % display the coordinates of the center of mass.
        fprintf('The center of mass of the outline of the square is %.3f along the horizontal direction and %.3f along the vertical direction',center_square_x,center_square_y);
    
    % if the shape is a rectangle.
    elseif shape_input==4
        % ask for the dimension of the length in the horiztonal/x-direction.
        rectangle_dimension_x=input('What is the horizontal length of the rectangle? ');
        % ask for the dimension of the length in the vertical/y-direction.
        rectangle_dimension_y=input('What is the vertical length of the rectangle? ');
        % the x-coordinate for the center of mass of rectangle is half of its horizontal length.
        center_rectangle_x=rectangle_dimension_x/2;
        % the y-coordinate for the center of mass of a square is half its vertical length.
        center_rectangle_y=rectangle_dimension_y/2;
        % display the coordinates of the center of mass.
        fprintf('The center of mass of the outline of the rectangle is %.3f in the horizontal direction and %.3f in the vertical direction',center_rectangle_x,center_rectangle_y);
        
    % if the shape is a triangle.
    elseif shape_input==5
        % ask for the dimension of the length in the horiztonal/x-direction.
        triangle_dimension_x=input('What is the horiztonal length of the triangle? ');
        % ask for the dimension of the length in the vertical/y-direction.
        triangle_dimension_y=input('What is the vertical length of the triangle? ');
        % the x-coordinate for the center of mass of triangle is a third of its horizontal length.
        center_triangle_x=triangle_dimension_x/3;
        % the y-coordinate for the center of mass of a triangle is also a third of its vertical length.
        center_rectangle_y=rectangle_dimension_y/3;
        % display the coordinates of the center of mass.
        fprintf('The center of mass of the outline of the triangle is %.3f in the horizontal direction and %.3f in the vertical direction',center_triangle_x,center_triangle_y);
    
    
    % if the shape is a semi-circle.
    elseif shape_input==6
        % Ask the user for the dimension of the radius.
        semicircle_dimension=input('What is the radius of the semi-circle? ');
        % The center of mass of a semi-circle in the x-direction is the length of its radius.
        center_semicircle_x=semicircle_dimension;
        % The center of mass of a semi-circle in the y-direction is also the length of its radius.
        center_semicircle_y=semicircle_dimension;
        % Display the coordinates of the center of mass for the circle.
        fprintf('The center of mass of the outline of the semi-circle is %.3f in the horizontal direction and %.3f in the vertical direction',center_semicircle_x,center_semicircle_y);
    % This is the end of 1D shapes.
    end
    
    
%% IF THE SHAPE IS IN 2D
elseif dimension_input==2
    % Ask the user for what type of shape they are looking for.
    shape_input=menu('What kind of shape is the area?','Square','Rectangle','Triangle','Circle','Quarter-Circle','Semi-Circule','Ellipse','Semi-Parabola');
    
% if the shape is a square
if shape_input==1
        % input the dimension of the square.
        square_dimension=input('What is the length of one side of the square?   ');
        % the x-coordinate of the center of mass of a square is half of the length in the horizontal direction.
        center_square_x=square_dimension/2;
        % the y-coordinate of the center of mass of a square is also half the length in the vertical direction.
        center_square_y=square_dimension/2;
        % display the coordinates of the center of mass.
        fprintf('The center of mass of the square is %.3f in the x-direction and %.3f in the y-direction',center_square_x,center_square_y);

% if the shape is a rectangle 
elseif shape_input==2
    % input horizontal length of the rectangle.
    rectangle_dimension_x=input('What is the horiztonal length of the rectangle?   ');
    % input the vertical length of the rectangle.
    rectangle_dimension_y=input('What is the vertical length of the rectangle?   ');
    % the x coordinate of the center of mass is half the x-distance.
    center_rectangle_x=rectangle_dimension_x/2;
    % the y-coordinate of the center of mass is also half the y-distance.
    center_rectangle_y=rectangle_dimension_y/2;
    % display the coordinates of the center of mass.
    fprintf('The center of mass of the rectangle is %.3f in the x-direction and %.3f in the y-direction',center_rectangle_x,center_rectangle_y);

% if the shape is a triangle
elseif shape_input==3
    % ask for the dimension of the length in the horiztonal/x-direction.
    triangle_dimension_x=input('What is the horiztonal length of the right triangle?   ');
    % ask for the dimension of the length in the vertical/y-direction.
    triangle_dimension_y=input('What is the vertical length of the right triangle?   ');
    % the x-coordinate for the center of mass of triangle is a third its horizontal length.
    center_triangle_x=triangle_dimension_x/3;
    % the y-coordinate for the center of mass of a triangle is also a third of its vertical length.
    center_triangle_y=triangle_dimension_y/3;
    % display the coordinates of the center of mass.
    fprintf('The center of mass of the right triangle is %.3f in the x-direction and %.3f in the y-direction',center_triangle_x,center_triangle_y);
    
% if the shape is a circle
elseif shape_input==4
    % The dimension of a circle can be taken in terms of its radius or diameter. Ask which one the user will input.
    circle_dimension_question=menu('Are the dimensions for the radius or diameter of the circle?','Radius','Diameter');
    % If the dimension the user will input is for radius.
    if circle_dimension_question==1
        % Ask the user for the dimension of the radius.
        circle_dimension=input('What is the radius of the circle? ');
        % The center of mass of a circle in the x-direction is the length of its radius.
        center_circle_x=circle_dimension;
        % The center of mass of a circle in the y-direction is also the length of its radius.
        center_circle_y=circle_dimension;
        % Display the coordinates of the center of mass for the circle.
        fprintf('The center of mass of the circle is %.3f in the x-direction and %.3f in the y-direction',center_circle_x,center_circle_y);
        
    % If the dimension the user will give is for diameter. 
    else
        % ask for the dimension of the diameter.
        circle_dimension=input('What is the diameter of the circle? ');
        % The center of mass of a circle in the x-direction is the length of its radius.
        center_circle_x=circle_dimension/2;
        % The center of mass of a circle in the y-direction is also the length of its radius.
        center_circle_y=circle_dimension/2;
        % Display the coordinates of the center of mass for the circle.
        fprintf('The center of mass of the circle is %.3f in the x-direction and %.3f in the y-direction',center_circle_x,center_circle_y);
    % This is the end of the if/else for just the circle.
    end
    
% if the shape is a quarter-circle
elseif shape_input==5
    % Display the assumption that the two flat slides of the quarter-circle are along the positive x and y axes.
    disp('Assumption: The two flat sides of the quarter-circle are along the positive x and y axes.')
    % Ask the user for the dimension of the radius.
    quarter_circle_dimension=input('What is the radius of the circle? ');
    % The center of mass of a quarter-circle in the x-direction is 4*radius/(3pi).
    center_quarter_circle_x=4*quarter_circle_dimension/(3*pi);
    % The center of mass of a quarter-circle in the y-direction is also 4*radius/(3pi).
    center_quarter_circle_y=4*quarter_circle_dimension/(3*pi);
    % Display the coordinates of the center of mass for the circle.
    fprintf('The center of mass of the quarter-circle is %.3f in the x-direction and %.3f in the y-direction',center_quarter_circle_x,center_quarter_circle_y);
    
% if the shape is a semi-circle
    elseif shape_input==6
        % inform the user of the assumption that the semi-circle is oriented so that the radius/diameter is along the horiztonal.
        disp('Assumption: The horizontal of the semi-circle is along the x-axis.');
        % The dimension of a semi-circle can be taken in terms of its radius or diameter. Ask which one the user will input.
        semi_circle_dimension_question=menu('Are the dimensions for the radius or diameter of the circle?','Radius','Diameter');
        % If the dimension the user will input is for radius.
        if semi_circle_dimension_question==1
            % Ask the user for the dimension of the radius.
            semi_circle_dimension=input('What is the radius of the circle? ');
            % Assuming the cut of the semi-circle is along the horizontal, the center of mass of the semi-circle is at the center, the length of the radius.
            center_semi_circle_x=semi_circle_dimension;
            % The center of mass of a semi-circle in the vertical direction is 4*radius/(3*pi)
            center_semi_circle_y=4*semi_circle_dimension/(3*pi);
            % Display the coordinates of the center of mass for the circle.
            fprintf('The center of mass of the semi-circle is %.3f in the x-direction and %.3f in the y-direction',center_semi_circle_x,center_semi_circle_y);
        % If the dimension the user will give is for diameter. 
        else
            % ask for the dimension of the diameter.
            circle_dimension=input('What is the diameter of the circle? ');
            % The center of mass of a circle in the x-direction is the the length of its radius or half its diameter.
            center_semi_circle_x=circle_dimension/2;
            % The center of mass of a circle in the y-direction is 4*radius/(3*pi) or 4*diameter/(6*pi).
            center_semi_circle_y=4*semi_circle_dimension/(6*pi);
            % Display the coordinates of the center of mass for the circle.
            fprintf('The center of mass of the semi-circle is %.3f in the x-direction and %.3f in the y-direction',center_semi_circle_x,center_semi_circle_y);
        % This is the end of if/else for the semi-circle.
        end
        
% if the shape is an ellipse
    elseif shape_input==7
        % input the horizontal length of the ellipse.
        ellipse_dimension_x=input('What is the horizontal length of the ellipse? '); 
        % input the vertical length of the ellipse.
        ellipse_dimension_y=input('What is the vertical length of the ellipse? ');
        % the center of mass of an ellipse in the horizontal direction is half the horizontal length.
        center_ellipse_x=ellipse_dimension_x/2;
        % likewise, the center of mass of an ellipse in the vertical direction is half the vertical length.
        center_ellipse_y=ellipse_dimension_y/2;
        % display the coordinates of the center of mass.
        fprintf('The center of mass of the ellipse is %.3f in the x-direction and %.3f in the y-direction',center_ellipse_x,center_ellipse_y);
        
% if the shape is a semi-parabola
else
    % ask for the length of the semi-parabola.
    parabola_dimension_x=input('Assuming the length of the semi-parabola is along the positive x-axis, what is the length of the parabola? ');
    % ask for the height of the parabola
    parabola_dimension_y=input('What is the height of the semi-parabola? ');
    % for a parabola, the center of mass in the horizontal direction is 3/8 of its length.
    center_parabola_x=3*parabola_dimension_x/8;
    % the center of mass in the vertical direction is 3/5 its height.
    center_parabola_y=parabola_dimension_y*3/5;
    % display the coordinates of the center of mass.
    fprintf('The center of mass of the semi-parabola is %.3f in the x-direction and %.3f in the y-direction',center_parabola_x,center_parabola_y);
% This is the end of 2D shapes.
end


%% IF THE SHAPE IS IN 3D
else
    
% Ask the user for what type of shape they are looking for.
shape_input=menu('What kind of shape is the area?','Cube','Rectangular Prism','Triangular Prism (Right-Angle Triangle)','Sphere','Hemisphere');

% if the shape is a cube
if shape_input==1
    % input the dimension of the cube.
    cube_dimension=input('What is the length of one side of the cube? ');
    % the x-coordinate of the center of mass of a square is half of the
    % length in the horizontal direction.
    center_cube_x=cube_dimension/2;
    % the y-coordinate of the center of mass of a square is also half
    % the length in the vertical direction.
    center_cube_y=cube_dimension/2;
    % the z-coordinate of the center of mass of a square is also half the length in the z-direction.
    center_cube_z=cube_dimension/2;
    % display the coordinates of the center of mass.
    fprintf('The center of mass of the cube is %.3f in the x-direction, %.3f in the y-direction, and %.3f in the z-direction',center_cube_x,center_cube_y,center_cube_z);


% if the shape is a rectanglular prism/cuboid
elseif shape_input==2
    % input horizontal length of the rectangular prism.
    rectanglular_prism_dimension_x=input('What is the horiztonal length of the rectanglular prism? ');
    % input the vertical length of the rectangle.
    rectanglular_prism_dimension_y=input('What is the vertical length of the rectanglular prism? ');
    % input the length of the rectangular prism.
    rectanglular_prism_dimension_z=input('What is the length of the rectangluar prism?');
    % the x coordinate of the center of mass is half the x-distance.
    center_rectanglular_prism_x=rectanglular_prism_dimension_x/2;
    % the y-coordinate of the center of mass is also half the y-distance.
    center_rectangular_prism_y=rectangular_prism_dimension_y/2;
    % the z-coordinate of the center of mass is also half the z-distance.
    center_rectangular_prism_z=rectanglular_prism_dimension_z/2;
    % Diplay the coordinates of the center of mass.
    fprintf('The center of mass of the rectangular prism is %.3f in the x-direction, %.3f in the y-direction, and %.3f in the z-direction',center_rectangular_prism_x,center_rectangular_prism_y,center_rectangular_prism_z);

% if the shape is a right triangular prism
elseif shape_input==3
    % ask for the dimension of the length in the horiztonal/x-direction.
    triangular_dimension_x=input('How long is the base of the triangular prism? ');
    % ask for the dimension of the length in the vertical/y-direction.
    triangular_dimension_y=input('How long is the height height of the triangular prism? ');
    % ask for the dimension of the length in the z-direction.
    triangular_dimension_z=input('How long is the length of the triangular prism?  ');
    % the x-coordinate for the center of mass of triangle is a third its horizontal length.
    center_triangular_x=triangular_dimension_x/3;
    % the y-coordinate for the center of mass of a triangle is also a third of its vertical length.
    center_triangular_y=triangular_dimension_y/3;
    % the z-coordinate for the center of mass of a triangular prism is half its length in the z-direction.
    center_triangular_z=triangular_dimension_z/2;
    % display the coordinates of the center of mass.
    fprintf('The center of mass of the triangular prism is %.3f in the x-direction, %.3f in the y-direction,, and %.3f in the z-direction',center_triangular_x,center_triangular_y,center_triangular_z);
    
% if the shape is a sphere
elseif shape_input==4
% The dimension of a sphere can be taken in terms of its radius or diameter. Ask which one the user will input.
sphere_dimension_question=menu('Are the dimensions for the radius or diameter of the sphere?','Radius','Diameter');
    % If the dimension the user will input is for radius.
    if sphere_dimension_question==1
        % Ask the user for the dimension of the radius.
        sphere_dimension=input('What is the radius of the sphere? ');
        % The center of mass of a sphere in the x-direction is the length of its radius.
        center_sphere_x=sphere_dimension;
        % The center of mass of a sphere in the y-direction is also the length of its radius.
        center_sphere_y=sphere_dimension;
        % The cener of mass of the sphere in the z-direction is also the length of its radius in the z-direction.
        center_sphere_z=sphere_dimension;
        % Display the coordinates of the center of mass for the sphere.
        fprintf('The center of mass of the sphere is %.3f in the x-direction, %.3f in the y-direction, and %.3f in the z-direction',center_sphere_x,center_sphere_y,center_sphere_z);
    
    % If the dimension the user will give is for diameter. 
    else
        % ask for the dimension of the diameter.
        sphere_dimension=input('What is the diameter of the sphere? ');
        % The center of mass of a sphere in the x-direction is half its diameter in the x-direction.
        center_sphere_x=sphere_dimension/2;
        % The center of mass of a sphere in the y-direction is also half
        % its diameter in the y-direction.
        center_sphere_y=sphere_dimension/2;
        % the center of mass of a sphere in the z-direction is also half
        % its diameter in the z-direction.
        center_sphere_z=sphere_dimension/2;
        % Display the coordinates of the center of mass for the sphere.
        fprintf('The center of mass of the sphere is %.3f in the x-direction, %.3f in the y-direction, and %.3f in the z-direction',center_sphere_x,center_sphere_y,center_sphere_z);
    % This is the end of the if/else statements of the sphere.
    end
        


% if the shape is a hemisphere
    else
% inform the user of the assumption that the semi-circle is oriented so that the radius/diameter is along the horiztonal.
disp('Assumption: The hemisphere is facing concave down.')
% The dimension of a circle can be taken in terms of its radius or diameter. Ask which one the user will input.
hemisphere_dimension_question=menu('Are the dimensions for the radius or diameter of the hemisphere?','Radius','Diameter');
% If the dimension the user will input is for radius.
if hemisphere_dimension_question==1
% Ask the user for the dimension of the radius.
    hemisphere_dimension=input('What is the radius of the hemisphere? ');
    % Assuming the hemisphere is facing concave down, the center of mass in the x-direction is the length of its radius or half the diameter.
    center_hemisphere_x=hemisphere_dimension;
    % The center of mass in the y-direction is also the length of its radius or half the diameter.
    center_hemisphere_y=hemisphere_dimension;
    % the center of mass in the z-direction is 3*radius/8.
    center_hemisphere_z=3*hemisphere_dimension/8;
    % Display the coordinates of the center of mass for the circle.
    fprintf('The center of mass of the hemisphere is %.3f in the x-direction, %.3f in the y-direction, and %.3f in the z-direction',center_hemisphere_x,center_hemisphere_y,center_hemisphere_z);
            
% If the dimension the user will give is for diameter.    
else
    % ask for the dimension of the diameter.
    hemisphere_dimension=input('What is the diameter of the hemisphere?    ');
    % assuming the hemisphere is facing concave down, the center of mass in the x-direction is half the diameter.
    center_hemisphere_x=hemisphere_dimension/2;
    % The center of mass in the y-direction is also half the diameter.
    center_hemisphere_y=hemisphere_dimension/2;
    % the center of mass in the z-direction is 3*radius/8 or 3*diameter/16.
    center_hemisphere_z=3*hemisphere_dimension/16;
    % Display the coordinates of the center of mass for the circle.
    fprintf('The center of mass of the hemisphere is %.3f in the x-direction, %.3f in the y-direction, and %.3f in the z-direction',center_hemisphere_x,center_hemisphere_y,center_hemisphere_z);
% This is the end of the if/else statements of the hemisphere.    
end

% This is the end of 3D shapes.
end

% This is the end of the entire code.
end