USE [Project EPL]
GO

SELECT TOP 10 Player, Gls
FROM [Project EPL].dbo.elp
ORDER BY Gls DESC

SELECT TOP 10 Player, Ast
FROM [Project EPL].dbo.elp
ORDER BY Ast DESC

SELECT TOP 10 Player, G_A
FROM [Project EPL].dbo.elp
ORDER BY G_A DESC

ALTER TABLE [Project EPL].dbo.elp
ADD [goal_non_pen] INT;
UPDATE [Project EPL].dbo.elp
SET [goal_non_pen] = [Gls] - [PK];

SELECT TOP 10 Player, Gls, PK, goal_non_pen
FROM [Project EPL].dbo.elp
ORDER BY goal_non_pen DESC
-- chỉ số bàn thắng (không penalty) nói lên khả năng tấn công của cầu thủ do penalty là tình huống đá phạt có tỉ lệ ăn bàn rất cao (~75%)

SELECT TOP 20 Player, Pos, [Min], Team
FROM [Project EPL].dbo.elp
ORDER BY [Min] DESC
-- hầu hết những cầu thủ thi đấu nhiều nhất đều là cầu thủ phòng ngự và thủ môn