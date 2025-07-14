int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calcul du score total de l'équipe A
  int totalA = (teamA['free throws'] ?? 0) * 1 +
               (teamA['2 pointers'] ?? 0) * 2 +
               (teamA['3 pointers'] ?? 0) * 3;

  // Calcul du score total de l'équipe B
  int totalB = (teamB['free throws'] ?? 0) * 1 +
               (teamB['2 pointers'] ?? 0) * 2 +
               (teamB['3 pointers'] ?? 0) * 3;

  // Comparaison des scores
  if (totalA > totalB) {
    return 1;
  } else if (totalA < totalB) {
    return 2;
  } else {
    return 0;
  }
}
