CREATE TABLE player_stats (
  id SERIAL PRIMARY KEY,
  player_name VARCHAR(50) NOT NULL,
  team_name VARCHAR(50),
  region VARCHAR(20),
  position VARCHAR(10),
  dpm INT,
  gold_diff_15 INT,
  kda NUMERIC(4, 2),
  vision_score INT,
  unforced_errors INT,
  win_rate NUMERIC(4, 2),
  cvi_score NUMERIC(5, 2)
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  team_name VARCHAR(50) NOT NULL,
  budget INT NOT NULL,
  youth_investment NUMERIC(4, 2),
  recent_rank INT NOT NULL,
  relegation_risk VARCHAR(20) NOT NULL
);

CREATE TABLE reform_decisions (
  id SERIAL PRIMARY KEY,
  decision_type VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  severity VARCHAR(20) NOT NULL
);
