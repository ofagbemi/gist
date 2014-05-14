class ConvertArticleTextToHtml < ActiveRecord::Migration
  def change
      Section.all.each do |section|
        unless section.short.include? "<p>"
          new_short = ""
          lines = section.short.lines
          lines.each do |line|
            new_short = new_short + "<p>#{line}</p>"
          end
          section.update_attribute :short, new_short
        end
        
        unless section.medium.include? "<p>"
          new_med = ""
          lines = section.medium.lines
          lines.each do |line|
            new_med = new_med + "<p>#{line}</p>"
          end
          section.update_attribute :medium, new_med
        end
        
        unless section.long.include? "<p>"
          new_long = ""
          lines = section.long.lines
          lines.each do |line|
            new_long = new_long + "<p>#{line}</p>"
          end
          section.update_attribute :long, new_long
        end
      end
  end
end
