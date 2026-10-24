### A Pluto.jl notebook ###
# v1.0.4

#> [frontmatter]
#> title = "01: Intro"
#> description = "Notebook 1 in the AAS 247 JuliaAstro workshop series."

using Markdown
using InteractiveUtils

# ╔═╡ 7c4ebc32-9b8e-4b2a-8f39-f4c351283843
begin
	using Dates, LaTeXStrings, PlutoUI, Term
	TableOfContents(; title = "Tutorial", depth = 4)
end

# ╔═╡ 6001288a-7a9d-4020-bf7d-02a0fa250c04
"""
!!! note "ADASS XXXVI Julia Tutorial"
    **$(Dates.format(today(), dateformat"d u Y"))**
""" |> Markdown.parse

# ╔═╡ 38ead816-0375-4605-a833-6464485aa0d6
md"""
# Historical Context

## Scientific Python

Exactly thirty years ago at the Astronomical Data Analysis Software and Systems (ADASS) VI meeting (1996) in Charlottesville, VA; Harrington and Barrett hosted a Birds-of-a-Feather session entitled [Interactive Data Analysis Environments](https://www.cv.nrao.edu/adass/adassVI/harringtonj.html). Based on their review of [21 interpreted programming languages](https://htmlpreview.github.io/?https://github.com/barrettp/AAS245Julia/blob/main/Interactive%20Data%20Analysis%20Environments.html) such as Glish, GUILE, IDL, IRAF, MATLAB, Perl, Python, and Tcl; they recommended that Python be considered the primary language for astronomical data analysis. The primary reasons were that the language was simple to learn, yet powerful; well supported by the programming community; and had FORTRAN-like arrays. However, for good performance, the multi-dimensional arrays needed to be written in a compiled language, namely C. So Numerical or Scientific Python suffers from the **two language problem**: an interpreted language for interactive use and a compiled language for performance.
"""

# ╔═╡ 95cfbabc-5e7c-481b-853c-6d06baa577b6
md"""
## 22 Years Later, Enter Julia

In 2009, four faculty and staff members[^1] at MIT, who were not satisfied with the state of scientific computing, decided to develop a general purpose, high performance, scientific programming language. After ten years of development, they release Julia Version 1.0 on August 8, 2018. Their aim was to create an open-source interpreted language that was concise, extensible, and highly performant.

!!! info "Jeff Bezanson, 2012"
	We are greedy.
	
	We want a language that's open source, with a liberal license. We want the speed of C with the dynamism of Ruby. We want a language that's homoiconic, with true macros like Lisp, but with obvious, familiar mathematical notation like MATLAB. We want something as usable for general programming as Python, as easy for statistics as R, as natural for string processing as Perl, as powerful for linear algebra as MATLAB, as good at gluing programs together as the shell. Something that is dirt simple to learn yet, keeps the most serious hackers happy. We want it interactive and we want it compiled.

[^1]: [Alan Edelman](https://math.mit.edu/~edelman/), Professor of Applied Mathematics and Computer Science, MIT; [Viral B. Shah](https://en.wikipedia.org/wiki/Viral_B._Shah), Co-Founder, Chief Executive Officer (CEO), JuliaHub; [Jeff Bezanson](https://en.wikipedia.org/wiki/Jeff_Bezanson), Co-Founder, Chief Technology Officer (CTO), JuliaHub; [Stefen Karpinski](https://karpinski.org/), Co-Founder, Chief Product Officer (CPO), JuliaHub
"""

# ╔═╡ 8e597a38-6e41-499f-af06-f9223b8827de
md"""
## Why Julia Is Different

* Julia is **composable**.
* Julia is **concise**.
* Julia is **highly performant**.
* Julia is **productive**.
* Julia is **easy to maintain**.
* Julia is **free and open-source**.
"""

# ╔═╡ 1cc401a1-6d3a-40e5-a4fc-012caa913369
md"""
## Why I Use Julia

Although an early advocate and developer of Numerical Python (now NumPy), Matplotlib, and PyFits (now astropy.io.fits) over 25 years ago, I knew its limitations, namely, the **two language problem**. Therefore, once a better scientific programming language came along, I was prepared to migrate to that language. I believe that **Julia is that language.** It is the language that I envisioned thirty years ago.
"""

# ╔═╡ b1ed2c4e-f5fa-4e5e-87d8-7af6f80a83ca
md"""
# Getting Started
"""

# ╔═╡ 7f3357bc-4103-4a35-af21-9c86f5a0ec2f
md"""
## Starting Julia

Enter `julia` at the terminal prompt. Set the number of threads to `auto`.

Julia will use as many threads as available and needed.

```julia-repl
> julia --threads=auto
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.13.0 (2026-09-09)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org release
|__/                   |

julia>
```

!!! info "Tip"
    The command line option "`-q`" can be used to remove the start-up banner.

---
"""

# ╔═╡ 7475c896-d1b1-4429-9ba8-8e78de41e0b0
md"""
## Stopping Julia

To exit Julia, enter `<Ctrl-D>`, like Python, or `exit()`

```julia-repl
julia> <Ctrl-D>
```

!!! info "Tip"
    Don't do this now!

---
"""

# ╔═╡ 5df8264e-6e37-4674-abdf-2b05c530787f
md"""
## The REPL

The REPL is the Read-Eval-Print-Loop.

Our first command:

```julia-repl
julia> println("Hello World")
```

!!! action
	Execute the `println` command.
"""

# ╔═╡ 4a404280-2845-4deb-8eee-2dcdcb9aed27


# ╔═╡ 7813824a-cae9-4b97-ac90-e542fbd630d5
md"""
!!! note
    Unlike Jupyter and the REPL, Pluto prints the result above the line, not below.

    ---

    Unlike Python, `""` (double quotes) creates a `String`, while `''` (single quotes) creates a unicode (possibly multibyte) `Char`.

Our first calculation

```julia-repl
julia> a = 4
```

!!! action
    Create the variable `a`.
"""

# ╔═╡ 6ac51e87-87a2-4ccc-9f08-0028700b3cda


# ╔═╡ 27208179-35c3-43c1-9548-3620c8aa7680
md"""```julia-repl
julia> b = 2
```

!!! action
	Create the variable `b`.
"""

# ╔═╡ 40d8d18c-3713-4e77-812d-9d77a4e1ac50


# ╔═╡ aa3e9db7-49d1-40f8-b745-6c4faa2197e1
md"""```julia-repl
julia> a + b
```
!!! action
	Execute the above expression. 
"""

# ╔═╡ 8eb9630a-44b2-4ac8-b243-0c2ce5b16f50


# ╔═╡ 563f07ad-6aed-495e-85fb-bae4a1755ac2
md"""
The previous example should feel familiar to most (Python) users. The difference is that the expressions are not precompiled into the language. They are compiled *on-the-fly*, cached, and executed. 

---

# Useful Julia Capabilities
"""

