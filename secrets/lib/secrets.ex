defmodule Secrets do
  def secret_add(secret) do
    lambda = fn param ->
      param + secret
    end
    lambda
  end

  def secret_subtract(secret) do
    lambda = fn param ->
      param - secret
    end
    lambda
  end

  def secret_multiply(secret) do
    lambda = fn param ->
      param * secret
    end
    lambda
  end

  def secret_divide(secret) do
    lambda = fn param ->
      div(param, secret)
    end
    lambda
  end

  def secret_and(secret) do
    lambda = fn param ->
      Bitwise.&&&(param, secret)
    end
    lambda
  end

  def secret_xor(secret) do
    lambda = fn param ->
      Bitwise.^^^(param, secret)
    end
    lambda
  end

  def secret_combine(secret_function1, secret_function2) do
    lambda = fn param ->
      secret_function2.(secret_function1.(param)) # . references the function
    end
    lambda
  end
end
