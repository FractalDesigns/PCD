package com.ensi.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="donneesdecision")
public class DonneesDecision implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
    private int annee;
    private int duree;
    private double investissementInitial;
    private double ebe;
    private double dotations;
    private double reprises;
    private double tauxActualisation;
    private double prixDeVente;
    private double vnc;//valeur comptable nette
    private double impot;//impot sur le plus value

    
    
    
    
    
    
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "annee")
	public int getAnnee() {
		return annee;
	}
	public void setAnnee(int annee) {
		this.annee = annee;
	}
	
	@Column(name = "duree")
    public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	
	@Column(name = "investissementInitial")
	public double getInvestissementInitial() {
		return investissementInitial;
	}
	public void setInvestissementInitial(double investissementInitial) {
		this.investissementInitial = investissementInitial;
	}

	@Column(name = "ebe")
	public double getEbe() {
		return ebe;
	}
	public void setEbe(double ebe) {
		this.ebe = ebe;
	}
	
	@Column(name = "dotations")
	public double getDotations() {
		return dotations;
	}
	public void setDotations(double dotations) {
		this.dotations = dotations;
	}
	
	@Column(name = "reprises")
	public double getReprises() {
		return reprises;
	}
	public void setReprises(double reprises) {
		this.reprises = reprises;
	}
	
	@Column(name = "tauxActualisation")
	public double getTauxActualisation() {
		return tauxActualisation;
	}
	public void setTauxActualisation(double tauxActualisation) {
		this.tauxActualisation = tauxActualisation;
	}
	
	@Column(name = "prixDeVente")
	public double getPrixDeVente() {
		return prixDeVente;
	}
	public void setPrixDeVente(double prixDeVente) {
		this.prixDeVente = prixDeVente;
	}
	
	@Column(name = "vnc")
	public double getVnc() {
		return vnc;
	}
	public void setVnc(double vnc) {
		this.vnc = vnc;
	}
	
	@Column(name = "impot")
	public double getImpot() {
		return impot;
	}
	public void setImpot(double impot) {
		this.impot = impot;
	}
	
	public DonneesDecision() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DonneesDecision(int id, int annee, int duree,
			double investissementInitial, double ebe, double dotations,
			double reprises, double tauxActualisation, double prixDeVente,
			double vnc, double impot) {
		super();
		this.id = id;
		this.annee = annee;
		this.duree = duree;
		this.investissementInitial = investissementInitial;
		this.ebe = ebe;
		this.dotations = dotations;
		this.reprises = reprises;
		this.tauxActualisation = tauxActualisation;
		this.prixDeVente = prixDeVente;
		this.vnc = vnc;
		this.impot = impot;
	}
	

}