# ╔═╡ 0f94b21c-364f-488e-aff3-28c4b39a3844
md"""
## Measurements and Unicode

The [Measurements.jl](https://juliaphysics.github.io/Measurements.jl/stable/) package enables variables to have both values and errors.

```julia-repl
julia> using Measurements
```

!!! action
	Add the `Measurements` package.
"""

# ╔═╡ 40abc83f-b4bd-479f-8671-189cc712d792


# ╔═╡ 297cd86c-5e9d-4f70-b11a-cbae8fa96d1e
md"""
Let's do some calculations.

```julia-repl
julia> m1 = measurement(4.5, 0.1)
```

!!! action
	Create the variable `m1`.
"""

# ╔═╡ 8f016c75-7768-4418-8c57-100db3073c85


# ╔═╡ 094b6f30-cbd6-46b1-8e0c-3fdb1ef18261
md"""Typing `measurements` is awkward. There must be a better way. How about the following?

```julia-repl
julia> m2 = 15 ± 0.3
```

where the `±` (plus-minus) character is entered using LaTeX syntax followed by tab, i.e., `\pm<tab>`.

!!! action
	Create the variable `m2`.
"""


# ╔═╡ 7ba8dc19-e0ca-40de-a778-7583ca70978d


# ╔═╡ 668abc35-fdc3-430f-8c90-de3c2c2cd77b
md"""
As the above example shows, Julia understands unicode. For example, expressions in a printed document that contain greek characters can be entered as greek characters in your code.

```julia-repl
julia> α = m1 + m2
```

!!! action
	Calculate the expression `α`.
"""

# ╔═╡ 0e42f7fd-955e-4679-8d90-0cb46c9a12dc


# ╔═╡ d2a2d0bc-e883-439f-8e34-166e2369caef
md"""
!!! note
    The error of the result `α` is propogated correctly.

---
"""

# ╔═╡ 750acbf6-bc04-43ea-b123-14753cab597a
md"""
## Units
!!! action
	Add another package called [Unitful.jl](https://juliaphysics.github.io/Unitful.jl/stable/), which enables attaching units to variables:

```julia-repl
julia> using Unitful
```
"""

# ╔═╡ 88ca2a73-6203-447c-afcc-9e370a82076b


# ╔═╡ c24f1ddd-5e31-4073-a627-86cedb1d44c2
md"""
!!! action
	Create a variable `m3` with units of meters/second, i.e., (m/s):

```julia-repl
julia> m3 = (32 ± 0.1)u"m/s"
```
"""

# ╔═╡ 63a4b27a-5361-4d95-8787-ae31ca7987fe


# ╔═╡ d65a2638-54c0-4eb5-a870-44d7ab35400c
md"""

!!! note
	`u"..."` is called a string macro. The `u` indicates a units macro. A macro is a convenience operator that rewrites your code *on-the-fly*.

!!! action
	Create a variable `m4` with units of seconds, i.e., (s):

```julia-repl
julia> m4 = (9.8 ± 0.3)u"s"
```
"""

# ╔═╡ 15674bb0-2fe1-40b1-a6c0-3a5a64a6a5c3


# ╔═╡ c07f9493-b867-485b-87f2-50348bb9eaa6
md"""
!!! action
	Calculate `β` by multiplying `m3` and `m4`:

```julia-repl
julia> β = m3 * m4
```
"""

# ╔═╡ 70f08712-002c-4adc-84b1-73a8655d8a44


# ╔═╡ 6cc63679-6352-4ffa-ae6a-3066431cfd10
md"""

The variable β's value now has an associated error and unit.

```julia-repl
julia> π
```

And 2π is the constant 2π:

```julia-repl
julia> 2π
```

!!! action
    Display the value `2π` using the cell below.
"""

# ╔═╡ 221c81b5-992f-4fb8-8448-db0ab8c1b32d


# ╔═╡ cf00e946-913e-4e80-9cf3-381d1a84ac33
md"""
!!! note
    As in the case of `2π`, the `*` (multiplication) operator is implied from the context and is not necessary. There cannot be a space between the number and variable (or constant).

---
"""

# ╔═╡ cf4a0e8f-9210-4f1e-84d4-ee7ff09aaf61
md"""
## Arrays

Let's see if this works with one dimensional arrays or `Vector`s:

```julia-repl
julia> γ = [10 ± 0.1, 20 ± 0.2, 30 ± 0.3]u"m/s" .* [15 ± 0.01, 25 ± 0.02, 25 ± 0.03]u"s"
```

!!! action
	Create the `γ` expression.
"""

# ╔═╡ fdba7211-e480-4948-8435-76a7608e7e63


# ╔═╡ 1f90de4b-790b-41f8-9a7b-3a54e9fff472
md"""
!!! note
	The dot `.` before the `*` (multiplication) symbol is element-wise multiplication, whereas `*` by itself is matrix multiplication. If you are coming from Python, this difference may take a little time to get used to.

	See the [dot syntax](https://docs.julialang.org/en/v1/manual/functions/#man-vectorized) section of the Julia manual for more information.

!!! info "Tip"
	The `.` (dot) syntax also works with functions.

	For example, if `func(a, b)` has scalar arguments, then `func.(A, B)` can have array arguments.

	Julia will embed the contents of the function in a loop. A separate function is not needed.

---
"""

# ╔═╡ 1546eb89-20d0-4339-8114-a7ebbe823a3b
md"""
## Symbolics

Julia can also do symbolic manipulation. We will need the [Symbolics.jl](https://docs.sciml.ai/Symbolics/stable/) package for this and [Latexify.jl](https://korsbo.github.io/Latexify.jl/stable) for optional pretty printing in the notebook:

```julia-repl
julia> using Symbolics, Latexify
```

!!! action
	Add the `Symbolics` and `Latexify` packages.
"""

# ╔═╡ 94d323b9-554f-4620-8900-da7c89ad338d


# ╔═╡ 746e3dae-4bbb-410b-899f-ef95c8afb1b0
md"""
Let's use rotation matrices as an example, where `Rx`, `Ry`, and `Rz` are rotations about the ``x``, ``y``, and ``z``-axes:

```julia-repl
julia> Rx(θ) = [1. 0. 0.; 0. cos(θ) sin(θ); 0. -sin(θ) cos(θ)]

julia> Ry(θ) = [cos(θ) 0. -sin(θ); 0. 1. 0.; sin(θ) 0. cos(θ)]

julia> Rz(θ) = [cos(θ) sin(θ) 0.; -sin(θ) cos(θ) 0.; 0. 0. 1.]
```

!!! info
	The above functions are examples of one-line function definitions. The multi-line function definition will be shown below. An anonymous function definition is: `x -> x != 0`.

!!! action
	Create the three rotation matrices using the following cells.
"""

# ╔═╡ d7169595-d401-4fab-8554-d25e3b367583


# ╔═╡ 048bf388-e2bc-4049-aefb-8d27dde63e3f
   

