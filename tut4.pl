connaitre(robert,stan).
connaitre(robert,hugo).
connaitre(sara,hugo).
connaitre(christian,hugo).
connaitre(robert,sara).
connaitre(mustapha,robert).
connaitre(stan,christian).
connaitre(robert,sara).
connaitre(hugo,mustapha).
connaitre(sara,mustapha).
connaitre(sebastian,robert).
connaitre(sebastian,hugo).

connaitrem(X,Y):-connaitre(X,Y);connaitre(Y,X).
