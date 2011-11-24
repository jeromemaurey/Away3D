package com.wemakedotcoms.flint
{
	import flash.geom.Vector3D;
	
	import org.flintparticles.threeD.zones.SphereZone;
	
	public class DomeZone extends SphereZone
	{
		
		private var _inverted:Boolean = false;
		
		public function DomeZone(center:Vector3D=null, outerRadius:Number=0, innerRadius:Number=0, inverted:Boolean = false)
		{
			super(center, outerRadius, innerRadius);
		}
		
		override public function getLocation():Vector3D
		{
			var v:Vector3D = super.getLocation();
			v.y = inverted? -Math.abs( v.y ) : Math.abs( v.y );
			return v;
		}

		public function get inverted():Boolean
		{
			return _inverted;
		}

	}
}