lit_git = "/home/deimi/local/tex4ht/tex4ht-dev/tex4ht/trunk/lit"
lit_svn = "/home/deimi/local/tex4ht/svn/tex4ht/trunk/lit"
source = lit_git + "/archive"


task :default do
  puts "Hello Word!"
end

task "diff-svn" => [:archive] do 
    sh "diff -qr --no-dereference -x '.*' #{source} #{lit_svn}",  :noop => false
end

task "diff-svn-lit" do 
    sh "diff -qr --no-dereference -x '.*' #{lit_git} #{lit_svn}",  :noop => false
end

task "diff-svn-c0" => [:archive] do
  sh "diff -C0 -r --no-dereference -x '.*' #{source} #{lit_svn}",  :noop => false
end

task "sync-svn" => [:archive] do
  sh "rsync -avcz --delete  #{source}/ --exclude '.*' #{lit_svn}", :noop => false
end


task "pull-svn" do
  sh "rsync -avcz --delete  #{lit_svn}/ --exclude '.*' --exclude=Rakefile #{lit_git}", :noop => false
end



task :archive do
 sh "rm -rf archive"
 sh "git archive --format=tar --prefix=archive/ master | tar -x"
end
