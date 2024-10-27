import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  _OrderTrackingPageState createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  int _currentStep = 1;
  GoogleMapController? _mapController;
  final LatLng _initialPosition = const LatLng(37.7749, -122.4194); // San Francisco as default location
  final LatLng _deliveryPosition = const LatLng(37.7858, -122.4064); // Example delivery location

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Your Order'),
      ),
      body: Column(
        children: [
          // Map
          SizedBox(
            height: 300.0,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _initialPosition,
                zoom: 12.0,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('deliveryLocation'),
                  position: _deliveryPosition,
                  infoWindow: const InfoWindow(title: "Delivery Location"),
                ),
              },
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
            ),
          ),
          // Stepper for order status
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Stepper(
                    currentStep: _currentStep,
                    onStepTapped: (step) {
                      setState(() {
                        _currentStep = step;
                      });
                    },
                    steps: [
                      Step(
                        title: const Text('Order Placed'),
                        content: const Text('We have received your order.'),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0
                            ? StepState.complete
                            : StepState.indexed,
                      ),
                      Step(
                        title: const Text('Preparing'),
                        content: const Text('Your food is being prepared.'),
                        isActive: _currentStep >= 1,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.indexed,
                      ),
                      Step(
                        title: const Text('On the Way'),
                        content: const Text('The delivery person is on the way.'),
                        isActive: _currentStep >= 2,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.indexed,
                      ),
                      Step(
                        title: const Text('Delivered'),
                        content: const Text('Your order has been delivered.'),
                        isActive: _currentStep >= 3,
                        state: _currentStep == 3
                            ? StepState.complete
                            : StepState.indexed,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _nextStep,
                    child: const Text('Next Step'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _nextStep() {
    setState(() {
      if (_currentStep < 3) {
        _currentStep += 1;
      }
    });
  }
}
