package movie;

public abstract class Media {
	protected int id;
    protected String name;
    protected String content;
    protected String category;
    protected String revenueModel;
    protected String contentProviderID;

    public Media(int id, String name, String content, String category, String revenueModel, String contentProviderID) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.category = category;
        this.revenueModel = revenueModel;
        this.contentProviderID = contentProviderID;
    }

    

    // Getters and Setters
    public int getId() { 
    	return id; 
    	}
    public String getName() { 
    	return name; 
    	}
    public String getContent() { 
    	return content; 
    	}
    public String getCategory() { 
    	return category; 
    	}
    public String getRevenueModel() { 
    	return revenueModel; 
    	}
    public String getContentProviderID() { 
    	return contentProviderID; 
    	}
}
