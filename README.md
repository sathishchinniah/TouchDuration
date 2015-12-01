# TouchDuration
touch your screen and get the timing action

# Screenshot

![tscreen](https://cloud.githubusercontent.com/assets/12906173/11506427/816e47ec-9875-11e5-9e73-f9784bdd0587.png)

# Code:


```
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count] == 1) 
    {
        self.startTime = [NSDate date];
    }
}
```
```
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count] == 1) {
        NSDate *now = [NSDate date];
        NSTimeInterval deltaT = [now timeIntervalSinceDate:self.startTime];
        if (deltaT > 0.5) {
            self.lbDisplay.text = @"Long Touch (> .5 seconds)";
        } else {
            self.lbDisplay.text = @"Short Touch (<= .5 seconds)";
        }
        self.lbTime.text = [NSString stringWithFormat:@"Exact time: %f seconds", deltaT];
    }
}
```

# Description

 Here when user press the screen this above two method will call and will display in screen about the touch duration of User pressed

