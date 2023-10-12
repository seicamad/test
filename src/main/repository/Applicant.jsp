class Applicant {
    private int id;
    private String name;
    private String email;
    private String resume;

    public Applicant(int id, String name, String email, String resume) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.resume = resume;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getResume() {
        return resume;
    }
