package sample.codearea.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.DynamicInsert;
import sample.codearea.common.TimeTrackableEntity;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@DynamicInsert
@Builder
@Entity
@Table(name = "answer")
public class AnswerEntity extends TimeTrackableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "answerId", nullable = false)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "userId", nullable = false)
    private UserEntity user;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "questionId", nullable = false)
    private QuestionEntity question;

    @Column(nullable = false)
    private String content;

    @Column(columnDefinition = "INT")
    @ColumnDefault("0")
    private Integer likes;

    @Column(columnDefinition = "INT")
    @ColumnDefault("0")
    private Integer hates;

    @Builder.Default
    @OneToMany(mappedBy = "answer")
    private List<CommentEntity> comments = new ArrayList<>();
}
