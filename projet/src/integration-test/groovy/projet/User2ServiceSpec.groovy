package projet

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class User2ServiceSpec extends Specification {

    User2Service user2Service
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new User2(...).save(flush: true, failOnError: true)
        //new User2(...).save(flush: true, failOnError: true)
        //User2 user2 = new User2(...).save(flush: true, failOnError: true)
        //new User2(...).save(flush: true, failOnError: true)
        //new User2(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //user2.id
    }

    void "test get"() {
        setupData()

        expect:
        user2Service.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<User2> user2List = user2Service.list(max: 2, offset: 2)

        then:
        user2List.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        user2Service.count() == 5
    }

    void "test delete"() {
        Long user2Id = setupData()

        expect:
        user2Service.count() == 5

        when:
        user2Service.delete(user2Id)
        sessionFactory.currentSession.flush()

        then:
        user2Service.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        User2 user2 = new User2()
        user2Service.save(user2)

        then:
        user2.id != null
    }
}
