PROGRAM _INIT
	LeftWheel_F.Enable := TRUE;
	LeftWheel_F.MpLink := ADR(gAxis_1);
	LeftWheel_F.Parameters := ADR(AxisParameters);
	
	LeftWheel_B.Enable := TRUE;
	LeftWheel_B.MpLink := ADR(gAxis_2);
	LeftWheel_B.Parameters := ADR(AxisParameters);
	
	RightWheel_F.Enable := TRUE;
	RightWheel_F.MpLink := ADR(gAxis_3);
	RightWheel_F.Parameters := ADR(AxisParameters);
	
	RightWheel_B.Enable := TRUE;
	RightWheel_B.MpLink := ADR(gAxis_4);
	RightWheel_B.Parameters := ADR(AxisParameters);
	
END_PROGRAM

PROGRAM _CYCLIC	

/////////////////////////////////////////////////////////////////////////////Robot Turning////////////////////////////////////////////////////////////////////////////////////////////////
	IF Proximity_1 = 1 AND NOT State THEN
		Counter := Counter+1;
		Pump := FALSE;
		Row := Counter MOD 2;
	ELSE
		Pump := TRUE;
	END_IF
///////////////////////////////////////////////////////////////////Left Turning////////////////////////////////////////////////////////////////////////////////////////////////
	IF Proximity_1 = 1 AND Row = 0 THEN
		IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
			LeftWheel_F.Power := FALSE;
			IF LeftWheel_F.PowerOn = FALSE THEN
				LeftWheel_F.Home := FALSE;
				IF LeftWheel_F.IsHomed = TRUE THEN
					LeftWheel_F.MoveVelocity := FALSE;
				END_IF
			END_IF
		END_IF
		IF LeftWheel_B.Info.ReadyToPowerOn = TRUE THEN
			LeftWheel_B.Power := FALSE;
			IF LeftWheel_B.PowerOn = FALSE THEN
				LeftWheel_B.Home := FALSE;
				IF LeftWheel_B.IsHomed = TRUE THEN
					LeftWheel_B.MoveVelocity := FALSE;
				END_IF
			END_IF
		END_IF
			
		IF RightWheel_F.Info.ReadyToPowerOn = TRUE THEN
			RightWheel_F.Power := TRUE;
			IF RightWheel_F.PowerOn = TRUE THEN
				RightWheel_F.Home := TRUE;
				IF RightWheel_F.IsHomed = TRUE THEN
					RightWheel_F.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF		
		IF RightWheel_B.Info.ReadyToPowerOn = TRUE THEN
			RightWheel_B.Power := TRUE;
			IF RightWheel_B.PowerOn = TRUE THEN
				RightWheel_B.Home := TRUE;
				IF RightWheel_B.IsHomed = TRUE THEN
					RightWheel_B.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
	////////////////////////////////////////////////////////////////////Right Turning////////////////////////////////////////////////////////////////////////////////////////////////
	ELSIF Proximity_1 = 1 AND Row = 1 THEN
			IF RightWheel_F.Info.ReadyToPowerOn = TRUE THEN
				RightWheel_F.Power := FALSE;
				IF RightWheel_F.PowerOn = FALSE THEN
					RightWheel_F.Home := FALSE;
					IF RightWheel_F.IsHomed = TRUE THEN
						RightWheel_F.MoveVelocity := FALSE;
					END_IF
				END_IF
			END_IF
			IF RightWheel_B.Info.ReadyToPowerOn = TRUE THEN
				RightWheel_B.Power := FALSE;
				IF RightWheel_B.PowerOn = FALSE THEN
					RightWheel_B.Home := FALSE;
					IF RightWheel_B.IsHomed = TRUE THEN
						RightWheel_B.MoveVelocity := FALSE;
					END_IF
				END_IF
			END_IF
			
			IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
				LeftWheel_F.Power := TRUE;
				IF LeftWheel_F.PowerOn = TRUE THEN
					LeftWheel_F.Home := TRUE;
					IF LeftWheel_F.IsHomed = TRUE THEN
						LeftWheel_F.MoveVelocity := TRUE;
					END_IF
				END_IF
			END_IF
			IF LeftWheel_B.Info.ReadyToPowerOn = TRUE THEN
				LeftWheel_B.Power := TRUE;
				IF LeftWheel_B.PowerOn = TRUE THEN
					LeftWheel_B.Home := TRUE;
					IF LeftWheel_B.IsHomed = TRUE THEN
						LeftWheel_B.MoveVelocity := TRUE;
					END_IF
				END_IF
			END_IF
		ELSIF Proximity_1 = 0 AND Row = 0 THEN
		IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
			LeftWheel_F.Power := TRUE;
			IF LeftWheel_F.PowerOn = TRUE THEN
				LeftWheel_F.Home := TRUE;
				IF LeftWheel_F.IsHomed = TRUE THEN
					LeftWheel_F.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		IF LeftWheel_B.Info.ReadyToPowerOn = TRUE THEN
			LeftWheel_B.Power := TRUE;
			IF LeftWheel_B.PowerOn = TRUE THEN
				LeftWheel_B.Home := TRUE;
				IF LeftWheel_B.IsHomed = TRUE THEN
					LeftWheel_B.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		
		IF RightWheel_F.Info.ReadyToPowerOn = TRUE THEN
			RightWheel_F.Power := TRUE;
			IF RightWheel_F.PowerOn = TRUE THEN
				RightWheel_F.Home := TRUE;
				IF RightWheel_F.IsHomed = TRUE THEN
					RightWheel_F.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		IF RightWheel_B.Info.ReadyToPowerOn = TRUE THEN
			RightWheel_B.Power := TRUE;
			IF RightWheel_B.PowerOn = TRUE THEN
				RightWheel_B.Home := TRUE;
				IF RightWheel_B.IsHomed = TRUE THEN
					RightWheel_B.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		
	ELSIF Proximity_1 = 0 AND Row = 1 THEN
		IF LeftWheel_F.Info.ReadyToPowerOn = TRUE THEN
			LeftWheel_F.Power := TRUE;
			IF LeftWheel_F.PowerOn = TRUE THEN
				LeftWheel_F.Home := TRUE;
				IF LeftWheel_F.IsHomed = TRUE THEN
					LeftWheel_F.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		IF LeftWheel_B.Info.ReadyToPowerOn = TRUE THEN
			LeftWheel_B.Power := TRUE;
			IF LeftWheel_B.PowerOn = TRUE THEN
				LeftWheel_B.Home := TRUE;
				IF LeftWheel_B.IsHomed = TRUE THEN
					LeftWheel_B.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		
		IF RightWheel_F.Info.ReadyToPowerOn = TRUE THEN
			RightWheel_F.Power := TRUE;
			IF RightWheel_F.PowerOn = TRUE THEN
				RightWheel_F.Home := TRUE;
				IF RightWheel_F.IsHomed = TRUE THEN
					RightWheel_F.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		IF RightWheel_B.Info.ReadyToPowerOn = TRUE THEN
			RightWheel_B.Power := TRUE;
			IF RightWheel_B.PowerOn = TRUE THEN
				RightWheel_B.Home := TRUE;
				IF RightWheel_B.IsHomed = TRUE THEN
					RightWheel_B.MoveVelocity := TRUE;
				END_IF
			END_IF
		END_IF
		
	END_IF
		State := Proximity_1;
	
