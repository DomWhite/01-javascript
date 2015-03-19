var accounts = {
  checking: {
    balance: 0,
    deposit: function(amount) {
      this.balance = this.balance + amount;      
    },
    withdraw: function(amount) {
      if (amount <= this.balance) {
        // have enough money
        this.balance = this.balance - amount;
      } else {
        return false;						//returns false so the programmer has a workable value to manipulate later i.e. if "false" then...
      }      
    }
  },
  savings: {
    balance: 0,
    deposit: function(amount) {
      this.balance = this.balance + amount;      
    },
    withdraw: function(amount) {
      if (amount <= this.balance) {
        // have enough money
        this.balance = this.balance - amount;
      } else {
        return false;						//returns false so the programmer as a workable value to manipulate later i.e. if "false" then...
      }      
    }
  }
};


function renderBalance() {
	var checkingBalanceDisplay = document.getElementById("balance1");	//refreshes the balance
	checkingBalanceDisplay.innerHTML = "$" + accounts.checking.balance;
}

var checkingDepositBtn = document.getElementById("checkingDeposit");
checkingDepositBtn.addEventListener("click", function(){
	var depositInput = document.getElementById("checkingAmount");		  //grabs the data from input with id checking amount
	var depositAmount = parseInt(depositInput.value, 10);				      //turns string input taken from checking amount and converts it to an integer

	accounts.checking.deposit(depositAmount);							// runs function deposit with the argument taken from var = deposit amount
	renderBalance();													// refreshes display
});



var checkingWithdrawBtn = document.getElementById('checkingWithdraw');
checkingWithdrawBtn.addEventListener('click', function() {
  var depositInput = document.getElementById('checkingAmount');
  var withdrawAmount = parseInt(depositInput.value, 10);

  accounts.checking.withdraw(withdrawAmount);
  renderBalance();  
})

////////////////////////////////////////////////
var checkingSavingsBtn = document.getElementById("savingsDeposit");
checkingDepositBtn.addEventListener("click", function(){
  var depositInput = document.getElementById("checkingAmount");   //grabs the data from input with id checking amount
  var depositAmount = parseInt(depositInput.value, 10);       //turns string input taken from checking amount and converts it to an integer

  accounts.checking.deposit(depositAmount);             // runs function deposit with the argument taken from var = deposit amount
  renderBalance();                          // refreshes display
});



var checkingWithdrawBtn = document.getElementById('checkingWithdraw');
checkingWithdrawBtn.addEventListener('click', function() {
  var depositInput = document.getElementById('checkingAmount');
  var withdrawAmount = parseInt(depositInput.value, 10);

  accounts.checking.withdraw(withdrawAmount);
  renderBalance();  
})

