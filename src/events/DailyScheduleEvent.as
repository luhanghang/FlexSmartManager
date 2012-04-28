package events
{
	import flash.events.Event;
	
	import views.recording.ScheduleItemDaily;

	public class DailyScheduleEvent extends Event
	{	
		public var item:ScheduleItemDaily;
		public static var CHANGE:String = "ScheduleChange";
		public function DailyScheduleEvent(item:ScheduleItemDaily, type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.item = item;
		}
		
		public override function clone():Event {
			return new DailyScheduleEvent(this.item, type);
		}
		
	}
}