# ╔═╡ 6c27894d-369f-493e-b59e-29d9a7e97c9e


# ╔═╡ 80335b0c-de35-4133-a32d-c0ccb826a4b3
md"""
Now create symbolic variables for the three equatorial precession angles: `z`, `θ`, and `ζ` defined by *Lieske et al. (1977)*:

```julia-repl
julia> @variables z, θ, ζ
```

!!! action
	Create the symbolic variables `z`, `θ`, and `ζ`.
"""

# ╔═╡ 8f5f7d12-38eb-49c9-90c6-81d27eda13fe


# ╔═╡ 1b9553dd-149c-4e48-aacf-10d6ca4756c2
md"""
Let's see what the rotation matrix looks like for the three-angle formulation of the precession matrix:

```julia-repl
julia> Rz(-z)Ry(θ)Rz(-ζ)

or 

julia> Rz(-z) * Ry(θ) * Rz(-ζ)
```

!!! action
	Calculate an analytical expression for the precession matrix.
"""

# ╔═╡ 856a6279-6354-48de-85ca-c5638be68c9e


# ╔═╡ 481ffbf7-d2b9-44cd-9f18-834e1344f977
md"""
Replacing the symbolic variables, `z`, `θ`, and `ζ` with numerical values in the above precession formula will return a numerical result.  The rotation matrices work for both numeric and symbolic variables.
"""

# ╔═╡ 5767f17a-a101-4e02-b4f6-b11ee777882b
md"""
---
"""

# ╔═╡ f80f1bdd-5147-4a6c-8280-09329ed6dba1
md"""
## GPU Programming

Depending on the GPU that your laptop has, you will need to load one of the following packages:

```julia-repl
julia> using CUDA                 # for NVIDIA

julia> using oneAPI               # for Intel (linux only)

julia> using AMDGPU               # for AMD

julia> using Metal                # Apple Silicon, i.e., M1-5 Mac
```

!!! action
	Add the appropriate GPU package.
"""

# ╔═╡ d308df6b-14ec-49ec-8270-a3b9efd88517


# ╔═╡ cfc57dc3-bb97-4bf2-99e8-241e3f552f1e
md"""
```julia-repl
julia> xlarge = rand(2^20)

julia> ylarge = rand(2^20)

julia> outlarge = zero(xlarge)
```

!!! action
	Create three large arrays in RAM.
"""

# ╔═╡ d7ecfac4-8b9b-4b4b-b258-429f417380cc


# ╔═╡ 22f8cb69-de2d-4628-afa8-0aa14043169c


# ╔═╡ a558f6b0-afdb-444f-b041-b37b85cf96c7


# ╔═╡ b186c2fa-0ce2-4941-a9fa-a055de7f4ebf
md"""
Let's load our array into the GPU. For CUDA:
```julia-repl

julia> xlarge_gpu   = cu(xlarge)

julia> ylarge_gpu   = cu(ylarge)

julia> outlarge_gpu = cu(outlarge)
```

For other GPU providers replace `cu` with:
```julia-repl
julia> ROCArray(xlarge)              # AMD

julia> oneArray(xlarge)              # Intel

julia> MtlArray(xlarge)              # Apple Silicon
```

!!! action

	Load the three arrays into GPU.
"""


# ╔═╡ 9ebff783-7794-4633-86b6-d25d32527b64


# ╔═╡ ec8dbfe4-15f2-41f6-93be-48486c2bf8fb


# ╔═╡ c4e53ac0-8562-4bee-9f53-83aeae521335


# ╔═╡ bf17d4fa-a40b-4410-8896-57cc1b8890ed
md"""
```julia-repl
julia> outlarge_gpu .= xlarge_gpu .+ ylarge_gpu
```

!!! action
	Add the GPU arrays together and store them in the GPU out array.
"""

# ╔═╡ 7f67771d-a66a-4c4d-ae70-bc167b3e918e


# ╔═╡ 61e2fed6-b5e1-4a13-b8af-441ae3484cbb
md"""
```julia-repl
julia> outlarge .= Array(outlarge_gpu)
```

!!! action
	Transfer the result back to RAM.
"""

# ╔═╡ 73c36af8-cf09-4058-bac2-b6394dcc555b


# ╔═╡ da2c5d76-2dd3-4f1c-834e-11189793c56f
md"""
!!! info
	Functions written for the CPU can also run on the GPU.

	GPU kernels can also be implemented.

For more information about GPU programming in Julia, see [JuliaGPU](https://juliagpu.org/).

For a CPU/GPU backend agnostic interface, see [JACC](https://juliagpu.github.io/JACC.jl/stable/).

For information about Julia syntax, see [The Fast Track to Julia 1.0](https://cheatsheet.juliadocs.org/).

---
"""

# ╔═╡ ab764285-eb17-418e-a843-09dba3c40f66
md"""
# Multiple Dispatch

A key feature of Julia is its ability to call functions using **multiple dispatch**. Unlike most object-oriented languages that use **single dispatch**, such as default Python, Julia was designed to use multiple disptach. This is a very powerful programming feature. When used properly, it both simplifies and reduces the code base, while increasing performance.

**Single dispatch** languages only use the type of the first argument to determine which method (version) to call when a function has several methods (i.e., is overloaded). Let's use the add operator `+(arg1, arg2)` as an example. In this case, only the type of `arg1` is used for calling or dispatching the add operator. `arg2` is ignored.

**Multiple dispatch** languages use all of the argument types to determine which method to call when a function is overloaded. Again, using the add operator `+(arg1, arg2)`, both argument types (sp., `arg1` and `arg2`) are used for dispatching the method.

For example, if I implement a new number type `Float256` and I want it to integrate with Julia's default number types, say `Float64`, then I should implement two functions, namely, `+(Float256, Float64)` and `+(Float64, Float256)`. No matter the order of the two number types, the add operation will be correctly dispatched.

---
"""


