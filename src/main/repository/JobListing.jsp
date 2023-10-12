class JobListing {
    private int id;
    private String title;
    private String description;
    private double salary;
    private List<Applicant> applicants;

    public JobListing(int id, String title, String description, double salary) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.salary = salary;
        this.applicants = new ArrayList<>();
    }
