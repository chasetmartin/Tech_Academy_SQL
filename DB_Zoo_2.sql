USE db_zoo;

PRINT 'Hello World'

DECLARE @myVariable INT
SET @myVariable = 6
PRINT @myVariable

DECLARE @var1 INT, @var2 INT
SET @var1 = 4
SET @var2 = 5

PRINT 'Having fun with' + 'TSQL and MS SQL SERVER!'

PRINT 'I have ' + CONVERT(VARCHAR(50), @var1) + ' dollors...'

PRINT CHAR(9) + 'I have' + CONVERT(VARCHAR(50), @var1) + CHAR(13) + ' dollars...'

PRINT 'Variable 1 = ' + CONVERT(VARCHAR(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(VARCHAR(5), @var2) + CHAR(13) + 'Total: '
PRINT @var1 + @var2

IF @var1 <= 3
    BEGIN
        PRINT 'Variable 1 <= 3' + CHAR(13)
    END
ELSE
    BEGIN
        PRINT 'Variable 1 is not < 3' + CHAR(13)
    END

IF @var1 != 3
    BEGIN
        PRINT 'Variable 1 is NOT 3' + CHAR(13)
    END
ELSE
    BEGIN
        PRINT 'Variable 1 is equal to 3!' + CHAR(13)
    END

DECLARE @var3 INT, @var4 INT
SET @var3 = 3
SET @var4 = 5

IF @var3 < 2
    BEGIN
        PRINT '@var3 < 2'
    END
ELSE IF @var3 > 1 AND @var3 < 3
    BEGIN
        PRINT '@var3 > 1 AND @var3 < 3'
    END
ELSE IF @var3 = 4 OR @var3 < 6
    BEGIN
        PRINT '@var3 = 4 OR @var3 < 6'
    END
ELSE
    PRINT '@var3 does not qualify!'

/*This is a silent message to comment on code */


