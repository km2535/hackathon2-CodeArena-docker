package sample.codearea.entity;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.ColumnDefault;
import sample.codearea.common.TimeTrackableEntity;

@Entity
@Table(name = "QUESTION")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class QuestionEntity extends TimeTrackableEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "questionId")
	private Long id;

	@ManyToOne (fetch = FetchType.LAZY)
	@JoinColumn(name = "userId", nullable = false)
	private UserEntity user;

	@ManyToMany(mappedBy = "questionScraps")
	private List<UserEntity> users = new ArrayList<>();

	@Column(nullable = false, columnDefinition = "VARCHAR(255)")
	private String title;

	@Column(nullable = false, columnDefinition = "TEXT")
	private String content;

	@Column(nullable = false, columnDefinition = "INT")
	@ColumnDefault("0")
	private Integer views = 0;

	@Column(nullable = false, columnDefinition = "INT")
	@ColumnDefault("0")
	private Integer likes = 0;

	@Column(nullable = false, columnDefinition = "INT")
	@ColumnDefault("0")
	private Integer hates = 0;

	@OneToMany(mappedBy = "question")
	private List<AnswerEntity> answers = new ArrayList<>();

	/**
	 * 테스트를 위해 views, likes, hates 추가
	 * 추후 해당 필드는 삭제 예정
	 */
	@Builder
	protected QuestionEntity(
		Long id,
		UserEntity user,
		String title,
		String content,
		Integer views,
		Integer likes,
		Integer hates
	) {
		this.id = id;
		this.user = user;
		this.title = title;
		this.content = content;
		this.views = views;
		this.likes = likes;
		this.hates = hates;
	}
}
