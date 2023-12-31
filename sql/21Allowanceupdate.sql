USE [PaySubjects]
GO


update Sub_ExtraDutyDetails set Amount=P.NewAmount from
(SELECT ((select R.Rate   from	
  [dbo].[Sub_Grade_Details] D
 inner join [dbo].[Sub_Grade_Rates] R on D.Grade =R.Grade 
 where  D.Active =1   and R.[Type] =2 and D.SysCode  =m.TSaveSysCode and D.CatCode =m.TSaveCatCode and d.OfficialNo =m.TSaveBy )  +   (SELECT        SUM(P.Amount)  FROM           [Payroll_SLNavy].SLIS_Pay.Pay_SalaryProcess  P
where  P.SysCode =m.TSaveSysCode and P.CatCode =m.TSaveCatCode and m.TSaveBy =P.OfficerCode 
and        (P.ItemCode IN ('INCR', '0001'))))/20 NewAmount ,  m.TSaveSysCode ,m.TSaveCatCode ,m.TSaveBy ,  t.TransID, EffectDt, SFrom, STo, Hrs, Minutes, Details, t.Remarks, t.Amount
 FROM            Sub_ExtraDutyDetails t
inner join  Sub_ExtraDuty_Master m on m.TransId =t.TransID 
 WHERE        (t.TransID LIKE N'21%')  ) p inner join Sub_ExtraDutyDetails f on f.TransID =p.TransID and p.EffectDt =f.EffectDt 


update Sub_ExtraDuty_Master set Amount=f.amt from 

(select T.TransID ,sum(t.Amount   )as amt from  [dbo].Sub_ExtraDutyDetails t
inner join  Sub_ExtraDuty_Master m on m.TransId =t.TransID 
group by T.TransID ,t.Amount
 having        (t.TransID LIKE N'21%'))  f inner join Sub_ExtraDuty_Master L on l.TransId =f.TransID 