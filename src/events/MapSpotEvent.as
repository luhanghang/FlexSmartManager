package events
{
	import flash.events.Event;
	
	import views.map.SetSpots;

	public class MapSpotEvent extends Event
	{	
		public var setSpots:SetSpots;
		public function MapSpotEvent(setSpots:SetSpots, type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.setSpots = setSpots;
		}
		
		public override function clone():Event {
			return new MapEvent(this.setSpots, type);
		}
		
	}
}