package testapp



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Admin)
class AdminTests {

    void testUserAdmin() {
	def adminName = new User(login:'AdminTest',,
			email:'admin@musicstore.com')
	assert adminName.getLogin().equals('AdminTest'), getEmail().equals('admin@musicstore.com')
}
	void testAddAlbum() {
	Inventory inventory = new Inventory()
	inventory.addAlbum(new Album(title:'Me Against The World'))
	Integer count = inventory.albums.size()
	assert count == 1  
}
	void testDeleteAlbum() {
	Inventory inventory = new Inventory()
	inventory.addAlbum(new Album(title:'Me Against The World'))
	def album = Album.get(1)
	album.delete(flush: true)
	Integer count = inventory.albums.size()
	assert count == 0
}

}
