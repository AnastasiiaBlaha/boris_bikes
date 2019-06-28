require 'bike'

describe Bike do

    describe '#report_broken' do
        it 'can be reported as broken' do
            subject.report_broken
            expect(subject).to be_broken
        end
    end
end
