module MakieShorthands
    export yloglines, xloglines, xyloglines,ylogscatter,xlogscatter,xylogscatter
    export float_scientific_LaTeX, int_LaTeX, int_powers_of_10_LaTeX, int_powers_of_2_LaTeX, int_power_of_10_scientific_LaTeX, int_powers_of_10_scientific_LaTeX
    using CairoMakie
    using LaTeXStrings


    function yloglines(data...)
        fig = Figure()
        ax = Axis(fig[1, 1], yscale = log10)
        lines!(ax, data...)
        return fig
    end
    
    function xloglines(data...)
        fig = Figure()
        ax = Axis(fig[1, 1], xscale = log10)
        lines!(ax, data...)
        return fig
    end
    
    function xyloglines(data...)
        fig = Figure()
        ax = Axis(fig[1, 1], xscale = log10, yscale = log10)
        lines!(ax, data...)
        return fig
    end
    
    function ylogscatter(data...)
        fig = Figure()
        ax = Axis(fig[1, 1], yscale = log10)
        scatter!(ax, data...)
        return fig
    end
    
    function xlogscatter(data...)
        fig = Figure()
        ax = Axis(fig[1, 1], xscale = log10)
        scatter!(ax, data...)
        return fig
    end
    
    function xylogscatter(data...)
        fig = Figure()
        ax = Axis(fig[1, 1], xscale = log10, yscale = log10)
        scatter!(ax, data...)
        return fig
    end

    function float_scientific_LaTeX(values; sigdigits = 1)
        [L"%$(round(value;sigdigits=sigdigits))" for value in values]
    end

    function int_LaTeX(values)
        [L"%$(Int(value))" for value in values]
    end

    function int_powers_of_10_LaTeX(values)
        [L"10^{%$(Int(log10(value)))}" for value in values]
    end

    function int_powers_of_2_LaTeX(values)
        [L"2^{%$(Int(log2(value)))}" for value in values]
    end

    function int_power_of_10_scientific_LaTeX(value)
        if value < 1e-4
            return L"1e{%$(Int(log10(value)))}"
        elseif value > 1e4
            return L"1e\,{%$(Int(log10(value)))}"
        elseif value >= 1.0
            return L"%$(Int(value))"
        else
            return L"{%$value}"
        end
    end

    function int_powers_of_10_scientific_LaTeX(values)
        [int_power_of_10_scientific_LaTeX(value) for value in values]
    end
    
end