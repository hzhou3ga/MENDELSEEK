	implicit real*8 (a-h,o-z)
        parameter (maxd=20000)
        dimension x(maxd,2)
        integer v(maxd),aa(maxd,maxd)
        dimension rr(2),ssn(maxd,maxd),ss(maxd,maxd)

        j=1
        c0=-100000000
        i1=0
        i2=0
5	read(*,*,end=10) x(j,1),x(j,2)
c        write(*,*) x(j,1),x(j,2)
        if (c0.ne.x(j,2)) then
        k=k+1
        v(k)=1
        c0=x(j,2)
        else
        v(k)=v(k)+1
        endif  
        ss(k,v(k))=j
c         write(*,*) k,v(k),j 

        if(x(j,1).gt.0) then
         i1=i1+1
         aa(k,v(k))=1
        else
         i2=i2+1
         aa(k,v(k))=2
        endif 

        j=j+1
        goto 5
10	j=j-1
c        write(*,*) j
        cc=0
        rr(1)=0
        rr(2)=0
        do m=1,k
        cc=cc+(v(m)**3-v(m))/12.0
           do n=1,v(m)
           ssn(m,n)=0
             do l1=1,v(m)
             ssn(m,n)=ssn(m,n)+ss(m,l1)/v(m)
             enddo
c            write(*,*) ssn(m,n),aa(m,n)
           rr(aa(m,n))=rr(aa(m,n))+ssn(m,n)
           enddo
        enddo         
c        write(*,*) j,cc,rr(1),rr(2)
         uu=i1*i2*0.5
         u1=i1*i2+i1*(i1+1)*0.5-rr(1)
         u2=i1*i2+i2*(i2+1)*0.5-rr(2)
c         uw=min(u1,u2)
         uw=u1      ! consider only u1's z-score
         xnn=i1+i2
         xnn1=xnn-1
         du=sqrt(float(i1*i2)/xnn/xnn1)*sqrt((xnn**3-xnn)/12.0-cc)
         write(*,*) (uw-uu)/du
        stop
	end
