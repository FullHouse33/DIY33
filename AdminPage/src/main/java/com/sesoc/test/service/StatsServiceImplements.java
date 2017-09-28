package com.sesoc.test.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.sesoc.test.dao.StatsDao;
import com.sesoc.test.vo.Graph1VO;
import com.sesoc.test.vo.Graph2VO;
import com.sesoc.test.vo.Graph4VO;
import com.sesoc.test.vo.RankVO;
import com.sesoc.test.vo.StatVO;
import com.sesoc.test.vo.UserVO;

@Service
public class StatsServiceImplements implements StatsService{
	
	@Autowired
	private StatsDao dao;

	//유저에게 가장 인기 많은 제품
	@Override 
	public void bestFurnitureList(Model model) {
		ArrayList<RankVO> vo = new ArrayList<>();
		ArrayList<RankVO> list = dao.bestFurnitureList();

		if (list.size() != 0) {
			for (int i = 0; i < 9; i++) {
				vo.add(i, list.get(i));
			}
			model.addAttribute("rank",vo);     
		}
	}
	
	//관리자가 전체, 기업별 좋아요 순으로 목록 조회
	@Override
	public ArrayList<StatVO> companyListAll(String stat) {
		return dao.companyListAll(stat);
	}

	//기업 회원이 자사 좋아요 순으로 목록 조회
	@Override
	public void companyStatistics(Model model, String coId) {
		ArrayList<StatVO> voa = dao.companyStatistics(coId);
		model.addAttribute("comStat", voa);
	}

