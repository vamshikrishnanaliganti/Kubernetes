for j in {1..10}; do  
    for i in {1..1000}; do  
        curl -s -o /dev/null -w "%{http_code}\n" http://a93a8b1779c7b4c69a7f73d3b2c2d54f-1607975046.eu-west-2.elb.amazonaws.com/ &  
    done  
    wait  # Wait for all background curl processes to finish before next iteration
done
# we need to change the http url address, give lb url using kubectl svc here