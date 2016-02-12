var read = require('read');

var Question = function(ask, answer) {
	this.ask = ask;
	this.answer = answer;
	this.point = 0;
};

Question.prototype.showAnswer = function() {
		return this.answer;
};

Question.prototype.askQuestion = function() {
		return this.ask;
};

var askName = new Question("What's your name?\n>", "No one cares.");

var questions = [];

var Quiz = function() {
	this.addQuestion = function (question) {
		questions.push(question);
	};
}

var score = 0;

var newQuiz = new Quiz();

newQuiz.addQuestion(askName)

Quiz.prototype.displayAnswer = function (err, name){
    if (name !== questions[0].showAnswer()) {
    	console.log("The correct answer is " + questions[0].showAnswer());
    }
    else { 
    	score += 1
    	console.log(">You are correct!");
    	console.log(">Your score is " + score);
    }
};
 
var options = {
    prompt: questions[0].askQuestion()
};
// Our options object, the prompt is simply what will appear in the command line when read is called

read(options, newQuiz.displayAnswer);
// The prompt itself, passing options, and using our callback function after input

// Outputs whatever the user has entered back to the console