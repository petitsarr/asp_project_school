Imports System.Data.SqlClient

Module Traitement

    Public conn As New SqlConnection("server=DESKTOP-B7C0CBH; initial catalog= bdCovid; integrated security= true ; MultipleActiveResultSets=true")
    Public cmd As New SqlCommand
    Public dr As SqlDataReader

    Public Sub Ouvrirconn()
        If conn.State <> ConnectionState.Open Then
            conn.Open()
        End If
    End Sub

    Public Sub FermerConn()
        If conn.State = ConnectionState.Open Then
            conn.Close()
        End If
    End Sub
    'Fonction d'execution
    Public Function ExecuteSQL(ByVal sql As String, Optional ByVal type As String = "r")
        Ouvrirconn()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = sql
        cmd.Connection = conn
        If type = "r" Then
            Return cmd.ExecuteReader
        Else
            Return cmd.ExecuteNonQuery
        End If
        FermerConn()
    End Function

    Public Function AjouterPersonnel(ByVal mat As String, ByVal nom As String, ByVal prenom As String, ByVal datenaissance As String, ByVal service As String, ByVal profession As String, ByVal compte As String, ByVal motdepasse As String)
        Return ExecuteSQL("insert into Personnel values ('" & mat & "','" & nom & "','" & prenom & "','" & datenaissance & "', '" & service & "', '" & profession & "', '" & compte & "', '" & motdepasse & "')")
    End Function

    Public Function verifierCompte(ByVal compte As String, ByVal motdepasse As String)
        Return ExecuteSQL("SELECT * FROM Personnel WHERE compte = '" & compte & "' and motpasse ='" & motdepasse & "'")
    End Function
    'Déclaration des variables globales sur l'utilisateur connecté
    Public idp As Integer
    Public mat As String
    Public nom As String
    Public prenom As String
    Public dn As String
    Public service As String
    Public prof As String
    Public compte As String
    Public mp As String
    Public Sub recupInfo(ByVal dt As DataTable)
        idp = dt.Rows(0)(0)
        mat = dt.Rows(0)(1)
        nom = dt.Rows(0)(2)
        prenom = dt.Rows(0)(3)
        dn = dt.Rows(0)(4)
        service = dt.Rows(0)(5)
        prof = dt.Rows(0)(6)
        compte = dt.Rows(0)(7)
        mp = dt.Rows(0)(8)
    End Sub
    'Fonction de modification d'un profil
    Public Function modifProfil(ByVal mat As String, ByVal nom As String, ByVal prenom As String, ByVal datenaissance As String, ByVal service As String, ByVal profession As String, ByVal compte As String, ByVal motdepasse As String)
        Return ExecuteSQL("Update Personnel set matricule='" & mat & "',nom='" & nom & "',prenom='" & prenom & "',datenaissance='" & datenaissance & "',service='" & service & "',profession='" & profession & "',compte='" & compte & "',motpasse='" & motdepasse & "' where id_personnel=" & idp & "")
    End Function
    Public Function AfficherPatient()
        Return ExecuteSQL("select * from Patient")
    End Function
    Public Function NbPatient()
        dr = ExecuteSQL("select count(*) from Patient")
        dr.Read()
        Dim n As Integer = dr(0)
        dr.Close()
        Return n
    End Function
    Public Function RechPatient(ByVal nom As String)
        Return ExecuteSQL("select * from Patient where nompat like '" & nom & "'")
    End Function
    'Fonction Recherche Test par identifiant patient
    Public Function RechTest(ByVal identifiant As Integer)
        Return ExecuteSQL("select * from Test where numtest = " & identifiant)
    End Function

    Public Function RechPatientSup(ByVal idpat As Integer)
        Return ExecuteSQL("select * from Patient where id_patient=" & idpat)
    End Function
    Public Function SupPatient(ByVal idpat As Integer)
        Return ExecuteSQL("delete from Patient where id_patient ='" & idpat & "' ")
    End Function
    'Fonction ajout test
    Public Function AjouterTest(ByVal date_test As String, ByVal result As String, ByVal idpers As String, ByVal idpat As String)
        Return ExecuteSQL("INSERT INTO Test VALUES ('" & date_test & "','" & result & "','" & idpers & "','" & idpat & "')")
    End Function
    'Ceci est la Fonction ajout Patient
    Public Function AjouterPat(ByVal nom As String, ByVal prenom As String, ByVal lieu As String, ByVal tel As String, ByVal datenaissance As String, ByVal genre As String, ByVal adresse As String)
        Return ExecuteSQL("INSERT INTO Patient values ('" & nom & "','" & prenom & "','" & lieu & "','" & tel & "', '" & datenaissance & "', '" & genre & "', '" & adresse & "')")
    End Function

    'Fonction liste Test
    Public Function AfficherTest()
        Return ExecuteSQL("select * from Test")
    End Function

    'Ceci est La Fonction liste Test
    Public Function AfficherTestPositif()
        Return ExecuteSQL("select * from Test where resultat= 'Positif' ")
    End Function

    Public Function NbTestPositif()
        dr = ExecuteSQL("select count(*) from Test where resultat= 'Positif' ")
        dr.Read()
        Dim n As Integer = dr(0)
        dr.Close()
        Return n
    End Function

    'Ceci est la Fonction nombre de test enregistrée
    Public Function NbTest()
        dr = ExecuteSQL("select count(*) from Test")
        dr.Read()
        Dim n As Integer = dr(0)
        dr.Close()
        Return n
    End Function

    'Fonction Suppression Test
    Public Function RechTestSup(ByVal idtest As Integer)
        Return ExecuteSQL("select * from Test where numtest=" & idtest)
    End Function
    Public Function SupTest(ByVal idtest As Integer)
        Return ExecuteSQL("delete from Test where numtest ='" & idtest & "' ")
    End Function



End Module
