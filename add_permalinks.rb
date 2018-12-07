require 'yaml'

def strip_yaml(str)
  str.to_s.gsub!(/\A---(.|\n)*?---/, '')
end

Dir.glob('./content/_paginated/*.md').each do |page|
  metadata = YAML.load(File.open(page))
  permalink = "/paginated/#{File.basename(page, '.md')}.html"
  metadata['permalink']= permalink
  content = strip_yaml(File.read(page))
  target  = "./content/_new/#{File.basename(page)}"

  File.open(target, 'w') do |f|
    puts "writing #{target}"
    f.write("#{metadata.to_yaml.strip}\n---#{content}")
  end
end
