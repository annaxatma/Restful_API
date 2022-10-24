part of 'pages.dart';

class sendEmail extends StatefulWidget {
  const sendEmail({Key? key}) : super(key: key);

  @override
  State<sendEmail> createState() => _sendEmailState();
}

class _sendEmailState extends State<sendEmail> {

  final _emailKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return !EmailValidator.validate(value.toString()) ? "Email tidak valid" : null;
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  if(_emailKey.currentState!.validate()){
                    // await MailService()
                    //     .SendMail(ctrlEmail.text.toString())
                    //     .then((value) {
                    //   var result = json.decode(value.body);
                    //   print(result.toString());
                    // });

                    Fluttertoast.showToast(
                        msg: "Successfuly sent the E-mail to " + ctrlEmail.text.toString(),
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 14,
                        backgroundColor: Colors.greenAccent,
                        textColor: Colors.white
                    );
                  }else{
                    Fluttertoast.showToast(
                        msg: "Failed to sent the E-mail",
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 14,
                        backgroundColor: Colors.redAccent,
                        textColor: Colors.white
                    );
                  }
                },
                child: Text("Send E-mail")
            )],
        ),
      ),
    );
  }
}