# ╔═╡ 55845a99-3bf5-4cfa-8cb3-305bdbede994
md"""
## World Coordinate System

The Flexible Image Transport System (FITS) World Coordinate System (WCS) has three basic steps to transform from pixel coordinates to spherical coordinates and vice versa. They are:

* Pixel (affine) transformation (i.e., translation, rotation, scale, & shear)
* Cartographic projection (i.e., planar to spherical coordinates)
* Spherical transformation (i.e., spherical rotations)

These transformations compose a sequence, i.e., the output of one transformation is the input of the next. So the transformations should be easily composable. This case is commonly implemented as a set of nested functions that are cumbersome to use. For example:

```julia-repl
rotate(deproject(affine(coords)))
```

Julia provides two convenient alternatives; the pipe operator from computer science `|>` and the compose operator from mathematics `∘`. For example:

```julia-repl
axis = coords |> affine |> deproject |> rotate

axis = rotate ∘ deproject ∘ affine ∘ coords

axis = ∘(rotate, deproject, affine, coords)
```

### Cartographic Projections

This section will focus on implementing one of these transformations, the cartographic projections.

Cartographers define the transformation from a sphere to the plane as the **forward** projection and the plane to the sphere as the **inverse** or **reverse** projection. This tutorial will adhere to this convention. [WCS Paper 2](https://www.atnf.csiro.au/computing/software/wcs/ccs.pdf) presents 26 spherical projections, each with a forward and reverse algorithm. Each projection is associated with a three letter keyword, e.g., `AZP` is the zenithal or azimuthal projection and `TAN` is the gnomonic projection. The FITS keyword `CTYPEi` specifies the projection being used, where `i` is the axis index.

How might this data structure of 52 forward and reverse projections be implemented in a modular and efficient manner in say C or Python?

* For C, **if-then-else** or **switch-case** statements would be a reasonable choice.
* For Python, each projection can be a `class` with two methods.

In each language, there would be a case statement or dictionary for each direction. For the key-value pairs, the key would be the three letter keyword for the projection type and the value would be the function name for the forward or reverse projections. In the case of C, for each new projection being added, a new `else-if` or `case` statement would have to be added to the code and then the code would need to be recompiled. In the case of Python, a new item would need to be added to a dictionary.

!!! note
	The AIPS convention in radio astronomy is the inverse of the cartographic convention and defines the **forward** projection as the transformation from the plane to the sphere.

---
"""

# ╔═╡ f96d575f-12a8-4426-92fc-cd6054c7c429
md"""
## WorldCoordinates.jl

The `WorldCoordinates` package uses `project` and `deproject` for the forward and reverse projections. The two functions are the common interface for the 26 cartographic transformations.

### Azimuthal Projection

The zenithal or azimuthal projection is a commonly-used and simple projection. Let's implement it.
"""

# ╔═╡ 628dc0cc-a29b-4d61-8314-9c9aee5ae8f9
LocalResource("/Users/paul/Downloads/Zenithal Projection.jpg")

# ╔═╡ 1599a4b2-673d-4dce-8d63-b2a2700107b3
md"""
### Azimuthal Type

The azimuthal type has two projection parameters `μ` and `γ`, where `μ` is the distance of the projection point from the center of the sphere, in spherical radii; and `γ` is the angle of the plane projection in degrees (shown as θ in the above diagram). Their defaults are `0.0`.

To create an `Azimuthal` type, define a `struct` with `μ` and `γ` fields:

```julia-repl
struct Azimuthal
	μ
	γ
end
```

!!! action
	Create the Azimuthal type in the following cell.
"""

# ╔═╡ 28be7792-62f6-4887-aab2-d57f6049f430


# ╔═╡ 0c6fd841-2c4f-4f53-951f-1c239fbc1caf
md"""
!!! note
	By convention, Julia types are capitalized.
---
### Projection Functions

There are two ways to implement the projection functions, using either

functions:

```julia-repl
function project(projection, ϕ, θ)
end

function deproject(projection, x, y)
end
```

or functors:

```julia-repl
function (project)(ϕ, θ)
end

function (deproject)(x, y)
end
```

Let's use the second approach.

!!! action
	Create stubs for the `project` and `deproject` functors in the following two cells.
"""

# ╔═╡ 2bd90e37-554f-49ea-9df4-3d3dcc1a1b61


# ╔═╡ 558a866f-40c1-443b-81e9-d9d89ece470d


# ╔═╡ 04566d70-3c90-41a9-821a-af5ebfff1271
md"""
!!! note
	Functors are anonymous functions, i.e., they are functions that shall not be named. They are defined by their argument signatures, i.e., the number of arguments and their types.
---
The above function signatures are too general for multiple dispatch to work well. Each argument should have a type signature, where `::` is the type operator. The following annotated functions assume `Float64` argument types.

```julia-repl
function (project::Azimuthal)(ϕ::Float64, θ::Float64)
end

function (deproject::Azimuthal)(x::Float64, y::Float64)
end
```
!!! action
	Add the argument types to the functions in the above cells.

!!! note
	When no type is specified for an argument, Julia assigns the default type of `Any`.
"""

# ╔═╡ 5526497f-b5a8-4cbb-b0b3-cc74444d7acf
md"""

Julia will now call these functions if their arguments have Azimuthal and Float64 types. However, because they are empty, their return value is `nothing`.

Let's implement the Azimuthal algorithms for the forward and reverse projections.

---
"""

# ╔═╡ 0668c005-64c0-48f6-b5dd-fcbc297438cc
md"""
### Forward Projection

The equations for the forward projection are:
```
p = project                                               # WCS Paper 2
x =  R .* sind.(ϕ)                                        # Eq. (20) and (21)
y = -R .* cosd.(ϕ) ./ cosd(p.γ)                           # −R sec(γ) cos(ϕ)
```
where
```
R = (180/π).*(p.μ + 1).*cosd.(θ) ./
        ((p.μ .+ sind.(θ)) .+ cosd.(θ).*cosd.(ϕ).*tand(p.γ)) # Eq. (22)
```
where `ϕ` and `θ` are spherical angles in degrees, and `μ` and `γ` are the projection parameters. The arguments of `sind`, `cosd`, and `tand` functions are in degrees.

!!! info "Tip"
    Eqs. (20-22) can also use the `@.` macro, which adds the broadcast operator to each function and operator if needed. Specifically,
    
    `x = @. R*sind(ϕ)`

    `y = @. R*cosd(ϕ)/cosd(γ)`

    `R = @. (180/π)*(μ + 1)*cosd(θ)/((μ + sind(θ)) + cosd(θ)*cosd(ϕ)*tand(γ))`

    These equations are nearly identical to those in WCS Paper 2.

!!! action
    Add the forward projection algorithm to the `project` functor above.

    Return the result as a `Tuple`, or preferably, a `NameTuple`

```julia-repl
return (x, y)                                             # Tuple

return (x=x, y=y)                                         # NamedTuple

return (; x, y)                                           # NamedTuple  
```
---
"""

# ╔═╡ ded897b6-c394-450e-97b0-5be7c8ec8f31
md"""
### Reverse Projection

The equations for the reverse projection are more complicated:
```
p = deproject                                             # WCS Paper 2
ϕ = atand.(x, -y.*cosd(p.γ))                              # Eq. (23)
R = .√(x.^2 .+ y.^2 .*cosd(p.γ).^2)                       # Eq. (28)
ρ = R./((180/π)*(p.μ+1) .+ y.*sind(p.γ))                  # Eq. (27)
ε = atand.(1, ρ)                                          # Eq. (25)
ω = asind.(clamp.(ρ .* p.μ./sqrt.(ρ.^2 .+ 1), -1, 1))     # Eq. (26)
 
θ₁ = wrap_180.(ε .- ω)                                    # Eq. (24) planeward
θ₂ = wrap_180.(ε .+ ω .+ 180)                             # anti-planeward
 
v₁ = abs.(θ₁) .<= 90.0 + 1e-10
v₂ = abs.(θ₂) .<= 90.0 + 1e-10

θ = ifelse.(v₁ .& .!v₂, θ₁,                               # unique valid solution
    ifelse.(v₂ .& .!v₁, θ₂,                               # or closest to 90°
    ifelse.(abs.(θ₁ .- 90) .<= abs.(θ₂ .- 90), θ₁, θ₂)))
```
where
```
wrap_180(a) = mod(a + 180.0, 360.0) - 180.0
```
!!! action
    Add the reverse projection algorithm to the `deproject` functor above and create `wrap_180` function in the following cell.

    Return the result as a `Tuple` or `NameTuple`.
"""

