module Jekyll
    class TagPageGenerator < Generator
      safe true
  
      def generate(site)
        tags = []
        
        # Collect all tags from notes
        site.collections['notes'].docs.each do |note|
          if note.data['tags']
            tags.concat(note.data['tags'])
          end
        end
  
        # Remove duplicates
        tags = tags.uniq
  
        # Create a page for each tag
        tags.each do |tag|
          site.pages << TagPage.new(site, site.source, 'tags', tag)
        end
      end
    end
  
    class TagPage < Page
      def initialize(site, base, dir, tag)
        @site = site
        @base = base
        @dir = dir
        @name = "#{tag}.html"
  
        self.process(@name)
        # Changed 'tag.html' to 'tags.html' to match your layout file name
        self.read_yaml(File.join(base, '_layouts'), 'tags.html')
        self.data['title'] = "Tagged: #{tag}"
        self.data['tag'] = tag
      end
    end
  end