////////////////////////////////////////////////////////////////////////////Left Sensor////////////////////////////////////////////////////////////////////////////////////////////////////
	IF Right_Proximity = 1 THEN
		Right_Solenoid := FALSE;
		RightAct := TRUE;
	ELSE
		//Rotate inside
		Right_Solenoid := TRUE;
		RightAct := FALSE;
	END_IF
		
////////////////////////////////////////////////////////////////////////////Right Sensor////////////////////////////////////////////////////////////////////////////////////////////////////
	IF Left_Proximity = 1 THEN
		Left_Solenoid := FALSE;
		LeftAct := TRUE;
	ELSE
		//Rotate inside
		Left_Solenoid := TRUE;
		LeftAct := FALSE;
	END_IF
	
/////////////////////////////////////////////////////////////////////////////Floatsensor value Float1 Float2//////////////////////////////////////////////////////////////////////////////////////////
	MpAlarmXCore_0.Enable := TRUE;
	MpAlarmXCore_0.MpLink := ADR(gAlarmXCore);
	IF Float_1 = FALSE AND Float_2 = FALSE THEN
		MpAlarmXSet(gAlarmXCore, 'Full');
	ELSE 
		MpAlarmXReset(gAlarmXCore, 'Full');
	END_IF
	
	IF Float_1 = TRUE AND Float_2 = FALSE THEN
		MpAlarmXSet(gAlarmXCore, 'Low');
	ELSE
		MpAlarmXReset(gAlarmXCore, 'Low');
	END_IF
	
	IF Float_1 = TRUE AND Float_2 = TRUE THEN
		MpAlarmXSet(gAlarmXCore, 'Very Low');
	ELSE
		MpAlarmXReset(gAlarmXCore, 'Very Low');
	END_IF;

////////////////////////////////////////////////////////////////////////////Robot Identification/////////////////////////////////////////////////////////////////////////////////////////////
	IF KEY = TRUE THEN
		Buzzer := TRUE;
	ELSE
		Buzzer := FALSE;
	END_IF
	
/////////////////////////////////////////////////////////////////////////////Function call////////////////////////////////////////////////////////////////////////////////////////////////
	LeftWheel_F();
	LeftWheel_B();
	RightWheel_F();	
	RightWheel_B();
	MpAlarmXCore_0();
END_PROGRAM

PROGRAM _EXIT

END_PROGRAM