# ╔═╡ ba47f16a-16c4-4fb3-88ba-7b7e13621664


# ╔═╡ 466ff5da-1157-44bb-8081-59831d4e0a04
md"""
!!! info
    The `√` symbol is equivalent to the `sqrt` function. They can be used interchangeably.

    Note: the `.` (broadcast) operator goes before the `√` symbol and after the `sqrt` name.

You should now have two working functors for the `Azimuthal` projection.

---
"""

# ╔═╡ bf2021d8-d9eb-48db-b9c3-018442778060
md"""
# Abstract Types

These functions will return arrays having elements with `Float64` values even if the input arrays have `Float32` values. The reason for the up-conversion is because the `μ` and `γ` fields of the `Azimuthal` type are defined to be `Float64` and Julia performs automatic up-conversion of all values to match the largest data type. Julia provides a mechanism to handle this situation. They are called **abstract types**.

---
"""

# ╔═╡ 805cf7cc-0246-4b24-8cb6-d84be53ae57a
md"""
## AbstractFloat

Instead of defining `μ` and `γ` to be a specific floating point value, they can be defined as a subtype of the abstract type `AbstractFloat`. For example:

```julia-repl
struct Azimuthal
	μ::AbstractFloat
	γ::AbstractFloat
end

struct Azimuthal{T<:AbstractFloat}
	μ::T
	γ::T
end
```

`μ` and `γ` can now be the floating-point type of the instantiating argument, e.g., `Float16`, `BFloat16`, `Float32`, `Float64`, `Float128`, and `BigFloat`.

The two type definitions are both valid. However, the second is preferred, because it results in better performance.

!!! note
	The second definition is called a parametric type. If `T isa Float64`, then `Azimuthal{T}` is an `Azimuthal{Float64}`, where `<:` is the subtype operator.

!!! info "Tip"
	Be careful when using the type `::` and subtype `<:` operators. They are not interchangeable. Arguments use the type operator `::`, while comparisons uses the subtype operator `<:`.

!!! action
	Edit the `Azimuthal` type to have `AbstractFloat`s fields in the above cell.

Now, if `μ` and `γ` are instantiated using `Float32`s and the input value is a `Float32`, then the return value will be a `Float32`.

Let's also relax the type for `ϕ` and `θ` and make them `AbstractFloat`s.

```julia-repl
function (project::Azimuthal)(ϕ::AbstractFloat, θ::AbstractFloat)

function (deproject::Azimuthal)(ϕ::AbstractFloat, θ::AbstractFloat)
```

Note how this simplifies the code. Multiple versions of each function, i.e., one for each argument type, are not necessary. A single version will do. Julia will compile (and cache) a version for each argument type that it encounters.

!!! info "Tip"
	To include integer values and exclude strings, `μ` and `γ` can be defined as the abstract type `Real`.

---
"""

# ╔═╡ 1c054d7b-655a-4435-bce9-26480d71bb9c
md"""
## Type Hierarchy

This example shows that Julia has a type hierarchy composed of high level abstract types (e.g., `AbstractFloat`, `Integer`, and `Real`) and lower level concrete types (e.g., `Float16`, `Float64`, `UInt8`, and `Int64`). This mechanism allows the software developer to focus more on the algorithm and less on the code. In other words, the algorithm needs to be implemented only once in most cases.

---
"""

# ╔═╡ 61b43190-cd16-459e-84ec-5d216f30d02c
md"""
## AbstractProjection

If `Float32`, `Float64`, and `BigFloat` are subtypes of `AbstractFloat`, then `Azimuthal`, `Gnomomic`, `Conic`, and `Orthographic` are subtypes of `AbstractProjection`. Let's create an `AbstractProjection` type and make `Azimuthal` its subtype.

```julia-repl
abstract type AbstractProjection end
```

!!! action
	Create an `AbstractProjection` type in the following cell.
"""

# ╔═╡ 6e2f507b-491b-4a85-a479-b83fdcf486a5


# ╔═╡ 54a6f671-8119-430a-bafa-9986cdb9a8da
md"""
!!! action
	Edit the `Azimuthal` type to be a subtype of `AbstractProjection` in the above cell.

```julia-repl
struct Azimuthal{T<:AbstractFloat} <: AbstractProjection
	μ::T
	γ::T
end
```

Abstract types allow the user to constrain a function argument to any subtype of the abstract type. For example, if a function has a projection argument, then defining that argument as an `AbstractProjection` will allow that function to use any of the 26 projections, but no others.

---
"""

# ╔═╡ 3b7c4221-5f52-4bf6-91e8-5858a819a726
md"""
# Framework

## Projection Types

In the **World Coordinates** section, `∘` is used to create the transform sequence:

```julia-repl
axis = coords ∘ affine ∘ deproject ∘ rotate
```

Currently, the `deproject` functor is not defined, so the transform sequence is:

```julia-repl
axis = coords ∘ affine ∘ Azimuthal ∘ rotate
```

Let's define the `project` and `deproject` types in order to use the first expression:

```julia-repl
struct project{T<:AbstractProjection}
	projection::T
end

struct deproject{T<:AbstractProjection}
	projection::T
end
```

!!! action
	Create the `project` and `deproject` types in the following cells.
"""

# ╔═╡ 0f24b411-60d2-40a9-b1e4-2589ba9f011c


# ╔═╡ 62e232dd-a7f1-44ea-9abe-5f1165c666a8


# ╔═╡ 6e27980c-f836-4135-950c-865b37b184c3
md"""
The `Azimuthal` project and deproject functors need to be modified to work with the `project` and `deproject` types:

```julia-repl
function (t::project{<:Azimuthal})(ϕ::AbstractFloat, θ::AbstractFloat)
	p = t.projection
	...
end

function (t::deproject{<:Azimuthal})(x::AbstractFloat, y::AbstractFloat)
	p = t.projection
	...
end
```

!!! action
	Edit the project and deproject `Azimuthal` functors.
---
"""

