package in.ineuron.service;

import java.util.List;

import in.ineuron.model.Customer;

public interface ICustomerService {
	public List<Customer> getAllCustomers();
	
	public void saveCustomer(Customer customer);
	
	public Customer getCustomer(Integer customerId);
	
	public void deleteCustomer(Integer customerId);
}
