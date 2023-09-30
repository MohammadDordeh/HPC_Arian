using CSV
using DataFrames
using Plots
using Statistics
pwd()
data = CSV.File("Cryptooo.csv")
datas= DataFrame(data)
datas
#The 5 best coin based on market cap are BTC,ETH,XRP,ADA,SOL
BTC = datas.BTC
ETH = datas.ETH
XRP = datas.XRP
ADA = datas.ADA
SOL = datas.SOL
for i in 1:length(BTC)
    BTC[i] = (BTC[i] - mean(BTC))/(var(BTC)^(0.5))
    ETH[i] = (ETH[i] - mean(ETH))/(var(ETH)^(0.5))
    XRP[i] = (XRP[i] - mean(XRP))/(var(XRP)^(0.5))
    ADA[i] = (ADA[i] - mean(ADA))/(var(ADA)^(0.5))
    SOL[i] = (SOL[i] - mean(SOL))/(var(SOL)^(0.5))
end
plot(BTC,label= "BTC - USD",title="Best Cryptooos",lw = 3,xlabel = "Days")


plot!(ETH,label = "ETH - USD",lw =3)
plot!(XRP,label = "XRP - USD")
plot!(ADA,label = "ADA - USD")
plot!(SOL,label = "SOL - USD")