package events
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import views.TitleWin;

	public class PopupEvent extends Event
	{	
		public var mouseEvent:MouseEvent;
		public var win:TitleWin;
		static public var POPUP:String = "Popup";
		
		public function PopupEvent(type:String, e:MouseEvent, win:TitleWin, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.mouseEvent = e;
			this.win = win;
		}
		
		public override function clone():Event {
			return new PopupEvent(type, this.mouseEvent,win);
		}
		
	}
}