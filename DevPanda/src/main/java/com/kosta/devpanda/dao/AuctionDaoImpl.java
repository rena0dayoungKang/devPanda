package com.kosta.devpanda.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.devpanda.dto.Auction;

@Repository
public class AuctionDaoImpl implements AuctionDao {

	@Autowired
	private SqlSession sqlSession; 
	
	@Override
	public void insertAuction(Auction auction) {
		sqlSession.insert("mapper.auction.insertAuction", auction);
	}

}
