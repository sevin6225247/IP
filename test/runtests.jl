using Test, IP
using PyCall
@pyimport urllib3
@pyimport urllib3.request as req
@pyimport re

#setup code

@testset "Test 1" begin
   @test print((urllib3.PoolManager().request("GET", "http://checkip.dyndns.org")).data)
end;

