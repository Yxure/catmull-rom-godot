# Catmull-Rom splines for Godot

![camullpathupdate](https://user-images.githubusercontent.com/93406322/154548831-edeb36e1-9a55-435a-9b67-e71ddb448dd1.gif)

Custom resource for Catmull-Rom splines in 2D and 3D for Godot. They are like Bezier curves but the control points are calculated from the curve points. They are less flexible but allow to get a smooth curve faster.

## Variables
- float **torsion**: controls the curve shape.

## Methods
- void **update_control_points()**: converts Catmull-Rom spline into Curve2D/Curve3D (Bezier) calculating the controls points. This method is called automatically when a point on the curve is added, deleted or changed.


