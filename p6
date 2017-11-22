.586

.MODEL FLAT

INCLUDE io.h 

.STACK 4096

.DATA

	WeightedSum BYTE "The weighted sum is " ,0	

	TheSumOfWeights BYTE "The sum of weights is " ,0

	average BYTE "The weighted average is " ,0





	grade1 DWORD ?

	grade2 DWORD ?

	grade3 DWORD ?

	grade4 DWORD ?



	weight1 DWORD ?

	weight2 DWORD ?

	weight3 DWORD ?

	weight4 DWORD ?



	prompt1 BYTE 	"Enter grade 1" ,0

	prompt2 BYTE 	"Enter grade 2",0

	prompt3 BYTE 	"Enter grade 3",0

	prompt4 BYTE 	"Enter grade 4",0



	promptw1 BYTE 	"Enter weight 1" ,0

	promptw2 BYTE 	"Enter weight 2",0

	promptw3 BYTE 	"Enter weight 3",0

	promptw4 BYTE 	"Enter weight 4",0





	string BYTE 40 DUP (?)



	

	result BYTE 11 DUP (?) ,0



.CODE 

	_MainProc PROC



			input prompt1,string,40

			atod string

			mov grade1,eax

			input promptw1,string,40

			atod string

			mov weight1,eax



			input prompt2,string,40

			atod string

			mov grade2,eax

			input promptw2,string,40

			atod string

			mov weight2,eax



			input prompt3,string,40

			atod string

			mov grade3,eax

			input promptw3,string,40

			atod string

			mov weight3,eax



			input prompt4,string,40

			atod string

			mov grade4,eax

			input promptw4,string,40

			atod string

			mov weight4,eax



			;grade=grade * weight

			mov eax,grade1

			mul weight1

			mov grade1,eax



			mov eax,grade2

			mul weight2

			mov grade2,eax



			mov eax,grade3

			mul weight3

			mov grade3,eax



			mov eax,grade4

			mul weight4

			mov grade4,eax



			;save weighted sum in grade 1

			mov eax,grade1

			add eax,grade2

			add eax,grade3

			add eax,grade4

			mov grade1,eax



			;save some of wieghts in weight1

			mov eax,weight1

			add eax,weight2

			add eax,weight3

			add eax,weight4

			mov weight1,eax



			;weighted sum/ the sum of weights

			mov edx,0

			mov eax,grade1

			mov ecx,weight1

			div ecx



			dtoa result ,grade1

			output WeightedSum ,result



			dtoa result ,weight1

			output TheSumOfWeights ,result



			dtoa result ,eax

			output average ,result





			mov eax ,0

			ret 

	_MainProc ENDP

END
