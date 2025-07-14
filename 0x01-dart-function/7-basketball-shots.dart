int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Calcul du score total de l'équipe A
  int scoreA = (teamA['Free throws'] ?? 0) * 1 +
               (teamA['2 pointers'] ?? 0) * 2 +
               (teamA['3 pointers'] ?? 0) * 3;

  // Calcul du score total de l'équipe B
  int scoreB = (teamB['Free throws'] ?? 0) * 1 +
               (teamB['2 pointers'] ?? 0) * 2 +
               (teamB['3 pointers'] ?? 0) * 3;

  // Comparaison des scores
  if (scoreA > scoreB) {
    return 1;
  } else if (scoreA < scoreB) {
    return 2;
  } else {
    return 0;
  }
}
