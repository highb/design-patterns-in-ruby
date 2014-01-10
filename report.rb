class Report
    def initialize
        @title = 'Monthly Report'
        @text = ['Things are', 'super great']
    end

    def output_report format
        if format == :plain
            puts "*** #{@title} ***"
        elsif foramt == :html
            puts '<html>'
            puts '<head>'
            puts "<title>#{@title}</title>"
            puts '</head>'
            puts '<body>'
        end

        @text.each do |line|
            if format == :plain
                puts line
            else
                puts "<p>#{line}</p>"
            end
        end

        if format == :html
            puts '</body>'
            puts '</html>'
        end
    end
end

report = Report.new
report.output_report
