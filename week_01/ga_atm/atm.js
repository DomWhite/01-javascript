var checkingAccount = document.getElementById("balance1").innerHTML;
console.log(checkingAccount);
var savingsAccount = document.getElementById("balance2").innerHTML;
console.log(savingsAccount);

function deposit(amount) {
	newAmount = parseInt(document.getElementById("checkingAmount").value, 10) + checkingAccount;
	checkingAccount = newAmount;
}

var btnDeposit = document.getElementById("checkingDeposit");
btnDeposit.addEventListener('click', deposit);

console.log()