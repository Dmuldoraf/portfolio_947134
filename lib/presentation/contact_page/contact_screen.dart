import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/contact_page/widgets/contact_field.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  void _handleSubmit() {
    final name = _nameController.text;
    final email = _emailController.text;
    final subject = _subjectController.text;
    final message = _messageController.text;

    _submitForm(name, email, subject, message);
  }

  void _submitForm(String name, String email, String subject, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Sending message...'),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue[200]!,
            Colors.green[200]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(80.0),
        child: SizedBox(
          width: 400,
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Get in touch',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: _handleSubmit,
                    child: const CircleAvatar(
                      radius: 12.0,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              ContactTextField(controller: _nameController, label: 'Your Name'),
              ContactTextField(controller: _emailController, label: 'Email'),
              ContactTextField(controller: _subjectController, label: 'Subject'),
              ContactTextField(
                  controller: _messageController, label: 'Message', maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
