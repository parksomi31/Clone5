package kr.soft.study.dao;

import java.util.ArrayList;

import kr.soft.study.dto.RDTO;

public interface RDAO {
    void insertReservation(RDTO reservation);
    public ArrayList<RDTO> programView();
    public void deleteProgram(String id);
}
