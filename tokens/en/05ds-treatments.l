%%

grad(ed|y) { mkNode(E_TREATMENT, "grady"); return TREATMENT2; }
grad(ed|y){S}in{S}fesse? { mkNode(E_TREATMENT, "grady-in-fess"); return TREATMENT2; }
grad(ed|y){S}in{S}pale { mkNode(E_TREATMENT, "grady-in-pale"); return TREATMENT2; }
grad(ed|y){S}in{S}bend { mkNode(E_TREATMENT, "grady-in-bend"); return TREATMENT2; }
grad(ed|y){S}in{S}bend{S}bendsinister { mkNode(E_TREATMENT, "grady-in-bendsin"); return TREATMENT2; }
grad(ed|y){S}in{S}sinister{S}bendbend { mkNode(E_TREATMENT, "grady-in-bendsin"); return TREATMENT2; }
grad(ed|y){S}in{S}annull?o { mkNode(E_TREATMENT, "grady-in-annulo"); return TREATMENT2; }