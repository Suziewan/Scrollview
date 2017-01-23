//
//  MyScrollView.m
//  Scrollview
//
//  Created by Angie Linton on 2017-01-23.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "MyScrollView.h"


@implementation MyScrollView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self == nil) {
        return nil;
    }
    UIPanGestureRecognizer *gestureRecognizer = [[UIPanGestureRecognizer alloc]
                                                 initWithTarget:self action:@selector(pannedView:)];
    [self addGestureRecognizer:gestureRecognizer];
    return self;
}

  
- (IBAction)pannedView:(UIPanGestureRecognizer *)gestureRecognizer
{
    
        CGPoint translation = [gestureRecognizer translationInView:self];
        CGRect frame = self.frame;
 frame.origin.y += translation.y;
    frame.origin.x += translation.x;
    
    
        self.frame = frame;
        [gestureRecognizer setTranslation:CGPointZero inView:self];
    
    
    }

@end

//In the method that handles events from the PanGestureRecognizer, look for how far your have panned. Then, move (translate) the view's frame, but do not permit values that would violate contentSize.
//
//Refactor your code so that the boxes are added as subviews to MyScrollView and set the contentSize.
//
//Note: We implemented the basics of UIScrollView but there is a lot more to the real UIScrollView than just this. Momentum scrolling, bouncing, scroll indicators, zooming, and delegate methods are just some of the features we have not implemented here.


// Translate the view's bounds, but do not permit values that would violate contentSize (references to self.contentSize.width and self.contentSize.height in the max bounds)
//        CGFloat newBoundsOriginX = bounds.origin.x - translation.x;
//        CGFloat minBoundsOriginX = 0.0;
//        CGFloat maxBoundsOriginX = self.contentSize.width - bounds.size.width;
//        bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
//
//
//
//
//        CGFloat newBoundsOriginY = bounds.origin.y - translation.y;
//        CGFloat minBoundsOriginY = 0.0;
//        CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
//        bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));

