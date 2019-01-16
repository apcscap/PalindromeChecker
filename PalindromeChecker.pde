public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = parseWord(word);
  if(word.equals(reverse(word)))
    return true;
  return false;
}
public String parseWord(String str) {
  str = reverse(str);
  str = noCapitals(str);
  str = noSpaces(str);
  str = noSpecialCharacters(str);
  return str;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length()-1;i>=0;i--)
      sNew += str.substring(i, i+1);
    return sNew;
}

public String noCapitals(String str) {
  return str.toLowerCase();
}

public String noSpaces(String str){
  String result = new String();
  for(int i=0;i<str.length();i++)
    if(!str.substring(i, i+1).equals(" "))
      result += str.substring(i, i+1);
  return result;
}

public String noSpecialCharacters(String str) {
  String sNew = new String();
  for(int i=0;i<str.length();i++)
    if(Character.isLetter(str.charAt(i)))
      sNew += str.substring(i, i+1);
  return sNew;
}