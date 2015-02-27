desc 'Travis CI'
task :travis do

  # sh 'bundle exec rspec'

  if ENV['TRAVIS_PULL_REQUEST'].to_s.to_i > 0
    puts 'Pull request detected.'
    next # if this is a pull request, do not deploy
  end

  if ENV['TRAVIS_BRANCH'].to_s == 'master'
    puts 'Deploying master branch to staging.'
    sh 'bundle exec cap staging deploy'
  end
end
