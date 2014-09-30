namespace :git do
  git_root = `git rev-parse --show-toplevel`.strip
  dest_dir = "#{git_root}/.git/hooks"
  directory dest_dir

  hooks = Dir[File.expand_path("../hooks/*", __FILE__)]
  hook_links = hooks.map{|hook_src|
    hook_link = File.join(dest_dir, File.basename(hook_src))
    file hook_link => [dest_dir, hook_src] do
      ln_sf hook_src, dest_dir
    end
    hook_link
  }

  desc "Install/update git hook scripts"
  task :setup => hook_links
end

