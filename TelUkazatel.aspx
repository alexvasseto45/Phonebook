<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="TelUkazatelStyle.css" />
    <script src="TelUkazatelCode.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="utf-8" />
    <title>Telefonen Ukazatel</title>
</head>
<body>
       <div class="contactInfo">
        <h1><b>Телефонен указател</b></h1>
        <p><b>Запиши нов контакт</b></p>
            <form  runat="server" class="registration" id="registration">
        <div>
                <label for="PersonName">Име:</label>
                <asp:TextBox  runat="server" type="text" ID="PersonName" name="PersonName"/>
                <label class="errClass" id="PersonNameMsg"></label>
        </div>
        <div>
                <label for="PersonSurname">Фамилия:</label>
                <asp:TextBox runat="server" ID="PersonSurname" name="PersonSurname"/>
                    <label class="errClass" id="PersonSurnameMsg"></label>
        </div>
        <div>
                <label for="ContactNumber">Телефонен номер: </label>
                <asp:TextBox runat="server" ID="ContactNumber" name="ContactNumber"/><br>
            <label class="errClass" id="ContactNumberMsg"></label>
        </div>
        <div>
                <label for="Email">E-mail: </label>
                <asp:TextBox runat="server" ID="Email" name="Email"/><br><br>
        </div>
        <div class="centerEl">
                <asp:Button runat="server" CssClass = "submitButton" Text="Запиши" OnClientClick="submitBtnClick()" />
        </div>
        </form>
    </div>
</body>
</html>