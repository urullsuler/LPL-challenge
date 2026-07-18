CREATE TABLE players (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  role TEXT NOT NULL,
  win_rate REAL NOT NULL,
  kda REAL NOT NULL,
  economy_efficiency REAL NOT NULL,
  team_synergy REAL NOT NULL,
  stability REAL NOT NULL,
  cvi REAL NOT NULL
);

CREATE TABLE teams (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  budget INTEGER NOT NULL,
  youth_investment REAL NOT NULL,
  recent_rank INTEGER NOT NULL,
  relegation_risk TEXT NOT NULL
);
