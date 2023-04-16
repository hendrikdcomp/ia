# -*- coding: utf-8 -*-
from bayesian import *

"""# Exemplo do Alarme"""

# CPTable({(T, T): .95,
#             (T, F): .94,
#             (F, T): .29,
#             (F, F): .001},
#         [Burglary, Earthquake])

alarm_net = (BayesNet()
    .add('Burglary', [], 0.001)
    .add('Earthquake', [], 0.002)
    .add('Alarm', ['Burglary', 'Earthquake'], {(T, T): 0.95, (T, F): 0.94, (F, T): 0.29, (F, F): 0.001})
    .add('JohnCalls', ['Alarm'], {T: 0.90, F: 0.05})
    .add('MaryCalls', ['Alarm'], {T: 0.70, F: 0.01}))

# Tornar Burglary, Earthquake, etc. variáveis globais 
globals().update(alarm_net.lookup)