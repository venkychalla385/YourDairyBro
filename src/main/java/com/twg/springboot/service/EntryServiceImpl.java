package com.twg.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.twg.springboot.entity.Entry;
import com.twg.springboot.repository.EntryRepository;
@Service
public class EntryServiceImpl implements EntryService {
         
	
	 @Autowired
	 private EntryRepository entryRepository;
	public EntryRepository getEntryRepository() {
		return entryRepository;
	}

	 public void setEntryRepository(EntryRepository entryRepository) {
		 this.entryRepository = entryRepository;
	 }

	@Override
	public Entry saveEntry(Entry entry) {
		// TODO Auto-generated method stub
		return entryRepository.save(entry);
	}

	@Override
	public Entry updateEntry(Entry entry) {
		// TODO Auto-generated method stub
		return entryRepository.save(entry);
	}

	@Override
	public void deleteEntry(Entry entry) {
		// TODO Auto-generated method stub
		entryRepository.delete(entry);
	}

	@Override
	public List<Entry> findAll() {
		// TODO Auto-generated method stub
		return entryRepository.findAll();
	}

	@Override
	public List<Entry> findByUserid(int userid) {
		// TODO Auto-generated method stub
		return entryRepository.findByUserid(userid);
	}

	@Override
	public Entry findById(int id) {
		// TODO Auto-generated method stub
		return entryRepository.findById(id).get();
	

}
}
