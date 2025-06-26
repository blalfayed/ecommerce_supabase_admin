import 'package:ecommerce_supabase_admin/core/components/custom_elevated_button.dart';
import 'package:ecommerce_supabase_admin/core/components/custom_search_field.dart';
import 'package:ecommerce_supabase_admin/core/functions/build_custom_app_bar.dart';
import 'package:flutter/material.dart';

class CommentsView extends StatelessWidget {
  const CommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, "Comments"),
      body: ListView.builder(
        itemBuilder: (context, index) => CommentCard(),
        itemCount: 10,
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  CommentCard({
    super.key,
  });
  final TextEditingController _replyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        child: Column(
          children: [
            Text(
              "Comment : This Is User Comment",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Reply : This Is Replay",
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  CustomField(controller: _replyController, labelText: "Reply"),
            ),
            SizedBox(
              height: 10,
            ),
            CustomElevatedButton(onPressed: () {}, child: Text("reply"))
          ],
        ),
      ),
    );
  }
}
