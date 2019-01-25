/*
https://www.codewars.com/kata/easy-sql-counting-and-grouping/train/sql

Difficulty: 7 kyu

Given a demographics table in the following format:

demographics table schema:
id
name
birthday
race

you need to return a table that shows a count of each race represented, ordered by the count in descending order as:

output table schema:
race
count

FUNDAMENTALS
*/

SELECT d.race, COUNT(d.race)
	FROM demographics d
	GROUP BY RACE
	ORDER BY COUNT(d.RACE) DESC

/**************************************************/
/**************************************************/
/**************************************************/

/*
results = run_sql

describe :query do
  describe "should contain keywords" do
    it "should contain SELECT" do
      expect($sql.upcase).to include("SELECT")
    end

    it "should contain FROM" do
      expect($sql.upcase).to include("FROM")
    end

    it "should contain ORDER BY" do
      expect($sql.upcase).to include("ORDER BY")
    end

    it "should contain GROUP BY" do
      expect($sql.upcase).to include("GROUP BY")
    end
  end

  describe :columns do
    it "should return 2 column" do
      expect(results.first.keys.count).to eq 2
    end
    
    it "should return a title column" do
      expect(results.first.keys).to include(:race)
    end

    it "should return a title column" do
      expect(results.first.keys).to include(:count)
    end
  end
end
*/