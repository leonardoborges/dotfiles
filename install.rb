#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba
# modified to override existing files

home = File.expand_path('~')

Dir['*'].each do |file|
  next if file =~ /install/
  target = File.join(home, ".#{file}")
  `rm -f #{target}`
  `ln -s #{File.expand_path file} #{target}`
end

# git push on commit
# `echo 'git push' > .git/hooks/post-commit`
# `chmod 755 .git/hooks/post-commit`