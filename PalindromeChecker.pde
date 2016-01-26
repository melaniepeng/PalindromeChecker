public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = new String();
  for(int i = word.length() - 1; i >= 0; i--)
  {
    if(word.substring(i,i+1).equals(" ") == false && Character.isLetter(word.charAt(i)) == true)
    {
      s = s + word.substring(i,i+1);
    }
  }
  String t = new String();
  for(int j = 0; j < word.length(); j++)
  {
    if(word.substring(j,j+1).equals(" ") == false && Character.isLetter(word.charAt(j)) == true)
    {
      t = t + word.charAt(j);
    }
  }
  if(t.toLowerCase().equals(s.toLowerCase()) == true)
    {
      return true;
    }
    else
    {
      return false;
    }
}

