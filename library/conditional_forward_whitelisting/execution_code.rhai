/// Subject: Example of a conditional forward
/// 
/// Inputs:
/// unyt_allocation: the unyt_allocation to be checked
/// whitelisted_receiver: an array of whitelisted agents that are allowed to receive the unyt_allocation
/// spender: the agent that is spending the unyt_allocation and to whom the unyt_allocation will be returned if it is not in the whitelisted_receiver
/// 
/// Summary:
/// we check the the receiver of the unyt_allocation against the whitelisted_receiver
/// if the receiver is in the whitelisted_receiver, then we forward the transaction
/// else if the receiver is not in the whitelisted_receiver, then we reject the transaction
const zero = 0;
for i in 0..unyt_allocation.len {
  let found = false;
  for agent in whitelisted_receiver {
    if unyt_allocation[i].agent == agent {
      found = true;
    }
  }
  if !found {
    unyt_allocation[i].agent = spender;
  }
}

return #{
  "unyt_allocation": unyt_allocation
}