	//성별, 연령별 인기 제품 >> 희진이가 수정해주나? 쿄쿄
	@Override
	public void genFurnitureList(Model model, UserVO user) {
	
		ArrayList<RankVO> vo=dao.genFurnitureList(user);
		ArrayList<RankVO> img = new ArrayList<>();
		if (vo.size() != 0) {
			for(int i=0;i<3;i++){
				img.add(vo.get(i));
			}
			model.addAttribute("genList", img);
		}
		
	}

	
	@Override
	public void Graph1(Model model) {
		ArrayList<Graph1VO> list = dao.Graph1();
		List<Integer> list1 = new ArrayList<>();
		List<Integer> list2 = new ArrayList<>();
		List<Integer> list3 = new ArrayList<>();
		List<Integer> list4 = new ArrayList<>();
		List<Integer> list5 = new ArrayList<>();
		
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getYear().equals("2012")){
				list1.add(list.get(i).getCount());
			}
			if(list.get(i).getYear().equals("2013")){
				list2.add(list.get(i).getCount());
			}
			if(list.get(i).getYear().equals("2014")){
				list3.add(list.get(i).getCount());
			}
			if(list.get(i).getYear().equals("2015")){
				list4.add(list.get(i).getCount());
			}
			if(list.get(i).getYear().equals("2016")){
				list5.add(list.get(i).getCount());
			}
			if(list.get(i).getYear().equals("2016")){
				list1.add(list.get(i).getCount());
			}
		}
		
		model.addAttribute("test1", list1);
		model.addAttribute("test2", list2);
		model.addAttribute("test3", list3);
		model.addAttribute("test4", list4);
		model.addAttribute("test5", list5);
		
	}

	@Override
	public void Graph2(Model model) {
		ArrayList<Graph2VO> list = dao.Graph2();
		
		List<Integer> ikea = new ArrayList<>();
		int ikeaTable=0;
		int ikeaChair=0;
		int ikeaCloset=0;
		int ikeaBed=0;
		int ikeaSofa=0;
		int ikeaOthers=0;
		
		List<Integer> casamia = new ArrayList<>();
		int caTable=0;
		int caChair=0;
		int caCloset=0;
		int caBed=0;
		int caSofa=0;
		int caOthers=0;
		
		List<Integer> Hanssem = new ArrayList<>();
		int hTable=0;
		int hChair=0;
		int hCloset=0;
		int hBed=0;
		int hSofa=0;
		int hOthers=0;
		
		for (Graph2VO vo : list) {
			if(vo.getConame().equals("Ikea")){
				if(vo.getType().equals("Table")){
					ikeaTable=ikeaTable+vo.getCount();
				}
				if(vo.getType().equals("Chair")){
					ikeaChair=ikeaChair+vo.getCount();
				}
				if(vo.getType().equals("Closet")){
					ikeaCloset=ikeaCloset+vo.getCount();
				}
				if(vo.getType().equals("Bed")){
					ikeaBed=ikeaBed+vo.getCount();
				}
				if(vo.getType().equals("Sofa")){
					ikeaSofa=ikeaSofa+vo.getCount();
				}
				if(vo.getType().equals("Others")){
					ikeaOthers=ikeaOthers+vo.getCount();
				}
			}
			
			if(vo.getConame().equals("Casamia")){
				if(vo.getType().equals("Table")){
					caTable=caTable+vo.getCount();
				}
				if(vo.getType().equals("Chair")){
					caChair=caChair+vo.getCount();
				}
				if(vo.getType().equals("Closet")){
					caCloset=caCloset+vo.getCount();
				}
				if(vo.getType().equals("Bed")){
					caBed=caBed+vo.getCount();
				}
				if(vo.getType().equals("Sofa")){
					caSofa=caSofa+vo.getCount();
				}
				if(vo.getType().equals("Others")){
					caOthers=caOthers+vo.getCount();
				}
			}
			
			if(vo.getConame().equals("Hanssem")){
				if(vo.getType().equals("Table")){
					hTable=hTable+vo.getCount();
				}
				if(vo.getType().equals("Chair")){
					hChair=hChair+vo.getCount();
				}
				if(vo.getType().equals("Closet")){
					hCloset=hCloset+vo.getCount();
				}
				if(vo.getType().equals("Bed")){
					hBed=hBed+vo.getCount();
				}
				if(vo.getType().equals("Sofa")){
					hSofa=hSofa+vo.getCount();
				}
				if(vo.getType().equals("Others")){
					hOthers=hOthers+vo.getCount();
				}
			}
		}
		
		ikea.add(ikeaTable);
		ikea.add(ikeaChair);
		ikea.add(ikeaCloset);
		ikea.add(ikeaBed);
		ikea.add(ikeaSofa);
		ikea.add(ikeaOthers);
		model.addAttribute("ikea", ikea);
		
		casamia.add(caTable);
		casamia.add(caChair);
		casamia.add(caCloset);
		casamia.add(caBed);
		casamia.add(caSofa);
		casamia.add(caOthers);
		model.addAttribute("casamia", casamia);
		
		Hanssem.add(hTable);
		Hanssem.add(hChair);
		Hanssem.add(hCloset);
		Hanssem.add(hBed);
		Hanssem.add(hSofa);
		Hanssem.add(hOthers);
		model.addAttribute("Hanssem", Hanssem);
	}

	@Override
	public void Graph4(Model model) {
		ArrayList<Graph4VO> list = dao.Graph4();
		ArrayList<Integer> ja = new ArrayList<>();
		ArrayList<Integer> ja1 = new ArrayList<>();
		ArrayList<Integer> ja2 = new ArrayList<>();
		ArrayList<Integer> ja3 = new ArrayList<>();
		ArrayList<Integer> ja4 = new ArrayList<>();
	
		List<Integer> fe = new ArrayList<>();
		List<Integer> fe1 = new ArrayList<>();
		List<Integer> fe2 = new ArrayList<>();
		List<Integer> fe3 = new ArrayList<>();
		List<Integer> fe4 = new ArrayList<>();
	
		List<Integer> ma = new ArrayList<>();
		List<Integer> ma1 = new ArrayList<>();
		List<Integer> ma2 = new ArrayList<>();
		List<Integer> ma3 = new ArrayList<>();
		List<Integer> ma4 = new ArrayList<>();
		
		List<Integer> ap = new ArrayList<>();
		List<Integer> ap1 = new ArrayList<>();
		List<Integer> ap2 = new ArrayList<>();
		List<Integer> ap3 = new ArrayList<>();
		List<Integer> ap4 = new ArrayList<>();
		
		List<Integer> may = new ArrayList<>();
		List<Integer> may1 = new ArrayList<>();
		List<Integer> may2 = new ArrayList<>();
		List<Integer> may3 = new ArrayList<>();
		List<Integer> may4 = new ArrayList<>();
		
		List<Integer> jun = new ArrayList<>();
		List<Integer> jun1 = new ArrayList<>();
		List<Integer> jun2 = new ArrayList<>();
		List<Integer> jun3 = new ArrayList<>();
		List<Integer> jun4 = new ArrayList<>();
		
		
		List<Integer> july = new ArrayList<>();
		List<Integer> july1 = new ArrayList<>();
		List<Integer> july2 = new ArrayList<>();
		List<Integer> july3 = new ArrayList<>();
		List<Integer> july4 = new ArrayList<>();
		
		List<Integer> au = new ArrayList<>();
		List<Integer> au1 = new ArrayList<>();
		List<Integer> au2 = new ArrayList<>();
		List<Integer> au3 = new ArrayList<>();
		List<Integer> au4 = new ArrayList<>();
		
		List<Integer> se = new ArrayList<>();
		List<Integer> se1 = new ArrayList<>();
		List<Integer> se2 = new ArrayList<>();
		List<Integer> se3 = new ArrayList<>();
		List<Integer> se4 = new ArrayList<>();
	
		List<Integer> op = new ArrayList<>();
		List<Integer> op1 = new ArrayList<>();
		List<Integer> op2 = new ArrayList<>();
		List<Integer> op3 = new ArrayList<>();
		List<Integer> op4 = new ArrayList<>();
		
		List<Integer> no = new ArrayList<>();
		List<Integer> no1 = new ArrayList<>();
		List<Integer> no2 = new ArrayList<>();
		List<Integer> no3 = new ArrayList<>();
		List<Integer> no4 = new ArrayList<>();
	
		List<Integer> de = new ArrayList<>();
		List<Integer> de1 = new ArrayList<>();
		List<Integer> de2 = new ArrayList<>();
		List<Integer> de3 = new ArrayList<>();
		List<Integer> de4 = new ArrayList<>();
		
		for (Graph4VO graph4vo : list) {
			if(graph4vo.getYear().equals("2012")){
			  if(graph4vo.getMonth().equals("1")){
				 ja.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("2")){
				  fe.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("3")){
				  ma.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("4")){
				  ap.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("5")){
				  may.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("6")){
				  jun.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("7")){
				  july.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("8")){
				  au.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("9")){
				  se.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("10")){
				  op.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("11")){
				  no.add( graph4vo.getCount());
			  }
			  if(graph4vo.getMonth().equals("12")){
				  de.add( graph4vo.getCount());
			  }
			}
			
			if(graph4vo.getYear().equals("2013")){
				 if(graph4vo.getMonth().equals("1")){
					 ja1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("2")){
					 fe1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("3")){
					 ma1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("4")){
					 ap1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("5")){
					 may1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("6")){
					 jun1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("7")){
					 july1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("8")){
					 au1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("9")){
					 se1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("10")){
					 op1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("11")){
					 no1.add( graph4vo.getCount());
				 }
				 if(graph4vo.getMonth().equals("12")){
					 de1.add( graph4vo.getCount());
				 }
			}
				
			if(graph4vo.getYear().equals("2014")){
				  if(graph4vo.getMonth().equals("1")){
					 ja2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("2")){
					  fe2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("3")){
					  ma2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("4")){
					  ap2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("5")){
					  may2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("6")){
					  jun2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("7")){
					  july2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("8")){
					  au2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("9")){
					  se2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("10")){
					  op2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("11")){
					  no2.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("12")){
					  de2.add( graph4vo.getCount());
				  }
			}
				
			if(graph4vo.getYear().equals("2015")){
				 if(graph4vo.getMonth().equals("1")){
					 ja3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("2")){
					  fe3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("3")){
					  ma3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("4")){
					  ap3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("5")){
					  may3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("6")){
					  jun3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("7")){
					  july3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("8")){
					  au3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("9")){
					  se3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("10")){
					  op3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("11")){
					  no3.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("12")){
					  de3.add( graph4vo.getCount());
				  }
			}
				
			if(graph4vo.getYear().equals("2016")){
				 if(graph4vo.getMonth().equals("1")){
					 ja4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("2")){
					  fe4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("3")){
					  ma4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("4")){
					  ap4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("5")){
					  may4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("6")){
					  jun4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("7")){
					  july4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("8")){
					  au4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("9")){
					  se4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("10")){
					  op4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("11")){
					  no4.add( graph4vo.getCount());
				  }
				  if(graph4vo.getMonth().equals("12")){
					  de4.add( graph4vo.getCount());
				  }
			}
		}
	
		model.addAttribute("ja", ja);
		model.addAttribute("fe", fe);
		model.addAttribute("ma", ma);
		model.addAttribute("ap", ap);
		model.addAttribute("may", may);
		model.addAttribute("jun", jun);
		model.addAttribute("july", july);
		model.addAttribute("au", au);
		model.addAttribute("se", se);
		model.addAttribute("op", op);
		model.addAttribute("no", no);
		model.addAttribute("de", de);
		
		model.addAttribute("ja1", ja1);
		model.addAttribute("fe1", fe1);
		model.addAttribute("ma1", ma1);
		model.addAttribute("ap1", ap1);
		model.addAttribute("may1", may1);
		model.addAttribute("jun1", jun1);
		model.addAttribute("july1", july1);
		model.addAttribute("au1", au1);
		model.addAttribute("se1", se1);
		model.addAttribute("op1", op1);
		model.addAttribute("no1", no1);
		model.addAttribute("de1", de1);
		
		model.addAttribute("ja2", ja2);
		model.addAttribute("fe2", fe2);
		model.addAttribute("ma2", ma2);
		model.addAttribute("ap2", ap2);
		model.addAttribute("may2", may2);
		model.addAttribute("jun2", jun2);
		model.addAttribute("july2", july2);
		model.addAttribute("au2", au2);
		model.addAttribute("se2", se2);
		model.addAttribute("op2", op2);
		model.addAttribute("no2", no2);
		model.addAttribute("de2", de2);
		
		model.addAttribute("ja3", ja3);
		model.addAttribute("fe3", fe3);
		model.addAttribute("ma3", ma3);
		model.addAttribute("ap3", ap3);
		model.addAttribute("may3", may3);
		model.addAttribute("jun3", jun3);
		model.addAttribute("july3", july3);
		model.addAttribute("au3", au3);
		model.addAttribute("se3", se3);
		model.addAttribute("op3", op3);
		model.addAttribute("no3", no3);
		model.addAttribute("de3", de3);
		
		model.addAttribute("ja4", ja4);
		model.addAttribute("fe4", fe4);
		model.addAttribute("ma4", ma4);
		model.addAttribute("ap4", ap4);
		model.addAttribute("may4", may4);
		model.addAttribute("jun4", jun4);
		model.addAttribute("july4", july4);
		model.addAttribute("au4", au4);
		model.addAttribute("se4", se4);
		model.addAttribute("op4", op4);
		model.addAttribute("no4", no4);
		model.addAttribute("de4", de4);
		
	}
	
}