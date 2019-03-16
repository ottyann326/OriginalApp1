class ImportCsv < ApplicationRecord
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      Racket.create(
        name: row["name"],
        price: row["price"],
        kind: row["kind"],
        image: row["image"]
      )
    end
  end
end
