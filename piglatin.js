function pigLatin(str){
	let arr = [],x;
    for(x of str.split(' ')){
    	let str2;
    	if(x.search(/[aeiouy]/i) !== -1){
        	str2 = x.slice(x.search(/[aeiouy]/i)) + x.slice(0,x.search(/[aeiouy]/i));
            if(x.search(/[aeiouy]/i) === 0){
            	str2 += 'way';
            } else { 
            	str2 += 'ay';
            }
        } else {
        	str2 = x + 'ay';
        }
        let str3 = str2;
        str2 = str2.replace(/[^A-z ]/g,'').toLowerCase() + (str3.match(/[?.!,]/g)?.join('') ?? '');
        if(str2 === 'ay'){
        	str2 = '';
		}
        if(x.charAt(0) == x.charAt(0).toUpperCase()){
        	str2 = str2.charAt(0).toUpperCase() + str2.slice(1);
       	}
    	arr.push(str2); 
   	}
    return arr.join(' ');
}