# ╔═╡ d6205e0b-cad0-416d-adb8-d6fd6cc260bd
md"""
## Projection Dictionary

The last item of this framework is to create a dictionary of key-value pairs. The dictionary will contain a map from a FITS keyword to the projection type (e.g., `"AZP" => Azimuthal`) and vice versa (e.g., `Azimuthal => "AZP"`), where the pair operator `=>` creates key-value pairs.

This dictionary allows WorldCoordinates to be independent of the FITS WCS and ASDF GWCS (Generalized World Coordinate System) protocols. WorldCoordinates only needs to define the various projection types and use them when performing calculations. It is the responsibility of the FITS and ASDF packages to read and write the file formats and to implement the WCS and GWCS keyword protocols. This design results in a modular and composable set of packages.

!!! note
	The projection dictionary allows new projections to be added at any time.

```julia-repl
const PROJECTIONS = Dict("AZP" => Azimuthal, Azimuthal => "AZP")
```

!!! action
	Create the projection dictionary.
"""

# ╔═╡ 16f1f80c-ad76-43f4-aca6-360d8ca46e23


# ╔═╡ 785e03c3-f2cf-485e-8010-d7b2d41eb8db
md"""
# Summary

## Achievements

You have just implemented the forward and reverse `Azimuthal` projections in 36 lines of code:

* 5 lines for the `Azimuthal` and `AbstractProjection` types
* 6 lines for the `project` and `deproject` functors
* 7 lines for the forward projection
* 17 lines for the reverse projection
* 1 line for the projection dictionary

These algorithms apply to arrays of any dimension and any floating point type, and execute at C speed.

The following transform sequence is now fully implemented.

```julia-repl
axis = coords ∘ affine ∘ deproject ∘ rotate
```
!!! action
	Now implement the remaining 25 projection algorithms and send them to me when you are done.

!!! note "WorldCoordinates.jl Summary"
	* 17 source files (42)
    * 2949 source lines (22,990)
    * 47 document strings (3,402)
	* Superset of WCSlib transforms (includes spline distortions)
	* ASDF compatible (includes Frames and Graph/Pipeline)
	* C performance
	WCSlib in parentheses
---
"""

# ╔═╡ 9336f6b0-92e5-4df3-be89-4aa678ce3def
md"""
## Julia Repositories

### JuliaAstro

The Julia repository for astronomical software packages is [JuliaAstro](https://github.com/JuliaAstro/). Some notable pure Julia packages are:

* ASDF.jl: Advanced Scientific Data Format
* AstroImages.jl: Visualization of astronomical images
* AURIS.jl: Astronomical Utilities for Radio Interferometry and Simulation
* FITSFiles.jl: Flexible Image Transport System
* LombScargle.jl: Lomb-Scargle & Bretthorst periodgram analysis
* MeasurementSets.jl: NRAO Measurement Set version 2 data format
* Photometry.jl: Optical photometry utilities
* PulsarSearch.jl: Pulsar search utilities
* SOFA.jl: SOFA/ERFA library
* SpectralFitting.jl: Application for fitting X-ray and other spectra
* Stingray.jl: A library of time series algorithms (see Astropy)
* UnifulAstro.jl: Extension of Unitful to astronomy
* VOTables.jl: VO Tables interface
* WorldCoordinates.jl: Generalized World Coordinate System
* Xradio.jl: NRAO Measurement Set version 4 (aka Xradio) data format

And many other packages.

### Institutional

* Comrade.jl: Bayesian image reconstruction of radio interferometry data
* Octofitter.jl: Exoplanet orbital determination

### General

Notable packages

* SciML.jl: Software framework for scientific machine learning
* JuMP.jl: Optimization package
* Pigeons.jl: Multi-threaded tempered Bayesian optimization

The general repository contains thousands of packages for almost every discpline, scientific and non-scientific.
"""

# ╔═╡ 8401d5df-ccb5-4c98-a952-6d71b7a74fa8
md"""
## What Have We Learned?

!!! note ""

    * Julia has a built-in **package manager**.

    * Julia understands **unicode**.

	* Julia is a **concise** language and therefore very **productive**.

    * Julia packages are **composable**.
	  - I.e., independent packages are compatible and work together without modification.

    * Julia can perform **symbolic manipulation**.

    * Julia can perform **GPU calculations** without resorting to C/C++.

    * Julia uses **multiple dispatch** for functions calls.

    * Julia has **abstract types** as part of a type hierarchy.

    * Julia combines **multiple dispatch** and **abstract types** to simplify and reduce code size.
"""

# ╔═╡ 8ee7f43d-bf75-4975-ac64-54c2d5a0174a
md"""
# Addendum

## Other REPL Modes

The Julia REPL supports several different modes, outlined below, accessible by a keystroke. Hit the `delete` or `backspace` key to return to the REPL.

---
"""

# ╔═╡ 85f2bec3-0095-4bbc-93ef-48ab97094244
md"""
### Help: `?` (question mark)

For help mode:

```julia-repl
julia> ?

help?> println
search: println printstyled print sprint isprint

println([io::IO], xs...)

Print (using print) xs to io followed by a newline. If io is not supplied, prints to the default output stream stdout.

See also printstyled to add colors etc

Examples
≡≡≡≡≡≡≡≡≡≡

julia> println("Hello, world")
Hello, world

julia> io = IOBuffer();

julia> println(io, "Hello", ',', " world.")

julia> String(take!(io))
"Hello, world.\n"
```
---
"""

# ╔═╡ d1e9c51c-efb9-4dcb-9d28-8c54a235fbb4
md"""
### Package Manager: `]` (closing square bracket)

For package mode:

```julia-repl
julia> ]

pkg>
```

For package manager help,

```julia-repl
pkg> ? <return>
```

returns a brief summary of package commands.

To add a package:

```julia-repl
pkg> add <package>

pkg> add <package1>, <package2>
```

When adding a package, the Julia online repository (aka the "registry" or "General Registry") will be searched. The package and its dependencies will then be downloaded, compiled, and installed. This may take anywhere from a few seconds to a few minutes depending on the size of the package and its dependencies.

!!! note
	Most Julia package names are plural, as in `Measurements.jl`

To use or load a package (after it has been added), return to the REPL:

```julia-repl
julia> using <package>

julia> using <package1>, <package2>
```

!!! info
	A feature of the `using` command is that it will add the package, if it hasn't already been added.
"""

# ╔═╡ 065265a5-c9ad-4a39-b14d-f4e2e49d3f7a
md"""
To check the manifest:

```julia-repl
pkg> status
```
or
```julia-repl
pkg> st
```


To update a package in the manifest:

```julia-repl
pkg> update <package>
```

or

```julia-repl
pkg> up <package>
```

To update all packages in the manifest:

```julia-repl
pkg> up
```

To garbage collect packages not used for a significant time:

```julia-repl
pkg> gc
```

!!! tip
	The `Revise` package allows the user to update Julia code using the REPL. In other words, a function can be revised and used immediately.

---
"""

# ╔═╡ 65e3eecb-e41f-4f15-bdd5-9c6fa70683ee
md"""
### Shell: `;` (semi-colon)

For shell mode:

```julia-repl
julia> ;

shell> pwd
/Users/myhomedir
```

---
"""

