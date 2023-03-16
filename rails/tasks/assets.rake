namespace :assets do
  task :precompile do
    on roles(:app) do
      within release_path do
        execute :bundle, "exec rake assets:precompile RAILS_ENV=#{fetch(:rails_env)}"
      end
    end
  end
end
