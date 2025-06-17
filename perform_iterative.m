function [x, err, steps] = perform_iterative(G, c, x0, tol, max_steps)

    G = sparse(G);
    c = sparse(c);
    x = x0;
    steps = 0;
    err = Inf;

    while steps < max_steps
        newx = G * x + c;
        err = norm(newx - x);
        x = newx;
        steps = steps + 1;

        if err < tol
            break;
        end
    end
end

