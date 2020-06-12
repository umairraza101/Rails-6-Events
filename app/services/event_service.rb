class EventService
  def initialize(event)
    @event = event
  end

  def create_picture
    unless @event.photo.exists?
      require 'open-uri'
      res = JSON.parse(open("https://pixabay.com/api/?key=13473639-a63a063177618fcd622d1536a&q=#{['party', 'hangout'].join('+')}&image_type=photo&pretty=true").read)
      unless res["total"].zero?
        @event.photo = URI.parse(res["hits"].sample["largeImageURL"]).open
      end
    end
  end

  def create_bookables
    (@event.start_date.to_date..@event.end_date.to_date).each do |date|
      @event.bookable_days.create(date: date)
    end
  end

  def save_event
    @event.save
  end
end