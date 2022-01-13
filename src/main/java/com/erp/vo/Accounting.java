package com.erp.vo;

public class Accounting {
	private int acc_num;
	private String acc_ctg;
	private int acc_amount;
	private String acc_payment;
	private String acc_occdate;
	private String acc_location;
	private String acc_writer;
	private String acc_note;
	
	public Accounting() {}

	public Accounting(int acc_num, String acc_ctg, int acc_amount, String acc_payment, String acc_occdate,
			String acc_location, String acc_writer, String acc_note) {
		this.acc_num = acc_num;
		this.acc_ctg = acc_ctg;
		this.acc_amount = acc_amount;
		this.acc_payment = acc_payment;
		this.acc_occdate = acc_occdate;
		this.acc_writer = acc_writer;
		this.acc_location = acc_location;
		this.acc_note = acc_note;
	}

	public int getAcc_num() {
		return acc_num;
	}

	public void setAcc_num(int acc_num) {
		this.acc_num = acc_num;
	}

	public String getAcc_ctg() {
		return acc_ctg;
	}

	public void setAcc_ctg(String acc_ctg) {
		this.acc_ctg = acc_ctg;
	}

	public int getAcc_amount() {
		return acc_amount;
	}

	public void setAcc_amount(int acc_amount) {
		this.acc_amount = acc_amount;
	}

	public String getAcc_payment() {
		return acc_payment;
	}

	public void setAcc_payment(String acc_payment) {
		this.acc_payment = acc_payment;
	}

	public String getAcc_occdate() {
		return acc_occdate;
	}

	public void setAcc_occdate(String acc_occdate) {
		this.acc_occdate = acc_occdate;
	}

	public String getAcc_writer() {
		return acc_writer;
	}

	public void setAcc_writer(String acc_writer) {
		this.acc_writer = acc_writer;
	}

	public String getAcc_location() {
		return acc_location;
	}

	public void setAcc_location(String acc_location) {
		this.acc_location = acc_location;
	}

	public String getAcc_note() {
		return acc_note;
	}

	public void setAcc_note(String acc_note) {
		this.acc_note = acc_note;
	}
	
}
