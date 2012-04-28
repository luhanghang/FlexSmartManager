package utils
{
	import mx.validators.ValidationResult;

	public class UniqueIPValidator extends UniqueValidator
	{
		private var results:Array;
		public var invalidAddress:String;
		private static var pattern:RegExp = /^([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])$/;
		
		public function UniqueIPValidator() {
			super();
		}
		
		override protected function doValidation(value:Object):Array {
			results = [];
			results = super.doValidation(value);
			if(value != null) {
    			if(value.search(pattern) == -1) {
    				results.push(new ValidationResult(true, null, "invalidAddress", invalidAddress));
    			}
			}
			return results;
		}
	}
}