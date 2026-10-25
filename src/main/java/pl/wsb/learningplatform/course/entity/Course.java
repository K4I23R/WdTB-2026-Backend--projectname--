package pl.wsb.learningplatform.course.entity;
import jakarta.persistence.*;

@Entity
@Table(name = "courses")
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true, length = 100)
    private String title;

    @Column(nullable = false, length = 500)
    private String description;

    @Column(nullable = false)
    private CoursePrize coursePrize;

    @Column(nullable = false)
    private Boolean practical;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, name = "level", length = 20)
    private CourseLevel level;

    protected Course () {}

    public  Course(String title, String description, CoursePrize coursePrize, Boolean practical, CourseLevel level) {
        this.title = title;
        this.description = description;
        this.coursePrize = coursePrize;
        this.practical = practical;
        this.level = level;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public CoursePrize getCoursePrize() {
        return coursePrize;
    }

    public void setCoursePrize(CoursePrize coursePrize) {
        this.coursePrize = coursePrize;
    }

    public Boolean getPractical() {
        return practical;
    }

    public void setPractical(Boolean practical) {
        this.practical = practical;
    }

    public CourseLevel getLevel() {
        return level;
    }

    public void setLevel(CourseLevel level) {
        this.level = level;
    }
}
