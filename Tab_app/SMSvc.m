//
//  SMSvc.m
//  Tab_app
//
//  Created by Fname Lname on 10/03/18.
//  Copyright © 2018 Xeper. All rights reserved.
//

#import "SMSvc.h"

@interface SMSvc ()



{
    
    NSString *otpString;
    
    
}
@end

@implementation SMSvc





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Sms_btn:(id)sender {
    
    
    
    NSString *mystring = [NSString stringWithFormat:@"method=%@&mobile_number=%@&message=%@",@"sendingotptext",_sms_otp_txt.text,_sms_txt.text];
    
    
    //NSString *mystring = [NSString stringWithFormat:@"method=%@&mobile_number=%@&profile_id=%@",@"sendingotp",_mobile_nmber_txt.text,_id_txtnum.text];
    //NSString *mystring = [NSString stringWithFormat:@"mobile_number=%@",_mobile_num_txt.text];
    NSData *bodyData = [mystring dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    //URL CONFIG
    NSString *serverURL = @"https://www.healthaadhar.com/login/health_core_files/json.php";
    NSMutableDictionary *dictionnary = [NSMutableDictionary dictionary];
    [dictionnary setObject:mystring forKey:@"method"];
    [dictionnary setObject:_sms_otp_txt.text forKey:@"mobile_number"];
    [dictionnary setObject:_sms_txt.text forKey:@"message"];
    
    
    //
    //    NSString *mystring = [NSString stringWithFormat:@"mobile_number=%@",_Mobil_num_txt.text];
    //    NSData *bodyData = [mystring dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    //    //URL CONFIG
    //    NSString *serverURL = @"https://kolkataschool.knwedu.com/mobile/otp_generator";
    //
    //    NSMutableDictionary *dictionnary = [NSMutableDictionary dictionary];
    //
    //    [dictionnary setObject:_Mobil_num_txt forKey:@"mobile_number"];
    
    NSString *downloadUrl = [NSString stringWithFormat:@"%@/your-friendly-url-here/json",serverURL];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString: downloadUrl]];
    //POST DATA SETUP
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:bodyData];
    //DEBUG MESSAGE
    NSLog(@"Trying to call ws %@",downloadUrl);
    //EXEC CALL
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue currentQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        if (error) {
            NSLog(@"Download Error:%@",error.description);
        }
        if (data) {
            //[dictionnary setObject:_Mobil_num_txt forKey:@"mobile_number"];
            // THIS CODE IS FOR PRINTING THE RESPONSE
            //
            NSString *returnString = [[NSString alloc] initWithData:data encoding: NSUTF8StringEncoding];
            NSLog(@"Response:%@",returnString);
            
            //PARSE JSON RESPONSE
            NSDictionary *json_response = [NSJSONSerialization JSONObjectWithData:data
                                                                          options:0
                                                                            error:NULL];
            NSString *resultstring=json_response[@"status"];
            // if([resultstring isEqualToString:@"1"])
            if(resultstring.integerValue==1)
            {
                
                
                
                
                NSString *otp=json_response[@"msg"];
                
                NSInteger asd=otp.integerValue;
                _lbl.text=[NSString stringWithFormat:@"%ld",(long)asd];
                
                otpString=[NSString stringWithFormat:@"%ld",(long)asd];
                
//
//                SignUpViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"SignUpViewController1"];
//                [dvc setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
//                //dvc.secondLabelText=mobile_txt.text;
//                //dvc.secondLabelidText=lbl_txt.text;
//
//
//                dvc.retrivedOtpStringText=_msglbl_txt.text;
//
//                [self presentViewController:dvc animated:YES completion:nil];
//
//
                
                
                
                //                                UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
                //                                OTPViewController *obj=[story instantiateViewControllerWithIdentifier:@"OTPViewController1"];
                //                                obj.retrivedOtpString=otpString;
                //                                [self.navigationController pushViewController:obj animated:YES];
                //
                
                
                //                UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
                //                SignUpViewController *obj=[story instantiateViewControllerWithIdentifier:@"SignUpViewController1"];
                //                //obj.retrivedOtpString=otpString;
                //                [self.navigationController pushViewController:obj animated:YES];
                //
                //
                
                
                
                
                
                
                
                
                //                                _lbl_txt.text=[NSString stringWithFormat:@"%ld",(long)asd];
                //                                otpString=[NSString stringWithFormat:@"%ld",(long)asd];
                //                                _lbl_txt.text = [NSString stringWithFormat:@"%@", msg];
                //
                
                //                            UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"data"
                //                                                                              message:dataString
                //                                                                             delegate:self
                //                                                                    cancelButtonTitle:@"ok"
                //                                                                    otherButtonTitles:@"Cancel",nil];
                //                            [message show];
                
                
            }
            else
            {
                //                                NSString *dataString=json_response[@"msg"];
                //                                _lbl_txt.text = [NSString stringWithFormat:@"%@", dataString];
            }
            
            if ( json_response ) {
                if ( [json_response isKindOfClass:[NSDictionary class]] ) {
                    // do dictionary things
                    for ( NSString *key in [json_response allKeys] ) {
                        NSLog(@"%@: %@", key, json_response[key]);
                    }
                }
                else if ( [json_response isKindOfClass:[NSArray class]] ) {
                    NSLog(@"%@",json_response);
                }
            }
            else {
                NSLog(@"Error serializing JSON: %@", error);
                NSLog(@"RAW RESPONSE: %@",data);
                NSString *returnString2 = [[NSString alloc] initWithData:data encoding: NSUTF8StringEncoding];
                NSLog(@"Response:%@",returnString2);
            }
        }
    }];
    
    
    
    
}
@end
