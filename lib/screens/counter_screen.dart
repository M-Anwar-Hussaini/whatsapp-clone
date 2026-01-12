import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/counter_cubit.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  CounterCubit get _cubit => context.read<CounterCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            _buildCounterRow(),
            const SizedBox(height: 16),
            _buildResetButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterRow() {
    return Row(
      mainAxisAlignment: .center,
      children: [
        IconButton(onPressed: _cubit.increment, icon: Icon(Icons.add)),
        BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(state.toString());
          },
        ),
        IconButton(onPressed: _cubit.decrement, icon: Icon(Icons.remove)),
      ],
    );
  }

  Widget _buildResetButton() {
    return ElevatedButton(onPressed: _cubit.reset, child: Text('Reset'));
  }
}
