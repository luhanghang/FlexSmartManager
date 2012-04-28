package utils
{
	import mx.controls.Tree;
	
	public class Utils
	{
		[Embed(source="assets/trash.png")]
		[Bindable] 
        static public var trash_icon:Class;
        
        static public var loginInfo:String;
        
        static public function getRole():String {
        	return loginInfo.split(":")[0];
        }
        
        static public function getPrivileges():String {
        	return loginInfo.split(":")[1];
        }
        
        static public function getUserInf():String {
        	return loginInfo.split(":")[2];
        }
        
        static public function getUserId():String {
        	return loginInfo.split(":")[3];
        }
        
        static public function getLogoUri():String {
        	return loginInfo.split(":")[4];
        }
		
		static public function get_url(uri:String):String {
			var d:Date = new Date();
			var c:String = "?";
			if(uri.indexOf("?") > 0) c = "&";
			return Config.HOST + uri + c + "postfix=" + d.fullYear + d.month + d.date + d.hours + d.minutes + d.seconds + d.milliseconds.toString();
		}
		
		static public function freeze(ob:Object,flag:Boolean):void {
			if(flag)
				ob.dispatchEvent(new Event("Freeze"));
			else
				ob.dispatchEvent(new Event("UnFreeze")); 
		}
		
		static public function doFreeze(ob:Object, flag:Boolean):void {
			ob.enabled = !flag;
		}
		
		static public function trashGrow(ob:Object, flag:Boolean):void {
			ob.width = flag? 36:32;
			ob.height = flag? 36:32;
		}
		
		//static private var gFilter:GlowFilter = new GlowFilter(0xffffff,0,20,10);
		//static public function neonFilter(color:uint = 0xffffff):GlowFilter {
			//if(color == 0xffffff)
				//return gFilter;
			//return new GlowFilter(color,0,20,10);
		//}
		
		public static function StringReplaceAll( source:String, find:String, replacement:String ) : String {
    		return source.split( find ).join( replacement );
		}
		
		public static function expandParents(tree:Tree,node:XML):void {
        	if (node && !tree.isItemOpen(node)) {
            	tree.expandItem(node, true);
                expandParents(tree,node.parent());
            }
       	}
	}
}