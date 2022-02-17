tool
extends Curve2D
class_name CatmullRom2D, "res://icons/Curve2D.svg"

export (float,0,2) var torsion=0.5 setget set_torsion

func set_torsion(t):
	torsion=t
	update_control_points()

#Convert Catmull-Rom to Bezier (Curve2D)
#For more information check out this paper:
#Tayebi Arasteh, S., & Kalisz, A. (2021). Conversion Between Cubic Bezier Curves and 
#Catmull–Rom Splines.
func update_control_points():
	
	var k=torsion/3
	
	var pc=get_point_count()
	
	if(pc<=1):
		return
	
	for i in range(0,pc-1):
		set_point_out(i,k*(get_point_position((i+1)%pc)-get_point_position(fposmod(i-1, pc))))
		set_point_in((i+1)%pc,-k*(get_point_position((i+2)%pc)-get_point_position(i%pc)))
	
	if(get_point_position(0)==get_point_position(pc-1)):
		set_point_out(0,k*(get_point_position(1)-get_point_position(pc-2)))
		set_point_in(pc-1,-k*(get_point_position(1)-get_point_position(pc-2)))
	else:
		set_point_out(0,k*(get_point_position(1)-get_point_position(0)))
		set_point_in(pc-1,-k*(get_point_position(pc-1)-get_point_position(pc-2)))

func add_point(pos:Vector2,_in:Vector2=Vector2.ZERO,_out:Vector2=Vector2.ZERO,idx:int=-1)->void:
	.add_point(pos,_in,_out,idx)
	update_control_points()

func set_point_position(idx:int,pos:Vector2)->void:
	.set_point_position(idx,pos)
	update_control_points()

func remove_point(idx:int)->void:
	.remove_point(idx)
	update_control_points()