# ╔═╡ ba49c0ca-6aa4-4aca-8150-ca8eb1ad3ce5
md"""
!!! info
    Pluto has a **Live docs** tab in the lower right corner that will display the current Julia function or command. The **Help**, **Shell**, and **Package Manager** examples require the REPL, i.e., running Julia in a terminal.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
LaTeXStrings = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Term = "22787eb5-b846-44ae-b979-8e399b8463ab"

[compat]
LaTeXStrings = "~1.4.0"
PlutoUI = "~0.7.76"
Term = "~1.0.2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.13.2"
manifest_format = "2.1"
project_hash = "d02345fba3fea7429354d32108657c78c7f53616"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
registries = "General"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "67e11ee83a43eb71ddc950302c53bf33f0690dfe"
registries = "General"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.12.1"
weakdeps = ["StyledStrings"]

    [deps.ColorTypes.extensions]
    StyledStringsExt = "StyledStrings"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.5.5+2"

[[deps.DataAPI]]
git-tree-sha1 = "abe83f3a2f1b857aac70ef8b269080af17764bbe"
registries = "General"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.16.0"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
registries = "General"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.DocStringExtensions]]
git-tree-sha1 = "7442a5dfe1ebb773c29cc2962a8980f47221d76c"
registries = "General"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.5"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.7.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
registries = "General"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Highlights]]
deps = ["DocStringExtensions", "InteractiveUtils", "REPL"]
git-tree-sha1 = "9e13b8d8b1367d9692a90ea4711b4278e4755c32"
registries = "General"
uuid = "eafb193a-b7ab-5a9e-9068-77385905fa72"
version = "0.5.3"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
registries = "General"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
registries = "General"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "0ee181ec08df7d7c911901ea38baf16f755114dc"
registries = "General"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "1.0.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
registries = "General"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JuliaSyntaxHighlighting]]
deps = ["StyledStrings"]
uuid = "ac6e5ff7-fb65-4e79-a425-ec3bc9c03011"
version = "1.12.0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "dda21b8cbd6a6c40d9d02a73230f9d70fed6918c"
registries = "General"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.4.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "1.0.0"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "LibSSH2_jll", "Libdl", "OpenSSL_jll", "Zlib_jll", "Zstd_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.22.0+0"

[[deps.LibGit2]]
deps = ["LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "LibSSH2_jll", "Libdl", "OpenSSL_jll", "PCRE2_jll", "Zlib_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.9.7+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl", "OpenSSL_jll", "Zlib_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.104+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.13.0"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.MIMEs]]
git-tree-sha1 = "c64d943587f7187e751162b3b84445bbbd79f691"
registries = "General"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "1.1.0"

[[deps.Markdown]]
deps = ["Base64", "JuliaSyntaxHighlighting", "StyledStrings"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2026.8.13"

[[deps.MyterialColors]]
git-tree-sha1 = "01d8466fb449436348999d7c6ad740f8f853a579"
registries = "General"
uuid = "1c23619d-4212-4747-83aa-717207fae70f"
version = "0.3.0"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.3.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.30+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.8+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "05868e21324cede2207c6f0f466b4bfef6d5e7ee"
registries = "General"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.8.1"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.46.0+0"

[[deps.Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
registries = "General"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "Zstd_jll", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.13.0"
weakdeps = ["REPL"]

    [deps.Pkg.extensions]
    REPLExt = "REPL"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "0d751d4ceb9dbd402646886332c2f99169dc1cfd"
registries = "General"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.76"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.ProgressLogging]]
deps = ["Logging", "SHA", "UUIDs"]
git-tree-sha1 = "f0803bc1171e455a04124affa9c21bba5ac4db32"
registries = "General"
uuid = "33c8b6b6-d38a-422a-b730-caa89a2f386c"
version = "0.1.6"

[[deps.REPL]]
deps = ["Base64", "Dates", "FileWatching", "InteractiveUtils", "JuliaSyntaxHighlighting", "Markdown", "Sockets", "StyledStrings", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
registries = "General"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "1.0.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"
version = "1.11.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
registries = "General"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
registries = "General"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "OrderedCollections", "TableTraits"]
git-tree-sha1 = "f2c1efbc8f3a609aadf318094f8fc5204bdaf344"
registries = "General"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.12.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Term]]
deps = ["Dates", "Highlights", "InteractiveUtils", "Logging", "Markdown", "MyterialColors", "OrderedCollections", "Parameters", "ProgressLogging", "Tables", "UUIDs", "UnicodeFun"]
git-tree-sha1 = "e4ccdfbdc073f71109c5fe0af7239c43714997d3"
registries = "General"
uuid = "22787eb5-b846-44ae-b979-8e399b8463ab"
version = "1.0.2"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "311349fd1c93a31f783f977a71e8b062a57d4101"
registries = "General"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.13"

[[deps.URIs]]
git-tree-sha1 = "bef26fb046d031353ef97a82e3fdb6afe7f21b1a"
registries = "General"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.6.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
registries = "General"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
registries = "General"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.3.2+0"

[[deps.Zstd_jll]]
deps = ["CompilerSupportLibraries_jll", "Libdl"]
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.7+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.70.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.8.3+0"

[registries.General]
url = "https://github.com/JuliaRegistries/General.git"
uuid = "23338594-aafe-5451-b93e-139f81909106"
"""

