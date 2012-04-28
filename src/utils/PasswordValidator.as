package utils
{
	import mx.validators.ValidationResult;
	import mx.validators.Validator;

	public class PasswordValidator extends Validator
	{
		private var results:Array;
		public var errorMessage:String = "密码只能由字母或数字或二者组合";
		private static var pattern:RegExp = /^[A-Za-z0-9]+$/;
		
		public function PasswordValidator() {
			super();
		}
		
		override protected function doValidation(value:Object):Array {
			results = [];
			results = super.doValidation(value);
			if(value != null) {				
    			if(value.search(pattern) == -1) {
    				results.push(new ValidationResult(true, null, "invalidPass", errorMessage));
    			}
			}
			return results;
		}
	}
}