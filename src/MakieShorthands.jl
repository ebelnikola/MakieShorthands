module MakieShorthands
    export yloglines, xloglines, xyloglines,ylogscatter,xlogscatter,xylogscatter
    using CairoMakie

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
    
end