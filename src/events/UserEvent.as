package events
{
	import flash.events.Event;

	public class UserEvent extends Event
	{	
		public var user:Object;
		public function UserEvent(user:Object, type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.user = user;
		}
		
		public override function clone():Event {
			return new UserEvent(this.user, type);
		}
		
	}
}