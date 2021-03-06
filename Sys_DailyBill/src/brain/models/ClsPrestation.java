
package brain.models;

import brain.controller.IAction;
import java.sql.Date;

public class ClsPrestation implements IAction{
      
    private String id ;
    private ClsJournalier Journalier ;
    private ClsService service ;
    private Date datePrestation;
    private String heureDebut ;
    private String heure_fin;

    public ClsPrestation(String id, ClsJournalier Journalier, ClsService service, Date datePrestation, String heureDebut, String heure_fin) {
        this.id = id;
        this.Journalier = Journalier;
        this.service = service;
        this.datePrestation = datePrestation;
        this.heureDebut = heureDebut;
        this.heure_fin = heure_fin;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public ClsJournalier getJournalier() {
        return Journalier;
    }

    public void setJournalier(ClsJournalier Journalier) {
        this.Journalier = Journalier;
    }

    public ClsService getService() {
        return service;
    }

    public void setService(ClsService service) {
        this.service = service;
    }

    public Date getDatePrestation() {
        return datePrestation;
    }

    public void setDatePrestation(Date datePrestation) {
        this.datePrestation = datePrestation;
    }

    public String getHeureDebut() {
        return heureDebut;
    }

    public void setHeureDebut(String heureDebut) {
        this.heureDebut = heureDebut;
    }

    public String getHeure_fin() {
        return heure_fin;
    }

    public void setHeure_fin(String heure_fin) {
        this.heure_fin = heure_fin;
    }

    @Override
    public boolean updateData() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteData() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     
}
