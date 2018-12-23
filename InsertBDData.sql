USE [Lab2]
GO

INSERT INTO [dbo].[Banks]([name], [city], [phone_number])
     VALUES('PrivatBank', 'Kyiv', 0964234234);
INSERT INTO [dbo].[Banks]([name], [city], [phone_number])
     VALUES('KredoBank', 'Lviv', 0511234123);
INSERT INTO [dbo].[Banks]([name], [city], [phone_number])
     VALUES('SocialBank', 'Berlin', 0512312312);
INSERT INTO [dbo].[Banks]([name], [city], [phone_number])
     VALUES('FranceBank', 'Paris', 0412351231);
INSERT INTO [dbo].[Banks]([name], [city], [phone_number])
     VALUES('MonteBank', 'Paris', 0412341241);

INSERT INTO [dbo].[Countries]([name], [capital], [currency])
     VALUES('Ukraine', 'Kyiv', 'UAH')
INSERT INTO [dbo].[Countries]([name], [capital], [currency])
     VALUES('Germany', 'Berlin', 'EU')
INSERT INTO [dbo].[Countries]([name], [capital], [currency])
     VALUES('France', 'Paris', 'EU')

INSERT INTO [dbo].[CountryBank] ([country_ID], [bank_ID])
     VALUES(1, 1)
INSERT INTO [dbo].[CountryBank] ([country_ID], [bank_ID])
     VALUES(1, 2)
INSERT INTO [dbo].[CountryBank] ([country_ID], [bank_ID])
     VALUES(2, 3)
INSERT INTO [dbo].[CountryBank] ([country_ID], [bank_ID])
     VALUES(3, 4)
INSERT INTO [dbo].[CountryBank] ([country_ID], [bank_ID])
     VALUES(3, 5)

GO


