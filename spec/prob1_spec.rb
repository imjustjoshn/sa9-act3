require_relative '../prob1.rb'

RSpec.describe VendingMachine do
    describe '#purchase' do
        it 'removes bottles from the machine' do
            machine = VendingMachine.new
            machine.purchase(3)
            expect(machine.get_inventory).to eq(17)
        end
    end

    describe '#restock' do
        it 'adds bottles to the machine' do
            machine = VendingMachine.new
            machine.restock(3)
            expect(machine.get_inventory).to eq(23)
        end
    end

    describe '#get_inventory' do
        it 'shows all bottles in the machine' do
            machine = VendingMachine.new
            expect(machine.get_inventory).to eq(20)
        end
    end

    describe '#report' do
        it 'displays total bottles in the machine' do
            machine = VendingMachine.new
            expect { machine.report }.to output("Inventory: 20 bottles\n").to_stdout
        end
    end
end