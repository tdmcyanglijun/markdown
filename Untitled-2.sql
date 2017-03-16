USE [CMSMIP1]
GO

/****** Object:  View [dbo].[CMS_SA_CHECK_HDL_RECORD_V]    Script Date: 2017/3/11 22:27:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[CMS_SA_CHECK_HDL_RECORD_V]
AS
SELECT DM4.DEP_NAME AS HDL_DEP_ID_TOP_DEP_NAME, 
      DM4.DEP_CODE AS HDL_DEP_ID_TOP_DEP_CODE, P1.ID, P1.APL_APPLY_RECO_ID, 
      P1.HDL_DEP_ID, P1.HDL_DEP_ID_TOP_DEP_ID, P1.HDL_DEP_NAME, 
      P1.HDL_PLACE, P1.HDL_PLACE_NAME, P1.HDL_RESPONSIBLE, 
      P1.HDL_RESPONSIBLE_NAME, P1.HDL_PLACE_DESC, P1.CHECK_ELEMENT_ID, 
      P1.CHECK_ITEM_ID, P1.HDL_CARD_ID, P1.HDL_KEY_WORDS, P1.HDL_CONTENT, 
      P1.HDL_MEASURES, P1.HDL_ADVICE, P1.HDL_REQUIRE, P1.HDL_CHECK_DATE, 
      P1.HDL_SHIFT, P1.HDL_SHIFT_NAME, P1.HDL_CLASS, P1.HDL_KIND, 
      P1.HDL_KIND_NAME, P1.HDL_LEVEL, P1.HDL_LEVEL_NAME, P1.HDL_GRADE, 
      P1.HDL_RATE, P1.HDL_SORUCE, P1.HDL_SORUCE_NAME, P1.UNIT_FINE, 
      P1.PERSONAL_FINE, P1.RECTIFY_DATE, P1.HDL_CHECK_HDL_ID, P1.HDL_STATUS, 
      P1.HDL_STATUS_NAME, P1.HDL_STATUS_VALUE, P1.CHECK_SOURCE, 
      P1.CREATOR_ID, P1.CREATOR_NAME, P1.EDITOR_ID, P1.CREATE_TIME, 
      P1.EDIT_TIME, P1.PROC_USER_ID, P1.DEL_MARK, P1.SPARE1, 
      P1.CREATOR_DEP_ID, P1.STD_PER_FORFEIT_ML, P1.STD_PER_FORFEIT_DL, 
      P1.STD_PER_FORFEIT_HDL, P1.STD_PER_FORFEIT_BDL, 
      P1.STD_PER_FORFEIT_MR, P1.STD_PER_FORFEIT_DR, P1.STD_PER_FORFEIT_DC, 
      P1.STD_PER_FORFEIT_RBS, P1.STD_PER_FORFEIT_DS, 
      P1.STD_PER_FORFEIT_SPARE1, P1.STD_PER_FORFEIT_SPARE2, 
      P1.STD_PER_FORFEIT_SPARE3, P1.STD_PER_FORFEIT_SPARE4, 
      P1.PERSON_DISPOSITION, P1.PD_ML, P1.PD_DL, P1.PD_MR, P1.PD_DR, 
      P1.STD_ACCORDING, P1.STD_ACCORDING_CONTENT, P1.ACCOUNTABLE_TERMS, 
      P1.GROUP_ID, P1.SHIFT_LEADER, P1.CREATOR_DEP_CODE, 
      P1.CREATOR_TOP_DEP_CODE, P1.HDL_PERSON_ID, P1.HDL_ACCOMPANY_ID, 
      P1.HDL_CHK_DEP_ID, P1.HDL_ACCOMPANY_DEP_ID, P1.HDL_PERSON_NAME, 
      P1.HDL_ACCOMPANY_NAME, P1.HDL_CHK_DEP, P1.HDL_ACCOMPANY_DEP, 
      P1.SPOT_CHECK_USER, P1.SPOT_CHECK_DATE, P1.SPOT_CHECK_DESC, 
      P1.SPOT_CHECK_STATUS, P1.DAILY_STANDBY_FLAG, P1.DAILY_FLAG, 
      P1.DUTY_TYPE, P1.DUTY_MARK, P1.STD_TERMS_ID
FROM (SELECT A.ID, APL.ID AS APL_APPLY_RECO_ID, A.HDL_DEP_ID, 
              DM3.TOP_DEP_ID AS HDL_DEP_ID_TOP_DEP_ID, 
              DM.DEP_NAME AS HDL_DEP_NAME, A.HDL_PLACE, 
              PM.PLACE_NAME AS HDL_PLACE_NAME, A.HDL_RESPONSIBLE, 
              UM1.USER_NAME AS HDL_RESPONSIBLE_NAME, A.HDL_PLACE_DESC, 
              A.CHECK_ELEMENT_ID, A.CHECK_ITEM_ID, A.HDL_CARD_ID, 
              A.HDL_KEY_WORDS, A.HDL_CONTENT, A.HDL_MEASURES, A.HDL_ADVICE, 
              A.HDL_REQUIRE, A.HDL_CHECK_DATE, A.HDL_SHIFT, 
              DS1.SUB_KEY_NAME AS HDL_SHIFT_NAME, A.HDL_CLASS, A.HDL_KIND, 
              CK1.CHK_KIND_NAME AS HDL_KIND_NAME, A.HDL_LEVEL, 
              DS2.SUB_KEY_NAME AS HDL_LEVEL_NAME, A.HDL_GRADE, A.HDL_RATE, 
              A.HDL_SORUCE, DM1.DEP_NAME AS HDL_SORUCE_NAME, A.UNIT_FINE, 
              A.PERSONAL_FINE, A.RECTIFY_DATE, A.HDL_CHECK_HDL_ID, 
              A.HDL_STATUS, DS3.SUB_KEY_NAME AS HDL_STATUS_NAME, 
              A.HDL_STATUS_VALUE, A.CHECK_SOURCE, A.CREATOR_ID, 
              UM2.USER_NAME AS CREATOR_NAME, A.EDITOR_ID, A.CREATE_TIME, 
              A.EDIT_TIME, A.PROC_USER_ID, A.DEL_MARK, A.SPARE1, 
              A.CREATOR_DEP_ID, A.STD_PER_FORFEIT_ML, A.STD_PER_FORFEIT_DL, 
              A.STD_PER_FORFEIT_HDL, A.STD_PER_FORFEIT_BDL, 
              A.STD_PER_FORFEIT_MR, A.STD_PER_FORFEIT_DR, 
              A.STD_PER_FORFEIT_DC, A.STD_PER_FORFEIT_RBS, 
              A.STD_PER_FORFEIT_DS, A.STD_PER_FORFEIT_SPARE1, 
              A.STD_PER_FORFEIT_SPARE2, A.STD_PER_FORFEIT_SPARE3, 
              A.STD_PER_FORFEIT_SPARE4, A.PERSON_DISPOSITION, A.PD_ML, A.PD_DL, 
              A.PD_MR, A.PD_DR, A.STD_ACCORDING, A.STD_ACCORDING_CONTENT, 
              A.ACCOUNTABLE_TERMS, A.GROUP_ID, A.SHIFT_LEADER, 
              A.CREATOR_DEP_CODE, A.CREATOR_TOP_DEP_CODE, A.HDL_PERSON_ID, 
              A.HDL_ACCOMPANY_ID, A.HDL_CHK_DEP_ID, A.HDL_ACCOMPANY_DEP_ID, 
              A.HDL_PERSON_NAME, A.HDL_ACCOMPANY_NAME, A.HDL_CHK_DEP, 
              A.HDL_ACCOMPANY_DEP, A.SPOT_CHECK_USER, A.SPOT_CHECK_DATE, 
              A.SPOT_CHECK_DESC, A.SPOT_CHECK_STATUS, A.DAILY_STANDBY_FLAG, 
              A.DAILY_FLAG, A.DUTY_TYPE, A.DUTY_MARK, A.STD_TERMS_ID
        FROM dbo.CMS_SA_CHECK_HDL_RECORD_T AS A 
		LEFT OUTER JOIN dbo.CMS_BA_IN_DEPT_MANG_T AS DM ON A.HDL_DEP_ID = DM.ID 
		LEFT OUTER JOIN dbo.CMS_BA_IN_PLACE_MANG_T AS PM ON  A.HDL_PLACE = PM.ID 
		LEFT OUTER JOIN dbo.CMS_SYS_USER_MANG_T AS UM1 ON A.HDL_RESPONSIBLE = UM1.ID 
		LEFT OUTER JOIN
              dbo.CMS_SYS_DICT_SUB_T AS DS1 ON 
              A.HDL_SHIFT = DS1.ID LEFT OUTER JOIN
              dbo.CMS_SA_CHECK_CHK_KIND_T AS CK1 ON 
              A.HDL_KIND = CK1.ID LEFT OUTER JOIN
              dbo.CMS_SYS_DICT_SUB_T AS DS2 ON 
              A.HDL_LEVEL = DS2.ID LEFT OUTER JOIN
              dbo.CMS_BA_IN_DEPT_MANG_T AS DM1 ON 
              A.HDL_SORUCE = DM1.ID LEFT OUTER JOIN
              dbo.CMS_SYS_DICT_SUB_T AS DS3 ON 
              A.HDL_STATUS = DS3.ID LEFT OUTER JOIN
              dbo.CMS_SYS_USER_MANG_T AS UM2 ON 
              A.CREATOR_ID = UM2.ID LEFT OUTER JOIN
              dbo.CMS_SYS_APL_APPLY_RECO_T AS APL ON 
              A.ID = APL.APPLY_SOURCE_IDS LEFT OUTER JOIN
              dbo.CMS_BA_IN_DEPT_MANG_T AS DM3 ON A.HDL_DEP_ID = DM3.ID) 
      AS P1 LEFT OUTER JOIN
      dbo.CMS_BA_IN_DEPT_MANG_T AS DM4 ON 
      P1.HDL_DEP_ID_TOP_DEP_ID = DM4.ID

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[3] 2[41] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -7
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DM4"
            Begin Extent = 
               Top = 121
               Left = 38
               Bottom = 224
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P1"
            Begin Extent = 
               Top = 13
               Left = 38
               Bottom = 116
               Right = 250
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 82
         Width = 284
         Width = 1710
         Width = 1425
         Width = 1515
         Width = 1425
         Width = 2100
         Width = 1500
         Width = 2145
         Width = 2340
         Width = 1905
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2070
         Width = 2430
         Width = 1500
         Width = 1500
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CMS_SA_CHECK_HDL_RECORD_V'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2595
         Width = 2325
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CMS_SA_CHECK_HDL_RECORD_V'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CMS_SA_CHECK_HDL_RECORD_V'
GO


