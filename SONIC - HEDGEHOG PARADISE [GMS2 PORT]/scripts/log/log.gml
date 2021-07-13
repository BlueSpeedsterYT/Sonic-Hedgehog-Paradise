/// @description  log(data, *if, *?, *value)
/// @param data
/// @param  *if
/// @param  *?
/// @param  *value
function log() {
	 // Log data on the compiler.
	 // *Optional
 
	    if(argument_count > 1)
	    { 
	       switch(argument[2])
	       {
	              case "=":
	              { 
	                 if(argument[1] = argument[3])
	                 {
	                    show_debug_message(argument[0]);
	                 }
	                 break;
	              }
	              case ">":
	              {
	                 if(argument[1] > argument[3])
	                 {
	                    show_debug_message(argument[0]);
	                 }
	                 break;              
	              }
	              case "<":
	              {
	                 if(argument[1] < argument[3])
	                 {
	                    show_debug_message(argument[0]);
	                 }
	                 break;              
	              }
	              case ">=":
	              {
	                 if(argument[1] >= argument[3])
	                 {
	                    show_debug_message(argument[0]);
	                 }
	                 break;              
	              }
	              case "<=":
	              {
	                 if(argument[1] <= argument[3])
	                 {
	                    show_debug_message(argument[0]);
	                 }
	                 break;              
	              }
	              case "!=":
	              {
	                 if(argument[1] != argument[3])
	                 {
	                    show_debug_message(argument[0]);
	                 }
	                 break;              
	              }              
	       }
	    }
	    else show_debug_message(argument[0])




}
