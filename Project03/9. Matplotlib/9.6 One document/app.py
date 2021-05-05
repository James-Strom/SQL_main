import matplotlib.pyplot as plt

figure = plt.figure()
figure.subplots_adjust(wspace=0.5)
ax1 = figure.add_subplot(1, 2, 1)
ax2 = figure.add_subplot(1, 2, 2)

ax1.plot([1, 2, 3, 4], [3, 7, 11, 23])
ax2.plot([1, 2, 3, 4], [3, 9, 17, 25])

save_results_to = 'C:/Computer Files/Code College/SQL/My Queries/Project03/9. Matplotlib/9.6 One document/'
figure.savefig(save_results_to + "graph3.png", bbox_inches = "tight")
