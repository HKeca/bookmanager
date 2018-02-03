require 'yaml'

class SaveManager
    @@filename = "books.yml"

    def self.save(books)
        saveFile = File.new(@@filename, 'w')

        saveFile.puts YAML.dump(books)
        saveFile.close
    end

    def self.load_save()
        saveFile = File.new(@@filename, 'r')

        saveData = YAML.load(saveFile.read)
        saveFile.close

        return saveData
    end
end