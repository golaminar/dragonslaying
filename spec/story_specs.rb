describe 'the story' do
    story = File.readlines(File.join(File.dirname(__FILE__), '..', 'story.txt'))

    subject {
        story
    }

    let(:chapter_heading_regex) { Regexp.new('^# chapter (\d)$', Regexp::IGNORECASE) }
    #splitting produces an empty string before the first chapter, which we remove with [1..-1]
    let(:chapters) { subject.join.split(/^# chapter \d/i)[1..-1] }

    it 'has chapters of 3-5 sentences' do
        last_chapter = chapters.pop
        line_counts = chapters.map {|c| c.lines.count}

        # last chapter doesn't have a blank line preceding the next chapter
        expect(last_chapter.lines.count).to be_between(5, 7)
        expect(line_counts).to all(be_between(6, 8))
    end

    it 'has chapter headings' do
        unless subject == []
            chapter_headings = subject.grep(chapter_heading_regex)
            expect(chapter_headings).not_to be_empty
        end
    end

    it 'has increasing chapter numbers' do
        unless subject == []
            chapter_numbers = subject.map {|l| l.match(chapter_heading_regex) }.
                                compact.
                                map {|md| md[1] }.map(&:to_i)
        
            expect(chapter_numbers).to eq(chapter_numbers.sort)
        end
    end

#      it 'is written in the style of Kurt Vonnegut' do
#          third_sentences = chapters.map do |c|
#              # it's at index 4 because we have newline, newline, 1, 2, 3
#              c.split("\n")[4]
#          end
#
#          expect(third_sentences).to all(match(/^so it goes.$/i))
#      end

#     it 'is written in the style of e e cummings' do
#         expect(story.join).not_to match(/[A-Z]/)
#     end

#     it 'is written in the style of F. Scott Fitzgerald' do
#         expected_sentence = "so we beat on, boats against the current, borne back ceaselessly into the past."
#         expect(story.last.downcase.tr("\n", "")).to eq(expected_sentence)
#     end

#    it 'is written in the style of Herman Melville' do
#        expected_sentence = "call me ishmael."
#        #index 2 because we have newline, newline, first sentence
#        expect(chapters.first.split("\n")[2].downcase.tr("\n", "")).to eq(expected_sentence)
#    end

    it 'is colourful' do
        expect(chapters).to all(match(/(red|green|blue)/i))
    end
end
