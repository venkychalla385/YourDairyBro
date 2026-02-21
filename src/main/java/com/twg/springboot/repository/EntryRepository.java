package com.twg.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.twg.springboot.entity.Entry;

public interface EntryRepository extends JpaRepository<Entry, Integer> {
	List<Entry> findByUserid(int userid);
}
