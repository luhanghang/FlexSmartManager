package utils
{
	import mx.utils.StringUtil;
	import mx.validators.NumberValidator;
	import mx.validators.ValidationResult;

	public class UniqueNumberValidatorXML extends NumberValidator
	{
		private var results:Array;
		public var selfObj:XML;
		public var list:XMLList;
		public var field:String;
		public var errorMessage:String;
		public var compareValue:String;
		
		public function UniqueNumberValidatorXML() {
			super();
		}
		
		override protected function doValidation(value:Object):Array {
			var unique:Boolean = true;
			results = [];
			results = super.doValidation(value);
			for each(var obj:XML in list) {
				var isSelf:Boolean = obj == selfObj;
				if(selfObj && !isSelf && obj.@id && selfObj.@id)
					isSelf = obj.@id == selfObj.@id;
				if(!isSelf && Number(value) == Number(obj[field])) {
					unique = false;
					break;
				}
			}
			if(compareValue && Number(value) == Number(compareValue)) {
				unique = false;
			}
			if(!unique) {
    			results.push(new ValidationResult(true, null, "NonUnique", errorMessage));
			}
			return results;
		}
	}
}