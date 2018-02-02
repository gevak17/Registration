package gevak.service;

import gevak.entity.Gidrant;

import java.util.List;

public interface GidrantService {

    void save(Gidrant gidrant);

    void edit(Gidrant gidrant);

    List<Gidrant> findAll();

    Gidrant findOne(int id);

}
