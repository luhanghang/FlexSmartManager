package views.map
{
	import mx.collections.*;
	import mx.controls.Alert;
	import mx.controls.treeClasses.*;

    public class SpotTreeItemRender extends TreeItemRenderer {
        public function SpotTreeItemRender() {
            super();
        }
        
        override public function set data(value:Object):void {
            super.data = value;
            var item:XML = value as XML;
            if(item) {
            	if(isOnMap(item)) {
                	setStyle("color", "yellow");
            	}
            	else {
                	setStyle("color", "#ffffff");
            	}
            }	  
        }
        
        private function isOnMap(item:XML):Boolean {
        	var id:String = item.@id;
        	while(item.parent()) {
        		item = item.parent() as XML;
        	}
        	for each(var s:XML in item.Spots.Spot) {
        		if(s.@id == id) return true;
        	}
        	return false;
        }
    }
}