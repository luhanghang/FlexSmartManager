package events
{
	import flash.events.Event;
	
	import views.recording.ScheduleItem;

	public class ScheduleEvent extends Event
	{	
		public var item:ScheduleItem;
		public static var CHANGE:String = "ScheduleChange";
		public function ScheduleEvent(item:ScheduleItem, type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.item = item;
		}
		
		public override function clone():Event {
			return new ScheduleEvent(this.item, type);
		}
		
	}
}