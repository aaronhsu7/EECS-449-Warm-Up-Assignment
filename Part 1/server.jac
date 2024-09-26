walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker calculate_sum {
    has num1: int;
    has num2: int;

    can return_sum with `root entry {
        sum_result = self.num1 + self.num2;
        report {
            "response": "The sum of " + str(self.num1) + " and " + str(self.num2) + " is " + str(sum_result) + "."
        };
    }
}

walker greet_time_of_day {
    has name: str;
    has time_of_day: str; 

    can return_greeting with `root entry {
        greeting = "Good " + self.time_of_day + ", " + self.name + "!";
        report {
            "response": greeting
        };
    }
}