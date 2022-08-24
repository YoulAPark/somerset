package com.ouneno.mybook.service.domain;

import lombok.Data;

@Data
public class Product {
	
	private int prodNo;	// 상품번호
	private String prodName;	// 상품명
	private String prodDetail;	// 상품상세설명
	private int prodPrice;	// 상품가격
	private String prodHotAndIce; // HOT & ICE 선택 (0.HOT / 1.ICE)
	private String prodSize;	// 컵사이즈 (1.Tall / 2.Grande / 3.Venti)
	private String prodCup;	// 컵선택 (1.일회용 / 2.텀블러 / 3.매장컵)
	private int prodShot;	// 샷 추가 (0.0 / 1.1 / 2.2 / 3.3)
	private String prodSyrup;	// 시럽선택 (1.아몬드 / 2.바닐라 / 3.꿀)
	private String prodWhip;	// 휘핑 추가 (0.0 / 1.1)
	private String prodMilk;	// 우유 선택 (1.우유추가 / 2.저지방 우유 / 3.아몬드브리즈)
	
	/*
	 * 선택 
	 * 1. HOT&ICE : HOT, ICE
	 * 2. SIZE : tall, grande, venti
	 * 3. 컵 선택 : 일회용, 텀블러, 매장컵
	 * 4. 샷 추가 : 1회당 가격 500원
	 * 5. 시럽 : 아몬드, 바닐라, 꿀
	 * 6. 휘핑 : 1회만 가능
	 * 7. 우유선택 : 우유추가, 저지방 우유, 아몬드브리즈
	 */

}
