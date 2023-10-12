package repository;

import model.Applicant;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ApplicantRepository extends JdbcRepository {
    public ApplicantRepository() {
        getConnection();
    }

    public List<Applicant> getAllApplicants() {
        List<Applicant> applicantList = new ArrayList<>();

        try (Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM public.applicants")) {

            while (resultSet.next()) {
                int id = resultSet.getInt("applicant_id");
                String name = resultSet.getString("applicant_name");
                String email = resultSet.getString("applicant_email");
                String resume = resultSet.getString("applicant_resume");

                Applicant applicant = new Applicant();
                applicant.setId(id);
                applicant.setName(name);
                applicant.setEmail(email);
                applicant.setResume(resume);

                applicantList.add(applicant);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return applicantList;
    }

    public void addApplicant(Applicant applicant) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("INSERT INTO public.applicant(applicant_name, applicant_email, applicant_resume) VALUES (?, ?)")) {
            statement.setString(1, applicant.getName());
            statement.setString(2, applicant.getEmail());
            statement.setString(2, applicant.getResume());
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteApplicant(int id) {

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("DELETE FROM public.applicants WHERE applicant_id = ?")) {
            statement.setInt(1, id);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<Applicant> selectApplicant(int id) {
        List<Applicant> applicantList2 = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM public.applicants WHERE applicant_id = ?")) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                int resultId = resultSet.getInt("applicant_id");
                String name = resultSet.getString("applicant_name");
                String email = resultSet.getString("applicant_email");
                String resume = resultSet.getString("applicant_resume");

                Applicant applicant = new Applicant();
                applicant.setId(resultId);
                applicant.setName(name);
                applicant.setEmail(email);
                applicant.setResume(resume);

                applicantList2.add(applicant);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return applicantList2;
    }

        public void updateApplicant (Applicant applicant){
            try (Connection connection = getConnection();
                 PreparedStatement statement = connection.prepareStatement("UPDATE public.applicants SET applicant_name = ? , applicant_email = ? , applicant_email = ? , WHERE applicant_id = ?")) {
                statement.setString(1, applicant.getName());
                statement.setString(2, applicant.getEmail());
                statement.setString(2, applicant.getResume());
                statement.setInt(3, applicant.getId());
                statement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }