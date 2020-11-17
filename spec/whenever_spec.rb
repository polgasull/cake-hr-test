require 'spec_helper'

describe 'Whenever Schedule' do
  before do
    load 'Rakefile' # Makes sure rake tasks are loaded so you can assert in rake jobs
  end

  it 'makes sure `runner` statements exist' do
    schedule = Whenever::Test::Schedule.new(file: 'config/schedule.rb')

    assert_equal 1, schedule.jobs[:runner].count

    schedule.jobs[:runner].each { |job| instance_eval job[:task] }
  end
end