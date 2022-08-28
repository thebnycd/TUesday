List<Account> accounts = [select id, name, from account];
AccountsQueueableExample aq = new AccountsQueueableExample (accounts);
Id jobId = system.enqueueJob(aq);
system.debug('job id is ... ' + jobId);