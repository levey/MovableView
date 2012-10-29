###MovableView
===========

Sometime you need to move a view simply, for example, when keybord covered it's textfield, you need to move the content view, that's what MovableView is.


**Configuration**:


	    self.contentView.direction = MovableViewDirectionUp;
    	self.contentView.distance = 85.;
    	
**Move Up**:

	- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
	{
 	   [self.contentView moveBackward:NO];
 	   return YES;
	}

**Move Down**:

	- (BOOL)textFieldShouldReturn:(UITextField *)textField
	{
		[self.contentView moveBackward:YES];
	    return YES;
	}


