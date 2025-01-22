CREATE TABLE AnimalPopulation (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Species VARCHAR(100),
  Population INT,
  Year INT,
  HabitatType VARCHAR(100),
  ConservationStatus VARCHAR(50),
  Region VARCHAR(100)
)
INSERT INTO AnimalPopulation (
  Species, Population, Year, HabitatType, ConservationStatus, Region
)
VALUES
  ('African Elephant', 415000, 2020, 'Savanna', 'Vulnerable', 'Africa'),
  ('African Elephant', 410000, 2019, 'Savanna', 'Vulnerable', 'Africa'),
  ('Bengal Tiger', 2270, 2020, 'Forest', 'Endangered', 'India'),
  ('Gray Wolf', 300000, 2020, 'Forest', 'Least Concern', 'North America'),
  ('Giant Panda', 1864, 2020, 'Forest', 'Vulnerable', 'China'),
  ('Snow Leopard', 6000, 2020, 'Mountain', 'Vulnerable', 'Asia');

SELECT Year, SUM(Population) AS TotalPopulationFROM AnimalPopulationGROUP BY YearORDER BY Year;
SELECT Species, AVG(Population) AS AveragePopulationFROM AnimalPopulationGROUP BY Species;SELECT ConservationStatus, COUNT(DISTINCT Species) AS SpeciesCountFROM AnimalPopulationGROUP BY ConservationStatus;
