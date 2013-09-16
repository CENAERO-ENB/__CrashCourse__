within CrashCourse.Connectors.with;
model connected

  mass mass_a annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  mass mass_b(T(start = 400)) annotation (Placement(transformation(extent={{40,-10},{20,10}})));
  resistor resistor
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(mass_a.heatPort, resistor.heatPort_a) annotation (Line(
      points={{-23.8,0},{-8,0}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(resistor.heatPort_b, mass_b.heatPort) annotation (Line(
      points={{8,0},{23.8,0}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics),
        experiment(StopTime=5000),
        __Dymola_experimentSetupOutput);
end connected;