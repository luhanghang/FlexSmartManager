package events
{
	import flash.events.Event;

	public class SpotEvent extends Event
	{	
		public var spot:XML;
		
		public function SpotEvent(type:String, spot:XML, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			this.spot = spot;
		}
		
		public override function clone():Event {
			return new SpotEvent(type,this.spot);
		}
		
	}
}