# Catmull-Rom splines for Godot

There are two implementations. 
## As a resource.
![camullpath](https://user-images.githubusercontent.com/93406322/154357949-1afd05b6-b271-4af0-9608-15ab6f345395.gif)
## As an object.
### Variables
- PoolVector2Array **points**: spline control points.
- int **segment_size**: number of points in each segment.
- float **torsion**: controls the spline shape.
- bool **closed**: closes the curve.
### Methods
- PoolVector2Array **get_baked_segment(p_index:int)**: returns all the calculated points of the segment p_index as a PoolVector2Array.
- PoolVector2Array **get_baked_points()**: returns all the calculated points of curve as a PoolVector2Array.
- Curve2D **to_curve2D()**: converts Catmull-Rom spline to Curve2D (Bezier curve).
