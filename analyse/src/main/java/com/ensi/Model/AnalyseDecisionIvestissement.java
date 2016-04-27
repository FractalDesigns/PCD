package com.ensi.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AnalyseDecisionIvestissement")
public class AnalyseDecisionIvestissement implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
<<<<<<< HEAD
    private double resultatExploitation;
    private double resultatNet;
    private double cashFlowRecurrent;
    private double cashAvantImpot;
    private double cashApresImpot;
    private double van1;
    private double van2;

    private DonneesDecision dd=new DonneesDecision();
    
    
    public AnalyseDecisionIvestissement() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AnalyseDecisionIvestissement(int id, double resultatExploitation,
			double resultatNet, double cashFlowRecurrent,
			double cashAvantImpot, double cashApresImpot, double van1,
			double van2, DonneesDecision dd) {
		super();
		this.id = id;
		this.resultatExploitation = resultatExploitation;
		this.resultatNet = resultatNet;
		this.cashFlowRecurrent = cashFlowRecurrent;
		this.cashAvantImpot = cashAvantImpot;
		this.cashApresImpot = cashApresImpot;
		this.van1 = van1;
		this.van2 = van2;
		this.dd = dd;
	}
	
	@Column(name = "cashFlowRecurrent")
    public double getCashFlowRecurrent() {
		return cashFlowRecurrent;
	}
	public void setCashFlowRecurrent(double cashFlowRecurrent) {
		this.cashFlowRecurrent = cashFlowRecurrent;
	}
	
	@Column(name = "cashApresImpot")
	public double getCashApresImpot() {
		return cashApresImpot;
	}
	public void setCashApresImpot(double cashApresImpot) {
		this.cashApresImpot = cashApresImpot;
	}
	
	@Column(name = "van1")
	public double getVan1() {
		return van1;
	}
	public void setVan1(double van1) {
		this.van1 = van1;
	}
	
	@Column(name = "van2")
	public double getVan2() {
		return van2;
	}
	public void setVan2(double van2) {
		this.van2 = van2;
	}
	@Id
=======
    private double tauxActualisation;
    private DonneesDecision dd=new DonneesDecision();
    private AnalyseEffetDeLevier el=new AnalyseEffetDeLevier();
    private ActifNonCourant anc=new ActifNonCourant();
	public AnalyseDecisionIvestissement() {
		super();
		// TODO  Auto-generated constructor stub
	}    
    @Id
>>>>>>> e5b32b3b6975a191391d1a6504a569a6926afc1c
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
<<<<<<< HEAD
	
	
	
//  
//    public double calculCashFlowBrut(int periode){
//    	return el.beneficeAvanInteretEtImpot()-dd.getDepencesDecaisses();
//    }
//    public double calculCashFlowNet(int periode){
//    	return calculCashFlowBrut(periode)-el.beneficeAvantImpot()*dd.getTauxImpositionBenefice();
//    }
    public double resultatExploitation(){
    	 resultatExploitation=dd.getEbe()-dd.getDotations();
    	 return resultatExploitation;
=======
	@Column(name="tauxActualisation")
	public double getTauxActualisation() {
		return tauxActualisation;
	}
	public void setTauxActualisation(double tauxActualisation) {
		this.tauxActualisation = tauxActualisation;
	}
    //public double calculInvestissementInitial(){
    //	investissementInitial=anc.sommeActifNonCourant()+accroissementBFRE;
    //	return investissementInitial;
    //}
    public double calculCashFlowBrut(int periode){
    	return el.beneficeAvanInteretEtImpot()-dd.getDepencesDecaisses();
>>>>>>> e5b32b3b6975a191391d1a6504a569a6926afc1c
    }
    public double resultatNet(){
    	resultatNet=resultatExploitation()-dd.getReprises();
    	return resultatNet;

    }
    public double cashFlowRecurrent(){
    	
    	cashFlowRecurrent=resultatNet()+dd.getDotations();
    	return cashFlowRecurrent;
    }
<<<<<<< HEAD
    
    //cash perçu avant impot
    public double cashAvantImpot(){
    	cashAvantImpot=dd.getPrixDeVente()-dd.getVnc();
    	return cashAvantImpot;

    }
    
    // cash perçu apres impot dans la duree du projet
    public double cashApresImpot(){
    	cashApresImpot=cashAvantImpot()-dd.getImpot();
    	return cashApresImpot;

    }
    
	//sans tenir compte des opérations exceptionnelles
    public double calculVan(){
=======
    public double calculVAN(){
>>>>>>> e5b32b3b6975a191391d1a6504a569a6926afc1c
    	double som=0;
    			for(int i=0;i<dd.getDuree();i++){
    				som=som+(cashFlowRecurrent()/Math.pow(1+dd.getTauxActualisation(),i));
    			}
    	van1=som-dd.getInvestissementInitial();
    	return van1;
    }
    
    // en tenant compte des operations exceptionnelles
    public double calculVAN(){
    
    	van2=calculVan()+cashApresImpot()/(Math.pow(1+dd.getTauxActualisation(),dd.getDuree()));
    	return van2;
    }
   
}
