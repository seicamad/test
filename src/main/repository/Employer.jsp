class Employer {
    private int id;
    private String name;
    private List<JobListing> jobListings;

    public Employer(int id, String name) {
        this.id = id;
        this.name = name;
        this.jobListings = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<JobListing> getJobListings() {
        return jobListings;
    }

    public void addJobListing(JobListing jobListing) {
        jobListings.add(jobListing);
    }