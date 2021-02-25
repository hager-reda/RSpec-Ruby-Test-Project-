require 'car'

 describe 'Car' do #example group
# describe accept 1 parameter stribg or class name
    describe 'attributes' do

        #hooks before example will run before each example
        before(:example) do
            @car = Car.new
        end
        # xdescribe 'attributes' do => xdescribe skipped the all example group
        #or by using skip word and pending word 
        #but bu using pending it will run the test already and check if it faiols
        it "allows reading and writing for :make" do
        # it accept string just to describe what it does
        #xit skipped the example
            # car =  Car.new
            @car.make = 'Test'
            expect(@car.make).to eq('Test')
        end
        it "allows reading and writing for :year" do
                # car =  Car.new
                @car.year = 9999
                expect(@car.year).to eq(9999)
        end
        it "allows reading and writing for :color" do
                # car =  Car.new
                @car.color = 'fooo'
                expect(@car.color).to eq('fooo')
        end
        it "allows reading  for :wheels" do
            # car =  Car.new
            expect(@car.wheels).to eq(4)
        end

        it "allows writing for :doors"   #this is a pending example
        

    end
     describe '.colors' do  # nested group
     # (.colors) class method
        it "returns an array of color names" do  #example
        # it refers to the (.colors method)
            #expectations here 
            c = ['blue','black', 'red','green']
            expect(Car.colors).to match_array(c)
        end
         
     end

     describe '#full_name' do #nested gp
    # (#full_name) instance method
        it "returns a string in the expected format" do
            @honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
            expect(@honda.full_name).to eq('2004 Honda (blue)')
        end 
        
        context 'when initialized with no argument' do
            it 'returns a string using default values' do
                car = Car.new
                expect(car.full_name).to eq('2007 Volvo (unknown)')
            end
        end
     end
 end