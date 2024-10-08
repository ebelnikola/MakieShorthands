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

    import CairoMakie: lines, scatter
    function lines(X::Vector, Y::Matrix)
        fig = Figure()
        ax = Axis(fig[1, 1])
        for i in axes(Y, 2)
            lines!(ax, X, Y[:, i])
        end
        return fig
    end

    function scatter(X::Vector, Y::Matrix)
        fig = Figure()
        ax = Axis(fig[1, 1])
        for i in axes(Y, 2)
            scatter!(ax, X, Y[:, i])
        end
        return fig
    end

    
end