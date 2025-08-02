import 'package:courses/config/responsive/ui_halper.dart';
import 'package:courses/core/services/generic_cubit/generic_state.dart';
import 'package:courses/features/login/cubit/login_cubit.dart';
import 'package:courses/features/login/models/login_model.dart';
import 'package:courses/features/login/models/login_request_body_model.dart';
// import 'package:courses/features/login/models/login_request_body_model.dart';
import 'package:courses/l10n/app_localizations.dart';
// import 'package:courses/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, GenericState<LoginModel>>(
      listener: (context, state) {
        if (state is GenericSuccess) {
          context.go('/home');
        } else if (state is GenericError<LoginModel>) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failure.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    AppLocalizations.of(context)!.welcome,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: UIHelpers.getResponsiveFontSize(
                        context,
                        baseSize: 16,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    AppLocalizations.of(context)!.signin_to_continue,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context)
                          .primaryTextTheme
                          .bodyMedium!
                          .color!
                          .withValues(alpha: 0.5),
                      fontSize: UIHelpers.getResponsiveFontSize(
                        context,
                        baseSize: 11,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.username,

                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value!.isEmpty
                        ? AppLocalizations.of(context)!.please_enter_name
                        : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.password,

                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => value!.isEmpty
                        ? AppLocalizations.of(context)!.please_enter_password
                        : null,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) =>
                            setState(() => _rememberMe = value!),
                      ),
                      Text(AppLocalizations.of(context)!.remember_me),
                    ],
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<LoginCubit, GenericState<LoginModel>>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                        ),
                        onPressed: state is GenericLoading
                            ? null
                            : () {
                                // context.go(AppRoutes.home);
                                if (_formKey.currentState!.validate()) {
                                  context.read<LoginCubit>().fetchData(
                                    body: LoginRequestBodyModel(
                                      username: _emailController.text,
                                      password: _passwordController.text,
                                    ),
                                  );
                                }
                              },
                        child: state is GenericLoading
                            ? const CircularProgressIndicator()
                            : Text(AppLocalizations.of(context)!.login),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
