package sample.codearea.service;

import org.springframework.stereotype.Service;
import sample.codearea.dto.CommentRequestDto;
import sample.codearea.dto.CommentResponseDto;
import sample.codearea.entity.CommentEntity;


@Service
public class CommentConverter {

    public CommentResponseDto toDto(CommentEntity entity) {
        return CommentResponseDto.builder()
                .nickname(entity.getUser().getNickname())
                .modifiedAt(entity.getUpdatedAt())
                .content(entity.getContent())
                .build();
    }
}
