//
//  Apptimize+Compatibility.h
//  Apptimize 3.1.0
//
//  Copyright (c) 2014 Apptimize, Inc. All rights reserved.
//
//  WARNING: Methods and Constants in this file should not be used in new code!
//

#ifndef __deprecated_msg
#define __deprecated_msg(_msg) __deprecated
#endif

/// :nodoc:
@interface Apptimize (Compatibility)

/**
 * metricAchieved: is deprecated. Prefer track: in all new code.
 * :nodoc:
 */
+ (void)metricAchieved:(NSString *)metric;

@end
