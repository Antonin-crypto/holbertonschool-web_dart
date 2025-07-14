bool isPalindrome(String s) {
  // Si la longueur est inférieure à 3, ce n'est pas un palindrome
  if (s.length < 3) return false;

  // On nettoie la chaîne : on enlève les espaces et on met tout en minuscules
  String cleaned = s.replaceAll(' ', '').toLowerCase();

  // On compare la chaîne nettoyée avec son inverse
  String reversed = cleaned.split('').reversed.join('');

  return cleaned == reversed;
}
