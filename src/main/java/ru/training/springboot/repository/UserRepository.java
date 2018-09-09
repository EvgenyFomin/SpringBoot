package ru.training.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.training.springboot.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
