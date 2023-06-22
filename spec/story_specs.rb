describe 'the story' do
    story = File.readlines(File.join(File.dirname(__FILE__), '..', 'story.txt'))
    subject {
        story
    }
    it 'has chapters of 3-5 sentences'
    it 'has chapter headings'
    it 'has increasing chapter numbers' do
        unless subject == []
            chapter_numbers = subject.map {|l| l.match(/chapter (.+)/i) }.
                                compact.
                                map {|md| md[1] }.map(&:to_i)
        
            expect(chapter_numbers).to eq(chapter_numbers.sort)
        end
    end

    it 'is written in the style of Kurt Vonnegut'
    it 'is written in the style of e e cummings'
    it 'is written in the style of F. Scott Fitzgerald'
    it 'is written in the style of Herman Melville'
    it 'is colourful'
end
