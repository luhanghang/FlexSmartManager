package events
{
	import flash.events.Event;

	public class EncoderEvent extends Event
	{	
		public var encoder:XML;
		
		public function EncoderEvent(type:String, encoder:XML, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			this.encoder = encoder;
		}
		
		public override function clone():Event {
			return new EncoderEvent(type, this.encoder);
		}
		
	}
}