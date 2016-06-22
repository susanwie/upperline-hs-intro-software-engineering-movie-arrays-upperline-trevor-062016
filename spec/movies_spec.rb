require 'spec_helper.rb'

describe 'movies' do 

  before(:each) do
    @movies = ["Minions", "Trainwreck", "Inside Out", "Silver Linings Playbook", "Pitch Perfect 2", "Hot Pursuit" ]
  end

  describe '#first_movie' do
    it "returns a the first movie" do
      expect(first_movie(@movies)).to eq("Minions")
    end
  end

  describe '#watch_move' do
    it 'removes the first movie because you watched it and returns the modified array' do
      expect(watch_movie(@movies)).to eq(["Trainwreck", "Inside Out", "Silver Linings Playbook", "Pitch Perfect 2", "Hot Pursuit"])

    end
  end

  describe '#update_queue' do
    it 'adds movies to the end of your queue' do
      expect(update_queue(@movies, "The Grand Budapest Hotel")).to eq ["Minions", "Trainwreck", "Inside Out", "Silver Linings Playbook", "Pitch Perfect 2", "Hot Pursuit", "The Grand Budapest Hotel"]
    end
  end

  describe '#view_queue' do
    it 'prints out the movies in the queue using the each method' do
      output = capture_stdout { view_queue(@movies) }
      expect(output).to eq "You will watch Minions\nYou will watch Trainwreck\nYou will watch Inside Out\nYou will watch Silver Linings Playbook\nYou will watch Pitch Perfect 2\nYou will watch Hot Pursuit\n"
    end
  end
  
end
