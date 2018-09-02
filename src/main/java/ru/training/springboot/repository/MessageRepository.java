package ru.training.springboot.repository;

import org.springframework.data.repository.CrudRepository;
import ru.training.springboot.domain.Message;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Integer> {
    List<Message> findByTag(String tag);
}
