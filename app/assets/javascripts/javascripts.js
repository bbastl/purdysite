<Script Language= JavaScript>
		
		
		
		function CheckNumeric(strVal)
		{
			var strValidChars = "0123456789 -";//<-- put the the list of characters allowed
  		    var strChar;
			var blnResult = true;

			for (i = 0; i < strVal.length && blnResult == true; i++)
			{
				strChar = strVal.charAt(i);
				if (strValidChars.indexOf(strChar) == -1)
				{
					blnResult = false;
				}
			}
			
			return blnResult;
		}
		function CheckAlpha(strVal)
		{
			var strValidChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";//<-- put the the list of characters allowed
  		    var strChar;
			var blnResult = true;

			for (i = 0; i < strVal.length && blnResult == true; i++)
			{
				strChar = strVal.charAt(i);
				if (strValidChars.indexOf(strChar) == -1)
				{
					blnResult = false;
				}
			}
			
			return blnResult;
		}
		function CheckAlphaNumeric(strVal)
		{
			var strValidChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'.,)(&/\- @#$&*=[]";//<-- put the the list of characters allowed
  		    var strChar;
			var blnResult = true;

			for (i = 0; i < strVal.length && blnResult == true; i++)
			{
				strChar = strVal.charAt(i);
				if (strValidChars.indexOf(strChar) == -1)
				{
					blnResult = false;
				}
			}
			
			return blnResult;
		}
		function CheckAlphaNum(strVal)
		{
			var strValidChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_- ";//<-- put the the list of characters allowed
  		    var strChar;
			var blnResult = true;

			for (i = 0; i < strVal.length && blnResult == true; i++)
			{
				strChar = strVal.charAt(i);
				if (strValidChars.indexOf(strChar) == -1)
				{
					blnResult = false;
				}
			}
			
			return blnResult;
		}


function isEmail(s)
{  
    var i = 1;
    var sLength = s.length;

    // look for @
    while ((i < sLength) && (s.charAt(i) != "@"))
    { i++
    }

    if ((i >= sLength) || (s.charAt(i) != "@")) return false;
    else i += 2;

    // look for .
    while ((i < sLength) && (s.charAt(i) != "."))
    { i++
    }

    // there must be at least one character after the .
    if ((i >= sLength - 1) || (s.charAt(i) != ".")) return false;
    else return true;
}
</script>