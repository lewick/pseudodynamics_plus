# About

## Pseudodynamics+ solves PDE with time and state dependent parameters

<div class="two-column-grid">
  <div class="column">
    

pseudodynamics+ is a computational framework for reconstructing population-aware cell state dynamics from time-resolved single-cell data. It is designed to bridge the gap between static single-cell snapshots and tissue-scale population dynamics by jointly modelling cell state transitions and changes in total population size.

At its core, pseudodynamics+ formulates cellular differentiation as a continuous density evolution process governed by a partial differential equation (PDE) that integrates three fundamental dynamic behaviours: proliferation (growth), directed state transitions (differentiation), and stochastic dispersion (diffusion). 


$$ \frac{\partial }{{\partial t}}u\left( { \mathbf{s},t} \right) = 
\underbrace{g\left( { \mathbf{s},t} \right)u\left( { \mathbf{s},t} \right)}_{\textrm{growth}}
- \underbrace{\nabla_{\mathbf{s}} \left( {v\left( { \mathbf{s},t} \right)u( \mathbf{s},t)} \right)}_{\textrm{drift}} 
+ \underbrace{\nabla_{\mathbf{s}} \left( {D\left( { \mathbf{s},t} \right)\nabla_{\mathbf{s}} u( \mathbf{s},t)} \right)}_{\textrm{diffusion}} 
$$

To solve this high-dimensional PDE without discretising the cell state space, pseudodynamics+ leverages physics-informed neural networks (PINNs), enabling scalable and mesh-free inference directly in low-dimensional representations of single-cell landscapes.

  </div>
  <div class="column">
    


<img src="https://raw.githubusercontent.com/Gottgens-lab/pseudodynamics_plus/main/.github/images/model_sim.png" /> 

  </div>
</div>

<style>
.two-column-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 30px;
  margin: 20px 0;
}

.column {
  padding: 0;
}

@media (max-width: 768px) {
  .two-column-grid {
    grid-template-columns: 1fr;
    gap: 20px;
  }
}
</style>



## Downstream analyses


By integrating single-cell transcriptomic time series with independent measurements of population size, pseudodynamics+ infers state- and time-resolved dynamic parameters at single-cell resolution. These parameters provide a quantitative description of how cells proliferate, differentiate, and redistribute across complex, branching developmental landscapes.

pseudodynamics+ enables a range of downstream analyses, including:

- Estimation of growth, differentiation velocity fields, and diffusion across cell states

- Reconstruction and interpolation of continuous cell density landscapes at unobserved time points

- Simulation of cell state trajectories and future population dynamics

- Quantification of continuous density transport between progenitor and descendant states

- Identification of genes associated with dynamic changes in differentiation behaviour

<img src="https://raw.githubusercontent.com/Gottgens-lab/pseudodynamics_plus/main/.github/images/downstream.png" alt="downstream" width="1200"/> 

Overall, pseudodynamics+ provides a population-aware, mechanistic framework for interpreting time-series single-cell data, offering insights into tissue development, homeostasis, and lineage bias that are not accessible from cell state information alone. It is applicable to complex multi-lineage systems and is particularly suited for studies where both molecular resolution and quantitative population dynamics are essential.