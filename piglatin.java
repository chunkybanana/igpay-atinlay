import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Main {
    public static String pigLatin(String str) {
        if(str.length() == 0){
            return "";
        } else {
            String res = "";
            for(int x = 0; x < str.split(" ").length; x++){
                String str2 = str.split(" ")[x];    
                Pattern patt = Pattern.compile("a|e|i|o|u|y", Pattern.CASE_INSENSITIVE);
                Matcher match = patt.matcher(str2);
                String str3;
                if(match.find()){
                    str3 = str2.substring(indexOf(patt,str2),str2.length()) + str2.substring(0,indexOf(patt,str2));
                    if(indexOf(patt,str2) == 0){
                        str3 += "way";
                    } else {
                        str3 += "ay";
                    }
                } else {
                    str3 = str2 + "ay";
                }
                String str4 = str3;
                str3 = str3.replaceAll("[^A-z ]","").toLowerCase();
                Pattern patt2 = Pattern.compile("[?!.,]");
                Matcher match2 = patt2.matcher(str4);
                while(match2.find()){  
                    str3 += match2.group();  
                }
                if(Character.isUpperCase(str2.charAt(0))){
                    str3 = String.valueOf(str3.charAt(0)).toUpperCase() + str3.substring(1,str3.length());
                }
                res += str3 + (x == str.split(" ").length ? "" : " ");
            }
            return res;
        }
    }
    private static int indexOf(Pattern pattern, String s) {
        Matcher matcher = pattern.matcher(s);
        return matcher.find() ? matcher.start() : -1;
    }
}