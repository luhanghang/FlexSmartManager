package utils
{
	import mx.validators.ValidationResult;

	public class UniqueIPValidatorXML extends UniqueValidatorXML
	{
		private var results:Array;
		private static var pattern:RegExp = /^([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])$/;
		public var ipError:String;
		
		public function UniqueIPValidatorXML() {
			super();
		}
		
		override protected function doValidation(value:Object):Array {
			results = [];
			results = super.doValidation(value);
			if(value != null) {
    			if(value.search(pattern) == -1) {
    				ipError = "请填写有效的IP地址";
    				results.push(new ValidationResult(true, null, "invalidAddress",ipError ));
    			}
			}
			return results;
		}
	}
}