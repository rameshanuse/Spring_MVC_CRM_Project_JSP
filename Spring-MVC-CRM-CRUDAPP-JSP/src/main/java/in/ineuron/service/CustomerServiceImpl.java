package in.ineuron.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.ineuron.dao.ICustomerDao;
import in.ineuron.model.Customer;

@Service("service")
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	private ICustomerDao repo;
	
	@Override
	public List<Customer> getAllCustomers() {
		List<Customer> listEntities = (List<Customer>) repo.findAll();
		return listEntities;
	}

	@Override
	public void saveCustomer(Customer customer) {
		repo.save(customer);
	}

	@Override
	public Customer getCustomer(Integer customerId) {
		Optional<Customer> optional = repo.findById(customerId);
		return optional.get();
	}

	@Override
	public void deleteCustomer(Integer customerId) {
		repo.deleteById(customerId);
	}

}
