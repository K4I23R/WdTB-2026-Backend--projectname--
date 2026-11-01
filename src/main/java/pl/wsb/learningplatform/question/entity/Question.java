package pl.wsb.learningplatform.question.entity;
import jakarta.persistence.*;

@Entity
@Table(name = "questions")
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 100)
    private String title;

    @Column(nullable = false, length = 1000)
    private String content;

    @Column(nullable = false, length = 100)
    private String answerA;

    @Column(nullable = false, length = 100)
    private String answerB;

    @Column(nullable = false, length = 100)
    private String answerC;

    @Column(nullable = false, length = 100)
    private String answerD;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 1)
    private CorrectAnswer correctAnswer;

    protected Question() {}

    public Question(String title, String content, String answerA, String answerB, String answerC, String answerD, CorrectAnswer correctAnswer) {
        this.title = title;
        this.content = content;
        this.answerA = answerA;
        this.answerB = answerB;
        this.answerC = answerC;
        this.answerD = answerD;
        this.correctAnswer = correctAnswer;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getAnswerA() {
        return answerA;
    }

    public String getAnswerB() {
        return answerB;
    }

    public String getAnswerC() {
        return answerC;
    }

    public String getAnswerD() {
        return answerD;
    }

    public CorrectAnswer getCorrectAnswer() {
        return correctAnswer;
    }
}
