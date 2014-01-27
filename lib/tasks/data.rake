namespace :data do
  namespace :import do
    task :matches => :environment do
      HTTPI.log = false

      File.foreach(Rails.root.join('data', 'matches.csv')) do |term|
        term.strip!

        pref_label = Labeling::SKOS::PrefLabel.joins(:target)
            .merge(Label::Base.where(:value => term)).first
        if pref_label.nil?
          STDERR.puts "[WARNING] Can't find local pref label for \"#{term}\", skipping..."
          next
        end

        concept = pref_label.owner

        request = HTTPI::Request.new('http://umthes.innoq.com/de/search.html')
        request.query = {
          :q => term.to_s.strip,
          :t => 'inflectionals',
          :qt => 'exact',
          :for => 'concept',
          :l => 'de'
        }

        response = HTTPI.get(request)
        doc = Nokogiri::HTML(response.body)

        result = doc.at_css('.search-results a')
        concept_path = result['data-pref-label-for'] if result

        if result && concept_path.present?
          # ap concept_path
          url = "http://umthes.innoq.com#{concept_path}"
          puts "#{concept.to_s} (#{concept.origin}) skos:closeMatch "
          Match::SKOS::CloseMatch.create! do |m|
            m.concept = concept
            m.value = url
          end
        else
          STDERR.puts "[WARNING] Can't find matching pref label for \"#{term}\" in UMTHES"
        end
      end
    end
  end
end