# ╔═╡ Cell order:
# ╟─6001288a-7a9d-4020-bf7d-02a0fa250c04
# ╟─38ead816-0375-4605-a833-6464485aa0d6
# ╟─95cfbabc-5e7c-481b-853c-6d06baa577b6
# ╟─8e597a38-6e41-499f-af06-f9223b8827de
# ╟─1cc401a1-6d3a-40e5-a4fc-012caa913369
# ╟─b1ed2c4e-f5fa-4e5e-87d8-7af6f80a83ca
# ╟─7f3357bc-4103-4a35-af21-9c86f5a0ec2f
# ╟─7475c896-d1b1-4429-9ba8-8e78de41e0b0
# ╟─5df8264e-6e37-4674-abdf-2b05c530787f
# ╠═4a404280-2845-4deb-8eee-2dcdcb9aed27
# ╟─7813824a-cae9-4b97-ac90-e542fbd630d5
# ╠═6ac51e87-87a2-4ccc-9f08-0028700b3cda
# ╟─27208179-35c3-43c1-9548-3620c8aa7680
# ╠═40d8d18c-3713-4e77-812d-9d77a4e1ac50
# ╟─aa3e9db7-49d1-40f8-b745-6c4faa2197e1
# ╠═8eb9630a-44b2-4ac8-b243-0c2ce5b16f50
# ╟─563f07ad-6aed-495e-85fb-bae4a1755ac2
# ╟─0f94b21c-364f-488e-aff3-28c4b39a3844
# ╠═40abc83f-b4bd-479f-8671-189cc712d792
# ╟─297cd86c-5e9d-4f70-b11a-cbae8fa96d1e
# ╠═8f016c75-7768-4418-8c57-100db3073c85
# ╟─094b6f30-cbd6-46b1-8e0c-3fdb1ef18261
# ╠═7ba8dc19-e0ca-40de-a778-7583ca70978d
# ╟─668abc35-fdc3-430f-8c90-de3c2c2cd77b
# ╠═0e42f7fd-955e-4679-8d90-0cb46c9a12dc
# ╟─d2a2d0bc-e883-439f-8e34-166e2369caef
# ╟─750acbf6-bc04-43ea-b123-14753cab597a
# ╠═88ca2a73-6203-447c-afcc-9e370a82076b
# ╟─c24f1ddd-5e31-4073-a627-86cedb1d44c2
# ╠═63a4b27a-5361-4d95-8787-ae31ca7987fe
# ╟─d65a2638-54c0-4eb5-a870-44d7ab35400c
# ╠═15674bb0-2fe1-40b1-a6c0-3a5a64a6a5c3
# ╟─c07f9493-b867-485b-87f2-50348bb9eaa6
# ╠═70f08712-002c-4adc-84b1-73a8655d8a44
# ╟─6cc63679-6352-4ffa-ae6a-3066431cfd10
# ╠═221c81b5-992f-4fb8-8448-db0ab8c1b32d
# ╟─cf00e946-913e-4e80-9cf3-381d1a84ac33
# ╟─cf4a0e8f-9210-4f1e-84d4-ee7ff09aaf61
# ╠═fdba7211-e480-4948-8435-76a7608e7e63
# ╟─1f90de4b-790b-41f8-9a7b-3a54e9fff472
# ╟─1546eb89-20d0-4339-8114-a7ebbe823a3b
# ╠═94d323b9-554f-4620-8900-da7c89ad338d
# ╟─746e3dae-4bbb-410b-899f-ef95c8afb1b0
# ╠═d7169595-d401-4fab-8554-d25e3b367583
# ╠═048bf388-e2bc-4049-aefb-8d27dde63e3f
# ╠═6c27894d-369f-493e-b59e-29d9a7e97c9e
# ╟─80335b0c-de35-4133-a32d-c0ccb826a4b3
# ╠═8f5f7d12-38eb-49c9-90c6-81d27eda13fe
# ╟─1b9553dd-149c-4e48-aacf-10d6ca4756c2
# ╠═856a6279-6354-48de-85ca-c5638be68c9e
# ╟─481ffbf7-d2b9-44cd-9f18-834e1344f977
# ╟─5767f17a-a101-4e02-b4f6-b11ee777882b
# ╟─f80f1bdd-5147-4a6c-8280-09329ed6dba1
# ╠═d308df6b-14ec-49ec-8270-a3b9efd88517
# ╟─cfc57dc3-bb97-4bf2-99e8-241e3f552f1e
# ╠═d7ecfac4-8b9b-4b4b-b258-429f417380cc
# ╠═22f8cb69-de2d-4628-afa8-0aa14043169c
# ╠═a558f6b0-afdb-444f-b041-b37b85cf96c7
# ╟─b186c2fa-0ce2-4941-a9fa-a055de7f4ebf
# ╠═9ebff783-7794-4633-86b6-d25d32527b64
# ╠═ec8dbfe4-15f2-41f6-93be-48486c2bf8fb
# ╠═c4e53ac0-8562-4bee-9f53-83aeae521335
# ╟─bf17d4fa-a40b-4410-8896-57cc1b8890ed
# ╠═7f67771d-a66a-4c4d-ae70-bc167b3e918e
# ╟─61e2fed6-b5e1-4a13-b8af-441ae3484cbb
# ╠═73c36af8-cf09-4058-bac2-b6394dcc555b
# ╟─da2c5d76-2dd3-4f1c-834e-11189793c56f
# ╟─ab764285-eb17-418e-a843-09dba3c40f66
# ╟─55845a99-3bf5-4cfa-8cb3-305bdbede994
# ╟─f96d575f-12a8-4426-92fc-cd6054c7c429
# ╟─628dc0cc-a29b-4d61-8314-9c9aee5ae8f9
# ╟─1599a4b2-673d-4dce-8d63-b2a2700107b3
# ╠═28be7792-62f6-4887-aab2-d57f6049f430
# ╟─0c6fd841-2c4f-4f53-951f-1c239fbc1caf
# ╠═2bd90e37-554f-49ea-9df4-3d3dcc1a1b61
# ╠═558a866f-40c1-443b-81e9-d9d89ece470d
# ╟─04566d70-3c90-41a9-821a-af5ebfff1271
# ╟─5526497f-b5a8-4cbb-b0b3-cc74444d7acf
# ╟─0668c005-64c0-48f6-b5dd-fcbc297438cc
# ╟─ded897b6-c394-450e-97b0-5be7c8ec8f31
# ╠═ba47f16a-16c4-4fb3-88ba-7b7e13621664
# ╟─466ff5da-1157-44bb-8081-59831d4e0a04
# ╟─bf2021d8-d9eb-48db-b9c3-018442778060
# ╟─805cf7cc-0246-4b24-8cb6-d84be53ae57a
# ╟─1c054d7b-655a-4435-bce9-26480d71bb9c
# ╟─61b43190-cd16-459e-84ec-5d216f30d02c
# ╠═6e2f507b-491b-4a85-a479-b83fdcf486a5
# ╟─54a6f671-8119-430a-bafa-9986cdb9a8da
# ╟─3b7c4221-5f52-4bf6-91e8-5858a819a726
# ╠═0f24b411-60d2-40a9-b1e4-2589ba9f011c
# ╠═62e232dd-a7f1-44ea-9abe-5f1165c666a8
# ╟─6e27980c-f836-4135-950c-865b37b184c3
# ╟─d6205e0b-cad0-416d-adb8-d6fd6cc260bd
# ╠═16f1f80c-ad76-43f4-aca6-360d8ca46e23
# ╟─785e03c3-f2cf-485e-8010-d7b2d41eb8db
# ╟─9336f6b0-92e5-4df3-be89-4aa678ce3def
# ╟─8401d5df-ccb5-4c98-a952-6d71b7a74fa8
# ╟─8ee7f43d-bf75-4975-ac64-54c2d5a0174a
# ╟─85f2bec3-0095-4bbc-93ef-48ab97094244
# ╟─d1e9c51c-efb9-4dcb-9d28-8c54a235fbb4
# ╟─065265a5-c9ad-4a39-b14d-f4e2e49d3f7a
# ╟─65e3eecb-e41f-4f15-bdd5-9c6fa70683ee
# ╟─ba49c0ca-6aa4-4aca-8150-ca8eb1ad3ce5
# ╟─7c4ebc32-9b8e-4b2a-8f39-f4c351283843
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
