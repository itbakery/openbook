load 'deploy'
# Uncomment if you are using Rails' asset pipeline
load 'deploy/assets'
load 'config/deploy' # remove this line to skip loading any of the default tasks

def disable_rvm_shell(&block)
    old_shell = self[:default_shell]
    self[:default_shell] = nil
    yield
    self[:default_shell] = old_shell
end

disable_rvm_shell do
    run "rvm use 1.9.3@openbook"
end
