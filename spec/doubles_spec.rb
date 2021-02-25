describe 'Doubles' do
    
    it 'allow stubbing methods' do
        dbl = double("Chant")
        allow(dbl).to receive(:hey!)
        expect(dbl).to respond_to(:hey!)
    end

    it 'allow stubbing a response with a block' do
        dbl = double("Chant")
        #when i say 'Hey!', u say 'Ho!'
        allow(dbl).to receive(:hey!) {"Ho!"}
        expect(dbl.hey!).to eq("Ho!")
    end

    it 'allow stubbing responses with #and_return' do
        dbl = double("Chant")
        allow(dbl).to receive(:hey!).and_return("Ho!")
        expect(dbl.hey!).to eq("Ho!")
    end

    it 'allow stubbing with a hash argument to #double' do
        dbl = double("Person", :full_name => "Hager Reda", :initials => "HR")
        expect(dbl.full_name).to eq("Hager Reda")
        expect(dbl.initials).to eq("HR")
    end
end