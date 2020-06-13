.stack 100h
.model small
.data
grd1 db 'your cgpa is A+ $'
grd2 db 'your cgpa is A $'
grd3 db 'your cgpa is A- $'
grd4 db 'your cgpa is B $'
grd5 db 'your cgpa is c $'

.code          

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21H
    
    mov bl,al
    
    cmp bl,'8'         
    je case1       
    cmp bl,'7'          
    je case2            
    cmp bl,'6'      
    JE case3        
    cmp bl,'5'         
    je case4 
    cmp bl,'4'         
    je case5      
        
    
    jmp end_case
        
    case1:
         
        mov ah,2
        mov dl,10
        INT 21h      
        mov dl,13
        INT 21h          
        
        lea dx,grd1   
        mov ah,9
        int 21h
        jmp end_case 
        
     case2: 
    
        mov ah,2
        mov dl,10
        mov 21h         
        mov dl,13
        int 21h
        
        lea dx,grd1     
        mov ah,9
        int 21h 
        jmp end_case
     
        
     case3:
      
        mov ah,2
        mov dl,10
        int 21h      
        mov dl,13
        int 21h          
        
        
        lea dx,grd2     
        mov ah,9
        int 21h 
        jmp end_case
        
        
        
     case4: 
    
        
        mov ah,2
        mov dl,10
        int 21h      
        mov dl,13
        int 21h 
        
        lea DX,grd4     
        mov AH,9
        int 21h 
        jmp end_case  
        
     case5: 
    
        
        mov ah,2
        mov dl,10
        int 21h      
        mov dl,13
        int 21h 
        
        lea dx,grd5     
        mov ah0,9
        int 21h 
        jmp end_case
    
    
    end_case: 
    
    main endp

end main