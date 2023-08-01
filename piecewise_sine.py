import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

def piecewise_linear_approximation(x_range, num_segments, segment_breakpoints):
    # Divide the range into segments
    # Use if you'd like auto-generated segments
    # segment_length = (x_range[1] - x_range[0]) / num_segments
    # segment_breakpoints = [x_range[0] + i * segment_length for i in range(num_segments)]

    # Fit a linear regression model for each segment
    x_train = []
    y_train = []
    for i in range(num_segments):
        segment_start = segment_breakpoints[i]
        segment_end = segment_breakpoints[i + 1] if i + 1 < num_segments else x_range[1]
        mask = (x_values >= segment_start) & (x_values <= segment_end)
        x_train.append(x_values[mask].reshape(-1, 1))
        y_train.append(y_values[mask])

    # Create a linear regression model for each segment
    models = []
    for x, y in zip(x_train, y_train):
        model = LinearRegression()
        model.fit(x, y)
        models.append(model)

    # Evaluate the piecewise linear approximation
    y_pred = np.concatenate([model.predict(x) for x, model in zip(x_train, models)])
    
    coefficients = []
    offsets = []
    
    for model in models:
        coefficients.append(model.coef_)
        offsets.append(model.intercept_)

    return x_values, y_pred, coefficients, offsets

x_range = (-1 * np.pi, 1 * np.pi)    # Range for the sine function
num_segments = 7            # Number of segments to approximate the sine function
# segment_breakpoints = [-1, -0.5, 0.5, 1]
segment_breakpoints = [-1 * np.pi, -0.7 * np.pi, -0.5 * np.pi, -0.3 * np.pi, 0.3 * np.pi, 0.5 * np.pi, 0.7 * np.pi, 1 * np.pi]

# Generate sine function values for the given range
x_values = np.linspace(x_range[0], x_range[1], 1000)
y_values = np.sin(x_values)

# Squish the sine wave into a range from -1 to 1
# x_range = (-1, 1)
# x_values = np.linspace(x_range[0], x_range[1], 1000)

x_values, y_approx, coefficients, offsets = piecewise_linear_approximation(x_range, num_segments, segment_breakpoints)

for coefficient, offset, i in zip(coefficients, offsets, range(len(segment_breakpoints) - 1)):
    print("Segment for range " + str(segment_breakpoints[i]) + ": " + str(segment_breakpoints[i + 1]))
    print(str(coefficient) + "x + " + str(offset))
    
# Plot the results
plt.figure(figsize=(10, 7))
plt.plot(x_values, y_values, label='Sine Function', color='blue')
plt.plot(x_values, y_approx, label='Piecewise Linear Approximation', color='red', linestyle='dashed')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Piecewise Linear Approximation of Sine Function')
plt.legend()
plt.grid(True)
plt.show()