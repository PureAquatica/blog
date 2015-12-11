class Post < ActiveRecord::Base
    
    def post_parms
    # http://stackoverflow.com/questions/23437830/undefined-method-attr-accessible
    params.require(:Post).permit(:body, :title)
    end
    
    has_many :comments
    
    validates_presence_of :body, :title
    
    
end
