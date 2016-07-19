# Automatic-height-tagcells
### The practice project meets some criteria:
- Dynamic height of ``UITableViewCell`` based on **autolayout**
- Tags have to be aligned automatically
- Tags have to be clickalbe
 
# Usage
### Construct your own data source in the class ``TagGroups``

    /* An initialization sample of AHTag */
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Classic";
    tag.color = [UIColor colorWithRed:1 green:0.56 blue:0.56 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.coldyam.com"];
    tag.enabled = @YES;

![screenshot](https://github.com/weijentu/automatic-height-tagcells/raw/master/images/screenshot.png)
